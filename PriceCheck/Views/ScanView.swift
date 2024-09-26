//
//  ScanView.swift
//  PriceCheck
//
//  Created by Abby Chen on 9/26/24.
//

import Foundation
import SwiftUI

struct ScanView: View {
  let scan: PriceScan
  
  var body: some View {
    HStack {
      Text(scan.item)
        .font(.body)
      Spacer()
      HStack {
        Text(scan.formattedPrice())
          .font(.body)
          .bold()
        Image(systemName: "chevron.right")
          .foregroundColor(.gray)
      }
    }
    .padding(.vertical, 8)
  }
}
