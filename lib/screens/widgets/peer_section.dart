import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_blockchane/const/const.dart';
import 'package:my_blockchane/controller/peer_controller.dart';

class PeerSection extends StatelessWidget {
  PeerSection({
    super.key,
  });

  final peerController = Get.put(PeerController());

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
      children: [
        Obx(
          () => Wrap(
            children: [
              for(int i = 0 ; i < peerController.peers.length ; i++)
               InkWell(
                onTap: (){
                  peerController.peerIndex.value = i;
                },
                 child: Stack(
                      children: [
                        AvatarGlow(
                          endRadius: 60.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey[100],
                            child: ClipOval(child: Text('P ${i+1}')),
                            radius: 30.0,
                          ),
                        ),
                        Positioned(
                          bottom: 30,
                          left: 30,
                          child: Badge(
                            label: Text('+'),
                            backgroundColor: Colors.orangeAccent,
                            textColor: Colors.white,
                          ),
                        )
                      ],
                    ),
               ),
               
            ]
          ),
        )
      ],
    ));
  }
}
