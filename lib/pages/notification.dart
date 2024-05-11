import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          )
        )
      ),
      body: Column(
        children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search
                  ),
                  hintText: 'Search Notification',
                    border: InputBorder.none,
                  contentPadding: EdgeInsets.all(10),
                  enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  fillColor: Colors.black12,
                  filled: true,
                  focusedBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          SizedBox(height: 20),
          Flexible(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Slidable(
                      endActionPane: ActionPane(
                        // extentRatio: 3,
                          motion: ScrollMotion(),
                          children: [
                            SlidableAction(
                                onPressed: (context) {},
                            icon: Icons.reply,
                              backgroundColor: Colors.grey[300]!,
                            ),
                            SlidableAction(
                            onPressed: (context) {},
                                icon: Icons.delete,
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.red[700]!,
                            )
                          ]
                      ),
                      child: ListTile(
                        isThreeLine: true,
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage(
                              'assets/images/empty_profile.jpg'),
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Dr loyd cardozo',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text('2h ago',
                              style: TextStyle(
                                fontSize: 12
                              ),
                            )
                          ],
                        ),
                        subtitle: Text('your appointment is schedule today',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.grey[300],
                    indent: 15,
                    endIndent: 15,
                  ),
                  itemCount: 10
              )
          )
        ]
      ),
    );
  }
}