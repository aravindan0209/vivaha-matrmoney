import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:meet_me/constants/constants.dart';
class SignupScreen extends StatefulWidget {

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  DateTime _selectedDate;
  final timeController = TextEditingController();
  final TextEditingController _textEditingController = TextEditingController();
  final TextEditingController controller = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String initialCountry = 'NG';
  bool _isObscure = true;
  //PhoneNumber number = PhoneNumber(isoCode: 'NG');
  @override
  void dispose() {
    controller?.dispose();
    timeController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green,
            automaticallyImplyLeading: false,
            title: ListTile(
              trailing:  Text(
                  'REGISTER NEW ',
                  style: TextStyle(fontSize: 13,color: Colors.white,fontWeight: FontWeight.bold)
              ),
            )
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
              children: [
                Text(
                  'ABOUT ME',style: TextStyle(fontSize: 25,color: Colors.green,fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Fill your personal details so we could find best life \npartner for you',style: TextStyle(fontSize: 15,),
                ),
                SizedBox(
                  height: 15,
                ),
                ListTile(
                  minLeadingWidth : 13,
                  //contentPadding: EdgeInsets.only(right: 10),
                  leading: Icon(Icons.accessibility,color: Colors.deepOrangeAccent,),
                  title: Text('ACCOUNT DETAILS',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'FIRST NAME',
                  ),

                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'LAST NAME',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'MOBILE NO.',
                  ),

                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'EMAIL ID',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: passwordController,
                  obscureText: _isObscure,
                  cursorColor: primaryColor,
                  style: black15SemiBoldTextStyle,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                    labelText: 'PASSWORD',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                        color: Colors.deepOrangeAccent,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                    hintStyle: grey15RegularTextStyle,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                ListTile(
                  minLeadingWidth : 13,
                  // contentPadding: EdgeInsets.only(right: 10),
                  leading: Icon(Icons.person,color: Colors.deepOrangeAccent,),
                  title: Text('PERSONAL DETAILS',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                ),
                SizedBox(
                  height: 15,
                ),

                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: false,
                  showSelectedItem: true,
                  //list of dropdown items
                  items: [
                    "Never Married",
                    "Widower",
                    'Divorced',
                    "Awaiting Divorce"
                  ],
                  label: "MARITAL STATUS",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),

                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: true,
                  showSelectedItem: true,
                  //list of dropdown items
                  hint: "Sub Caste",
                  items: [
                    "Demo Sub Caste",
                    "Demo Sub Caste 1",
                  ],
                  label: "SUB CASTE (OPTIONAL)",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),
                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: true,
                  showSelectedItem: true,
                  //list of dropdown items
                  items: [
                    "Andhra Pradesh",
                    "Arunachal Pradesh",
                    "Assam",
                    "Bengal",
                    'Bihar'
                  ],
                  label: "STATE",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),
                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: true,
                  showSelectedItem: true,
                  //list of dropdown items
                  items: [

                  ],
                  label: "City",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),

