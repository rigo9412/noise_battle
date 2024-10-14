import 'package:objectbox/objectbox.dart';

@Entity()
class Configuration {
  @Id()
  late int id;
  late String sensibility;

  Configuration(){
    id = 0;
    sensibility = "50";
  }


}