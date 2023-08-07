
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  late Position position;
  String placeName = '';
  String pinCode = '';

  Future getPermission() async{
    bool serviceEnabled;
    LocationPermission permission;

    permission = await Geolocator.checkPermission();

    if(permission == LocationPermission.denied){
     permission = await Geolocator.requestPermission();
     if(permission == LocationPermission.denied){
       return false;
     }
    }
    if(permission == LocationPermission.deniedForever){
      return false;
    }
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if(!serviceEnabled){
      Geolocator.openLocationSettings();
      return false;
    }
    return true;
  }
  Future getAddressFromPositon(Position position)async{
    try{
      List<Placemark> placemark = await placemarkFromCoordinates(position.latitude,position.longitude);
      print('Placemark = $placemark');
      Placemark place = placemark[0];
      print('Place =$place');
      setState(() {
        placeName = place.locality!;
        pinCode = place.postalCode!;
      });
    }
    catch(e){
      print('Error = $e');
    }
  }
  Future getLocation()async{
    bool result = await getPermission();
    if(result == true){
      print('Permission Granted');
      position = await Geolocator.getCurrentPosition();
      getAddressFromPositon(position);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get My Location'),
        backgroundColor: Colors.blueGrey.shade900
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Place = $placeName'),
            Text('Pin Code =$pinCode'),
            ElevatedButton(
                onPressed:  (){
                  getLocation();
                },
                child:  Text('Get My Location'),
            ),
          ],
        ),
      ),
    );
  }
}
