import 'package:flutter/material.dart';
import 'package:medapp/pages/chats.dart';


class ConvoPage extends StatelessWidget{
const ConvoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          )
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom:10),
                child: TextField(
                  decoration: InputDecoration(
                    labelText:'search',
                    prefixIcon: Icon(
                      Icons.search
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40))
                    ),
                  ),
                )
              ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ChatsPage()));
                  },
                  child: Expanded(
                    child: Container(
                      // height:90,
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                                  ),
                        // elevation: 50,
                                // shadowColor: Colors.black,
                                // color: Colors.greenAccent[100],
                                // child: SizedBox(
                                //   width: 300,
                                //   height: 500,
                                //   child: Padding(
                                //     padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Align(alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10, top: 10),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 22,
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'assets/images/empty_profile.jpg'),
                                    radius: 20,
                                  ), 
                                ),
                              ),
                            ),
                              Column(
                                children:[ 
                                  Padding(padding: EdgeInsets.only(left:40, top: 20)),
                                  Text('Loyd Cardozo',
                                    style: TextStyle(
                                    fontSize: 20,
                                // color: Colors.green[900],
                                    fontWeight: FontWeight.w500,
                                                    ), 
                          ),
                          Row(
                          children: [
                            Align(alignment: Alignment.centerLeft,
                                 child: Text(
                                        'hi',
                                        style: TextStyle(
                                        fontSize: 15,
                                        // color: Colors.green,
                                      ),
                                    ),
                                                                        
                                ),
                                 Align(
                            alignment: Alignment.centerRight,
                            child: Text('9:30 pm')
                          ),
                    ]                                                
                    ),
                                ]
                              ), 
                            ]
                          ), 
                          SizedBox(
                            height: 10,
                          ), 
                          
                          SizedBox(
                            height: 10,
                          ), //SizedBox
                          
                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          // SizedBox(
                          //   width: 100,
                       
                            // child: ElevatedButton(
                            //   onPressed: () => 'Null',
                            //   style: ButtonStyle(
                            //       backgroundColor:
                            //           MaterialStateProperty.all(Colors.green)),
                            //   child: Padding(
                            //     padding: const EdgeInsets.all(4),
                            //     child: Row(
                            //       children: const [
                            //         Icon(Icons.touch_app),
                            //         Text('Visit')
                            //       ],
                            //     ),
                            //   ),
                            // ),
                            
                          // )
                        ],
                      ),
                                  // ), 
                                // ), 
                              ),
                    ),
                  ),
                ),
              // ),
             ] 
      ),
    ), 
  )
      
);
  }

}