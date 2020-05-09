//
//  ContentView.swift
//  calculator
//
//  Created by Nada Alm on 5/3/20.
//  Copyright © 2020 Nada Alm. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var buttonC: String
    @State var array :[String]
    var body: some View {
        
        
        ZStack{
            
            
            Color(.black).edgesIgnoringSafeArea(.vertical)
            
            VStack{
                
                HStack{
                    Spacer()
                    
                    Text(array.joined()).font(.system(size: 100, weight: .thin)).foregroundColor(.white)
                    
                    
                }
                
            
                
                FirstRow(buttonC: $buttonC, array: $array)
                    
                RowMaker(buttonC: $buttonC, array: $array, Num1: "7", Num2: "8", Num3: "9", Num4: "x")
                
                
                RowMaker(buttonC: $buttonC, array: $array,Num1: "4", Num2: "5", Num3: "6", Num4: "-")
                            
                RowMaker(buttonC: $buttonC, array: $array, Num1: "1", Num2: "2", Num3: "3", Num4: "+")
                                        
    
                lastRow(array: $array)
                    
                
            }.offset(y: 40)//VStack
            
            }.edgesIgnoringSafeArea(.vertical)//Ztack
    }
}


struct Buttonn: View {
    @Binding var array: [String]
    @Binding var buttonC: String
    var buttonNum: String
    
    var body: some View {
        
            Button(action: {
                
                self.array.append(self.buttonNum)
                self.buttonC = "C"
                
                
            }){
                
                Text(buttonNum).foregroundColor(.white).font(.system(size: 50))
                
                }.frame(width: 80, height: 85).background(Color.gray).clipShape(Circle())//buttonBackground
     
    }
}


struct lastRow: View {
    
    @Binding var array: [String]
    var body: some View {
        
        HStack{
            Button(action: {
                
             self.array.append("0")
                
            }){
                HStack{
                    Text("0").foregroundColor(.white).font(.system(size: 50)).padding(20).padding(.leading,20)
                    Spacer()
                }
                
                }.frame(width: 170, height: 85).background(Color.gray).clipShape(Capsule())//buttonBackground
     
        
            
            Button(action: {
                       }){
                           
                           Text(".").foregroundColor(.white).font(.system(size: 50))
                           
            }.frame(width: 80, height: 85).background(Color.gray).clipShape(Circle()).padding(.leading,10)//buttonBackground
                
            OrangeButton(buttonNum: "=").padding(.trailing,10)
            
            
        }//HStack
      
    }
}

struct OrangeButton: View {
    var buttonNum: String
 
    var body: some View {
        
            Button(action: {
            }){
                
                Text(buttonNum).foregroundColor(.white).font(.system(size: 50))
                
                }.frame(width: 80, height: 85).background(Color.orange).clipShape(Circle())//buttonBackground
     
    }
}



struct RowMaker: View {
      @Binding var buttonC: String
    @Binding var array: [String]
    var Num1: String
    var Num2: String
    var Num3: String
    var Num4: String
    var body: some View {
        HStack{
            
            Buttonn(array: $array, buttonC: $buttonC, buttonNum: Num1)
            Buttonn(array: $array, buttonC: $buttonC, buttonNum: Num2)
            Buttonn(array: $array, buttonC: $buttonC, buttonNum: Num3)
            OrangeButton(buttonNum: Num4)
            
            
            
        }
    }
}

struct FirstRow: View {
    @Binding var buttonC: String
      @Binding var array: [String]
   
    var body: some View {
        HStack{
            
            
            Button(action: {
                
                self.array.removeAll()
                self.buttonC = "AC"
                self.array.append("0")
            }){
              
                Text(buttonC).foregroundColor(.white).font(.system(size: 40))
                
            }.frame(width: 80, height: 85).background(Color.gray).clipShape(Circle())//buttonBackground
            
            Button(action: {
                                 }){
                                     
                                     Text("±").foregroundColor(.white).font(.system(size: 50))
                                     
                                     }.frame(width: 80, height: 85).background(Color.gray).clipShape(Circle())//buttonBackground
            Button(action: {
                                           }){
                                               
                                               Text("%").foregroundColor(.white).font(.system(size: 50))
                                               
                                               }.frame(width: 80, height: 85).background(Color.gray).clipShape(Circle())//buttonBackground
            
                      OrangeButton(buttonNum: "÷")
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
      
    static var previews: some View {
        ContentView(buttonC: "C", array: ["0"])
    }
}
