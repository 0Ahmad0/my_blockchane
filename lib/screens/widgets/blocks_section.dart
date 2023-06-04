import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_blockchane/controller/peer_controller.dart';
import 'package:my_blockchane/screens/widgets/add_peer_section.dart';
import 'package:intl/intl.dart';

import '../../models/models.dart';

class BlocksSection extends StatelessWidget {
  final peerController = Get.put(PeerController());
  final newBlockController = TextEditingController();
  final keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 4,
        child: Obx(
          () {
            return ListView(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.width * 0.1,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 5),
                      image: DecorationImage(
                          image: AssetImage('assets/images/ahmad.jpg'))),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                 peerController.peers.isEmpty
                    ? Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.warning_rounded,
                              size: MediaQuery.of(context).size.width / 5,
                            ),
                            const SizedBox(height: 20.0,),
                            Text('No Peers Yet, Add Some Peers',style: TextStyle(
                              fontSize: MediaQuery.of(context).size.width * 0.025
                            ),),
                          ],
                        ),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        itemCount: peerController
                            .peers[peerController.peerIndex.value].blocs.length,
                        itemBuilder: (_, index) => Container(
                          padding: EdgeInsets.all(20.0),
                          margin: EdgeInsets.only(bottom: 20.0),
                          width: double.infinity,
                          decoration: boxDecorationAddButton.copyWith(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(.3),
                                    blurRadius: 4)
                              ],
                              gradient: LinearGradient(colors: [
                                Colors.black.withOpacity(.6),
                                Colors.black.withOpacity(.3),
                              ])),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(14.0),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(.35),
                                        borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(8),
                                        ),
                                        border: Border.all(color: Colors.grey)),
                                    child: Text('DATA'),
                                  ),
                                  Expanded(
                                      child: TextFormField(
                                        initialValue: peerController.peers[peerController.peerIndex.value].blocs[index].data,
                                    style: TextStyle(color: Colors.green),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      prefixIcon: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.copy),
                                      ),
                                      filled: true,
                                      fillColor: Colors.grey.withOpacity(.15),
                                    ),
                                  )),
                                ],
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Text.rich(TextSpan(children: [
                                TextSpan(
                                  text: 'PREVIOUS HASH  : 000681dcb3c1a913b41307ed6b30d8dde1fe7bff39631ce93e005c808bada036',
                                ),
                                TextSpan(
                                    text: '${0}',
                                    style: TextStyle(color: Colors.green))
                              ])),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                children: [
                                  Text("HASH"),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  Expanded(
                                    child: Container(
                                      width: 100,
                                      padding: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4.0),
                                          border: Border.all(
                                            color: Colors.grey,
                                          ),
                                          color: Colors.white),
                                      child: Text(
                                        '000dc75a315c77a1f9c98fb6247d03dd18ac52632d7dc6a9920261d8109b37cf',
                                        style: TextStyle(color: Colors.green),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      'GENESIS BLOCK',
                                      style: TextStyle(
                                          fontSize:
                                              MediaQuery.of(context).size.width *
                                                  0.03),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                          'on ${DateFormat().add_MMMEd().format(DateTime.now())}'),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10.0),
                                        decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(.35),
                                            borderRadius: BorderRadius.circular(8),
                                            border: Border.all(color: Colors.grey)),
                                        child: Text('6548'),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                const SizedBox(
                  height: 20.0,
                ),
                Visibility(
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        width: double.infinity,
                        decoration: boxDecorationAddButton.copyWith(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(.3), blurRadius: 4)
                            ],
                            gradient: LinearGradient(colors: [
                              Colors.black.withOpacity(.6),
                              Colors.black.withOpacity(.3),
                            ])),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(14.0),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(.35),
                                      borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(8),
                                      ),
                                      border: Border.all(color: Colors.grey)),
                                  child: Text('DATA'),
                                ),
                                Expanded(
                                    child: Form(
                                      key: keyForm,
                                      child: TextFormField(
                                        validator: (value){
                                          if(value!.trim().isEmpty){
                                            return '*This Filed Required';
                                          }
                                          return null;
                                        },
                                        controller: newBlockController,
                                                                  style: TextStyle(color: Colors.green),
                                                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      prefixIcon: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.copy),
                                      ),
                                      filled: true,
                                      fillColor: Colors.grey.withOpacity(.15),
                                                                  ),
                                                                ),
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            InkWell(
                                onTap: () {
                              if(keyForm.currentState!.validate()){
                                  peerController.addBlock(Block(
                              data: newBlockController.text,
                               hashData: newBlockController.text.hashCode.toString(), 
                               hashNumber: newBlockController.hashCode.toString(), 
                               date: DateFormat().add_yMMMd().format(DateTime.now())
                               ),peerController.peerIndex.value);
                               newBlockController.clear();
                              }
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(16.0),
                                  decoration: boxDecorationAddButton.copyWith(
                                      borderRadius: BorderRadius.circular(50.0)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.add),
                                      Text('Add New Block'),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                      visible: peerController.peers.isNotEmpty,
                    )
              ],
            );
          }
        ));
  }
}
