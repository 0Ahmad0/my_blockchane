import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:my_blockchane/const/const.dart';
import 'package:my_blockchane/models/models.dart';

import '../../controller/peer_controller.dart';

var boxDecorationAddButton = BoxDecoration(
    borderRadius: BorderRadius.circular(8.0),
    gradient: LinearGradient(colors: [
      Color(0xffdd2476),
      Color(0xffff512f),
    ]));

class AddPeerSection extends StatelessWidget {
  AddPeerSection({
    super.key,
  });

  final peerController = Get.put(PeerController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          GetBuilder<PeerController>(
            init: PeerController(),
            builder: (_)=>     InkWell(
              onTap: () {
                final data = 'Welcome To Block';
               peerController.addPeer(  Peer(
                    name: 'ahmad',
                    blocs: [
                      Block(
                          data: data,
                          hashData: data.hashCode.toString(),
                          hashNumber: '14',
                          date: DateFormat().add_MMMEd().format(DateTime.now()))
                    ],
                  ),);
                print(allPeers.length);
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                decoration: boxDecorationAddButton,
                child: Text('Add Peer'),
              ))
      )
       ],
      ),
    ));
  }
}
