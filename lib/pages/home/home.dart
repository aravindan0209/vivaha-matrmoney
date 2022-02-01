import 'package:meet_me/pages/screens.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late double height;
  late double width;

  final newMatchesList = [
    {
      'image': 'assets/users/user3.png',
      'name': 'Samantha John',
      'year': '26',
      'height': '5 ft 2 inch',
      'id': '#123456',
      'city': 'Delhi',
      'star': true,
    },
    {
      'image': 'assets/users/user4.png',
      'name': 'Rashmika John',
      'year': '26',
      'height': '5 ft 2 inch',
      'id': '#198456',
      'city': 'Delhi',
      'star': false,
    },
    {
      'image': 'assets/users/user5.png',
      'name': 'Isha John',
      'year': '26',
      'height': '5 ft 2 inch',
      'id': '#102456',
      'city': 'Delhi',
      'star': true,
    },
  ];

  final membersList = [
    {
      'image': 'assets/users/user6.png',
      'name': 'Samantha John',
      'year': '26',
      'height': '5 ft 2 inch',
      'id': '#123456',
      'city': 'Delhi',
      'star': true,
    },
    {
      'image': 'assets/users/user7.png',
      'name': 'Rashmika John',
      'year': '26',
      'height': '5 ft 2 inch',
      'id': '#198456',
      'city': 'Delhi',
      'star': true,
    },
    {
      'image': 'assets/users/user5.png',
      'name': 'Isha John',
      'year': '26',
      'height': '5 ft 2 inch',
      'id': '#102456',
      'city': 'Delhi',
      'star': false,
    },
    {
      'image': 'assets/users/user6.png',
      'name': 'Samantha John',
      'year': '26',
      'height': '5 ft 2 inch',
      'id': '#123456',
      'city': 'Delhi',
      'star': true,
    },
    {
      'image': 'assets/users/user7.png',
      'name': 'Rashmika John',
      'year': '26',
      'height': '5 ft 2 inch',
      'id': '#198456',
      'city': 'Delhi',
      'star': false,
    },
    {
      'image': 'assets/users/user5.png',
      'name': 'Isha John',
      'year': '26',
      'height': '5 ft 2 inch',
      'id': '#102456',
      'city': 'Delhi',
      'star': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Home',
          style: black20BoldTextStyle,
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: fixPadding * 2.0),
        children: [
          userProfile(),
          newMatches(),
          discoverMatches(),
          completeProfile(),
          membersLookingForYou(),
        ],
      ),
    );
  }

  userProfile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: fixPadding * 2.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 85,
            width: 85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                image: AssetImage('assets/users/user1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          widthSpace,
          widthSpace,
          widthSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Azhar Khan',
                style: black16BoldTextStyle,
              ),
              Text(
                'LV-651232',
                style: grey14RegularTextStyle,
              ),
              heightSpace,
              LinearPercentIndicator(
                padding: EdgeInsets.zero,
                width: 160.0,
                lineHeight: 3.0,
                percent: 0.77,
                progressColor: primaryColor,
                backgroundColor: greyColor,
              ),
              heightSpace,
              Text(
                '77% Profile Completion',
                style: grey13RegularTextStyle,
              ),
              heightSpace,
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: primaryColor),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: fixPadding,
                        vertical: 3,
                      ),
                      color: primaryColor,
                      child: Text(
                        'Basic',
                        style: white13RegularTextStyle,
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const UpgradePlan()),
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: fixPadding,
                          vertical: 3,
                        ),
                        child: Text(
                          'Upgrade plan',
                          style: primaryColor13RegularTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  newMatches() {
    return Column(
      children: [
        title('New Matches'),
        SizedBox(
          height: height * 0.22,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: newMatchesList.length,
            itemBuilder: (context, index) {
              final item = newMatchesList[index];
              return Padding(
                padding: EdgeInsets.only(
                    left: index == 0 ? fixPadding * 2.0 : fixPadding),
                child: InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileDetails(
                        tag: newMatchesList[index],
                        image: item['image'] as String?,
                        id: item['id'] as String?,
                      ),
                    ),
                  ),
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ClipPath(
                      clipper: ShapeBorderClipper(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Hero(
                                tag: newMatchesList[index],
                                child: SizedBox(
                                  height: height * 0.1316,
                                  width: width * 0.36,
                                  child: Image.asset(
                                    item['image'] as String,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 2,
                                right: 5,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      item['star'] = !(item['star'] as bool);
                                    });
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: item['star']! == true
                                            ? const Text('Add to shortlist')
                                            : const Text(
                                                'Remove from shortlist'),
                                      ),
                                    );
                                  },
                                  child: Icon(
                                    item['star']! == true
                                        ? Icons.star_rounded
                                        : Icons.star_border_rounded,
                                    size: 18,
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(fixPadding / 2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item['name'] as String,
                                  style: black14SemiBoldTextStyle,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '${item['year']} Yrs,',
                                      style: grey12RegularTextStyle,
                                    ),
                                    widthSpace,
                                    Text(
                                      item['height'] as String,
                                      style: grey12RegularTextStyle,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      item['id'] as String,
                                      style: grey12RegularTextStyle,
                                    ),
                                    widthSpace,
                                    Text(
                                      item['city'] as String,
                                      style: grey12RegularTextStyle,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  discoverMatches() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        fixPadding * 2.0,
        fixPadding * 2.0,
        0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Discove Matches',
            style: black16BoldTextStyle,
          ),
          heightSpace,
          heightSpace,
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: fixPadding * 2.0),
                  padding:
                      const EdgeInsets.symmetric(vertical: fixPadding * 1.5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: greyColor.withOpacity(0.15),
                        blurRadius: 2,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 40,
                        color: greyColor,
                      ),
                      widthSpace,
                      widthSpace,
                      widthSpace,
                      widthSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Location',
                            style: black14SemiBoldTextStyle,
                          ),
                          Text(
                            '135 matches',
                            style: black13RegularTextStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: fixPadding * 1.5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: greyColor.withOpacity(0.15),
                        blurRadius: 2,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.work_rounded,
                        size: 40,
                        color: greyColor,
                      ),
                      widthSpace,
                      widthSpace,
                      widthSpace,
                      widthSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Profession',
                            style: black14SemiBoldTextStyle,
                          ),
                          Text(
                            '15 matches',
                            style: black13RegularTextStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  completeProfile() {
    return Container(
      margin: const EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        fixPadding * 2.0,
        fixPadding * 2.0,
        0,
      ),
      padding: const EdgeInsets.all(fixPadding),
      decoration: BoxDecoration(
        color: const Color(0xfff1f8e9),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Complete your profile for\nmore responses',
                style: black14BoldTextStyle,
              ),
              const Icon(
                Icons.timelapse,
                color: primaryColor,
              ),
            ],
          ),
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'The first thing that members\nlook for in a is a photo',
                style: black13RegularTextStyle,
              ),
              Container(
                margin: const EdgeInsets.only(top: fixPadding),
                padding: const EdgeInsets.symmetric(
                  horizontal: fixPadding * 2.5,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'Add Photo',
                  style: white14BoldTextStyle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  membersLookingForYou() {
    return Column(
      children: [
        title('${membersList.length} Members Looking For You'),
        SizedBox(
          height: height * 0.22,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: membersList.length,
            itemBuilder: (context, index) {
              final item = membersList[index];
              return Padding(
                padding: EdgeInsets.only(
                    left: index == 0 ? fixPadding * 2.0 : fixPadding),
                child: InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileDetails(
                        tag: membersList[index],
                        image: item['image'] as String?,
                        id: item['id'] as String?,
                      ),
                    ),
                  ),
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ClipPath(
                      clipper: ShapeBorderClipper(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Hero(
                                tag: membersList[index],
                                child: SizedBox(
                                  height: height * 0.1316,
                                  width: width * 0.36,
                                  child: Image.asset(
                                    item['image'] as String,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 2,
                                right: 5,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      item['star'] = !(item['star'] as bool);
                                    });
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: item['star']! == true
                                            ? const Text('Add to shortlist')
                                            : const Text(
                                                'Remove from shortlist'),
                                      ),
                                    );
                                  },
                                  child: Icon(
                                    item['star']! == true
                                        ? Icons.star_rounded
                                        : Icons.star_border_rounded,
                                    size: 18,
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(fixPadding / 2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item['name'] as String,
                                  style: black14SemiBoldTextStyle,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '${item['year']} Yrs,',
                                      style: grey12RegularTextStyle,
                                    ),
                                    widthSpace,
                                    Text(
                                      item['height'] as String,
                                      style: grey12RegularTextStyle,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      item['id'] as String,
                                      style: grey12RegularTextStyle,
                                    ),
                                    widthSpace,
                                    Text(
                                      item['city'] as String,
                                      style: grey12RegularTextStyle,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  title(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        fixPadding * 2.0,
        fixPadding * 2.0,
        fixPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: black16BoldTextStyle,
          ),
          Text(
            'See all',
            style: primaryColor12BlackTextStyle,
          ),
        ],
      ),
    );
  }
}
