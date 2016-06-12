import 'package:angular2/core.dart';

import 'package:kipsu_fi/front_page/unicorns_component.dart';
import 'package:kipsu_fi/navigation/navi_component.dart';

@Component(
    selector: 'app',
    templateUrl: 'app_component.html',
    directives: const [
      NaviComponent,
      UnicornsComponent
    ])
class AppComponent {}
