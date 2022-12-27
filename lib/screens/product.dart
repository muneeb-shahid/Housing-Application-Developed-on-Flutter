import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
       
        title: const Text("Details", style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800),),
        foregroundColor: Colors.black,
      ),
      body: 
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 340,
              width: 340,
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSBd8tektTFaZIbnG1qPr67ASflARsPM1Qvg&usqp=CAU"), fit: BoxFit.cover
               
                )
              ),
            ),
            const Center(
              child: ListTile(
                  title: Text("CRAFTSMAN HOUSE", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
                  trailing: Icon(Icons.bookmark_border_rounded, size: 40,),
                )
            ),
            Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15, right: 15),
                        child: Text("520 N Beaudry Ave, Los Angeles", style: TextStyle(fontSize: 15, color: Color(0xff0F2F44)),),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SingleChildScrollView(
                      
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Icon(Icons.bed, color: Color(0xffF5C945),), Text("4 Beds"), 
                              SizedBox(
                                width: 7,
                              ),
                              Icon(Icons.bathtub, color: Color(0xffF5C945)), Text("4 Baths"),
                              SizedBox(
                                width: 7,
                              ),
                              Icon(Icons.garage_rounded, color: Color(0xffF5C945)), Text("1 Garage"), 
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ454r0OZ_CtysV5IHHgJBpxlO-dtx9IFln5TdDarVV3ghvBFyCeJvC-9lJo5JmTZoCbXU&usqp=CAU"),
              ),
              title: const Text("Rebecca Tetha", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
              subtitle: const Text("Owner Craftsman House"),
              trailing: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff103144)
                ),
                onPressed: (){}, icon: const Icon(Icons.call), label: const Text("Call"))
            ),
            const SizedBox(
              height: 5,
            ),  
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
              
                      child: const Text("Completely redone in 2021. \n4 bedrooms. \n2 bathrooms. \n1 garahe. amazing curb oppeal & enterain areawater. \nTons of built-ins & extras.",style: TextStyle(fontSize: 15),)), TextButton(onPressed: (){}, child: const Text("Read More", style: TextStyle(color: Colors.grey),))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height:10,
            ),
            
           Container(      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 15, right: 15) ,     child:  Text("Gallery", style: TextStyle(fontWeight: FontWeight.w900,
              fontSize: 16
            ),),),
            const SizedBox(
              height:10,
            ),
            
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 98,
                    height: 65,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://images.unsplash.com/photo-1560448205-4d9b3e6bb6db?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fHJvb218ZW58MHx8MHx8&w=1000&q=80")
                      )
                    ),
                  ),
                  Container(
                    width: 98,
                    height: 65,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://images.unsplash.com/photo-1513694203232-719a280e022f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80")
                      )
                    ),
                  ),
                  Container(
                    width: 98,
                    height: 65,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://media.istockphoto.com/id/1310747508/photo/living-room-interior-with-yellow-sofa-and-eating-room.jpg?s=170667a&w=0&k=20&c=folae-VDbQhwv_ac-lm0ZRgiJ0Oe8BkGn_VqTiWPbss=")
                      )
                    ),
                  ),
                  Stack(
                    children: [
                    Container(
                      width: 98,
                      height: 65,
                      decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://images.unsplash.com/photo-1598928506311-c55ded91a20c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80")
                      )
                    ),
                    ),
                    const Positioned(
                      top: 25,
                      left: 27,
                      child: Text("+10", style: TextStyle(fontSize: 22, color: Colors.white, backgroundColor: Color.fromARGB(96, 0, 0, 0)),))
                    ]
                  ),
                ],
              ),
            ),
            const SizedBox(
              height:10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child:  Text("Price",style: TextStyle(fontWeight: FontWeight.w700),),
              )),
            ListTile(
              title: const Text("5990000", style: TextStyle(color: Color(0xff0F2F44), fontSize: 24,fontWeight: FontWeight.w900),),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff103144)
                ),
                child: const Text("BUY NOW", style: TextStyle(color: Colors.white, fontSize: 16),), onPressed: (){},),
            )
          ]
        ),
      )
    );
  }
}