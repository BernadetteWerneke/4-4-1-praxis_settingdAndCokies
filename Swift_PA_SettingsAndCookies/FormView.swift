//
//  FormView.swift
//  Swift_PA_SettingsAndCookies
//
//  Created by Brian Moyou on 02.03.23.
//

import SwiftUI

//MARK: FormView
struct FormView: View {
    @Binding var benutzerName: String
    @Binding var selGroesse: Int
    @Binding var selBenachricht: Int
    @Binding var selColor: Color
    @Binding var selTon: Int
    @Binding var dateStart: Date
    @Binding var dateEnd: Date
    
    var body: some View {
        Form {
            
            Section(header: Text("Benutzer")) {
                TextField("Benutzername", text: $benutzerName)
                Picker("Profilbild Groesse", selection: $selGroesse){
                    Text("Klein").tag(0)
                    Text("Mittel").tag(1)
                    Text("Gross").tag(2)
                }
            }
            
            Section(header: Text("Benachrichtigung")) {
                Picker("Ankündigungen bei", selection: $selBenachricht){
                    Text("Nachrichten").tag(0)
                    Text("Erwähnungen").tag(1)
                    Text("Alles").tag(2)
                    Text("Nichts").tag(3)
                }
            }
            
            Section(header: Text("Hintergrund und Ton")) {
                ColorPicker("Farbe", selection: $selColor)
                Stepper("Ton: \(selTon)", value: $selTon, in: 0...100, step:1)
            }
            
            Section(header: Text("Stummschalten")) {
                DatePicker(selection: $dateStart, label: { Text("Von:") })
                DatePicker(selection: $dateEnd, label: { Text("Bis:") })
            }
            
            Button(
                action: {print(benutzerName, selGroesse, selBenachricht, selColor, selTon, dateStart, dateEnd)
            }, label: {
                Text("Speichern")
            })
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        //FormView(benutzerName: .constant(""), selGroesse: 0, selBenachricht: 0, selColor: .constant(.blue))
        FormView(benutzerName: .constant(""),
                 selGroesse: .constant(1),
                 selBenachricht: .constant(1),
                 selColor: .constant(Color.blue),
                 selTon: .constant(50),
                 dateStart: .constant(Date()),
                 dateEnd: .constant(Date()))
    }
}
