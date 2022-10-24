import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../components/colors.dart';
import '../components/constant.dart';
import 'checkout_card.dart';
import 'customized_slidable_action.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
    required this.imageUrl,
    required this.foodTitle,
  }) : super(key: key);
  final String imageUrl;
  final String foodTitle;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          CustomizedSlidableAction(
            icon: Icons.favorite_border_outlined,
            onPressed: (value) {},
          ),
          CustomizedSlidableAction(
            icon: Icons.delete,
            onPressed: (value) {},
          ),
        ],
      ),
      child: CheckoutCard(
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(imageUrl),
          ),
          title: Text(
            foodTitle,
            style: AppConstant.textStyle(size: 17),
          ),
          subtitle: Row(
            children: [
              Text(
                '#1900',
                style: AppConstant.textStyle(
                  size: 15,
                  color: AppColors.primaryColor,
                ),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(top: 17),
                padding: const EdgeInsets.only(
                  left: 5,
                  right: 5,
                ),
                height: 20,
                width: 60,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: const Icon(
                        Icons.horizontal_rule,
                        size: 15,
                        color: Colors.white,
                      ),
                      onTap: () {},
                    ),
                    Text(
                      '1',
                      style: AppConstant.textStyle(
                        size: 13,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      child: const Icon(
                        Icons.add,
                        size: 15,
                        color: Colors.white,
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
