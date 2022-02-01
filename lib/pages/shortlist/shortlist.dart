import 'package:meet_me/pages/screens.dart';

class Shortlist extends StatefulWidget {
  const Shortlist({Key? key}) : super(key: key);

  @override
  _ShortlistState createState() => _ShortlistState();
}

class _ShortlistState extends State<Shortlist> {
  final shortList = [
    {
      'image': 'assets/users/user3.png',
      'name': 'Samantha John',
      'occupation': 'Software Developer',
      'year': '26',
      'height': '5 ft 2 in',
      'religion': 'Khatri - Hindu',
      'city': 'Delhi',
      'country': 'India',
    },
    {
      'image': 'assets/users/user4.png',
      'name': 'Rashmika John',
      'occupation': 'UI / Ux Designer',
      'year': '25',
      'height': '5 ft 1 in',
      'religion': 'Khatri - Hindu',
      'city': 'Delhi',
      'country': 'India',
    },
    {
      'image': 'assets/users/user5.png',
      'name': 'Tina Patel',
      'occupation': 'React Developer',
      'year': '22',
      'height': '5 ft 5 in',
      'religion': 'Khatri - Hindu',
      'city': 'Delhi',
      'country': 'India',
    },
    {
      'image': 'assets/users/user6.png',
      'name': 'Zoya Doe',
      'occupation': 'Software Developer',
      'year': '28',
      'height': '5 ft 5 in',
      'religion': 'Khatri - Hindu',
      'city': 'Delhi',
      'country': 'India',
    },
    {
      'image': 'assets/users/user7.png',
      'name': 'Isha Patel',
      'occupation': 'Software Developer',
      'year': '29',
      'height': '5 ft 5 in',
      'religion': 'Khatri - Hindu',
      'city': 'Delhi',
      'country': 'India',
    },
  ];

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
          'Shortlisted',
          style: black20BoldTextStyle,
        ),
      ),
      body: shortList.isEmpty ? emptyList() : shortLists(),
    );
  }

  emptyList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              const Icon(
                Icons.star_rounded,
                color: greyColor,
                size: 35,
              ),
              Text(
                'Short list is empty',
                textAlign: TextAlign.center,
                style: grey14SemiBoldTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }

  shortLists() {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: shortList.length,
      itemBuilder: (context, index) {
        final item = shortList[index];
        return Padding(
          padding: EdgeInsets.fromLTRB(
            fixPadding * 2.0,
            index == 0 ? fixPadding * 2.0 : 0,
            fixPadding * 2.0,
            0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileDetails(
                      tag: shortList[index],
                      image: item['image'],
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          image: AssetImage(item['image']!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    widthSpace,
                    widthSpace,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['name']!,
                            style: black14SemiBoldTextStyle,
                          ),
                          Text(
                            '${item['occupation']}   ${item['year']} yrs, ${item['height']}',
                            style: grey12RegularTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${item['religion']}, ${item['city']} - ${item['country']}',
                                style: grey12RegularTextStyle,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    shortList.removeAt(index);
                                  });
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                          '${item['name']} remove from shortlist'),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Remove',
                                  style: primaryColor12BlackTextStyle,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              divider(),
            ],
          ),
        );
      },
    );
  }

  divider() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: fixPadding * 2.0),
      color: greyColor,
      height: 1,
      width: double.infinity,
    );
  }
}
