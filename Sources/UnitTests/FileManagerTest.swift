import XCTest
import FileManager

class FileManagerTest: XCTestCase {
  var allTests: [(String, Void -> Void)] {
    return [
      ("FileManagerTest", test)
    ]
  }

  func test() {

    let fileManager: FileManager? = FileManager(path: "/home/mac/swiftdev/testlib/Package.swift")
    let data: Data? = fileManager?.Read()
    print("data is \(data!.string)")
    XCTAssert(data != nil)
    XCTAssert(data?.string != nil)
  }
}
