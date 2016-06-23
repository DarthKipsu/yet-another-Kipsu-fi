import 'dart:html';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

@Component(
    selector: 'world-map',
    templateUrl: 'world_component.html',
    styleUrls: const ['world_component.css'])
class WorldComponent implements OnActivate {

  routerOnActivate(next, prev) {
  }
}

