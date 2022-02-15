//
//  ContentView.swift
//  test
//
//  Created by MUSKAN LUDHIYANI on 12/02/22.
//

import SwiftUI
struct ContentView: View {
    @State private var playercard = "card5"
    @State private var cpucard = "card4"
    @State private var playerscore=0
    @State private var cpuscore=0

    var body: some View {
        
        ZStack {
            
           
            Image("background").ignoresSafeArea()
            VStack {
              
                Image("logo")
                
                HStack {
                    Image(playercard)
                   
                    Image(cpucard)
                    }
                Button(action: {
                    let playerrand = Int.random(in: 2...14)
                    let cpurand=Int.random(in: 2...14)
                    
                    playercard="card"+String(playerrand)
                    cpucard="card" + String(cpurand)
                    if (playerrand>cpurand)
                    { playerscore+=1}
                    else if (playerrand<cpurand)
                    {cpuscore+=1}
                }, label: {
                    Image("dealbutton")
                })
                //Image("dealbutton")
                
                HStack {
                  
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerscore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                   
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuscore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
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
