import 'package:flutter/material.dart';
import 'package:realestate/pages/filter_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> tabItems = ["Real Estate", "Apartment", "House", "Motels", "Hotels"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child:  Padding(
          padding: const EdgeInsets.only(top:10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Row(
            children: [
              Expanded(child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  border: Border.all(color: Colors.grey[300]!)
                ),
                padding:const EdgeInsets.symmetric(horizontal: 10),
                child: Padding(
                  padding: const EdgeInsets.only(top:10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              ),
          
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey[300]!,
                  )
                ),
                child: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const FilterPage()));
                }, icon: const Icon(Icons.tune)),
              )
            ],
          ),
          const SizedBox(height: 15,),
           Container(
            
            height: 42,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tabItems.length,
              itemBuilder: (context, index){
              return Container(
                decoration: BoxDecoration(
                  color: index == 0? Colors.black : Colors.white,
                  border: Border.all(
                    color: index == 0 ? Colors.black : Colors.grey,
                  
                  ),
                  borderRadius: BorderRadius.circular(32),
                ),
                padding:const EdgeInsets.symmetric(horizontal: 24),
                margin:const EdgeInsets.only(right: 12),
                child: Center(
                  child: Text(tabItems[index],style:const TextStyle(color: Colors.red),),
                ),
              );
            }),
          ),
          const SizedBox(height: 15,),
          
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                   Container(
            margin:const EdgeInsets.only(left: 16),
            height: 360,
            child:ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index){
                return Container(
                  width: 240,
                  margin: const EdgeInsets.only(right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Container(
                        decoration:const BoxDecoration(
                          color: Colors.grey,
                          
                        ),
                        child:const Image(image: NetworkImage(
                          'https://images.unsplash.com/photo-1570129477492-45c003edd2be?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          
                          ),
                          fit: BoxFit.cover,
                          
                          ),
                      ),
                      
                      ),
                     const SizedBox(height: 16,),
                     const Text('\$440,000',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),),
                      const SizedBox(height: 16,),
                     const Text("123 street, Road"),
                    ],
                  ),
                );
              }),
          ),
          
                 
          
          const SizedBox(height: 15,),
          
          Container(
            margin:const EdgeInsets.all(16),
            height: 400,
            child: GridView.count(
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              crossAxisCount: 2,
              childAspectRatio: 1.3,
              children: List.generate(100, (index) => Container(
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
                child:const Image(
                  image: NetworkImage('https://plus.unsplash.com/premium_photo-1661915661139-5b6a4e4a6fcc?q=80&w=1934&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  
                  ),
                  
                  colorBlendMode: BlendMode.darken,
                  fit: BoxFit.cover,
                  
                  ),
              ))
            ),
          ),
                  
                ],
              ),
            )
            ),
          
                 
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline),
            label: 'Email',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.list_outlined),
            label: 'Lists',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            label: 'Profile',
            )
        ]
        ),
    );
  }
}