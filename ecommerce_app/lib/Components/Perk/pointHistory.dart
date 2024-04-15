import 'package:flutter/material.dart';
import '../../../Constants/colorConstants.dart';
import '../../../Constants/textConstants.dart';

class PointHistory extends StatefulWidget {
  final bool addPoint;
  final String point;
  final String pointDetail;
  final String pointDate;

  const PointHistory({
    super.key,
    required this.addPoint,
    required this.point,
    required this.pointDetail,
    required this.pointDate,
  });

  @override
  State<PointHistory> createState() => _PointHistoryState();
}

class _PointHistoryState extends State<PointHistory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.all(4),
            child: Row(
              children: [
                widget.addPoint
                    ? Text("已赚取积分", style: tTagUnselectionSelectedText)
                    : Text("已使用积分", style: tTagUnselectionSelectedText),
                Spacer(),
                widget.addPoint
                    ? Text("+" + widget.point, style: tPerkCardText3)
                    : Text("-" + widget.point, style: tPerkCardText5),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(4),
            child: Row(
              children: [
                Text(widget.pointDetail, style: tPerkCardText4),
                Spacer(),
                Text(widget.pointDate, style: tPerkCardText4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
