import Foundation

struct FizzBuzz: RandomAccessCollection {
  typealias Index = Int
  
  var startIndex: Index {
    return 1
  }
  
  var endIndex: Index {
    return 101
  }
  
//  func index(after i: Index) -> Index {
//    print("Increment index(after:)", i + 1)
//      return i + 1
//  }
//
//  func index(before i: Index) -> Index {
//    return i - 1
//  }
  
  subscript(index: Index) -> String {
    print("Debug subscript", index)
    precondition(indices.contains(index), "out of range")
    switch (index.isMultiple(of: 3), index.isMultiple(of: 5)) {
    case (false, false):
      return String(describing: index)
    case (true, false):
      return "Fizz"
    case (false, true):
      return "Buzz"
    case (true, true):
      return "FizzBuzz"
    }
  }
}

for i in FizzBuzz().reversed().prefix(5) {
  print(i)
}


FizzBuzz().count

print(FizzBuzz().sorted())


//FizzBuzz().dropFirst(10).first!
