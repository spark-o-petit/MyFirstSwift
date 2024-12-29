//
//  ContentView.swift
//  MyFirstSwift
//
//  Created by alex on 12/29/24.
//

import SwiftUI

struct MyClosure: View {

  let myFirstClosure: () -> Void = { print("Hi 1") }
  
  func sayHi() {
    print("Hi 2")
  }
  
  // 입력도 없고 반환도 없는 일종의 익명함수
  
    var body: some View {
        VStack {
          Button(action: myFirstClosure) {
            Text("Hit Closure!")
          }
          
          Button {
            sayHi()
          } label: {
            Text("Hit Function!")
          }

        }
        .padding()
    }
}

#Preview {
  MyClosure()
}
