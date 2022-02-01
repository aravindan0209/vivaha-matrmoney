import 'package:meet_me/pages/screens.dart';
import 'package:meet_me/widget/column_builder.dart';

class Matches extends StatefulWidget {
  const Matches({Key? key}) : super(key: key);

  @override
  _MatchesState createState() => _MatchesState();
}

class _MatchesState extends State<Matches> {
  late double height;

  final matchesList = [
    {
      'image': 'assets/users/user8.png',
      'name': 'Krisha John',
      'id': '#123456',
      'education': 'Software Professional- Graduate',
      'year': '26',
      'height': '5 ft 2 inch',
      'caste': 'Khatri - Hindu',
      'city': 'Delhi',
      'country': 'India',
      'star': true,
    },
    {
      'image': 'assets/users/user9.png',
      'name': 'Samantha John',
      'id': '#198456',
      'education': 'Software Professional- Graduate',
      'year': '26',
      'height': '5 ft 2 inch',
      'caste': 'Khatri - Hindu',
      'city': 'Delhi',
      'country': 'India',
      'star': false,
    },
    {
      'image': 'assets/users/user10.png',
      'name': 'Rashmika John',
      'id': '#102456',
      'education': 'Software Professional- Graduate',
      'year': '26',
      'height': '5 ft 2 inch',
      'caste': 'Khatri - Hindu',
      'city': 'Delhi',
      'country': 'India',
      'star': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Matches',
          style: black20BoldTextStyle,
        ),
        actions: [
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MatchesSort()),
            ),
            child: Image.asset(
              'assets/icons/filter.png',
              height: 20,
              width: 20,
            ),
          ),
          widthSpace,
          widthSpace,
          widthSpace,
          widthSpace,
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: fixPadding * 2.0,
              top: fixPadding * 2.0,
            ),
            child: Text(
              '591 Matches based on your preferences',
              style: grey13RegularTextStyle,
            ),
          ),
          matches(),
        ],
      ),
    );
  }

  matches() {
    return ColumnBuilder(
      itemCount: matchesList.length,
      itemBuilder: (context, index) {
        final item = matchesList[index];
        return Padding(
          padding: const EdgeInsets.fromLTRB(
            fixPadding * 2.0,
            fixPadding,
            fixPadding * 2.0,
            0,
          ),
          child: InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileDetails(
                  tag: matchesList[index],
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
                  children: [
                    Hero(
                      tag: matchesList[index],
                      child: SizedBox(
                        height: height * 0.16,
                        width: double.infinity,
                        child: Image.asset(
                          item['image'] as String,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(fixPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${item['name']}   ${item['id']}',
                                style: black17BoldTextStyle,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    item['star'] = !(item['star'] as bool);
                                  });
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: item['star']! == true
                                          ? const Text('Add to shortlist')
                                          : const Text('Remove from shortlist'),
                                    ),
                                  );
                                },
                                child: Icon(
                                  item['star']! == true
                                      ? Icons.star_rounded
                                      : Icons.star_border_rounded,
                                  color: primaryColor,
                                  size: 22,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            item['education'] as String,
                            style: grey13RegularTextStyle,
                          ),
                          heightSpace,
                          Text(
                            '${item['year']} Yrs, ${item['height']}',
                            style: black13SemiBoldTextStyle,
                          ),
                          Text(
                            '${item['caste']}, ${item['city']} - ${item['country']}',
                            style: black13SemiBoldTextStyle,
                          ),
                          heightSpace,
                          heightSpace,
                          Row(
                            children: [
                              Container(
                                width: 120,
                                padding: const EdgeInsets.symmetric(
                                    vertical: fixPadding / 2),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: primaryColor,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Text(
                                  'Send Interest',
                                  style: primaryColor15BoldTextStyle,
                                ),
                              ),
                              widthSpace,
                              widthSpace,
                              InkWell(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Call()),
                                ),
                                child: Container(
                                  width: 120,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: fixPadding / 2),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: primaryColor,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    'Call Now',
                                    style: primaryColor15BoldTextStyle,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          heightSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MatchResult(
                                      image: item['image'] as String?,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  'View Matching Results',
                                  style: primaryColor11BlackTextStyle,
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
            ),
          ),
        );
      },
    );
  }
}
