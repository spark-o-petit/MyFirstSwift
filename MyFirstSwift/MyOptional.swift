//
//  ContentView.swift
//  MyFirstSwift
//
//  Created by alex on 12/29/24.
//

import SwiftUI

struct MyOptional: View {
  
  let name: String? = "Alex"
  let age: Int? = 27
  // 값이 있을 때도 있고 없을 때도 있을 때 활용해보자
  
    var body: some View {
        VStack {
          Text(name?.uppercased() ?? "No name")
          Text(age?.description ?? "No age")
        }
        .padding()
    }
}

#Preview {
  MyOptional()
}
