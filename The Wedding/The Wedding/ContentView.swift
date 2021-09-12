//
//  ContentView.swift
//  The Wedding App
//
//  Created by Sara Hu on 9/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    NavigationView {
                        TabView {
                            Home().tabItem {
                                NavigationLink(
                                    destination: Home(),
                                    label: {
                                        Text("Home")
                                    })
                            }.tag(1)
                            Feed().tabItem {
                                NavigationLink(
                                    destination: Feed(),
                                    label: {
                                        Text("Feed")
                                    })
                            }.tag(2)
                            Registry().tabItem {
                                NavigationLink(
                                    destination: Registry(),
                                    label: {
                                        Text("Registry")
                                    })
                            }.tag(3)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
