
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:softbd_task/core/utils/hexcolor.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(child: Scaffold(
      backgroundColor:colorScheme.onPrimary,

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const SizedBox(
                height: 24,
              ),
              Card(
                elevation: 0.5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(child: Image.asset('assets/images/frame.png',height: 60,width: 60,),
                          radius: 24.0,
                          backgroundColor: HexColor("#F5F6FC")),

                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "মোঃ মোহাইমেনুল রেজা",
                            style: textTheme.bodyMedium?.copyWith(
                                color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "সফটবিডি লিমিটেড",
                            style: textTheme.bodyMedium?.copyWith(
                                color: HexColor("#6A6A6A"), fontSize: 14,fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                         Row(
                           children: [
                             Image.asset("assets/images/map.png"),

                             Text(
                               "ঢাকা",
                               style: textTheme.bodyMedium?.copyWith(
                                   color: HexColor("#6A6A6A"), fontSize: 12,fontWeight: FontWeight.w400),
                             ),
                           ],
                         )
                        ],
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/frame1.png',
                        height: 120,width: 100,),

                      Text(
                        "সময় অতিবাহিত",
                        style: textTheme.bodyMedium?.copyWith(
                            color: Colors.black, fontSize: 16,fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "মেয়াদকাল",
                        style: textTheme.bodyMedium?.copyWith(
                            color: Colors.black, fontSize: 16,fontWeight: FontWeight.w300),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "১ই জানুয়ারি ২০২৪ - ৩১ই জানুয়ারি ২০৩০",
                        style: textTheme.bodyMedium?.copyWith(
                            color: HexColor("#202020"), fontSize: 12,fontWeight: FontWeight.w500),
                      ),

                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        "আরও বাকি",
                        style: textTheme.bodyMedium?.copyWith(
                            color: HexColor("#FF737A"), fontSize: 16,fontWeight: FontWeight.w500),
                      ),

                     Row(
                       children: [

                         Column(
                           children: [
                             Row(
                               children: [
                                 SizedBox(
                                   width: 24,
                                   height: 30,
                                   child: Card(
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(4.0),
                                       side: BorderSide(
                                         color: Colors.red,
                                         width: 1.0,
                                       ),
                                     ),
                                     child: Center(
                                       child: Text(
                                         "0",
                                         style: textTheme.bodyMedium?.copyWith(
                                             color: HexColor("#FF737A"), fontSize: 12,fontWeight: FontWeight.w500),
                                       ),
                                     ),
                                   ),
                                 ),

                                 SizedBox(
                                   width: 24,
                                   height: 28,
                                   child: Card(
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(4.0),
                                       side: BorderSide(
                                         color: Colors.red,
                                         width: 1.0,
                                       ),
                                     ),
                                     child: Center(
                                       child: Text(
                                         "5",
                                         style: textTheme.bodyMedium?.copyWith(
                                             color: HexColor("#FF737A"), fontSize: 12,fontWeight: FontWeight.w500),
                                       ),
                                     ),
                                   ),
                                 ),

                               ],
                             ),
                             Text(
                               "বছর",
                               style: textTheme.bodyMedium?.copyWith(
                                   color: HexColor("#FF737A"), fontSize: 12,fontWeight: FontWeight.w500),
                             ),
                           ],
                         ),




                         SizedBox(
                           width: 8,
                         ),

                         Column(
                           children: [
                             Row(
                               children: [
                                 SizedBox(
                                   width: 24,
                                   height: 30,
                                   child: Card(
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(4.0),
                                       side: BorderSide(
                                         color: Colors.red,
                                         width: 1.0,
                                       ),
                                     ),
                                     child: Center(
                                       child: Text(
                                         "0",
                                         style: textTheme.bodyMedium?.copyWith(
                                             color: HexColor("#FF737A"), fontSize: 12,fontWeight: FontWeight.w500),
                                       ),
                                     ),
                                   ),
                                 ),

                                 SizedBox(
                                   width: 24,
                                   height: 30,
                                   child: Card(
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(4.0),
                                       side: BorderSide(
                                         color: Colors.red,
                                         width: 1.0,
                                       ),
                                     ),
                                     child: Center(
                                       child: Text(
                                         "6",
                                         style: textTheme.bodyMedium?.copyWith(
                                             color: HexColor("#FF737A"), fontSize: 12,fontWeight: FontWeight.w500),
                                       ),
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                             Text(
                               "মাস",
                               style: textTheme.bodyMedium?.copyWith(
                                   color: HexColor("#FF737A"), fontSize: 12,fontWeight: FontWeight.w500),
                             ),
                           ],
                         ),


                         SizedBox(
                           width: 4,
                         ),

                         Column(
                           children: [
                             Row(
                               children: [
                                 SizedBox(
                                   width: 24,
                                   height: 30,
                                   child: Card(
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(4.0),
                                       side: BorderSide(
                                         color: Colors.red,
                                         width: 1.0,
                                       ),
                                     ),
                                     child: Center(
                                       child: Text(
                                         "1",
                                         style: textTheme.bodyMedium?.copyWith(
                                             color: HexColor("#FF737A"), fontSize: 12,fontWeight: FontWeight.w500),
                                       ),
                                     ),
                                   ),
                                 ),

                                 SizedBox(
                                   width: 24,
                                   height: 30,
                                   child: Card(
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(4.0),
                                       side: BorderSide(
                                         color: Colors.red,
                                         width: 1.0,
                                       ),
                                     ),
                                     child: Center(
                                       child: Text(
                                         "7",
                                         style: textTheme.bodyMedium?.copyWith(
                                             color: HexColor("#FF737A"), fontSize: 12,fontWeight: FontWeight.w500),
                                       ),
                                     ),
                                   ),
                                 ),
                               ],
                             ),

                             Text(
                               "দিন",
                               style: textTheme.bodyMedium?.copyWith(
                                   color: HexColor("#FF737A"), fontSize: 12,fontWeight: FontWeight.w500),
                             ),
                           ],
                         ),

                       ],
                     )
                    ],
                  )
                ],
              ),

              SizedBox(
                height: 30,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child:Image.asset('assets/images/man.png',
                            width: 32,
                            height: 33,
                          ),
                        ),
                      ),

                      Text(
                        "মেনু নং \n ০০০০১",
                        style: textTheme.bodyMedium?.copyWith(
                            color: HexColor("#6A6A6A"), fontSize: 14,fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child:Image.asset('assets/images/home.png',
                            width: 32,
                            height: 33,
                          ),
                        ),
                      ),

                      Text(
                        "মেনু নং \n ০০০০১",
                        style: textTheme.bodyMedium?.copyWith(
                            color: HexColor("#6A6A6A"), fontSize: 14,fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),

                 Column(
                   children: [

                     SizedBox(
                       width: 70,
                       height: 70,
                       child: Card(
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(4.0),
                         ),
                         child:Image.asset('assets/images/im.png',
                           width: 32,
                           height: 33,
                         ),
                       ),
                     ),

                     Text(
                       "মেনু নং \n ০০০০১",
                       style: textTheme.bodyMedium?.copyWith(
                           color: HexColor("#6A6A6A"), fontSize: 14,fontWeight: FontWeight.w400),
                     ),
                   ],
                 ),
                ],
              ),

              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Column(
                    children: [
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child:Image.asset('assets/images/men1.png',
                            width: 32,
                            height: 33,
                          ),
                        ),
                      ),

                      Text(
                        "মেনু নং \n ০০০০১",
                        style: textTheme.bodyMedium?.copyWith(
                            color: HexColor("#6A6A6A"), fontSize: 14,fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child:Image.asset('assets/images/menu2.png',
                            width: 32,
                            height: 33,
                          ),
                        ),
                      ),

                      Text(
                        "মেনু নং \n ০০০০১",
                        style: textTheme.bodyMedium?.copyWith(
                            color: HexColor("#6A6A6A"), fontSize: 14,fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),

                  Column(
                    children: [

                      SizedBox(
                        width: 70,
                        height: 70,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child:Image.asset('assets/images/menu3.png',
                            width: 32,
                            height: 33,
                          ),
                        ),
                      ),

                      Text(
                        "মেনু নং \n ০০০০১",
                        style: textTheme.bodyMedium?.copyWith(
                            color: HexColor("#6A6A6A"), fontSize: 14,fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),

                ],
              ),
            ],
          ),
        ),
      ),

    ));
  }
}
