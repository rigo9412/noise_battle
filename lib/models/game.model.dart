import 'package:noise_battle/models/player.model.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class Game {
  @Id()
  late int id;
  late List<Player> _players;
  late Player winner;
  late int round;
  late int sesiblitiy;

  Game(){
    id = 0;
    _players = [];
    sesiblitiy = 50;
    round = 1;
  }

  List<Player> get players => _players;

  void addPlayer(Player player){
    _players.add(player);
  }

  void removePlayer(int id){
    _players.removeWhere((element) => element.id == id);
  }

  void setNoiseLevel(int id, double score){
    var player = _players.firstWhere((x) => x.id == id);
    player.score = score;
     
  }

  Player getWinner(){
    winner = _players.reduce((value, element) => value.score > element.score ? value : element);
    return winner;
  }



}