//: cow for loops

import Foundation

let path = URL(string: "https://raw.githubusercontent.com/sindresorhus/cows/main/cows.txt")
let cowsStr = try String(contentsOf: path!, encoding: .utf8)
print("cowsStr.count", cowsStr.count)

// https://github.com/sindresorhus/cows/blob/main/index.js
//  module.exports = () => fs.readFileSync(path.join(__dirname, 'cows.txt'), 'utf8')
//    .replace(/\n$/, '').split('\n\n\n');

//let cowsSplit = cowsStr.split(separator: "\n", omittingEmptySubsequences: false)
let cowsSplit = cowsStr.split(separator: "\n\n\n", omittingEmptySubsequences: false)
print("cowsSplit.count \(cowsSplit.count)")

// show first 3 cows
print("first 3 cows")
for index in 0...3 {
  let it = cowsSplit[index]
  print("count \(it.count) index \(index) \n\(it)\n----")
}

// Find empty lines in cowsSplit array
// using enumerated() tuples
//
for (index, value) in cowsSplit.enumerated() {
  if value.count == 0 && index < 50 {
    print("tuple for zero index \(index)")
  }
}

// Find empty lines in cowsSplit array
// by counting from 0 to n
//
let n = 50 // cowsSplit.count
for index in 0..<n {
  let value = cowsSplit[index]
  if value.count == 0 {
    print("zero index \(index)")
  }
}

//: [Previous](@previous)  [Next](@next)