                ListTile(
                  //contentPadding: EdgeInsets.only(right: 10),
                  minLeadingWidth : 13,
                  leading: Icon(Icons.accessibility,color: Colors.deepOrangeAccent,),
                  title: Text('PHYSICAL DETAILS',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                ),
                SizedBox(
                  height: 15,
                ),
                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: false,
                  showSelectedItem: true,
                  //list of dropdown items
                  items: [
                    "Below 4ft 6in -137cm",
                    "4ft 6in -137cm",
                    '4ft 7in -137cm',
                    "4ft 8in -137cm"
                  ],
                  label: "HEIGHT",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),
                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: false,
                  showSelectedItem: true,
                  //list of dropdown items
                  items: [
                    "40 Kg",
                    "41 Kg",
                    '42 Kg',
                    "43 Kg",
                    "44 Kg",
                    "45 Kg",
                    "46 Kg",
                  ],
                  label: "WEIGHT",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),

                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: false,
                  showSelectedItem: true,
                  //list of dropdown items
                  items: [
                    "Slim",
                    "Average",
                    'Athletic',
                    "Heavy"
                  ],
                  label: "BODY TYPE (OPTIONAL)",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),

                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: false,

                  showSelectedItem: true,
                  //list of dropdown items
                  items: [

                    "Normal",
                    'Physically Challenged',

                  ],
                  label: "PHYSICAL STATUS",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),

                ListTile(
                  //contentPadding: EdgeInsets.only(right: 10),
                  minLeadingWidth : 13,
                  leading: Icon(Icons.work_sharp,color: Colors.deepOrangeAccent,),
                  title: Text('EDUCATION & OCCUPATION DETAILS',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.grey,fontSize: 15),textDirection: TextDirection.ltr,),
                ),

                SizedBox(
                  height: 15,
                ),
                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: true,
                  showSelectedItem: true,
                  //list of dropdown items
                  items: [
                    "B Arch",
                    "B Com",
                    'B Tech',
                    "BA",
                    "BCA",
                    "BDS",
                    "BED",
                  ],
                  label: "HIGHEST EDUCATIONS",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),
                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: true,
                  showSelectedItem: true,
                  //list of dropdown items
                  items: [
                    "B Arch",
                    "B Com",
                    'B Tech',
                    "BA",
                    "BCA",
                    "BDS",
                    "BED",
                  ],
                  label: "ADDITIONAL DEGREE (OPTIONAL)",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),
                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: true,
                  showSelectedItem: true,
                  //list of dropdown items
                  items: [
                    "Civil Engineer",
                    "Dentist",
                    'Doctor',
                    "Engineer",
                  ],
                  label: "OCUUPATIONS",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),
                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: false,
                  showSelectedItem: true,
                  //list of dropdown items
                  items: [
                    "Government",
                    "Private",
                    'Business',
                    "Defence",
                  ],
                  label: "EMPLOYED IN",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),
                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: false,
                  showSelectedItem: true,
                  //list of dropdown items
                  items: [
                    "Rs 10,000 - 50,000",
                    "Rs 50,000 - 1,00,000",
                    'Rs 1,00,000 - 2,00,000',
                    "Rs 2,00,000 -4,00,000",
                  ],
                  label: "ANNUAL INCOME (OPTIONAL)",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),

                ListTile(
                  // contentPadding: EdgeInsets.only(right: 10),
                  minLeadingWidth : 13,
                  leading: Icon(Icons.wine_bar_sharp,color: Colors.deepOrangeAccent,),
                  title: Text('HABITS',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                ),
                SizedBox(
                  height: 15,
                ),
                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: false,
                  showSelectedItem: true,
                  //list of dropdown items
                  items: [
                    "Vegetarian",
                    "Non-Vegetarian",
                    "Eggetarian"
                  ],
                  label: "DIET",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),
                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: false,
                  showSelectedItem: true,
                  //list of dropdown items
                  items: [
                    "yes",
                    "No",
                    "Occasionally"
                  ],
                  label: "SMOKING",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),
                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: false,
                  showSelectedItem: true,
                  //list of dropdown items
                  items: [
                    "yes",
                    "No",
                    "Drinks Socially"
                  ],
                  label: "DRINKING",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),

                ListTile(
                  // contentPadding: EdgeInsets.only(right: 10),
                  minLeadingWidth : 13,
                  leading: Icon(Icons.brightness_4_sharp,color: Colors.deepOrangeAccent,),
                  title: Text('HOROSCOPE DETAILS',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                ),
                SizedBox(
                  height: 15,
                ),
                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: false,
                  showSelectedItem: true,
                  //list of dropdown items
                  items: [
                    "yes",
                    "No",
                    "Does not matter"
                  ],
                  label: "HAVE DOSH? (OPTIONAL)",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),
                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: false,
                  showSelectedItem: true,
                  //list of dropdown items
                  items: [
                    "Any",
                    "Anusham",
                    "Aswini"
                  ],
                  label: "STAR (OPTIONAL)",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),
                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: false,
                  showSelectedItem: true,
                  //list of dropdown items
                  items: [
                    "Mithun (Gemini)",
                    "Does not matter",
                    "Mesh (Aries)"
                  ],
                  label: "RASI/MOONSIGN (OPTIONAL)",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  readOnly: true,
                  controller: timeController,
                  decoration: InputDecoration(
                      hintText: 'BIRTH TIME (OPTIONAL)'
                  ),
                  onTap: () async {
                    var time =  await showTimePicker(

                      initialTime: TimeOfDay.now(),
                      context: context,
                    );

                    timeController.text = time.format(context)
                    ;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'BIRTH PLACE (OPTIONAL)',
                  ),

                ),
                SizedBox(
                  height: 15,
                ),

                ListTile(
                  //contentPadding: EdgeInsets.only(right: 10),
                  minLeadingWidth : 13,
                  leading: Icon(Icons.supervisor_account_sharp,color: Colors.deepOrangeAccent,),
                  title: Text('FAMILY DETAILS',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                ),
                SizedBox(
                  height: 15,
                ),
                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: false,
                  showSelectedItem: true,
                  //list of dropdown items
                  items: [
                    "Middle class",
                    "Upper middle class",
                    "Rich"
                        "Affluent"
                  ],
                  label: "FAMILY STATUS",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),
                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: false,
                  showSelectedItem: true,
                  //list of dropdown items
                  items: [
                    "Joint",
                    "Nuclear"
                  ],
                  label: "FAMILY TYPE",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),
                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: false,
                  showSelectedItem: true,
                  //list of dropdown items
                  items: [
                    "Orthodox",
                    "Traditional",
                    "Moderate"
                        "Liberal"
                  ],
                  label: "FAMILY VALUES",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'FATHER OCCUPATIONS (OPTIONAL)',
                  ),

                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'MOTHER OCCUPATIONS (OPTIONAL)',
                  ),

                ),
                SizedBox(
                  height: 15,
                ),
                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: false,
                  showSelectedItem: true,
                  //list of dropdown items
                  items: [
                    "No Brothers",
                    "1",
                    "2",
                    "3",
                    "4+"
                  ],
                  label: "NO.OF BROTHERS (OPTIONAL)",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),

                SizedBox(
                  height: 15,
                ),
                DropdownSearch<String>(
                  //mode of dropdown
                  mode: Mode.BOTTOM_SHEET,
                  //to show search box
                  showSearchBox: false,
                  showSelectedItem: true,
                  //list of dropdown items
                  items: [
                    "No Sisters",
                    "1",
                    "2",
                    "3",
                    "4+"
                  ],
                  label: "NO.OF SISTERS (OPTIONAL)",
                  onChanged: print,
                  //show selected item
                  // selectedItem: "India",
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Column(
                    children: [
                      ListTile(
                        minLeadingWidth : 13,
                        leading: Icon(Icons.edit,color: Colors.deepOrangeAccent,),
                        title: Text('SOMETHING ABOUT YOU',style:TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Center(child: Text('Write some of about you. For example\nWhich kind of person you are, about your\npersonality,hobbies,about your family')),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                    width: 320,
                    height: 200,
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      autocorrect: true,
                      autofocus: false,
                      //maxLength: 500,
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintText: 'WRITE HERE',
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white70,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          borderSide: BorderSide(color: Colors.deepOrangeAccent, width: 3),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.deepOrangeAccent),
                        ),
                      ),)
                ),

                Center(
                  child: MaterialButton(
                    textColor: Colors.white,
                    color: Colors.deepOrangeAccent,
                    child: Text("CONTINUE"),
                    onPressed: () {
                      /* Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  SignupScreen()),
                );*/
                    },
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                  ),
                )

              ]
          ),
        )
    );
  }


}