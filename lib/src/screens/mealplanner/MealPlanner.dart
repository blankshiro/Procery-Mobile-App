import 'package:Procery/src/screens/dashboard/DashboardConstants.dart';
import 'package:Procery/src/shared/colors.dart';
import 'package:Procery/src/shared/fryo_icons.dart';
import 'package:Procery/src/shared/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import '../shared/styles.dart';
// import '../shared/colors.dart';
// import '../shared/inputFields.dart';
import 'package:page_transition/page_transition.dart';
// import './unused/SignUpPage.dart';
// import './unused/Dashboard.dart';
import 'package:table_calendar/table_calendar.dart';

class MealPlanner extends StatefulWidget {
  @override
  _MealPlannerState createState() => _MealPlannerState();
}

class _MealPlannerState extends State<MealPlanner> {
  CalendarController _calendarController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _calendarController = CalendarController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _calendarController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: primaryColor,
          title:
          Text('Procery', style: logoWhiteStyle, textAlign: TextAlign.center),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.all(0),
              onPressed: () {},
              iconSize: 21,
              icon: Icon(Fryo.magnifier),
            ),
            IconButton(
              padding: EdgeInsets.all(0),
              onPressed: () {},
              iconSize: 21,
              icon: Icon(Fryo.alarm),
            )
          ],
        ),
      body: Column(
        children: [
          buildTextTitleVariation('Meal Planner'),
          TableCalendar(
            calendarController: _calendarController,
            initialCalendarFormat: CalendarFormat.week,
            startingDayOfWeek: StartingDayOfWeek.monday,
            formatAnimation: FormatAnimation.slide,
            headerStyle: HeaderStyle(
              centerHeaderTitle: true,
              formatButtonVisible: false,
              titleTextStyle: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.normal, color:Colors.green),
              leftChevronIcon: Icon(Icons.arrow_back_ios, color: Colors.green, size: 15,),
              rightChevronIcon: Icon(Icons.arrow_forward_ios, color: Colors.green, size: 15,),
              leftChevronMargin: EdgeInsets.only(left: 70),
              rightChevronMargin: EdgeInsets.only(right: 70),
            ),
            calendarStyle: CalendarStyle(
                weekendStyle: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.normal, color:Colors.grey),
                weekdayStyle:  GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.normal, color:Colors.grey)
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
                weekendStyle:  GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.normal, color:Colors.grey),
                weekdayStyle:  GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.normal, color:Colors.grey)
            ),
          ),
          Text('Breakfast', style: GoogleFonts.poppins(
              fontSize: 18, fontWeight: FontWeight.bold, color:Colors.black)),
              Column(
              children: [
                Container(
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    boxShadow: [kBoxShadow],
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/banana_cake.jpg"),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              buildTextTitleVariation2('Banana Cake', false),
                              buildTextSubTitleVariation1("200 cals"),
                              Text("6 min", style: GoogleFonts.poppins(
                                  fontSize: 16, fontWeight: FontWeight.bold, color:Colors.black))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10.0),
                      child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_circle),
                      color: Colors.green
                      )
                      ),
                      Text('Feel free to add more dishes!', style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.normal, color:Colors.grey)),]
                  ),
                ),
          ]),
          Text('Lunch', style: GoogleFonts.poppins(
              fontSize: 18, fontWeight: FontWeight.bold, color:Colors.black)),
          Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(10.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_circle),
                          color: Colors.green
                      )

                    // Text('Breakfast', style: GoogleFonts.poppins(
                    //     fontSize: 22, fontWeight: FontWeight.bold, color:Colors.black))
                  ),
                  Text('Add a meal plan now!', style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.normal, color:Colors.grey)),
                ],
              )
          ),
          Text('Dinner', style: GoogleFonts.poppins(
              fontSize: 18, fontWeight: FontWeight.bold, color:Colors.black)),
          Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(10.0),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_circle),
                          color: Colors.green
                      )

                    // Text('Breakfast', style: GoogleFonts.poppins(
                    //     fontSize: 22, fontWeight: FontWeight.bold, color:Colors.black))
                  ),
                  Text('Add a meal plan now!', style: GoogleFonts.poppins(
                      fontSize: 14, fontWeight: FontWeight.normal, color:Colors.grey)),
                ],
              )
            // child: Row(Container(
            //     padding: EdgeInsets.all(20.0),
            //     child: Text('Breakfast', style: TextStyle(
            //         fontFamily: 'Poppins',
            //         fontSize: 18,
            //         fontWeight: FontWeight.bold,
            //         color: Colors.black),
            //         textAlign: TextAlign.left)),
            // ))
            //

          ),
        ],
      ),
    );
  }
}

