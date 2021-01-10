import 'package:geolocator/geolocator.dart';
class Location{

//location properties
  double longitude;
  double latitute;

  Location({this.latitute, this.longitude});




  Future<void> getCurrentLocation() async{
    try{
    Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    
    latitute = position.latitude;
    longitude = position.longitude;
    }catch (e){
      print(e); 
    }
  }


}