import 'package:flutter/cupertino.dart';
import 'package:meet_me/pages/screens.dart';

class EditDetails extends StatefulWidget {
  const EditDetails({Key? key}) : super(key: key);

  @override
  _EditDetailsState createState() => _EditDetailsState();
}

class _EditDetailsState extends State<EditDetails> {
  String? age;
  String? gender;
  String? height;
  String? weight;
  String? dob;
  String? status;
  String? education;
  String? religion;
  String? language;
  String? occupation;
  String? livesIn;
  final nameController = TextEditingController(text: 'Azhar Khan');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        titleSpacing: 0,
        title: Text(
          'Edit Details',
          style: black20BoldTextStyle,
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
        children: [
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          nameTextField(),
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          Row(
            children: [
              ageDropdown(),
              widthSpace,
              widthSpace,
              widthSpace,
              widthSpace,
              genderDropdown(),
            ],
          ),
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          Row(
            children: [
              heightDropdown(),
              widthSpace,
              widthSpace,
              widthSpace,
              widthSpace,
              weightDropdown(),
            ],
          ),
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          Row(
            children: [
              dobDropdown(),
              widthSpace,
              widthSpace,
              widthSpace,
              widthSpace,
              statusDropdown(),
            ],
          ),
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          Row(
            children: [
              educationDropdown(),
              widthSpace,
              widthSpace,
              widthSpace,
              widthSpace,
              religionDropdown(),
            ],
          ),
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          languageDropdown(),
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          occupationDropdown(),
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          livesInDropdown(),
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          Row(
            children: [
              cancelButton(),
              widthSpace,
              widthSpace,
              widthSpace,
              widthSpace,
              doneButton(),
            ],
          ),
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
        ],
      ),
    );
  }

  nameTextField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Name',
          style: black15BoldTextStyle,
        ),
        heightSpace,
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: fixPadding,
            vertical: 8,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: greyColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: TextField(
            controller: nameController,
            cursorColor: primaryColor,
            style: black13MediumTextStyle,
            decoration: const InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.zero,
              border: UnderlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        ),
      ],
    );
  }

  ageDropdown() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Age',
            style: black15BoldTextStyle,
          ),
          heightSpace,
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: fixPadding,
              vertical: fixPadding / 2,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: greyColor),
              borderRadius: BorderRadius.circular(5),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                elevation: 0,
                isDense: true,
                hint: Text(
                  '28 yrs',
                  style: black13RegularTextStyle,
                ),
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: primaryColor,
                  size: 20,
                ),
                value: age,
                style: black13RegularTextStyle,
                onChanged: (String? newValue) {
                  setState(() {
                    age = newValue;
                  });
                },
                items: <String>[
                  '18 yrs',
                  '19 yrs',
                  '20 yrs',
                  '21 yrs',
                  '22 yrs',
                  '23 yrs',
                  '24 yrs',
                  '25 yrs',
                  '26 yrs',
                  '27 yrs',
                  '28 yrs',
                  '29 yrs',
                  '30 yrs',
                  '31 yrs',
                  '32 yrs',
                  '33 yrs',
                  '34 yrs',
                  '35 yrs',
                  '36 yrs',
                  '37 yrs',
                  '38 yrs',
                  '39 yrs',
                  '40 yrs',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  genderDropdown() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Gender',
            style: black15BoldTextStyle,
          ),
          heightSpace,
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: fixPadding,
              vertical: fixPadding / 2,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: greyColor),
              borderRadius: BorderRadius.circular(5),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                elevation: 0,
                isDense: true,
                hint: Text(
                  'Male',
                  style: black13RegularTextStyle,
                ),
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: primaryColor,
                  size: 20,
                ),
                value: gender,
                style: black13RegularTextStyle,
                onChanged: (String? newValue) {
                  setState(() {
                    gender = newValue;
                  });
                },
                items: <String>[
                  'Male',
                  'Female',
                  'Other',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  heightDropdown() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Height',
            style: black15BoldTextStyle,
          ),
          heightSpace,
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: fixPadding,
              vertical: fixPadding / 2,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: greyColor),
              borderRadius: BorderRadius.circular(5),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                elevation: 0,
                isDense: true,
                hint: Text(
                  '5 ft 9 in',
                  style: black13RegularTextStyle,
                ),
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: primaryColor,
                  size: 20,
                ),
                value: height,
                style: black13RegularTextStyle,
                onChanged: (String? newValue) {
                  setState(() {
                    height = newValue;
                  });
                },
                items: <String>[
                  '3 ft 9 in',
                  '4 ft 2 in',
                  '5 ft 9 in',
                  '6 ft 3 in',
                  '7 ft 1 in',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  weightDropdown() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Weight',
            style: black15BoldTextStyle,
          ),
          heightSpace,
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: fixPadding,
              vertical: fixPadding / 2,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: greyColor),
              borderRadius: BorderRadius.circular(5),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                elevation: 0,
                isDense: true,
                hint: Text(
                  '70 kg',
                  style: black13RegularTextStyle,
                ),
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: primaryColor,
                  size: 20,
                ),
                value: weight,
                style: black13RegularTextStyle,
                onChanged: (String? newValue) {
                  setState(() {
                    weight = newValue;
                  });
                },
                items: <String>['50 kg', '60 kg', '70 kg', '40 kg', '55 kg']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  dobDropdown() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Date of Birth',
            style: black15BoldTextStyle,
          ),
          heightSpace,
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: fixPadding,
              vertical: fixPadding / 2,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: greyColor),
              borderRadius: BorderRadius.circular(5),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                elevation: 0,
                isDense: true,
                hint: Text(
                  '17 Oct 1992',
                  style: black13RegularTextStyle,
                ),
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: primaryColor,
                  size: 20,
                ),
                value: dob,
                style: black13RegularTextStyle,
                onChanged: (String? newValue) {
                  setState(() {
                    dob = newValue;
                  });
                },
                items: <String>[
                  '17 Oct 1992',
                  '1 Aug 1990',
                  '10 Sup 1999',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  statusDropdown() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Status',
            style: black15BoldTextStyle,
          ),
          heightSpace,
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: fixPadding,
              vertical: fixPadding / 2,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: greyColor),
              borderRadius: BorderRadius.circular(5),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                elevation: 0,
                isDense: true,
                hint: Text(
                  'Single',
                  style: black13RegularTextStyle,
                ),
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: primaryColor,
                  size: 20,
                ),
                value: status,
                style: black13RegularTextStyle,
                onChanged: (String? newValue) {
                  setState(() {
                    status = newValue;
                  });
                },
                items: <String>[
                  'Single',
                  'Widower',
                  'Divorced',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  educationDropdown() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Education',
            style: black15BoldTextStyle,
          ),
          heightSpace,
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: fixPadding,
              vertical: fixPadding / 2,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: greyColor),
              borderRadius: BorderRadius.circular(5),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                elevation: 0,
                isDense: true,
                hint: Text(
                  'BCA - MCA',
                  style: black13RegularTextStyle,
                ),
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: primaryColor,
                  size: 20,
                ),
                value: education,
                style: black13RegularTextStyle,
                onChanged: (String? newValue) {
                  setState(() {
                    education = newValue;
                  });
                },
                items: <String>[
                  'BCA - MCA',
                  'BCA',
                  'BBA',
                  'Bcome',
                  'CA',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  religionDropdown() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Religion',
            style: black15BoldTextStyle,
          ),
          heightSpace,
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: fixPadding,
              vertical: fixPadding / 2,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: greyColor),
              borderRadius: BorderRadius.circular(5),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                isExpanded: true,
                elevation: 0,
                isDense: true,
                hint: Text(
                  'Hindu',
                  style: black13RegularTextStyle,
                ),
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: primaryColor,
                  size: 20,
                ),
                value: religion,
                style: black13RegularTextStyle,
                onChanged: (String? newValue) {
                  setState(() {
                    religion = newValue;
                  });
                },
                items: <String>[
                  'Hindu',
                  'Christianity',
                  'Islam',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  languageDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Language',
          style: black15BoldTextStyle,
        ),
        heightSpace,
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: fixPadding,
            vertical: fixPadding / 2,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: greyColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              isExpanded: true,
              elevation: 0,
              isDense: true,
              hint: Text(
                'Engish, Hindi, Gujarati',
                style: black13RegularTextStyle,
              ),
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: primaryColor,
                size: 20,
              ),
              value: language,
              style: black13RegularTextStyle,
              onChanged: (String? newValue) {
                setState(() {
                  language = newValue;
                });
              },
              items: <String>[
                'Engish, Hindi, Gujarati',
                'Hindi, Gujarati',
                'Gujarati',
                'Hindi',
                'Engish, Hindi',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }

  occupationDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Occupation',
          style: black15BoldTextStyle,
        ),
        heightSpace,
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: fixPadding,
            vertical: fixPadding / 2,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: greyColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              isExpanded: true,
              elevation: 0,
              isDense: true,
              hint: Text(
                'Software Developer',
                style: black13RegularTextStyle,
              ),
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: primaryColor,
                size: 20,
              ),
              value: occupation,
              style: black13RegularTextStyle,
              onChanged: (String? newValue) {
                setState(() {
                  occupation = newValue;
                });
              },
              items: <String>[
                'Software Developer',
                'React Developer',
                'CA',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }

  livesInDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Lives In',
          style: black15BoldTextStyle,
        ),
        heightSpace,
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: fixPadding,
            vertical: fixPadding / 2,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: greyColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              elevation: 0,
              isDense: true,
              hint: Text(
                'Delhi, India',
                style: black13RegularTextStyle,
              ),
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: primaryColor,
                size: 20,
              ),
              value: livesIn,
              style: black13RegularTextStyle,
              onChanged: (String? newValue) {
                setState(() {
                  livesIn = newValue;
                });
              },
              items: <String>[
                'Delhi, India',
                'Surat, India',
                'Baroda, India',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }

  cancelButton() {
    return Expanded(
      child: InkWell(
        onTap: () => Navigator.pop(context),
        child: Container(
          padding: const EdgeInsets.all(fixPadding),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: primaryColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            'Cancel',
            style: primaryColor16BoldTextStyle,
          ),
        ),
      ),
    );
  }

  doneButton() {
    return Expanded(
      child: InkWell(
        onTap: () => Navigator.pop(context),
        child: Container(
          padding: const EdgeInsets.all(fixPadding),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: primaryColor,
            border: Border.all(color: primaryColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            'Done',
            style: white16BoldTextStyle,
          ),
        ),
      ),
    );
  }
}
