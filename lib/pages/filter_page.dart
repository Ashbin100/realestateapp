import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey[500]!)
                    ),
                    child: IconButton(onPressed: (){
          Navigator.pop(context);
                    }, icon:const Icon(Icons.arrow_back)),
                  ),
          
                 const Expanded(child: Center(
                    child: Text('Filter Property'),
                  )),
          
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey[500]!)
                    ),
                    child: IconButton(onPressed: (){
          
                    }, icon:const Icon(Icons.refresh)),
                  ),
          
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}