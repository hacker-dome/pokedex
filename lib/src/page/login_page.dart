import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mdq = MediaQuery.of(context);
    print(mdq.size.height);
    print(mdq.size.width);
    if(mdq.orientation == Orientation.portrait){
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: <Widget>[
               Column(
                      children: <Widget>[
                        Expanded(child:Container(color:Colors.red)),
                         Expanded(child:Container(color:Colors.green)),
                      ],
                    ),
              ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    height: (mdq.size.height - mdq.viewInsets.bottom)*0.5,
                    child: Center(
                      child: Container(
                        width: mdq.size.width * 0.2,
                        height:(mdq.size.height - mdq.viewInsets.bottom) * 0.2,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: (mdq.size.height - mdq.viewInsets.bottom)*0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text("Email"),
                            TextField(),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text("Password"),
                            TextField(),
                          ],
                        ),
                        ButtonTheme(
                          minWidth: mdq.size.width*0.5,
                          child: RaisedButton(
                            onPressed: (){},
                          )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );}
    else{
      return Scaffold(
              body: SafeArea(
                child: Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Expanded(child:Container(color:Colors.red)),
                         Expanded(child:Container(color:Colors.green)),
                      ],
                    ),
                    Row(
            children: <Widget>[
               Container(
                        width: mdq.size.width*0.3,
                        child: Center(
                          child: Container(
                            width: mdq.size.width * 0.2,
                            height: mdq.size.height * 0.2,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                       Container(
                        width: mdq.size.width*0.7,
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text("Email"),
                                TextField(),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text("Password"),
                                TextField(),
                              ],
                            ),
                            ButtonTheme(
                              minWidth: mdq.size.width*0.5,
                              child: RaisedButton(
                                onPressed: (){},
                              )),
                          ],
                        ),
                      ),
            ],
          ),
                  ],
                ),
        ),
      );
    }
    /*return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(height:50),
            Container(
              width:150,
              height:150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
            ),
                        SizedBox(height:90),
             Text("Email",textAlign: TextAlign.left,),
                                     SizedBox(height:10),

             TextField(),
                                     SizedBox(height:90),

              Text("Password"),
                                      SizedBox(height:10),

             TextField(),
                                     SizedBox(height:50),

             RaisedButton(),
          ],
          
        ),
      )
    );*/
  }
}
