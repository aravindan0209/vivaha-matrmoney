import 'package:meet_me/pages/screens.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  String isSelected = 'accepted';

  final chatList = [
    {
      'image': 'assets/users/user3.png',
      'name': 'Samantha John',
      'message': 'Lorem ipsum dolor sit amet, consect',
      'time': '11:20 am',
      'msgCount': 5,
    },
    {
      'image': 'assets/users/user4.png',
      'name': 'Rashmika John',
      'message': 'Lorem ipsum dolor sit amet, consect',
      'time': '11:10 am',
      'msgCount': 0,
    },
    {
      'image': 'assets/users/user5.png',
      'name': 'Tina Patel',
      'message': 'Lorem ipsum dolor sit amet, consect',
      'time': '11:00 am',
      'msgCount': 2,
    },
    {
      'image': 'assets/users/user6.png',
      'name': 'Zoya Doe',
      'message': 'Lorem ipsum dolor sit amet, consect',
      'time': '11:50 am',
      'msgCount': 3,
    },
    {
      'image': 'assets/users/user7.png',
      'name': 'Isha Patel',
      'message': 'Lorem ipsum dolor sit amet, consect',
      'time': '15 Dec',
      'msgCount': 0,
    },
  ];

  final requestList = [
    {
      'image': 'assets/users/user14.png',
      'name': 'Krystal Doe',
      'year': '26',
      'height': '5ft 3in',
      'religion': 'Catholic Christain',
      'city': 'Delhi',
      'country': 'India',
      'occupation': 'UI- UX Designer',
      'education': 'Computer Science',
    },
    {
      'image': 'assets/users/user15.png',
      'name': 'Kiya Patel',
      'year': '25',
      'height': '5ft 3in',
      'religion': 'Hindu Brahmin',
      'city': 'Delhi',
      'country': 'India',
      'occupation': 'Software Developer',
      'education': 'MSC.IT',
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
          'Chats',
          style: black20BoldTextStyle,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              fixPadding * 2.0,
              fixPadding * 2.0,
              fixPadding * 2.0,
              fixPadding * 2.0,
            ),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isSelected = 'accepted';
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(bottom: fixPadding / 3),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: isSelected == 'accepted'
                                ? primaryColor
                                : greyColor,
                            width: 3.5,
                          ),
                        ),
                      ),
                      child: Text(
                        'Accepted',
                        style: TextStyle(
                          color: isSelected == 'accepted'
                              ? primaryColor
                              : greyColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isSelected = 'new';
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.only(bottom: fixPadding / 3),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color:
                                isSelected == 'new' ? primaryColor : greyColor,
                            width: 3.5,
                          ),
                        ),
                      ),
                      child: Text(
                        'New Request',
                        style: TextStyle(
                          color: isSelected == 'new' ? primaryColor : greyColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          isSelected == 'accepted'
              ? chat()
              : requestList.isEmpty
                  ? requestListEmpty()
                  : request(),
        ],
      ),
    );
  }

  chat() {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: chatList.length,
        itemBuilder: (context, index) {
          final item = chatList[index];
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Chat()),
            ),
            child: Padding(
              padding: (index == 0)
                  ? const EdgeInsets.fromLTRB(
                      fixPadding * 2.0,
                      0,
                      fixPadding * 2.0,
                      fixPadding,
                    )
                  : const EdgeInsets.fromLTRB(
                      fixPadding * 2.0,
                      fixPadding,
                      fixPadding * 2.0,
                      fixPadding,
                    ),
              child: Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        image: AssetImage(item['image'] as String),
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
                          item['name'] as String,
                          style: black13SemiBoldTextStyle,
                        ),
                        Text(
                          item['message'] as String,
                          style: grey12RegularTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        item['time'] as String,
                        style: grey9RegularTextStyle,
                      ),
                      item['msgCount'] == 0
                          ? Container()
                          : Container(
                              padding: const EdgeInsets.all(3),
                              decoration: const BoxDecoration(
                                color: primaryColor,
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                item['msgCount'].toString(),
                                style: white9BlackTextStyle,
                              ),
                            ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  request() {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: requestList.length,
        itemBuilder: (context, index) {
          final item = requestList[index];
          return Padding(
            padding: const EdgeInsets.fromLTRB(
              fixPadding * 2.0,
              0,
              fixPadding * 2.0,
              fixPadding * 3.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 75,
                      width: 75,
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
                          Row(
                            children: [
                              Text(
                                item['name']!,
                                style: black14SemiBoldTextStyle,
                              ),
                              const Spacer(),
                              Text(
                                '${item['year']} yrs - ${item['height']}',
                                style: grey12SemiBoldTextStyle,
                              ),
                              widthSpace,
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    requestList.removeAt(index);
                                  });
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: primaryColor),
                                  ),
                                  child: const Icon(
                                    Icons.close,
                                    size: 15,
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            item['religion']!,
                            style: grey13RegularTextStyle,
                          ),
                          Text(
                            '${item['city']}, ${item['country']}',
                            style: grey13RegularTextStyle,
                          ),
                          Text(
                            '${item['occupation']} / ${item['education']}',
                            style: grey13RegularTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                heightSpace,
                heightSpace,
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileDetails(
                              tag: requestList[index],
                              image: item['image'],
                            ),
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(7),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(color: primaryColor, width: 1.5),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            'More Info',
                            style: primaryColor15BoldTextStyle,
                          ),
                        ),
                      ),
                    ),
                    widthSpace,
                    widthSpace,
                    widthSpace,
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            requestList.removeAt(index);
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.all(7),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            border: Border.all(color: primaryColor, width: 1.5),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            'Accept Request',
                            style: white15BoldTextStyle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  requestListEmpty() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'No new request',
            style: grey14SemiBoldTextStyle,
          )
        ],
      ),
    );
  }
}
