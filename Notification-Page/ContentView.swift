import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(red: 0.968626678, green: 0.9686279893, blue: 0.9987213016)
                
                List {
                    Section(header: Text("Today")) {
                        
                        UserNotification(name: "Iram", text: "Gave you super badge!", image: "iram", viewed: true)
                        
                        SystemNotification(text: "What’s up! don’t forget to add journal")
                        
                        UserNotification(name: "John", text: "Gave you super badge!", image: "john",viewed: false)
                    }
                    
                    Section(header: Text("Yesterday")) {
                        UserNotification(name: "Cui Yin", text: "Gave you super badge!", image: "cui", viewed: false)
                        UserNotification(name: "Jack", text: "Gave you super badge!", image: "jack", viewed: false)
                    }
                    Section(header: Text("Last 7 days")) {
                        
                        UserNotification(name: "Iram", text: "Gave you super badge!", image: "iram", viewed: false)
                        SystemNotification(text: "It’s been a while since you joined any chamber.")
                        UserNotification(name: "Cindy", text: "Joined Your Chamber", image: "cindy", viewed: true)
                    }
                    Section(header: Text("Older Notifications")) {
                        UserNotification(name: "John", text: "Gave you super badge!", image: "john", viewed: false)
                    }
                }
                .background(Color.black)
                .navigationBarTitle("Notifications", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            
                        }) {
                            Image("back")
                                .foregroundColor(.blue)
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack {
                            Button(action: {
                                // Handle settings button action
                            }) {
                                Image("settings")
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                }
                .listStyle(InsetGroupedListStyle())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
