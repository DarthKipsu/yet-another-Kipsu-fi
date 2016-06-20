import 'dart:html';

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'package:kipsu_fi/services/title_service.dart';

@Component(
    selector: 'about-me',
    templateUrl: 'about_component.html',
    styleUrls: const ['about_component.css'])
class AboutComponent implements OnActivate {
  final String coverPicUrl = '/packages/kipsu_fi/assets/about.jpg';
  final String name = 'Verna Koskinen';
  final String username = 'DarthKipsu';
  final String email = 'darth.kipsu@gmail.com';
  final String phone = '+358 45 1277921';
  final String address = 'Susitie 3 a 4, 00800, Helsinki, Finland';
  final String website = 'darth.kipsu.fi';
  final String github = 'github.com/DarthKipsu';
  final String linkedin = 'linkedin.com/in/vernakoskinen';
  final String facebook = 'facebook.com/verna.koskinen';

  final TitleService _titleService;

  AboutComponent(this._titleService);

  routerOnActivate(next, prev) {
    _titleService.title = "About Me";
    _titleService.subtitle = "Find out more about who I am.";
    window.scrollTo(0,0);
  }

  String getSrcFor(String link) {
    return '//$link';
  }
}

