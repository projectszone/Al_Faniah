import 'package:al_faniah/main.dart';
import 'package:al_faniah/themes/colors_class.dart';
import 'package:al_faniah/themes/text_class.dart';
import 'package:al_faniah/user_modules/screens/order_completion_screen.dart';
import 'package:al_faniah/widgets/back_button.dart';
import 'package:al_faniah/widgets/custom_button.dart';
import 'package:al_faniah/widgets/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderRequirementScreen extends StatefulWidget {
  const OrderRequirementScreen({super.key});

  @override
  State<OrderRequirementScreen> createState() => _OrderRequirementScreenState();
}

class _OrderRequirementScreenState extends State<OrderRequirementScreen> {
  DateTime now = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  TimeOfDay selectedTime2 = TimeOfDay.now();
  final priceController = TextEditingController();
   final dateController = TextEditingController();
 
 
  //Select time function
  selectTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    if (timeOfDay != null && timeOfDay != selectedTime) {
      setState(() {
        selectedTime = timeOfDay;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomBackButton(),
                   SizedBox(width: mq.width * .02,),
                  Text('Please Fill Requirement Form', style: TextDesign.titleText,),
                ],
              ),
            ),
            CustomTextFormField(
              controller: dateController,
              hintText: 'Order Date', 
              prefixIcon: Icons.calendar_month,
              onTap: () async{
                DateTime? pickeddate = await showDatePicker(
                 context: context,
                 initialDate: DateTime.now(),
                 firstDate: DateTime.now(),
                 lastDate: DateTime(2050));                                           
                 if (pickeddate != null){
                 setState(() {                                                      
                  dateController.text = DateFormat("yyyy-MM-dd").format(pickeddate);                                      
                  });
                                                      }
              },),
            CustomTextFormField(
              controller: priceController,
              hintText: 'Price You offer?', 
              prefixIcon: CupertinoIcons.money_dollar),
              SizedBox(

                height: mq.height * .02,
              ),
              
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                    children: [
                      Text('Start time',style: TextStyle(fontSize: 14,color: Colors.black,),), 
                     ElevatedButton(
                      style:ElevatedButton.styleFrom(
                    backgroundColor:
                       Pallete.textFormColor,
                     side: MaterialStateBorderSide.resolveWith(
                     (states) =>
                        BorderSide(width: 1, ),
                                                    ), //elevation of button
                                                    shape: RoundedRectangleBorder( //to set border radius to button
                                                        borderRadius: BorderRadius.circular(5)

                                                    ),),
                                                  onPressed: () {
                                                    selectTime(context);
                                                  },
                                                  child: Text(
                                                    "${selectedTime.hour}:${selectedTime.minute}",
                                                    style: TextStyle(fontSize: 12,color: Colors.black,),
                                                  ),
                                                ),
                                                SizedBox(width: 10,),

                   
                                              ],),
                             Column(
                                                  children: [
                                                    Text('End time',style: TextStyle(fontSize: 14,color: Colors.black,),),
                                                    ElevatedButton(
                                                      style:ElevatedButton.styleFrom(
                                                        backgroundColor:
                                                        Pallete.textFormColor,
                                                        side: MaterialStateBorderSide.resolveWith(
                                                              (states) =>
                                                              BorderSide(width: 1, ),
                                                        ), //elevation of button
                                                        shape: RoundedRectangleBorder( //to set border radius to button
                                                            borderRadius: BorderRadius.circular(5)
                                                        ),),
                                                      onPressed: () async {
                                                        final TimeOfDay? timeOfDay = await showTimePicker(
                                                          context: context,
                                                          initialTime: selectedTime2,
                                                          initialEntryMode: TimePickerEntryMode.dial,
                                                        );
                                                        if (timeOfDay != null && timeOfDay != selectedTime2) {
                                                          setState(() {
                                                            selectedTime2 = timeOfDay;
                                                          });
                                                        }
                                                      },
                                                      child: Text(
                                                        "${selectedTime2.hour}:${selectedTime2.minute}",
                                                        style: TextStyle(fontSize: 12,color: Colors.black,),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                    ],
                  ),
                  SizedBox(height: mq.height * .02,),
                  Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        maxLength: 500,
        maxLines: 5,
        decoration: InputDecoration(
          hintText: 'Enter Description',
          hintStyle: TextDesign.simpleText,
          filled: true,
          fillColor: const Color.fromRGBO(250, 249, 239, 1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Pallete.grey, 
        width: 1.0, 
      ),
      borderRadius: BorderRadius.circular(10.0),
    ),
        ),
      ),
    ),
    SizedBox(height: mq.height * .02,),
    CustomButtonContainer(
      onTap: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const OrderCompleteScreen()));
      }, 
      text: 'CONFIRM BOOKING'),

          ],
        ),
      ),
    );
  }
}