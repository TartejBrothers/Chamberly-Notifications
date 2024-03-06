import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.968626678, green: 0.9686279893, blue: 0.9987213016)
            NavigationView {
                List {
                    Section(header: Text("Today")) {
                        
                        HStack {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.blue)
                            VStack(alignment: .leading) {
                                Text("Iram")
                                    .font(.headline)
                                Text("Joined your chamber")
                                    .font(.subheadline)
                            }
                        }
                        
                        HStack {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.blue)
                            VStack(alignment: .leading) {
                                Text("John")
                                    .font(.headline)
                                Text("Gave you super badge!")
                                    .font(.subheadline)
                            }
                        }
                    }
                    
                    Section(header: Text("Yesterday")) {
                        HStack {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.blue)
                            VStack(alignment: .leading) {
                                Text("Cui Yin")
                                    .font(.headline)
                                Text("Joined your chamber")
                                    .font(.subheadline)
                            }
                        }
                        HStack {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.blue)
                            VStack(alignment: .leading) {
                                Text("Jack")
                                    .font(.headline)
                                Text("Joined your chamber")
                                    .font(.subheadline)
                            }
                        }
                    }
                    Section(header: Text("Last 7 days")) {
                        HStack {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.blue)
                            VStack(alignment: .leading) {
                                Text("David")
                                    .font(.headline)
                                Text("Gave you super badge!")
                                    .font(.subheadline)
                            }
                        }
                        HStack {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.blue)
                            VStack(alignment: .leading) {
                                Text("Cindy")
                                    .font(.headline)
                                Text("Joined your chamber")
                                    .font(.subheadline)
                            }
                        }
                    }
                    Section(header: Text("aill?")) {
                        HStack {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.blue)
                            VStack(alignment: .leading) {
                                Text("Sunny")
                                    .font(.headline)
                                Text("Joined your chamber")
                                    .font(.subheadline)
                            }
                        }
                    }
                }
                .background(Color.black)
                .navigationBarTitle("Notifications")
                .listStyle(InsetGroupedListStyle())
                
            }.background(Color.black)
            
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
