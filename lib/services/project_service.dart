import 'package:angular2/core.dart';

import 'package:kipsu_fi/projects/project.dart';
import 'package:kipsu_fi/projects/language.dart';
import 'package:kipsu_fi/projects/components/battleship_component.dart';
import 'package:kipsu_fi/projects/components/game_of_love_component.dart';

@Injectable()
class ProjectService {
  final Map<String, Project> registered_projects = {

    'Battleship': new Project(
        'Battleship',
        'The Battleship',
        'A classic battleship game against a computer AI. Whoever sinks all the opponent ships first is the winner.',
        new DateTime(2014, 2, 16),
        [Language.JAVASCRIPT],
        {
          'GitHub': '//github.com/darthkipsu/Laivanupotus'
        },
        BattleshipComponent),

    'GameOfLove': new Project(
        'GameOfLove',
        'Game of Love',
        'A quick game to find out if he loves you or not.',
        new DateTime(2014, 2, 14),
        [Language.JAVASCRIPT],
        {
          'GitHub': '//github.com/DarthKipsu/loves-me-not'
        },
        GameOfLoveComponent)
  };

  Project getProject(String id) => registered_projects[id];
}

