import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class map extends StatefulWidget {
  const map({super.key});

  @override
  State<map> createState() => _mapState();
}

class _mapState extends State<map> {

  void _showSnackbar(BuildContext context)
  {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Bienvenido al mapa'),
          backgroundColor: Colors.orange,
          duration: Duration(seconds: 3),
          behavior: SnackBarBehavior.fixed,
        )
    );
  }
  
  bool activated = false;
  bool activated2 = false;
  bool showAvatar = false;

  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521523, -122.677433);

  void _onMapCreated(GoogleMapController controller){
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mapa'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated:  _onMapCreated,
            initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 11
            ),
          )
          /*Column(
            children: [
              Switch(
                  value: activated,
                  activeColor: Colors.yellow,
                  activeTrackColor: Colors.lightBlue,
                  inactiveThumbColor: cons.blanco,
                  inactiveTrackColor: cons.negro,
                  onChanged: (bool value)
                  {
                    setState(() {
                      activated = value;
                    });
                  }
              ),
              const SizedBox(height: 20,),
              const SizedBox(height: 20,),
              CircleAvatar(
                backgroundImage: AssetImage('assets/user_icon.png'),
                backgroundColor: cons.salmon,
                radius: 50,
              ),
              Align(alignment: Alignment.bottomCenter,
                child:
                ElevatedButton(
                  onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>User_Info()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: cons.salmon,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  child:
                  Text(
                    'Informacion Usuario',
                    style: TextStyle(
                        color: cons.blanco,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    _showSnackbar(context);
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      )
                  ),
                  child: Text(
                    'Snackbar',
                    style: TextStyle(color: Colors.white),
                  )
              )
            ],
          )*/



        ],
      )
    );
  }
}