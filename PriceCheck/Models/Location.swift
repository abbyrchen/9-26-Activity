// Created for PriceCheck on 10/10/20 
// Using Swift 5.0 
// Running on macOS 11.0
// Qapla'
//

import Foundation
import SwiftUI

struct Location: Identifiable, Codable, Comparable {
  
  var id = UUID()
  var scans: [PriceScan]
  var name: String
  
  /*init(scans: [PriceScan], name: String) {
    self.scans = scans
    self.name = name
  }*/
  enum CodingKeys: String, CodingKey {
    case id
    case name = "location"
    case scans
  }
  
  // To conform to Comparable protocol
  static func < (lhs: Location, rhs: Location) -> Bool {
    return lhs.name < rhs.name
  }
  
  static func == (lhs: Location, rhs: Location) -> Bool {
    return lhs.name == rhs.name
  }
  
  // MARK: Example for SwiftUI
}


