//
//  ContentView.swift
//  Tracker
//
//  Created by Imre Draskovits on 11/01/2022.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()    // "Stretches the image"
                                // It will only change size of img with this
                .scaledToFit()  // Edge to edge, fits to the screen
            
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
                .padding(.top)
            
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
                .padding(.bottom)
            
            Text(location.description)
                .padding(.horizontal)
            
            Text("Did you know?")
                .font(.title3)
                .bold()
                .padding(.top)
                .padding(.bottom)
            
            Text(location.more)
                .padding(.horizontal)
        }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(location: Location.example)
    }
}
