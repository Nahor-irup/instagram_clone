import 'package:flutter/material.dart';

class LineWidget extends StatelessWidget {
  const LineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(bottom: 5),
      sliver: SliverToBoxAdapter(
        child: Container(
          color: Colors.grey,
          width: MediaQuery.of(context).size.width,
          height: 0.5,
        ),
      ),
    );
  }
}
