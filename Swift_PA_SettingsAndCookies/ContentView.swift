//
//  ContentView.swift
//  Swift_PA_SettingsAndCookies
//
//  Created by Brian Moyou on 02.03.23.
//

import SwiftUI

struct ContentView: View {
    @State var benutzerName: String = ""
    @State var selGroesse: Int = 1
    @State var selBenachricht: Int = 1
    @State var selColor: Color = .blue
    @State var selTon: Int = 50
    @State var dateStart: Date = Date()
    @State var dateEnd: Date = Date()
    var body: some View {
 //       CookieView()
       FormView(benutzerName: $benutzerName, selGroesse: $selGroesse, selBenachricht: $selBenachricht, selColor: $selColor, selTon: $selTon, dateStart: $dateStart, dateEnd: $dateEnd)
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
