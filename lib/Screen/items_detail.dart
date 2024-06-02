import 'package:flutter/material.dart';
import 'package:flutter_application/Models/items_model.dart';
import 'package:flutter_application/Screen/final_page.dart';
import 'package:flutter_application/utils/colors.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key ,required this.food });
  final FoodDetail food;

  @override
  State<DetailPage> createState() => _DetailPageState();
}
int quantity =1;
class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColors,
      body: ListView(   
        children: [
           const SizedBox(height: 15,),
           //detail header
          detailitemHeaders(),
          // for image
          detailImage(),
          Container(
            color:Colors.white,
            padding:const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(children: [
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //for name

                      Text(
                        widget.food.name,
                maxLines: 1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 34),),

                  Text('\$${widget.food.price}.00',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: primaryColors),),
                    ],
                  )),
                  Material(
                    color: primaryColors,
                    borderRadius: BorderRadius.circular(30),
                    child: Row(children: [
                      IconButton(onPressed: () {
                        if(quantity>1){
                          quantity -=1;
                          setState(() {
                            
                          });
                        }
                      },
                      icon: const Icon(
                        Icons.remove,
                        color: Colors.white,),),
                        const SizedBox(
                          width: 4,
                        ),
                         Text(
                          "$quantity",
                        style: const TextStyle(
                          color:Colors.white,
                          fontSize: 25),),
                   const SizedBox(
                          width: 4,
                        ),
                        IconButton(onPressed: (){
if(quantity>0){
                          quantity +=1;
                          setState(() {                           
                          });
                        }

                        },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,),),
                    ],),
                  )
                ],),
                const SizedBox(
                  height: 27,
                ),
                Row(
children: [
  // for rating
  const Icon(Icons.star,
                  color:Colors.amber,size: 18,),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    widget.food.rate.toString(),
                  style: const TextStyle(
                    color: Colors.black38,
                    fontSize: 18),),
                    const Spacer(),
                    //for kal
                    const Icon(Icons.fiber_manual_record,color:Colors.red),
                    const SizedBox(
                      width: 4,
                    ),
                    Text('${widget.food.kcal}kcal',
                    style:const TextStyle(fontWeight: FontWeight.bold,fontSize:16)),
                    const Spacer(),
                    // for time
                    const Icon(Icons.access_time_filled,color: Colors.amber,),
                    const SizedBox(
                      width: 4,
                    ),
                     Text(
                        widget.food.cookingTime,
                maxLines: 1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16),),

],
                ),
                // for Description
                const SizedBox(
                  height: 10,
                ),
                const Text("About Us", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 24,),),
                const SizedBox(
                  height: 10,
                ),
                Text(
                        widget.food.description,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                  fontSize: 16,),),
                  //for order confirmed
                  const SizedBox(
                  height: 25,
                ),
                Material(
                  color: primaryColors,
                  borderRadius: BorderRadius.circular(15),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> FinalPage()));
                    },
                    borderRadius: BorderRadius.circular(15),
                    child: Container(width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 21),
                    child: const Text("Confirmed Order",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                    ),
                    ),
                    ),
                ),
                const SizedBox(
                  height: 25,
                )


              ],
            ),
          )
        ],
      ),
      
    );
  }

  SizedBox detailImage() {
    return SizedBox(
          height: 300,
          width: double.infinity,
          child: Stack(children: [
         Positioned(left: 0,
         bottom: 0,
         right: 0,
         child:
         Container(
          height: 150,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35)
                ),
          ),
          )),
          Center(
            child:Container(
              decoration: BoxDecoration(
                boxShadow:[
                  BoxShadow(
color:Colors.green[400]!,
blurRadius: 15,
offset: const Offset(0,8)
                  )
                  
                ],
                borderRadius: BorderRadius.circular(250),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(250),
                child: Image.network(
                  widget.food.image,
                  height: 250,
                  width: 250,
                  fit: BoxFit.cover
                ),),
              )
          )
          ],)
        );
  }

  Padding detailitemHeaders() {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
            Material(
              color: Colors.white.withOpacity(0.21),
              borderRadius: BorderRadius.circular(10),
              child: const BackButton(color: Colors.white,),
              ),
              const Spacer(),
              const Text("Detail Food",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold),),
                const Spacer(),
Material(
 color: Colors.white.withOpacity(0.21),
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  child: const Icon(Icons.favorite_border),

                  color: Colors.white,
                  ),
              ),


)
          ],
          ),
        );
  }
}