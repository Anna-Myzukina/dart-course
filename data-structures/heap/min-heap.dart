
import 'package:dart_algorithm_club/data-structures/heap/heap.dart';

class MinHeap extends Heap {
  MinHeap(List<num> heapContainer) : super(heapContainer);

  @override
  bool pairIsInCorrectOrder(num itemOne, num itemTwo) {
    return itemOne < itemTwo;
  }
}
