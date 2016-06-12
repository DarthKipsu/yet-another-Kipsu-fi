import 'package:angular2/core.dart';

typedef TitleListener(String);

@Injectable()
class TitleService {
  String title = 'darth.kipsu.fi';
  List<TitleListener> listeners = new List<TitleListener>();

  TitleService() {
    print('title');
  }

  void setTitle(String newTitle) {
    print(listeners.length);
    title = newTitle;
    listeners.forEach((TitleListener listener) {
      print(listener);
      listener(newTitle);
    });
  }

  void addChangeListener(TitleListener listener) {
    listeners.add(listener);
    listener(title);
    print('addin sisällä: ${listeners.length}');
  }
}

