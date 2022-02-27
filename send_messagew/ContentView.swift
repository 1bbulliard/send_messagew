//
//  ContentView.swift
//  send_messagew
//
//  Created by Bob Bulliard on 2/27/22.
//

import SwiftUI
import Messages
struct ContentView: View {
    @State var numbertomessage = ""
    @State var message = ""
    var body: some View {
  
        TextField("Enter a Mobile num:(1xxxxxxxxxx", text: $numbertomessage)
        TextField("Enter a message", text: $message)
        
        Button("send") {
            sendmessage(parm1: numbertomessage, parm2: message)
        //av4(parm1: amtx6, parm2: amtx7, parm3: amtx8)
        }

        
    }
}

func sendmessage(parm1: String, parm2: String) {
    //func av4(parm1: Double, parm2: Double, parm3: Double) -> Double {
    let sms: String = "sms:\(parm1)&body=\(parm2)"
    let strurl: String =  sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
    UIApplication.shared.open(URL.init(string:strurl)!, options: [:], completionHandler: nil)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
