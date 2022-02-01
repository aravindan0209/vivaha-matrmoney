import 'package:meet_me/pages/screens.dart';

class UpgradePlan extends StatelessWidget {
  const UpgradePlan({Key? key}) : super(key: key);

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
          'Upgrade Plan',
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
            'You\'ve subscribed to',
            style: grey14SemiBoldTextStyle,
          ),
          heightSpace,
          heightSpace,
          planCard(),
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          heightSpace,
          viewButton(context),
        ],
      ),
    );
  }

  planCard() {
    return Container(
      padding: const EdgeInsets.all(fixPadding),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(0.2),
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
                'Premium Plan',
                style: white18SemiBoldTextStyle,
              ),
              Text(
                '2 days left',
                style: white18SemiBoldTextStyle,
              ),
            ],
          ),
          heightSpace,
          heightSpace,
          heightSpace,
          planDetail('Direct message to all profile'),
          heightSpace,
          heightSpace,
          planDetail('Unlimited profile visits'),
          heightSpace,
          heightSpace,
          planDetail('Access for 30 days'),
          heightSpace,
        ],
      ),
    );
  }

  planDetail(String text) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(1),
          decoration: const BoxDecoration(
            color: whiteColor,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.done,
            color: primaryColor,
            size: 11,
          ),
        ),
        widthSpace,
        widthSpace,
        Text(
          text,
          style: white13RegularTextStyle,
        ),
      ],
    );
  }

  viewButton(context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SubscriptionPaln()),
      ),
      child: Container(
        padding: const EdgeInsets.all(fixPadding),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: primaryColor),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          'View Subscription Plans',
          style: primaryColor16BoldTextStyle,
        ),
      ),
    );
  }
}
