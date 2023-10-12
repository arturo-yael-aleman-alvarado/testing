import 'package:app_win/map.dart';
import 'package:app_win/userInformation.dart';
import 'package:flutter/material.dart';
import 'package:app_win/utils/constantes.dart' as cons;
import 'package:app_win/navbar.dart';
import 'package:flutter/cupertino.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  List<Map<String, String>> rowData = [
    {"nombre": "Juan", "correo": "juan@example.com"},
    {"nombre": "María", "correo": "maria@example.com"},
    {"nombre": "Pedro", "correo": "pedro@example.com"},
    {"nombre": "Juan1", "correo": "ju21an@example.com"},
    {"nombre": "María1", "correo": "ma1ria@example.com"},
    {"nombre": "Pedro1", "correo": "p1edro@example.com"},
    {"nombre": "Juan2", "correo": "j1uan@example.com"},
    {"nombre": "María2", "correo": "ma21ria@example.com"},
    {"nombre": "Pedro22", "correo": "pe2dro@example.com"},
    {"nombre": "Juan2", "correo": "ju222an@example.com"},
  ];
  List usuarios = [];
  int _selectedindex = 0;
  int currentIndex = 0;

  void _showEditDialog(BuildContext context, String nombre, String correo) {
    TextEditingController nombreController = TextEditingController(text: nombre);
    TextEditingController correoController = TextEditingController(text: correo);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text("Editar Fila"),
          content: Column(
            children: <Widget>[
              TextField(
                controller: nombreController,
                decoration: InputDecoration(labelText: "Nombre"),
              ),
              TextField(
                controller: correoController,
                decoration: InputDecoration(labelText: "Correo"),
              ),
            ],
          ),
          actions: <Widget>[
            CupertinoDialogAction(
              child: Text("Cancelar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            CupertinoDialogAction(
              child: Text("Guardar"),
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    //Cada que inicia la app realiza las siguientes acciones:
    //Se añaden valores a la lista de usuarios
    usuarios.add('1#nombre1#correo1');
    usuarios.add('2#nombre2#correo2');
    usuarios.add('3#nombre3#correo3');
    usuarios.add('4#nombre4#correo4');
    usuarios.add('5#nombre5#correo5');
    usuarios.add('6#nombre6#correo6');
    usuarios.add('7#nombre7#correo7');
    usuarios.add('8#nombre8#correo8');
    usuarios.add('9#nombre9#correo9');
    usuarios.add('10#nombre10#correo10');

    super.initState();
  }

  void _showDeleteDialog(
      BuildContext context, String nombre, String correo, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Eliminar Fila"),
          content: Text("¿Estás seguro de que deseas eliminar esta fila?"),
          actions: <Widget>[
            TextButton(
              child: Text("Cancelar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Eliminar"),
              onPressed: () {
                // Elimina la fila de la lista rowData
                rowData.removeAt(index);

                // Cierra el diálogo
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _onTabbed(int index)
  {
    setState(() {
      _selectedindex = index;
      if(_selectedindex == 0){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>userInformation()));
      }
      if(_selectedindex == 1) {
        showDialog(
            context: context,
            builder: (BuildContext context) =>
                AlertDialog(
                  title: const Text('Ir al mapa'),
                  content: const Text('Seguro que quieres ir al mapa?'),
                  actions: <Widget>[
                    TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancelar'),
                        child: const Text('Cancelar')
                    ),
                    TextButton(
                        onPressed: () =>
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => map())),
                        child: const Text('OK')
                    )
                  ],
                )
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        title: Text("VISTA PRINCIPAL"),
        backgroundColor: cons.salmon,
        iconTheme: IconThemeData(color: cons.blanco),
      ),
      endDrawer: NavBar(),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20,bottom: 100,left: 20,right: 20),
            child: Column(
              children: [
                Card(
                  color: cons.salmon,
                  child: Padding(padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: Text(
                              "Usuario",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: cons.blanco,
                                  fontSize: 20
                              ),
                            )
                        ),
                        Expanded(
                            flex: 4,
                            child: Text(
                              "Email",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: cons.blanco,
                                  fontSize: 20
                              ),
                            )
                        ),
                        Expanded(
                            flex: 4,
                            child: Text(
                              "Botones",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: cons.blanco,
                                  fontSize: 20
                              ),
                            )
                        ),

                      ],
                    )
                    ,
                  ),

                ),
                Expanded(
                    child: ListView.builder(
                      itemCount: rowData.length,
                      itemBuilder: (BuildContext context, int index) {
                        final nombre = rowData[index]['nombre'];
                        final correo = rowData[index]['correo'];

                        return ListTile(
                          title: Text(nombre!),
                          subtitle: Text(correo!),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: Icon(Icons.edit),
                                onPressed: () {
                                  _showEditDialog(context, nombre!, correo!);
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.delete),
                                onPressed: () {
                                  _showDeleteDialog(context, nombre!, correo!, index);
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    )
                  ),
                Expanded(
                    child: ListView.builder(
                      itemCount: usuarios.length,
                      itemBuilder: (BuildContext context, int index) {
                        var datos = usuarios[index].split('#');
                        return Card(
                          color: cons.salmon,
                          child: Padding(padding: EdgeInsets.all(15),
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 4,
                                    child: Text(
                                      datos[1],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: cons.blanco,
                                          fontSize: 20
                                      ),
                                    )
                                ),
                                Expanded(
                                    flex: 4,
                                    child: Text(
                                      datos[2],
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: cons.blanco,
                                          fontSize: 20
                                      ),
                                    )
                                ),
                                Expanded(
                                    flex: 4,
                                    child: Row(
                                      children: [
                                        IconButton(
                                    color: Colors.black,
                                    onPressed: () => showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) => AlertDialog(
                                        title: const Text('Editar'),
                                        content: Text(usuarios[index]),
                                        actions: <Widget>[
                                          TextButton(
                                            onPressed: () => Navigator.pop(context, 'Cancelar'),
                                            child: const Text('Cancel'),
                                          ),
                                          TextButton(
                                            onPressed: () => Navigator.pop(context, 'Ok'),
                                            child: const Text('Ok'),
                                          ),
                                        ],
                                      )
                                    ), 
                                    icon: Icon(Icons.edit),
                                  ),
                                        IconButton(
                                            onPressed: ()=> showDialog<String>(
                                                context: context,
                                                builder: (BuildContext context)=>AlertDialog(
                                                  title: const Text('Eliminar'),
                                                  content: const Text('Seguro que quieres eliminiarlo?'),
                                                  
                                                  actions: <Widget>[
                                                    TextButton(
                                                        onPressed: () => Navigator.pop(context,'Cancelar'),
                                                        child: const Text('Cancelar')
                                                    ),
                                                    TextButton(
                                                        onPressed: () => Navigator.pop(context,'OK'),
                                                        child: const Text('OK')
                                                    )
                                                  ],
                                                ),
                                            ),
                                            icon: Icon(Icons.delete)
                                        )
                                      ],
                                    )
                                ),

                              ],
                            )
                            ,
                          ),

                        );
                      },
                    )
                )

                ,

              ],
            ),
          ),
          //bottomNavigationBar: BottomNavigationBar(

         // ),
        ],
      ),
      /*bottomNavigationBar: BttmNavBar(
        currentIndex: currentIndex,
        onTap: _onTabbed,
      ),*/
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Usuario'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: 'Mapa'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_forward),
              label: 'Flecha'
          )
        ],
        currentIndex: _selectedindex,
        selectedItemColor: cons.azul,
        onTap: (int index){
          setState(() {
            _selectedindex = index;
            if(_selectedindex == 0){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>userInformation()));
            }
            if(_selectedindex == 1){
              showDialog(
                  context: context,
                  builder: (BuildContext context)=>AlertDialog(
                    title: const Text('Ir al mapa'),
                    content: const Text('Seguro que quieres ir al mapa?'),
                    actions: <Widget>[
                      TextButton(
                      onPressed: () => Navigator.pop(context,'Cancelar'),
                      child: const Text('Cancelar')
                      ),
                      TextButton(
                      onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>map())),
                      child: const Text('OK')
                      )
                    ],
                )
              );
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>confirmaMapa()));
            }

          });
        },
      ),
    );
  }
}