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
      response.transform(UTF8.decoder).listen((content) => print(content));
      httpClient.close();
    });
}

