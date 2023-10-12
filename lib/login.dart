import 'package:flutter/material.dart';
import 'package:app_win/utils/constantes.dart' as cons;
import 'package:app_win/home.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController email = TextEditingController();

  bool _validateUser = false;
  bool _validatePass = false;
  bool _validateEmail = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              //padding: EdgeInsets.all(size.width * 0.05),
              child:   Column(
                children: [
                  Container(
                    height: size.height * 0.4 ,
                    width: size.width * 1,
                    color: cons.salmon,
                    padding: EdgeInsets.all(size.width * 0.05),
                    child:
                    Container(
                      height: size.height * 0.3 ,
                      width: size.width * 0.3,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/user_icon.png'),
                              //fit: BoxFit.cover
                          )
                      ),
                    ),
                  ),
                  //Titulo(texto: 'Ingresa tu usuario',),
                  Padding(padding:  EdgeInsets.all(size.width * 0.05),
                    child:
                    TextFormField(
                      controller: user,
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                width: 1,
                                style: BorderStyle.none
                            )
                        ),
                        filled: true,
                        fillColor: cons.grisInput,
                        prefixIcon: Icon(Icons.person,color: cons.salmon,),
                        hintText: "Usuario",
                        errorText: _validateUser ? 'Debe de escribir su usuario' : null,
                        contentPadding: EdgeInsets.all(10),
                      ),
                      onChanged: (dato){
                        setState(() {
                          if(dato.trim().isNotEmpty){
                            _validateUser=false;
                          }
                        });
                      },
                    ),
                  ),

                  //nos da un espacio entre widgets
                  //SizedBox(height: 25,),
                  //Titulo(texto: 'Ingresa tu email',),
                  Padding(padding:  EdgeInsets.all(size.width * 0.05),
                    child:
                    TextFormField(
                      controller: email,
                      obscureText: false,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                width: 1,
                                style: BorderStyle.none
                            )
                        ),
                        filled: true,
                        fillColor: cons.grisInput,
                        errorText: _validateEmail ? 'Debe de escribir su correo' : null,
                        prefixIcon: Icon(Icons.email,color: cons.salmon,),
                        hintText: "Correo",
                        contentPadding: EdgeInsets.all(10),
                      ),
                      onChanged: (dato){
                        setState(() {
                          if(dato.trim().isNotEmpty){
                            _validateEmail=false;
                          }
                        });
                      },
                    ),
                  ),
                  //SizedBox(height: 25,),
                  //Titulo(texto: 'Ingresa tu contraseña',),
                  Padding(padding: EdgeInsets.all(size.width * 0.05),
                    child:
                    TextFormField(
                      controller: pass,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                                width: 1,
                                style: BorderStyle.none
                            )
                        ),
                        filled: true,
                        fillColor: cons.grisInput,
                        errorText: _validatePass ? 'Debe de escribir su contraseña' : null,
                        prefixIcon: Icon(Icons.lock,color: cons.salmon,),
                        hintText: "Contraseña",
                        contentPadding: EdgeInsets.all(10),
                      ),
                      onChanged: (dato){
                        setState(() {
                          if(dato.trim().isNotEmpty){
                            _validatePass=false;
                          }
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 25),
                  ElevatedButton(
                      onPressed:(){
                        setState(() {
                          //user.
                          user.text.isEmpty ? _validateUser = true:_validateUser=false;
                          email.text.isEmpty ? _validateEmail = true:_validateEmail=false;
                          pass.text.isEmpty ? _validatePass = true:_validatePass=false;
                          //_validateUser = user.text.isEmpty ? true : false;
                          if(!_validateUser&&!_validateEmail&&!_validatePass){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: cons.salmon,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        fixedSize: Size(size.width * .75, 45),

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.login,
                            color: cons.blanco,
                          ),
                          SizedBox(width: 15),
                          Text(
                            'Ingresar',
                            style: TextStyle(
                                color: cons.blanco,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      )
                  ),
                ],
              ),
            )
          ],
        )
    );
  }
  String? validaEmail(String email){
    Pattern pattern = r"/^(([^<>()\[\]\\.,;:\s@”]+(\.[^<>()\[\]\\.,;:\s@”]+)*)|(“.+”))@((\[[0–9]{1,3}\.[0–9]{1,3}\.[0–9]{1,3}\.[0–9]{1,3}])|(([a-zA-Z\-0–9]+\.)+[a-zA-Z]{2,}))$/";
    RegExp regexp = RegExp(pattern.toString());
    if(regexp.hasMatch(email)) {
      return 'true';
    }else{
      return 'false';
    }
  }
}


class Titulo extends StatelessWidget {
  final String texto;
  const Titulo({
    super.key,
    required this.texto
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            texto,
            style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.w500
            )
            ,
          ),
        )
      ],
    );
  }
}