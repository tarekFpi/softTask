
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:softbd_task/core/features/home/add_screen.dart';
import 'package:softbd_task/core/features/home/home_controller.dart';
import 'package:softbd_task/core/theme/color_scheme.dart';
import 'package:softbd_task/core/utils/hexcolor.dart';
import 'package:get/get.dart';
import 'package:softbd_task/core/widgets/custom_error_widget.dart';

class DateSelectScreen extends StatefulWidget {
  const DateSelectScreen({super.key});

  @override
  State<DateSelectScreen> createState() => _DateSelectScreenState();
}

class _DateSelectScreenState extends State<DateSelectScreen> {

  final homeController = Get.put(HomeController());

  @override
  void initState() {

    homeController.showUserList();
    super.initState();
  }



  List<String> listOfDays = ["সোম", "মঙ্গল", "বুধ", "বৃহ", "শুক্র", "শনি", "রবি"];
  DateTime selectedDate = DateTime.now(); // TO tracking date

  int currentDateSelectedIndex = 0; //For Horizontal Date
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(child: Scaffold(

      backgroundColor:colorScheme.onPrimary,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text(
                  "আজ, ১২ জুলাই",
                  style: textTheme.bodyMedium?.copyWith(
                      color: Colors.black, fontSize: 16,fontWeight: FontWeight.bold),
                ),


                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0)
                      ),
                      backgroundColor:HexColor('#86B560'),
                      padding: EdgeInsets.all(0)
                    ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                    onPressed: (){

                      Get.to(NewAddScreen());
                    },
                    child: Center(
                      child: Text('নতুন যোগ করুন',style: textTheme.bodyLarge?.copyWith(
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                          color: lightColorScheme!.onPrimary)),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 12,
            ),


            SizedBox(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 8);
                    },
                    itemCount: 7,
                    controller: scrollController,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            currentDateSelectedIndex = index;
                            selectedDate =
                                DateTime.now().add(Duration(days: index));
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                             // border: Border.all(color: Colors.blueAccent),
                              borderRadius: BorderRadius.circular(16),
                               color: currentDateSelectedIndex == index
                                  ? Colors.blueGrey
                                  : Colors.white,),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              Text(
                                DateTime.now()
                                    .add(Duration(days: index))
                                    .day
                                    .toString(),
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                    color: currentDateSelectedIndex == index
                                        ? Colors.white
                                        : Colors.grey),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                listOfDays[DateTime.now()
                                    .add(Duration(days: index))
                                    .weekday -
                                    1]
                                    .toString(),
                                style: TextStyle(
                                    fontSize: 16,
                                    color: currentDateSelectedIndex == index
                                        ? Colors.white
                                        : Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),


            const SizedBox(
              height: 16,
            ),

            Expanded(
              child: homeController.obx((state) => RefreshIndicator(
                onRefresh:homeController.showUserList,
                child: ListView.builder(
                    itemCount: state!.length,
                    itemBuilder: (BuildContext context,index){
              
                      return SizedBox(
                        height: 200,
                        child: Card(
                          color:   index ==0? Colors.green:Colors.black,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
              
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${state[index].date}",
                                      style: textTheme.bodyMedium?.copyWith(
                                          color: HexColor("#FDFDFD"), fontSize: 14,fontWeight: FontWeight.w400),
                                    ),
              
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Expanded(
                                     child: Column(
                                       mainAxisAlignment: MainAxisAlignment.start,
                                       children: [
              
                                         Text(
                                           "${state[index].date}",
                                           style: textTheme.bodyMedium?.copyWith(
                                               color: HexColor("#FDFDFD"), fontSize: 14,fontWeight: FontWeight.w400),
                                         ),
                                         const SizedBox(
                                           height: 8,
                                         ),
              
                                          Text(
                                           "${state[index].name}",
                                           style: textTheme.bodyMedium?.copyWith(
                                               color: HexColor("#FDFDFD"), fontSize: 14,fontWeight: FontWeight.w400),
                                         ),
                                         const SizedBox(
                                           height: 8,
                                         ),
              
                                         Row(
                                           children: [
              
                                             Image.asset("assets/images/map.png"),
              
                                             const SizedBox(
                                               width: 4,
                                             ),
              
                                             Text(
                                               "${state[index].location}",
                                               style: textTheme.bodyMedium?.copyWith(
                                                   color: HexColor("#FDFDFD"), fontSize: 14,fontWeight: FontWeight.w400),
                                             ),
                                           ],
                                         )
                                       ],
                                     ),
                                   )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              
              ),onError: (msg) {
                return CustomErrorWidget(
                    icon: Icon(
                      msg == "No Internet." ? FluentIcons.wifi_off_24_regular : FluentIcons.error_circle_24_filled,
                      color: Colors.red,
                      size: 40,
                    ),
                    btnLevel: "Retry",
                    message: msg.toString(),
                    onClick: () {
                      homeController.showUserList();
                    });
              }),
            ),

          ],
        ),
      ),

    ));
  }
}
