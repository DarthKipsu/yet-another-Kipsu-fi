import 'package:angular2/core.dart';

import 'package:kipsu_fi/projects/project.dart';
import 'package:kipsu_fi/projects/language.dart';
import 'package:kipsu_fi/projects/components/abandon_all_hope_component.dart';
import 'package:kipsu_fi/projects/components/battleship_component.dart';
import 'package:kipsu_fi/projects/components/don_quijote_component.dart';
import 'package:kipsu_fi/projects/components/eclipse_component.dart';
import 'package:kipsu_fi/projects/components/game_of_love_component.dart';
import 'package:kipsu_fi/projects/components/kipsufi_component.dart';
import 'package:kipsu_fi/projects/components/othello_component.dart';
import 'package:kipsu_fi/projects/components/ratebeer_component.dart';
import 'package:kipsu_fi/projects/components/tunnit_component.dart';

@Injectable()
class ProjectService {
  final Map<String, Project> registered_projects = {

    'KipsuFi': new Project(
        'KipsuFi',
        'KipsuFi',
        'The first version of my website, built completely using Clojure and ClojureScript.',
        new DateTime(2015, 10, 12),
        [Language.CLOJURE, Language.CLOJURESCRIPT, Language.LESS, Language.POSTGRESQL],
        {
          'GitHub': '//github.com/darthkipsu/KipsuFi',
        },
        KipsuFiComponent),

    'Tunnit': new Project(
        'Tunnit',
        'Tunnit',
        'A worktime tracking application, with easy hour tracking and calendar for viewing the hours.',
        new DateTime(2015, 4, 18),
        [Language.RUBY_ON_RAILS, Language.SASS, Language.SQLITE],
        {
          'GitHub': '//github.com/darthkipsu/tunnit',
          'Preview': '//tunnit.herokuapp.com/'
        },
        TunnitComponent),

    'EclipseCalculator': new Project(
        'EclipseCalculator',
        'Eclipse Calculator',
        'A probability calculator for the Galaxy.',
        new DateTime(2015, 3, 6),
        [Language.CLOJURE, Language.JAVASCRIPT, Language.JQUERY],
        {
          'GitHub (backend)': '//github.com/darthkipsu/eclipse-calculator',
          'GitHub (frontend)': '//github.com/darthkipsu/eclipse-calc-ui'
        },
        EclipseComponent),

    'RateBeer': new Project(
        'RateBeer',
        'RateBeer',
        'Beer rating software with Ruby on Rails. A rails course work.',
        new DateTime(2015, 3, 1),
        [Language.RUBY_ON_RAILS, Language.SASS, Language.SQLITE],
        {
          'GitHub': '//github.com/darthkipsu/ratebeer',
          'Preview': '//quiet-castle-3777.herokuapp.com/'
        },
        RateBeerComponent),

    'DonQuijote': new Project(
        'DonQuijote',
        'Don Qujote',
        'A wind mill fighting Lego Mindstorm robot.',
        new DateTime(2015, 1, 10),
        [Language.JAVA, Language.LEJOS],
        {
          'GitHub': '//github.com/darthkipsu/massive-ironman'
        },
        DonQuijoteComponent),

    'AbandonAllHope': new Project(
        'AbandonAllHope',
        'Abandon All Hope',
        'A tower defence inspired zombie survival game. How many days can you survive?',
        new DateTime(2014, 12, 12),
        [Language.JAVA],
        {
          'GitHub': '//github.com/darthkipsu/abandon-all-hope'
        },
        AbandonAllHopeComponent),

    'Othello': new Project(
        'Othello',
        'Othello',
        'A two player game of reversi.',
        new DateTime(2014, 5, 4),
        [Language.JAVASCRIPT, Language.JQUERY, Language.NODEJS, Language.EXPRESS],
        {
          'GitHub': '//github.com/darthkipsu/othello'
        },
        OthelloComponent),

    'Battleship': new Project(
        'Battleship',
        'The Battleship',
        'A classic battleship game against a computer AI. Whoever sinks all the opponent ships first is the winner.',
        new DateTime(2014, 2, 16),
        [Language.JAVASCRIPT, Language.JQUERY],
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

