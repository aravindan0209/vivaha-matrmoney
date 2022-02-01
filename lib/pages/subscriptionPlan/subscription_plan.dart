import 'package:meet_me/pages/screens.dart';
import 'package:meet_me/widget/column_builder.dart';

class SubscriptionPaln extends StatefulWidget {
  const SubscriptionPaln({Key? key}) : super(key: key);

  @override
  State<SubscriptionPaln> createState() => _SubscriptionPalnState();
}

class _SubscriptionPalnState extends State<SubscriptionPaln> {
  int isSelected = 0;
  final planList = [
    {
      'name': 'Premium Plan',
      'price': '\$39.99',
      'detail1': 'Direct message to all profile',
      'detail2': 'Unlimited profile visits',
      'detail3': 'Access for 30 days',
    },
    {
      'name': 'Basic Plan',
      'price': '\$9.99',
      'detail1': 'No direct message',
      'detail2': '50 profile visits everyday',
      'detail3': 'Access for 10 days',
    },
    {
      'name': 'Economy Plan',
      'price': '\$24.99',
      'detail1': 'Direct message to 3 profile every day',
      'detail2': '250 profile visits everyday',
      'detail3': 'Access for 28 days',
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
          'Subscription Plans',
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
          Text(
            'Select your plan',
            style: grey14SemiBoldTextStyle,
          ),
          heightSpace,
          heightSpace,
          planCards(),
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          continueButton(),
        ],
      ),
    );
  }

  planCards() {
    return ColumnBuilder(
      itemCount: planList.length,
      itemBuilder: (context, index) {
        final item = planList[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: fixPadding * 2.0),
          child: InkWell(
            onTap: () {
              setState(() {
                isSelected = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(fixPadding),
              decoration: BoxDecoration(
                color: isSelected == index ? primaryColor : whiteColor,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: isSelected == index
                        ? primaryColor.withOpacity(0.2)
                        : greyColor.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item['name']!,
                        style: TextStyle(
                          color: isSelected == index ? whiteColor : blackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        item['price']!,
                        style: TextStyle(
                          color: isSelected == index ? whiteColor : blackColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  heightSpace,
                  heightSpace,
                  heightSpace,
                  planDetail(item['detail1']!, index),
                  heightSpace,
                  heightSpace,
                  planDetail(item['detail2']!, index),
                  heightSpace,
                  heightSpace,
                  planDetail(item['detail3']!, index),
                  heightSpace,
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  planDetail(String detail, int index) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            color:
                isSelected == index ? whiteColor : greyColor.withOpacity(0.3),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.done,
            color: isSelected == index ? primaryColor : greyColor,
            size: 11,
          ),
        ),
        widthSpace,
        widthSpace,
        Text(
          detail,
          style: isSelected == index
              ? white13RegularTextStyle
              : grey13RegularTextStyle,
        ),
      ],
    );
  }

  continueButton() {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SelectPaymentMethod()),
      ),
      child: Container(
        padding: const EdgeInsets.all(fixPadding),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          'Continue',
          style: white16BoldTextStyle,
        ),
      ),
    );
  }
}
