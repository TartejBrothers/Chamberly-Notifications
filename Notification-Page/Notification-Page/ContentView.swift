//
//  ContentView.swift
//  Notification-Page
//
//  Created by srivatsa davuluri on 10/03/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
                
                List {
                    Section(header: Text("Today").textCase(.none)) {
                        
                        UserNotification(name: "Iram", image: "iram",time: "18 mins Ago")
                        
                        SystemNotification(text: "What’s up! don’t forget to add journal")
                        
                        JoinNotification(image: "jack", text: "Jack is inviting you to join their chamber")
                        
                        UserNotification2(name: "Iram", image: "iram",time: "30 mins Ago")
                        
                    }.listRowBackground(Color(#colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 1.0, alpha: 1.0)))
                        
                    
                    Section(header: Text("Yesterday").textCase(.none)) {
                        
                        UserNotification(name: "Cui Yin", image: "cui",time: "11 Hours Ago")
                        
                        UserNotification2(name: "Iram", image: "iram",time: "14 Hours Ago")
                        
                        UserNotification(name: "Jack", image: "jack", time: "18 Hours Ago")
                        
                    }.listRowBackground(Color(#colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 1.0, alpha: 1.0)))
                    Section(header: Text("Last 7 days").textCase(.none)) {
                        
                        UserNotification(name: "Iram", image: "iram", time: "2 Days Ago")
                        
                        SystemNotification(text: "It’s been a while since you joined any chamber.")
                        
                        UserNotification(name: "Cindy", text: "Joined Your Chamber", image: "cindy",time: "3 Days Ago")
                        
                    }.listRowBackground(Color(#colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 1.0, alpha: 1.0)))
                    
                    
                    Section(header: Text("Older Notifications").textCase(.none)) {
                        
                        UserNotification(name: "John", image: "john",time: "1 week Ago")
                        
                        JoinNotification(image: "cui", text: "Jack is inviting you to join their chamber")
                        
                        UserNotification2(name: "Iram", image: "iram",time: "1 week Ago")
                        
                    }.listRowBackground(Color(#colorLiteral(red: 0.9725490196, green: 0.9725490196, blue: 1.0, alpha: 1.0)))
                }
                .navigationBarTitle("Notifications", displayMode: .inline)
                
                
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {}) {
                            Image("back")
                            
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack {
                            Button(action: {
                                
                            }) {
                                Image("settings")
                                
                            }
                        }
                    }
                }
                .listStyle(InsetGroupedListStyle())
                
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
