//
//  LocationView.swift
//  PriceCheck
//
//  Created by Abby Chen on 9/26/24.
//

import Foundation
import SwiftUI

struct LocationView: View {
  let location: Location
  
  var body: some View {
    Section(header: Text(location.name)
      .font(.headline)
      .foregroundColor(.gray)) {
        ForEach(location.scans.sorted(by: { $0 < $1 })) { scan in ScanView(scan: scan) }
      }
  }
}
