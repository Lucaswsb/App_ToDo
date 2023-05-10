import 'package:flutter/material.dart';
import 'app_controller.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color.fromRGBO(50, 47, 94, 1),
      appBar: AppBar( 
        toolbarHeight: 75,
        leading: IconButton(
          onPressed:(){},
          icon: const Icon(
          Icons.calendar_month,
          color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black.withOpacity(0.3),
        title: const Text('Aqui vai o dia da semana'),
        centerTitle:true, 
        actions: const [ 
          CustomSwitch(),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //container1
            Container(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromRGBO(34, 32, 50, 0.4)),
              margin: const EdgeInsets.only(
                bottom: 40,
                top: 10,
                left: 10,
                right: 10,),
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: const Align(
                alignment: Alignment.center,
                child: Text('Aqui vai a % geral')),
           ),

           const Text(
            'Projetcs',
             style: TextStyle(
              color: Colors.white,
              fontSize: 20, 
              ),
              
            ),
      
           //row dos projetos
           Row(
              children: [
               Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(125, 134, 203, 0.4)),
                  margin: const EdgeInsets.all(8),
                  height: 200,
                  width: 150,
                  child: const Align(
                  alignment: Alignment.center,
                  child: Text('Aqui os projetos')),
               ),
                Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(125, 134, 203, 0.4)),
                  margin: 
                  const EdgeInsets.only(
                  left: 30, 
                  right: 10,
                  ),
                  
                  height: 200,
                  width: 150,
                  child: const Align(
                  alignment: Alignment.center,
                  child: Text('Aqui os projetos')),
               ),
             ],
           ),
          //Columns das tarefas
          // Column(
          //   children: [
          //     Checkbox(
          //       value: value,
          //        onChanged: onChanged,
          //        shape: Container(

          //        ),)
          //   ],
          // )
          
            const Text(
            'Tasks',
             style: TextStyle(
              color: Colors.white,
              fontSize: 20, 
              ),
              textAlign: TextAlign.end,
            ),
          
          
           Column(
             children: [
              Container(
                decoration: BoxDecoration(
                
                 borderRadius: BorderRadius.circular(10),
                 color: const Color.fromRGBO(125, 134, 203, 0.4)),
                 margin: const EdgeInsets.only(
                   top: 50,
                   bottom: 0,
                 ),
      
                 height: 50,
                 width: MediaQuery.of(context).size.width,
                 child: const Align(
                   alignment: Alignment.center,
                   child: Text('Aqui as tesk')),
                 
                
               ),
               Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: const Color.fromRGBO(125, 134, 203, 0.4)),
                 margin: const EdgeInsets.only(
                   top: 1,
                 ),
      
                 height: 50,
                 width: MediaQuery.of(context).size.width,
                child: const Align(
                   alignment: Alignment.center,
                   child: Text('Aqui as tesk')),
                
               ),
             ],
           ),
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(        
        child: const Icon(
          Icons.add,
          color: Colors.white,          
          ),
        onPressed: (){
          setState (){
            
          }
        },  
                
      ),
      floatingActionButtonLocation: 
      FloatingActionButtonLocation.centerFloat, 
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
            value: AppController.instance.isDartTheme,
            onChanged: (value){
            AppController.instance.changeTheme();
            },);
  }
}
