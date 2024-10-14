import 'package:objectbox/objectbox.dart';

@Entity()
class Player {
  @Id()
  int id;
  String name;
  late double score;

  Player(this.id, this.name){
    score = 0;
  }

  

}