import 'package:flutter/cupertino.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:meet_me/pages/auth/signup_screen2.dart';



import 'package:meet_me/pages/screens.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class Signup extends StatefulWidget {//

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
   DateTime _selectedDate;
  final TextEditingController _textEditingController = TextEditingController();
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');
  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('SIGNUP',style: white20BoldTextStyle,)
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            DropdownSearch<String>(
              //mode of dropdown
              mode: Mode.BOTTOM_SHEET,
              //to show search box
              showSearchBox: true,
              showSelectedItem: true,
              //list of dropdown items
              items: [
                "Self",
                "Parents",
                "Guardian",
                "Friends",
                "Sibiling",
                "Relative"
              ],
              label: "PROFILE CREATED FOR",
              onChanged: print,
              //show selected item
             // selectedItem: "India",
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    child:Padding(
                      padding: const EdgeInsets.only(left: 18.0,top: 12),
                      child: Text(' MALE ',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black ,
                        width: 2.0 ,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    child:Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(' FEMALE ',style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black ,
                        width: 2.0 ,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ],
              ),
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
            GestureDetector(
              onTap: () => _selectDate(),
              child: AbsorbPointer(
                child: TextField(
                  controller: _textEditingController,
                  decoration: InputDecoration(hintText: 'BIRTHDATE'),
                ),
              ),
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
                "Hindu",
                "jain",
              ],
              label: "RELIGION",
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
                "Self",
              ],
              label: "CASTE",
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
                "Tamil",
                "Oriya",
                "Telugu",
                "Urdu",
                "Tulu",
                "Sanskrit"
              ],
              label: "MOTHER TONGUE",
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
                "India",
                "China",
                "Japan",
                "French",
                "America",
                "Algeria"
              ],
              label: "COUNTRY",
              onChanged: print,
              //show selected item
              // selectedItem: "India",
            ),
            SizedBox(
              height: 15,
            ),
            InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber number) {
                print(number.phoneNumber);
              },
              onInputValidated: (bool value) {
                print(value);
              },
              selectorConfig: SelectorConfig(
                selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
              ),
              ignoreBlank: false,
              autoValidateMode: AutovalidateMode.disabled,
              selectorTextStyle: TextStyle(color: Colors.black),
              initialValue: number,
              textFieldController: controller,
              formatInput: false,
              keyboardType:
              TextInputType.numberWithOptions(signed: true, decimal: true),
              inputBorder: OutlineInputBorder(),
              onSaved: (PhoneNumber number) {
                print('On Saved: $number');
              },
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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('By clicking on submit button you are agreed with our  '),
            ),
            SizedBox(
              height: 7,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: new Text('Privacy Policy', style: TextStyle(
                        color: Colors.black,fontWeight: FontWeight.bold
                      )),
                        onTap: () {
                          Navigator.pop(context);
                          launch('');}
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('and'),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                        child: new Text('T&C', style: TextStyle(
                            color: Colors.black,fontWeight: FontWeight.bold
                        )),
                        onTap: () {
                          Navigator.pop(context);
                          launch('');}
                    ),


                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: MaterialButton(
                textColor: Colors.white,
                color: Colors.deepOrangeAccent,
                child: Text("REGISTER"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  SignupScreen()),
                  );
                },
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
            )

          ],

        ),
      ),
    );
  }
  _selectDate() async {
    DateTime pickedDate = await showModalBottomSheet<DateTime>(
      context: context,
      builder: (context) {
        DateTime tempPickedDate = _selectedDate?? DateTime.now();
        return Container(
          height: 250,
          child: Column(
            children: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CupertinoButton(
                      child: Text('CANCEL'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    CupertinoButton(
                      child: Text('CONFIRM',style: TextStyle(color: Colors.orange),),
                      onPressed: () {
                        Navigator.of(context).pop(tempPickedDate);
                      },
                    ),
                  ],
                ),
              ),
              Divider(
                height: 0,
                thickness: 1,
              ),
              Expanded(
                child: Container(
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    onDateTimeChanged: (value) {

                    },
                    initialDateTime: DateTime.now(),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
        _textEditingController.text = pickedDate.toString();
      });
    }
  }
}

