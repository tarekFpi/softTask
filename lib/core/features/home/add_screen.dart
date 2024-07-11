 import 'package:flutter/material.dart';
 import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:get/get.dart';
import 'package:softbd_task/core/theme/color_scheme.dart';
import 'package:softbd_task/core/utils/hexcolor.dart';

class NewAddScreen extends StatefulWidget {
  const NewAddScreen({super.key});

  @override
  State<NewAddScreen> createState() => _NewAddScreenState();
}

class _NewAddScreenState extends State<NewAddScreen> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(child: Scaffold(
      appBar: AppBar(

        title: SizedBox(
         //  width: double.infinity,
          child: Row(

            children: [

              const SizedBox(
                width: 8,
              ),
              SizedBox(
                width: 28,
              ),
              Text(
                "নতুন যোগ করুন",
                style: textTheme.bodyMedium?.copyWith(
                    color: Colors.black, fontSize: 16,fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
      backgroundColor:colorScheme.onPrimary,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text(
                          "অনুচ্ছেদ",
                          style: textTheme.bodyMedium?.copyWith(
                              color: Colors.black, fontSize: 16,fontWeight: FontWeight.w400),
                        ),
                      ),

                      Text(
                        "৪৫ শব্দ",
                        style: textTheme.bodyMedium?.copyWith(
                            color: Colors.black, fontSize: 14,fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),

                  Card(
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(16),
                        fillColor: Colors.white38,
                        filled: true,
                        hintText: "অনুচ্ছেদ লিখুন",
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height:16,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  "অনুচ্ছেদের বিভাগ",
                  style: textTheme.bodyMedium?.copyWith(
                      color: Colors.black, fontSize: 16,fontWeight: FontWeight.w300),
                ),
              ),
              const SizedBox(
                height: 8,
              ),

             SizedBox(
               width: double.infinity,
               child: Card(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(
                      isExpanded: true,
                      hint: Text(
                        'অনুচ্ছেদের বিভাগ নির্বাচন করুন',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                      items: items
                          .map((String item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ))
                        .toList(),
                      value: selectedValue,
                      onChanged: (String? value) {
                        setState(() {
                          selectedValue = value;
                        });
                      },
                      buttonStyleData: const ButtonStyleData(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        height: 40,
                        width: 140,
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        height: 40,
                      ),
                    ),
                  ),
                ),
             ),

              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  "তারিখ ও সময়",
                  style: textTheme.bodyMedium?.copyWith(
                      color: Colors.black, fontSize: 16,fontWeight: FontWeight.w300),
                ),
              ),
              const SizedBox(
                height: 16,
              ),

              Card(
                child: Row(
                  children: [
                    Image.asset('assets/images/can.png',width: 24,height: 24,),
                    Expanded(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2<String>(
                          isExpanded: true,
                          hint: Text(
                            'নির্বাচন করুন',
                            style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                          items: items
                              .map((String item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (String? value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                          buttonStyleData: const ButtonStyleData(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            height: 40,
                            width: 140,
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            height: 40,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(
                height: 16,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  "স্থান",
                  style: textTheme.bodyMedium?.copyWith(
                      color: Colors.black, fontSize: 16,fontWeight: FontWeight.w300),
                ),
              ),
              const SizedBox(
                height: 8,
              ),

              Card(
                child: Row(
                  children: [
                    Image.asset('assets/images/map.png',width: 24,height: 24,),
                    Expanded(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2<String>(
                          isExpanded: true,
                          hint: Text(
                            'নির্বাচন করুন',
                            style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).hintColor,
                            ),
                          ),
                          items: items
                              .map((String item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (String? value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                          buttonStyleData: const ButtonStyleData(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            height: 40,
                            width: 140,
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            height: 40,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              const SizedBox(
                height: 16,
              ),



              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      "অনুচ্ছেদের বিবরণ",
                      style: textTheme.bodyMedium?.copyWith(
                          color: Colors.black, fontSize: 16,fontWeight: FontWeight.w200),
                    ),
                  ),

                  Text(
                    "১২০ শব্দ",
                    style: textTheme.bodyMedium?.copyWith(
                        color: Colors.black, fontSize: 14),
                  ),
                ],
              ),

              const SizedBox(
                height: 8,
              ),
               SizedBox(
                height: 130, // <-- TextField height
                child: TextField(
                  maxLines: null,
                  expands: true,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(filled: true, hintText: 'কার্যক্রমের বিবরণ লিখুন'),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0)
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    //foregroundColor: colorScheme.onPrimary,
                    backgroundColor:HexColor('#86B560'),

                  ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                  onPressed: (){
                  },
                  child: Text('সংরক্ষন করুন',style: textTheme.bodyLarge?.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: lightColorScheme!.onPrimary)),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
