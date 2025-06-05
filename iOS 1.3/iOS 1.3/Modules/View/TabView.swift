import SwiftUI

struct CustomTabBarView: View {
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                // Action for Home
            }) {
                VStack {
                    Image(systemName: "house")
                    Text("Home")
                }
            }
            Spacer()
            Button(action: {
                // Action for Products
            }) {
                VStack {
                    Image(systemName: "cart")
                    Text("Products")
                }
            }
            Spacer()
            Button(action: {
                // Action for Profile
            }) {
                VStack {
                    Image(systemName: "person")
                    Text("Profile")
                }
            }
            Spacer()
        }
        .padding()
        .background(Color(.white))
    }
}

extension CustomTabBarView {
    struct HomeView: View {
        var body: some View {
            NavigationView {
                Text("Home View")
                    .navigationBarTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}
