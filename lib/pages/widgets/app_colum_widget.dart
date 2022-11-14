import 'package:flutter/material.dart';

import '../../models/recent_discussions.dart';
import '../../utils/color_ful.dart';

class RecentDiscussions extends StatelessWidget {
  const RecentDiscussions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(color: Colors.black45, offset: Offset(1, 1),
            spreadRadius: 0.5,
            blurRadius: 5,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Items recoridos",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: 6,
              columns: [
                DataColumn(
                  label: Text("titulo 1"),
                ),
                DataColumn(
                  label: Text("titulo 2"),
                ),
                DataColumn(
                  label: Text("titulo 3"),
                ),
                DataColumn(
                  label: Text("titulo 4"),
                ),
                DataColumn(
                  label: Text("titulo 5"),
                ),
              ],
              rows: List.generate(
                recentUsers.length,
                (index) => recentUserDataRow(recentUsers[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentUserDataRow(RecentUser userInfo) {
  return DataRow(
    cells: [
      DataCell(Text(userInfo.name!)),
      DataCell(Text(userInfo.posts!)),
      DataCell(Text(userInfo.date!)),
      DataCell(Text(userInfo.email!)),
      DataCell(Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: getRoleColor(userInfo.role).withOpacity(.2),
            border: Border.all(color: getRoleColor(userInfo.role)),
            borderRadius: BorderRadius.all(Radius.circular(5.0) //
                ),
          ),
          child: Text(userInfo.role!))),
    ],
  );
}