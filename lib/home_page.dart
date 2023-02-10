import 'dart:convert';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:http_methods/app_button.dart';
import 'package:http_methods/base_client.dart';
import 'package:http_methods/user.dart';
import 'package:http_methods/result_model.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
 TextEditingController skinController = TextEditingController(text: '');
  TextEditingController glucoseController = TextEditingController(text: '');
   TextEditingController pedigreController = TextEditingController(text: '');
  //TextEditingController insulineController = TextEditingController(text: '');
  TextEditingController bloodController = TextEditingController(text: '');
  TextEditingController imcController = TextEditingController(text: '');
  TextEditingController ageController = TextEditingController(text: '');
double skin = 0;
  double glucose = 0;
  double pedigre = 0;
  double blood = 0;
  double imc = 0;
  double age = 0;

    
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  void _resetFields() {
    skinController.text = "";
    glucoseController.text = "";
    pedigreController.text = "";
 ageController.text = "";
    imcController.text = "";
     bloodController.text = "";
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 185, 237, 241),
      body: SingleChildScrollView(
        child: Container(
           height: 680,
            width: 1500,
         decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/img/back.jpg"),
          fit: BoxFit.cover,
        ),
      ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
           Column(
          mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget> [  
                 
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                Container(
                 child: Image.asset(
                 'assets/img/online-pharmacy.png',
                  fit: BoxFit.contain,
                  height: 100,
              ),
                ),
                                const SizedBox(width: 100),

                Container(
                 child:   Text(
                      " Diabetes prediction",
                      style: GoogleFonts.fredokaOne(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                      ),
                    ),
                )
                ,
                const SizedBox(width: 100),
                Container(
                 child: Image.asset(
                 'assets/img/online-pharmacy.png',
                  fit: BoxFit.contain,
                  height: 100,
              )),]
                ),
                        
const SizedBox(height: 50 ,),

                

                Row(
                                mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                  


  Container(
                     height: 300,
                     width: 150,

                   child: Column(children: 
                   [
                     Container(
                     height: 50,
                     width: 150,
  decoration: BoxDecoration(
    border: Border.all(width: 5.0,color: Colors.black)
  ),
  child: Text("Blood", style: GoogleFonts.fredokaOne(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,

                      ),),
                   ),
                    
                    
                    Container(
                     height: 150,
                     width: 150,
 
 
    child:Image.asset('assets/img/blood.jpg', fit: BoxFit.fill, // Fixes border issues
    width: 100,height: 100,),
    ),
                   Container(
                     height: 50,
                     width: 150,
 child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "0-->122 mm/Hg",
                  labelStyle: TextStyle(color: Colors.black),
                ),
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),
                controller: bloodController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter The patient blood pressure";
                  }
                },
              ),
                   ),
                   ]
                   )
                   ),
                   const SizedBox(width: 50),


  Container(
                     height: 300,
                     width: 150,

                   child: Column(children: 
                   [
                     Container(
                     height: 50,
                     width: 150,
   decoration: BoxDecoration(
    border: Border.all(width: 5.0,color: Colors.black)
  ),
  child: Text("Pedigre", style: GoogleFonts.fredokaOne(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,

                      ),),
                   ),
                    
                    
                    Container(
                     height: 150,
                     width: 150,
 
 
    child:Image.asset('assets/img/pedigre.png', fit: BoxFit.fill, // Fixes border issues
    width: 100,height: 100,),
    ),
                   Container(
                     height: 50,
                     width: 150,
 child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "0-->2.72",
                  labelStyle: TextStyle(color: Colors.black),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),
                controller: pedigreController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter The patient weight";
                  }
                },
              ),
                   ),
                   ]
                   )
                   ),
                   const SizedBox(width:50),

  Container(
                     height: 300,
                     width: 150,

                   child: Column(children: 
                   [
                     Container(
                     height: 50,
                     width: 150,
  decoration: BoxDecoration(
    border: Border.all(width: 5.0,color: Colors.black)
  ),
  child: Text("  Age", style: GoogleFonts.fredokaOne(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,

                      ),),
                   ),
                    
                    
                    Container(
                     height: 150,
                     width: 150,

    child:Image.asset('assets/img/age.jpg', fit: BoxFit.fill, // Fixes border issues
    width: 100,height: 100,),
    ),
                   Container(
                     height: 50,
                     width: 150,
 child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "21-->81 years",
                  labelStyle: TextStyle(color: Colors.black),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),
                controller: ageController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter The patient age";
                  }
                },
              ),
                   ),
                   ]
                   )
                   ),
                   const SizedBox(width: 50),


  Container(
                     height: 300,
                     width: 150,

                   child: Column(children: 
                   [
                     Container(
                     height: 50,
                     width: 150,
  decoration: BoxDecoration(
    border: Border.all(width: 5.0,color: Colors.black)
  ),
  child: Text("  Glucose", style: GoogleFonts.fredokaOne(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,

                      ),),
                   ),
                    
                    
                    Container(
                     height: 150,
                     width: 150,

    child:Image.asset('assets/img/glucose.webp', fit: BoxFit.fill, // Fixes border issues
    width: 100,height: 100,),
    ),
                   Container(
                     height: 50,
                     width: 150,
 child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "0-->199 mol/m*3",
                  labelStyle: TextStyle(color: Colors.black),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),
                controller: glucoseController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter The patient glucose level";
                  }
                },
              ),
                   ),
                   ]
                   )
                   ),
                   const SizedBox(width: 50),
                   
  Container(
                     height: 300,
                     width: 150,

                   child: Column(children: 
                   [
                     Container(
                     height: 50,
                     width: 150,
  decoration: BoxDecoration(
    border: Border.all(width: 5.0,color: Colors.black)
  ),
  child: Text("  IMC", style: GoogleFonts.fredokaOne(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,

                      ),),
                   ),
                    
                    
                    Container(
                     height: 150,
                     width: 150,

 
    child:Image.asset('assets/img/imc.jpg', fit: BoxFit.fill, // Fixes border issues
    width: 100,height: 100,),
    ),
                   Container(
                     height: 50,
                     width: 150,
 child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "0-->67.1 kg/m*2",
                  labelStyle: TextStyle(color: Colors.black),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),
                controller: imcController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter The patient Imc";
                  }
                },
              ),
                   ),
                   ]
                   )
                   ),
                   const SizedBox(width: 50),

               
                
                             
    Container(
                     height: 300,
                     width: 150,
                     
                   child: Column(children: 
                   [
                     Container(
                     height: 50,
                     width: 150,
  decoration: BoxDecoration(
    border: Border.all(width: 5.0,color: Colors.black)
  ),
  child: Text("SkinThickness", style: GoogleFonts.fredokaOne(
                        color: Colors.red,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,

                      ),),
                   ),
                    
                    Container(
                     height: 150,
                     width: 150,

    child:Image.asset('assets/img/skin.png', fit: BoxFit.fill, // Fixes border issues
    width: 100,height: 100,),
    ),
                   Container(
                     height: 50,
                     width: 150,
 child:
              TextFormField(
                keyboardType: TextInputType.number,
                
                decoration: InputDecoration(
                  hintText: "0-->99 mm",
                  labelStyle: TextStyle(color: Colors.black),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),
                
                controller:skinController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter The patient skin";
                  }
                },
              ),
                   ),
                   ]
                  )
                ),
            ]),


  Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                children: [
              Padding(
                padding: EdgeInsets.only(top: 1.0, bottom: 1.0),
                
                child:              
              AppButton(
                operation: 'Analyse',
                operationColor: Color.fromARGB(255, 244, 3, 3),
                description: '',
                onPressed: () async {
                  var user = Postmodel(
                    globalParameters:GlobalParameters() ,
                    inputs: Inputs(input1: Input1(
                      columnNames:  [
                      'Plasma glucose concentration a 2 hours in an oral glucose tolerance test',
                      'Diastolic blood pressure (mm Hg)',
                      'Triceps skin fold thickness (mm)',
                      'Body mass index (weight in kg/(height in m)^2)',
                      'Diabetes pedigree function',
                      'Age (years)',
                      'Class variable (0 or 1)'  
                    ],
                    values: [[
                      'skin',
                      '72',
                      '25',
                      '33.6',
                      '0.627',
                      '50',
                      '0',
                    ]]
                    )
                  
                                    ),
                  );
                  var response = await BaseClient().post(user).catchError((err) {});
                  if (response == null) return;
                   
          Map<String, dynamic> map = json.decode(response);
List<dynamic> data = map["Results"]['output1']['value']['Values'];
print(data[0][1]);
  skin= double.parse(skinController.text);
  glucose= double.parse(glucoseController.text);
  pedigre= double.parse(pedigreController.text);
  blood= double.parse(bloodController.text);
  imc= double.parse(imcController.text);
  age= double.parse(ageController.text);

                },
              ),
              ),
             
              ]
                ),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.start,

                children: [
                 SizedBox(height:50 ,),
              Text(
              "Warning:This Web interface as been build for learning purpose.It use an Artificial Neural network trained with a limited amount of data.Then the results\n provided can be biased and not applicable to  everybody.I dont take any Engagement or responability About The usage and the accuracy of the results\n provided",
          style: GoogleFonts.itim(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
              ),
            ),
            

                ]),
          Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                children: [
            SizedBox(height:50 ,),
              Text(
              "@copyright Cedric-Francois_Ingeniously",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),])
          ])
     




        ),
      ),
    ));
  }
}
