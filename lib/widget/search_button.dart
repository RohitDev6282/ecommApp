import 'package:eco_app/assets/filter_icons.dart';
import 'package:eco_app/constant/constant.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  var onPressed;
   SearchBar({Key? key,  this.onPressed, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kWhiteColor,
        border: Border.all(
          width: 2,
          color: kLightGreyColor,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.only(),
          child: Row(
            children: [
              const
              Icon(Icons.search,
              color: kPrimaryColor,
              size: 30,),
            const  Padding(
                padding:  EdgeInsets.only(left: 10),
                child: Text(
                  "Search...",
                  style: TextStyle(color: Colors.grey,
                  fontSize: 20),
                ),
              ),
          const    Spacer(),
              IconButton(
                onPressed:(){},
                icon:  const  Icon(
                  Filter.filter,
                   color: kPrimaryColor,
              size: 30,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


}
