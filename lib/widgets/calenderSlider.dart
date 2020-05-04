import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarSlider extends StatefulWidget {
  @override
  _CalendarSliderState createState() => _CalendarSliderState();
  
}

class _CalendarSliderState extends State<CalendarSlider> {
   hexColour (String colourHexCode){
    String colourNew = '0xff' + colourHexCode;
    colourNew = colourNew.replaceAll('#', '');
    int colourInt = int.parse(colourNew);
    return colourInt;
  }
  CalendarController _calendarController;
  @override
  void initState(){
    super.initState();
      _calendarController = CalendarController();
  }
  Widget build(BuildContext context) {
    return TableCalendar(
      initialCalendarFormat: CalendarFormat.week,           
      calendarStyle: CalendarStyle(                                        
        todayColor: Color(hexColour('#14A946')),          
        selectedColor: Color(hexColour('#46BD6C')),
        weekendStyle: TextStyle(
          color: Colors.white       
        ),                                                  //Everything inside table calendar edits the generated calendar. CalendarStyle is required to 
        weekdayStyle: TextStyle(                            //make styling changes. todayColor changes the current days highlighted color. selectedColor 
          color: Colors.white                               //changes the selected days colour. "context" seems to always match the theme colour of the background.
        ),                                                  //TextStyle changes text attributes. Font weight changes boldness and font size changes size (obviously!!).
        todayStyle: TextStyle(                              //Most of the rest of the code so far is a repeat of the stuff I have already talked about so im not going
          fontWeight: FontWeight.bold,                      //to end to documentation for the time being.
          fontSize: 18.0,
          color: Colors.white,
        ),
        outsideWeekendStyle: TextStyle(
        color: Colors.white,
        ),
        outsideStyle: TextStyle(
          color: Colors.white,
        ),
      ),
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle: TextStyle(color: Colors.white),
        weekendStyle: TextStyle(color: Colors.white),
      ),
      headerStyle: HeaderStyle(
          leftChevronIcon: Icon(
            Icons.chevron_left,
          color: Colors.white,
          ),
          rightChevronIcon: Icon(
            Icons.chevron_right,
            color: Colors.white,
          ),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
        centerHeaderTitle: true,
        formatButtonDecoration: BoxDecoration(
          color: Color(hexColour('#46BD6C')),
          borderRadius: BorderRadius.circular(20.0)
        ),
        formatButtonTextStyle: TextStyle(
          color: Colors.white
        ),
        formatButtonShowsNext: false,
      ),
      startingDayOfWeek: StartingDayOfWeek.sunday,
      onDaySelected: (date, events){
        print(date.toIso8601String());                    //Iso8601String prints the date selected into the debug console. Helps with debugging.
      },
      calendarController: _calendarController,
    );                                                    //Generates the calendar 
  }
}