//
//  ContentView.swift
//  war-challenge
//
//  Created by Christopher Stewart on 2/16/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image("card3")
                    Spacer()
                    Image("card4")
                    Spacer()
                }
                Spacer()
                Button {
                //this is place holder
                } label: {
                    Image("dealbutton")
                }
                Spacer()
                HStack{
                        Spacer()
                        VStack {
                            Text("Player")
                            Text("0")
                        }
                            .foregroundColor(Color.white)
                            .font(.largeTitle)
                        Spacer()
                        VStack {
                            Text("CPU")
                            Text("0")
                        }
                        .foregroundColor(Color.white)
                        .font(.largeTitle)
                        Spacer()
                }
                Spacer()
    
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
