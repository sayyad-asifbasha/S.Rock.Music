import 'package:flutter/material.dart';
import 'package:rock_music/constants/routing_constants.dart';
import 'package:rock_music/locator.dart';
import 'package:rock_music/model/service_card_model.dart';
import 'package:rock_music/services/size_config.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key,required this.card});
  final ServiceCardModel card;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical!*0.5),

      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(card.image_path),
          fit: BoxFit.cover,
          opacity: 0.1,
        ),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Theme.of(context).colorScheme.primaryContainer,
        )
      ),
      child: ListTile(
        leading: Image.asset(
          card.icon_path,
          height: SizeConfig.blockSizeVertical! * 12,
          width: SizeConfig.blockSizeHorizontal! * 12,
        ),
        title:  Text(card.title),
        titleTextStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
          color: Theme.of(context).colorScheme.onPrimary,
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),
        subtitle:  Text(card.subtitle),
        subtitleTextStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
          color: Theme.of(context).colorScheme.onPrimary,
          fontSize: 13,
          fontWeight: FontWeight.w400,
        ),
        trailing: Image.asset(
          "assets/icons/arrow_right.png",
          height: SizeConfig.blockSizeVertical! * 5,
          width: SizeConfig.blockSizeHorizontal! * 5,
          fit: BoxFit.cover,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: SizeConfig.safeBlockHorizontal! * 2,
        ),
        onTap: ()
        {
          navigationService.pushScreen(Routes.navigatedScreen,arguments: card.description);
        },
      ),
    );
  }
}
