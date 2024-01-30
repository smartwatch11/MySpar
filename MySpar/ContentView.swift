import SwiftUI

struct ContentView: View {
    
    init() {
        setupNavigation()
    }
    
    @State var isLiked: Bool = false
    
    var body: some View {
        TabView {
            NavigationView {
                ScrollView (.vertical, showsIndicators: false) {
                    VStack {
                        ProductInfoView()
                            .padding([.leading, .top, .trailing], 10)
                        ProductDescriptionView()
                            .padding([.leading, .top, .trailing], 10)
                        CommentView()
                            .padding(.leading, 5)
                            .padding([.top, .bottom], 20)
                        Divider()
                        BuyView()
                    }
                }
                
                .toolbar {
                    ToolbarItemGroup(placement: .topBarLeading) {
                        Button(action: {print("back")}, label: {
                            Image(systemName: "arrow.left")
                                .foregroundColor(.green)
                                .imageScale(.large)
                                .font(.headline)
                        })
                    }
                    ToolbarItemGroup(placement: .topBarTrailing) {
                        HStack {
                            Button(action: {
                                print("check")
                            }, label: {
                                Image(systemName: "doc.plaintext")
                                    .foregroundColor(.green)
                                    .imageScale(.large)
                                    .padding(.top, 5)
                                    .padding(.trailing, 0)
                                    .font(.headline)
                            })
                            
                            Button(action: {
                                print("share")
                            }, label: {
                                Image(systemName: "square.and.arrow.up")
                                    .foregroundColor(.green)
                                    .imageScale(.large)
                                    .padding(.trailing, 0)
                                    .font(.headline)
                            })
                            
                            Button(action: {
                                print("like")
                                withAnimation {
                                    isLiked.toggle()
                                }
                            }, label: {
                                if isLiked {
                                    Image(systemName: "heart.fill")
                                        .foregroundColor(.red)
                                        .imageScale(.large)
                                        .padding(.top, 5)
                                        .font(.headline)
                                } else {
                                    Image(systemName: "heart")
                                        .foregroundColor(.green)
                                        .imageScale(.large)
                                        .padding(.top, 5)
                                        .font(.headline)
                                }
                                
                            })
                        }
                    }
                }
            }
            .tabItem { Label("Главная", systemImage: "tree.circle")}
            
            Text("Каталог")
                .tabItem { Label("Каталог", systemImage: "square.grid.2x2") }
            Text("Корзина")
                .tabItem { Label("Корзина", systemImage: "cart") }
            Text("Профиль")
                .tabItem { Label("Профиль", systemImage: "person") }
        }
        .accentColor(.green)
    }
    
    func setupNavigation() {
        let appearanceNavBar = UINavigationBarAppearance()
        appearanceNavBar.shadowColor = .gray
        appearanceNavBar.backgroundColor = .white
        UINavigationBar.appearance().standardAppearance = appearanceNavBar
        UINavigationBar.appearance().scrollEdgeAppearance = appearanceNavBar
        
        
        let appearanceTabBar = UITabBarAppearance()
        appearanceTabBar.shadowColor = .clear
        appearanceTabBar.backgroundColor = .white
        appearanceTabBar.stackedLayoutAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        appearanceTabBar.stackedLayoutAppearance.selected.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.systemGreen]
        appearanceTabBar.stackedLayoutAppearance.normal.iconColor = UIColor.black
        appearanceTabBar.stackedLayoutAppearance.selected.iconColor = UIColor.systemGreen
        UITabBar.appearance().standardAppearance = appearanceTabBar
    }
    
}
