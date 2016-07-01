import 'dart:convert';
import 'dart:io';

void main() {
  final reposPath = 'https://api.github.com/users/DarthKipsu/repos?per_page=100';
  final httpClient = new HttpClient();
  httpClient.getUrl(Uri.parse(reposPath))
    .then((HttpClientRequest request) {
      request.headers.add("authorization",
          "token ${Platform.environment['KIPSUFI_GITHUB_TOKEN']}");
      return request.close();
    })
    .then((HttpClientResponse response) {
      final contents = new StringBuffer();
      response.transform(UTF8.decoder).listen((String data) => contents.write(data),
          onDone: () => onRepositoriesLoaded(contents.toString()));
      httpClient.close();
    });
}

void onRepositoriesLoaded(String response) {
  final languages = {};
  final data = JSON.decode(response);
  data.forEach((d) {
    final languagePath = 'https://api.github.com/repos/${d['full_name']}/languages';
    final httpClient = new HttpClient();
    httpClient.getUrl(Uri.parse(languagePath))
      .then((HttpClientRequest request) {
        request.headers.add("authorization",
            "token ${Platform.environment['KIPSUFI_GITHUB_TOKEN']}");
        return request.close();
      })
      .then((HttpClientResponse response) {
        final contents = new StringBuffer();
        response.transform(UTF8.decoder).listen((String data) => contents.write(data),
            onDone: () => onLanguageDataLoaded(contents.toString(), languages));
        httpClient.close();
      });

  });
}

void onLanguageDataLoaded(String response, Map languages) {
  final data = JSON.decode(response);
  data.forEach((k, v) {
    if (languages[k] == null) languages[k] = 0;
    languages[k] += v;
  });
  writeResultsToFile(languages);
}

void writeResultsToFile(Map languages) {
  File file = new File('languages').openWrite();
  languages.forEach((k, v) => file.write('$k $v\n'));
  file.close();
}

