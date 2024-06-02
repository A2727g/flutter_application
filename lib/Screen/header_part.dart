import 'package:flutter/material.dart';
import 'package:flutter_application/utils/colors.dart';

class HeaderPart extends StatefulWidget {
  const HeaderPart({super.key});

  @override
  State<HeaderPart> createState() => _HeaderPartState();
}

int indexCategory = 0;
class _HeaderPartState extends State<HeaderPart> {
  @override
  Widget build(BuildContext context) {
    return Column(
         crossAxisAlignment: CrossAxisAlignment.start,
      children:[
       topHeader(),
       SizedBox(height: 30,),
   titile(),
   SizedBox(height: 21,),
   searchBar(),
   categorySelection(),
    ]);
  }

  Padding categorySelection() {
    // list of timers
    List list = ["All","Fruits","Vegetables","Grocery"];
    return Padding(
  padding: EdgeInsets.only(left:10,right: 10),

      child: SizedBox(
        height: 35,
        child: ListView.builder(
      itemCount: list.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context,index){
      return  GestureDetector(
        onTap: (){
          indexCategory = index;
        },
        child: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(left:15,right: 10),
          child: Text(list[index],
          style:TextStyle(fontSize:20,
          color:indexCategory == index? 
          primaryColors :Colors.black45,
          fontWeight: indexCategory== index?FontWeight.bold:null)),
          
          ),
          ),
      );
        }),
       ),
    );
  }

  Container searchBar() {
    return Container(
  height: 55,
  margin: EdgeInsets.symmetric(horizontal:15),
  padding: EdgeInsets.only(left: 5),
  decoration: BoxDecoration(
    color:Colors.green[50],
    borderRadius: BorderRadius.circular(15)
  ),
  child:Row(children: [
    const Expanded(
      child: TextField(
   decoration: InputDecoration(
    border: InputBorder.none,
    prefix: Icon(Icons.search,color:primaryColors),
    hintText: "Search food",
    hintStyle: TextStyle(color:Colors.black26)
   ),
    ) ),
    Material(
      color:primaryColors,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(onTap: (){},
      borderRadius: BorderRadius.circular(10),
      child:Container(
        height: 40,
        width: 40,
        alignment: Alignment.center,
        child: Icon(Icons.insert_emoticon_sharp,
        color:Colors.white),
      )
      ),
    )
  ],)
 );
  }

  Padding titile() {
    return const Padding(
   padding: EdgeInsets.symmetric(horizontal: 15),
   child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
     children:[ Text("Hi Nipin",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: primaryColors,
                fontSize: 18,
              ),),
             Text("Find Your Food",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 34,
            ),) ,
   
      ]),
 );
  }

Padding topHeader() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
               Material(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: (){},
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 40,
            width: 40,
            alignment: Alignment.center,
            child: Icon(
              Icons.menu_open_rounded,
              color: Colors.black,),
          ),
        ),
               ),
               Spacer(),
               // for location
            Icon(Icons.location_on,
            color: primaryColors, size: 18,),
            Text("SKT Nepal",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black38
            ),) ,
        Spacer(),
        ClipRRect(
          borderRadius:BorderRadius.circular(10),
          child: Image.asset("assets/user.png",
          height: 40,
          width: 40,),
        )
        ],),
      );
    
  }
}