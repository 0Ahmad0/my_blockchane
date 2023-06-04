import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_blockchane/screens/widgets/add_peer_section.dart';
import 'package:my_blockchane/screens/widgets/blocks_section.dart';
import 'package:my_blockchane/screens/widgets/peer_section.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PeerSection(),
        const VerticalDivider(),
        BlocksSection(),
        const VerticalDivider(),
        AddPeerSection(),

      ],
    );
  }
}
