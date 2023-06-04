class Peer {
  final String name;
  final List<Block> blocs;

  Peer({required this.name, required this.blocs});
}

class Block {
  final String data;
  final String hashData;
  final String hashNumber;
  final String date;

  Block({
    required this.data,
    required this.hashData,
    required this.hashNumber,
    required this.date,
  });
}
