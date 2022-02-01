import 'package:meet_me/pages/screens.dart';

class EditPreferences extends StatefulWidget {
  const EditPreferences({Key? key}) : super(key: key);

  @override
  _EditPreferencesState createState() => _EditPreferencesState();
}

class _EditPreferencesState extends State<EditPreferences> {
  String? ageFrom;
  String? ageTo;
  String? heightFrom;
  String? heightTo;
  String? education;
  String? religion;
  String? location;

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
          'Edit Preferences',
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
          age(),
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          height(),
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          educationDropdown(),
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          religionDropdown(),
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          locationDropdown(),
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

  age() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 3),
        Text(
          'Age',
          style: black15BoldTextStyle,
        ),
        heightSpace,
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: fixPadding,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: blackColor),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'From',
                      style: grey13SemiBoldTextStyle,
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton(
                        isExpanded: true,
                        elevation: 0,
                        isDense: true,
                        hint: Text(
                          '21',
                          style: black13RegularTextStyle,
                        ),
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: primaryColor,
                          size: 20,
                        ),
                        value: ageFrom,
                        style: black13RegularTextStyle,
                        onChanged: (String? newValue) {
                          setState(() {
                            ageFrom = newValue;
                          });
                        },
                        items: <String>[
                          '18',
                          '19',
                          '20',
                          '21',
                          '22',
                          '23',
                          '24',
                          '25',
                          '26',
                          '27',
                          '28',
                          '29',
                          '30',
                          '31',
                          '32',
                          '33',
                          '34',
                          '35',
                          '36',
                          '37',
                          '38',
                          '39',
                          '40',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            widthSpace,
            widthSpace,
            widthSpace,
            widthSpace,
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: fixPadding,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: blackColor),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'To',
                      style: grey13SemiBoldTextStyle,
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton(
                        isExpanded: true,
                        elevation: 0,
                        isDense: true,
                        hint: Text(
                          '25',
                          style: black13RegularTextStyle,
                        ),
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: primaryColor,
                        ),
                        value: ageTo,
                        style: black13RegularTextStyle,
                        onChanged: (String? newValue) {
                          setState(() {
                            ageTo = newValue;
                          });
                        },
                        items: <String>[
                          '18',
                          '19',
                          '20',
                          '21',
                          '22',
                          '23',
                          '24',
                          '25',
                          '26',
                          '27',
                          '28',
                          '29',
                          '30',
                          '31',
                          '32',
                          '33',
                          '34',
                          '35',
                          '36',
                          '37',
                          '38',
                          '39',
                          '40',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  height() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 3),
        Row(
          children: [
            Text(
              'Height ',
              style: black15BoldTextStyle,
            ),
            Text(
              '(Ft In)',
              style: grey13SemiBoldTextStyle,
            ),
          ],
        ),
        heightSpace,
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: fixPadding,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: blackColor),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'From',
                      style: grey13SemiBoldTextStyle,
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton(
                        isExpanded: true,
                        elevation: 0,
                        isDense: true,
                        hint: Text(
                          '4 ft 2 in',
                          style: black13RegularTextStyle,
                        ),
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: primaryColor,
                          size: 20,
                        ),
                        value: heightFrom,
                        style: black13RegularTextStyle,
                        onChanged: (String? newValue) {
                          setState(() {
                            heightFrom = newValue;
                          });
                        },
                        items: <String>[
                          '3 ft 2 in',
                          '4 ft 2 in',
                          '5 ft 2 in',
                          '6 ft 2 in',
                          '7 ft 0 in',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            widthSpace,
            widthSpace,
            widthSpace,
            widthSpace,
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: fixPadding,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: blackColor),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'To',
                      style: grey13SemiBoldTextStyle,
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton(
                        isExpanded: true,
                        elevation: 0,
                        isDense: true,
                        hint: Text(
                          '5 ft 2 in',
                          style: black13RegularTextStyle,
                        ),
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: primaryColor,
                        ),
                        value: heightTo,
                        style: black13RegularTextStyle,
                        onChanged: (String? newValue) {
                          setState(() {
                            heightTo = newValue;
                          });
                        },
                        items: <String>[
                          '3 ft 2 in',
                          '4 ft 2 in',
                          '5 ft 2 in',
                          '6 ft 2 in',
                          '7 ft 0 in',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  educationDropdown() {
    return Column(
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
    );
  }

  religionDropdown() {
    return Column(
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
    );
  }

  locationDropdown() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Location',
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
                'Delhi, India',
                style: black13RegularTextStyle,
              ),
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: primaryColor,
                size: 20,
              ),
              value: location,
              style: black13RegularTextStyle,
              onChanged: (String? newValue) {
                setState(() {
                  location = newValue;
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
