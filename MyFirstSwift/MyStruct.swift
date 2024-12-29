//
//  ContentView.swift
//  MyFirstSwift
//
//  Created by alex on 12/29/24.
//

import SwiftUI

struct UserInfo {
  let name: String
  let age: Int?
  let email: String?
  let job: String?
  let hasPet: Bool
  
  func sayMyName(with name: String) {
    print(name)
  }
}

struct MyStruct: View {
  
  let userInfo: UserInfo
  
    var body: some View {
      
        VStack {
          Text(userInfo.name)
          Text(userInfo.age?.description ?? "No age")
          Text(userInfo.email?.description ?? "No email")
          Text(userInfo.job?.description ?? "No job")
          Text(userInfo.hasPet.description)
          
          Button {
            userInfo.sayMyName(with: userInfo.name)
          } label: {
            Text("Button")
          }
          
        }
        .padding()
    }
  

}

#Preview {
  
  MyStruct(userInfo: UserInfo(name: "Alex", age: 27, email: nil, job: nil, hasPet: false))
}
