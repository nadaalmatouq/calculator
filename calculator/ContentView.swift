//
//  ContentView.swift
//  calculator
//
//  Created by Nada Alm on 5/3/20.
//  Copyright © 2020 Nada Alm. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var pressedNum: String
    var body: some View {
        
        
        ZStack{
            
            
            Color(.black).edgesIgnoringSafeArea(.all)
            ScrollView(.horizontal){
            VStack{
                
                Text(pressedNum).font(.system(size: 100, weight: .thin)).foregroundColor(.white)
                
                FirstRow(buttonC: "C", pressedNum: $pressedNum)
                    
                RowMaker(pressedNum: $pressedNum, Num1: "7", Num2: "8", Num3: "9", Num4: "x")
                
                
                RowMaker(pressedNum: $pressedNum, Num1: "5", Num2: "5", Num3: "6", Num4: "-")
                            
                    RowMaker(pressedNum: $pressedNum, Num1: "1", Num2: "2", Num3: "3", Num4: "+")
                                        
    
                lastRow(pressedNum: $pressedNum)
                    
                
            }//VStack
            }//ScrollView
            
            
            }.edgesIgnoringSafeArea(.all)//Ztack
        
        
      
    }
}


struct Buttonn: View {
    var buttonNum: String
    @Binding var pressedNum: String
    var body: some View {
        
            Button(action: {
                
                self.pressedNum = self.buttonNum
                
            }){
                
                Text(buttonNum).foregroundColor(.white).font(.system(size: 50))
                
                }.frame(width: 170, height: 85).background(Color.gray).clipShape(Circle())//buttonBackground
     
    }
}


struct lastRow: View {
    
    @Binding var pressedNum: String
    var body: some View {
        
        HStack{
            Button(action: {
                
                self.pressedNum = "0"
                
            }){
                
                Text("0").foregroundColor(.white).font(.system(size: 50))
                
                }.frame(width: 170, height: 85).background(Color.gray).clipShape(Capsule())//buttonBackground
     
        
            
            Button(action: {
                       }){
                           
                           Text(".").foregroundColor(.white).font(.system(size: 50))
                           
                           }.frame(width: 170, height: 85).background(Color.gray).clipShape(Circle())//buttonBackground
                
            OrangeButton(buttonNum: "=")
            
            
        }//HStack
        
        
        
    }
}





struct OrangeButton: View {
    var buttonNum: String
 
    var body: some View {
        
            Button(action: {
                
                
                
            }){
                
                Text(buttonNum).foregroundColor(.white).font(.system(size: 50))
                
                }.frame(width: 170, height: 85).background(Color.orange).clipShape(Circle())//buttonBackground
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(pressedNum: "0")
    }
}

struct RowMaker: View {
    @Binding var pressedNum: String
    var Num1: String
    var Num2: String
    var Num3: String
    var Num4: String
    var body: some View {
        HStack{
            
            Buttonn(buttonNum: Num1, pressedNum: $pressedNum)
            Buttonn(buttonNum: Num2, pressedNum: $pressedNum)
            Buttonn(buttonNum: Num3, pressedNum: $pressedNum)
            OrangeButton(buttonNum: Num4)
            
            
            
        }
    }
}

struct FirstRow: View {
    var buttonC: String
    @Binding var pressedNum: String
    var body: some View {
        HStack{
            
            
            Button(action: {
                
                self.pressedNum = "0"
               
                
            }){
                
                Text(buttonC).foregroundColor(.white).font(.system(size: 50))
                
            }.frame(width: 170, height: 85).background(Color.gray).clipShape(Circle())//buttonBackground
            
            Button(action: {
                                 }){
                                     
                                     Text("+-").foregroundColor(.white).font(.system(size: 50))
                                     
                                     }.frame(width: 170, height: 85).background(Color.gray).clipShape(Circle())//buttonBackground
            Button(action: {
                                           }){
                                               
                                               Text("%").foregroundColor(.white).font(.system(size: 50))
                                               
                                               }.frame(width: 170, height: 85).background(Color.gray).clipShape(Circle())//buttonBackground
            
                          
                      OrangeButton(buttonNum: "d")
                      
            
            
            
            
            
            
        }
    }
}
