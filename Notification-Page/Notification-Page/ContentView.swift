import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(red: 0.968626678, green: 0.9686279893, blue: 0.9987213016) // Original
                
                List {
                    Section(header: Text("Today")) {
                        
                        UserNotification(name: "Iram", text: "Gave you super badge!", image: "iram",time: "18 mins Ago", viewed: true)
                        
                        SystemNotification(text: "What’s up! don’t forget to add journal")
                        
                        UserNotification(name: "John", text: "Gave you super badge!", image: "john",time: "18 mins Ago", viewed: false)
                    }
                    
                    Section(header: Text("Yesterday")) {
                        UserNotification(name: "Cui Yin", text: "Gave you super badge!", image: "cui",time: "18 mins Ago", viewed: false)
                        UserNotification(name: "Jack", text: "Gave you super badge!", image: "jack", time: "18 mins Ago",viewed: false)
                    }
                    Section(header: Text("Last 7 days")) {
                        
                        UserNotification(name: "Iram", text: "Gave you super badge!", image: "iram", time: "18 mins Ago", viewed: false)
                        SystemNotification(text: "It’s been a while since you joined any chamber.")
                        UserNotification(name: "Cindy", text: "Joined Your Chamber", image: "cindy",time: "18 mins Ago", viewed: true)
                    }
                    Section(header: Text("Older Notifications")) {
                        UserNotification(name: "John", text: "Gave you super badge!", image: "john",time: "18 mins Ago", viewed: false)
                    }
                }
                .navigationBarTitle("Notifications", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            
                        }) {
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
            .background(Color(red: 0.968626678, green: 0.9686279893, blue: 0.9987213016))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
