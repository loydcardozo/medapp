import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Profile_details extends StatelessWidget {
  const Profile_details({
    super.key,
    required this.onPressed,
    required this.title,
    required this.value,
    this.icon = Iconsax.arrow_right_34,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Text(title,
                style: Theme.of(context).textTheme.bodySmall ?? TextStyle().copyWith(
                    color: Colors.white
                ),
                overflow: TextOverflow.ellipsis,
        
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(value,
                style: Theme.of(context).textTheme.bodyMedium ?? TextStyle().copyWith(
                    color: Colors.white
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Expanded(
              child: Icon(
                  Iconsax.arrow_right_34,
                  size: 18
              ),
            )
          ],
        ),
      ),
    );
  }
}