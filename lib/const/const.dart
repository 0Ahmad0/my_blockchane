import 'package:intl/intl.dart';
import 'package:my_blockchane/models/models.dart';

List<Peer> allPeers = [
  Peer(name: 'ahmad1', blocs: [
    Block(
        data: 'data1',
        hashData: 'data1'.hashCode.toString(),
        hashNumber: '1',
        date: DateFormat().add_yMMMd().format(DateTime.now())),
         Block(
        data: 'data11',
        hashData: 'data11'.hashCode.toString(),
        hashNumber: '11',
        date: DateFormat().add_yMMMd().format(DateTime.now())),
  ]),
  Peer(name: 'ahmad2', blocs: [
    Block(
        data: 'data2',
        hashData: 'data2'.hashCode.toString(),
        hashNumber: '2',
        date: DateFormat().add_yMMMd().format(DateTime.now())),
         Block(
        data: 'data22',
        hashData: 'data22'.hashCode.toString(),
        hashNumber: '22',
        date: DateFormat().add_yMMMd().format(DateTime.now())),
  ]),
  Peer(name: 'ahmad3', blocs: [
    Block(
        data: 'data3',
        hashData: 'data3'.hashCode.toString(),
        hashNumber: '33',
        date: DateFormat().add_yMMMd().format(DateTime.now())),
         Block(
        data: 'data33',
        hashData: 'data33'.hashCode.toString(),
        hashNumber: '33',
        date: DateFormat().add_yMMMd().format(DateTime.now())),
  ]),
];
