
import 'package:flutter/material.dart';


class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      
      length: 4,
      
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor:Colors.purpleAccent,
            
            bottom: const TabBar( 
              tabs: <Widget>[
                Tab( 
                  text: ("INFO"),
                ),
                Tab(
                  text: ("MARKETING"),
                ),
                Tab(
                  text: ("PLANT"),
                ),
                Tab(
                  text: ("QUALITY"),
                )
              ],
            ),
          ),
          body: Container(
            color: Colors.indigo.shade50,
            child: TabBarView(
              
              children: <Widget>[
                SingleChildScrollView(
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                       SizedBox(
                      height: 22,
                    ),
                    Text(
                        "Shaphaco Pharmaceutical Industries was established in Sana’a to produce a wide range of pharmaceutical products.",
                       maxLines: 4, textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 26,
                        )),
                         SizedBox(
                      height: 26,
                    ),
                    Text(
                        "Shaphaco Pharmaceutical Industries employs qualified staff. It has advanced technological facilities for research and development and utilizes the most modern production methods, supported by quality control laboratories, according to current good manufacturing practice.",
                       maxLines: 7, textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 26,
                        )),
                         SizedBox(
                      height: 26,
                    ),
                    Text(
                        " Shaphaco Pharmaceutical Industries applies minute scientific analysis in accordance with the latest scientific norms for raw materials and supplement packing materials and semi pharmaceutical agents utilized for production to determine potency, to guarantee quality and safety of product.",
                     maxLines: 11 ,  textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 26,
                        )),
                          
                    ],
                  ),
                ),
               
                SingleChildScrollView(
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                          "Shaphaco Pharmaceutical Industries have proven success at the local and regional level.",
                        maxLines: 4 , textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 26,
                          )),
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                          "Shaphaco was the first national company to be registered centrally in the GCC countries and marketing its products in Saudi Arabia, Kuwait, Emarates, Bahrain, Qatar, Oman, Jordan and many other countries.",
                         maxLines: 8, textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 26,
                          ))
                    ],
                  ),
                ),
                // ignore: prefer_const_literals_to_create_immutables
                SingleChildScrollView(
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Column(children: [
                    SizedBox(
                      height: 22,
                    ),
                    Text("The Main Plant:",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 26,
                        )),
                    SizedBox(
                      height: 22,
                    ),
                    Text(" * The solid material section (Tablets, Capsules).",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 26,
                        )),
                    SizedBox(
                      height: 22,
                    ),
                    Text(
                        " * The liquid material section (Syrups, Drops, Suspensions).",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 26,
                        )),
                    SizedBox(
                      height: 22,
                    ),
                    Text(" * Packaging and wrapping section.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 26,
                        )),
                    SizedBox(
                      height: 22,
                    ),
                    Text(" * Quarantine and storage section.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 26,
                        )),
                    SizedBox(
                      height: 22,
                    ),
                    Text(" *Services section.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 26,
                        )),
                  ]),
                ),
                 SingleChildScrollView(
                   child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                        "Shaphaco Pharmaceutical Industries apply a reliable system for controlling and assuring quality through all of the process of production in accordance with the latest pharmaceutical practices.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 26,
                        ),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                          "Shaphaco has a number of physical chemical and microbiology laboratories which are equipped with up-to-date equipments and are run by qualified teams of specialists who carry out the necessary Analysis and Quality Control.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 26,
                          )),
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                          "Hence, an integrated and efficient performance of all quality system are utilized in the analysis of raw materials, packaging materials and finished products, in order to guarantee their potency, safety and compliance with the applied specifications; reaching a high level of global satisfaction in terms of quality which is what Shaphaco is seeking.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 26,
                          )),
                          
                    ],
                             ),
                 ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}