//
//  ContentView.swift
//  calculator
//
//  Created by Nada Alm on 5/3/20.
//  Copyright © 2020 Nada Alm. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        ZStack{
            
            
            Color(.black)
            
            VStack(alignment: .center, spacing: 25){
                
                Text("555").font(.system(size: 100, weight: .thin)).foregroundColor(.white).padding(.leading,170)
                
                
                
                VStack{
                    
                    horizantalCircle()
                     horizantalCircle()
                     horizantalCircle()
                     horizantalCircle()
                    
                    lastRow()
                    
                    
                }
             
            
                
                
            }//VStack
            
            VStack(alignment: .center, spacing: 55){
            
            HStack(spacing: 70){
               Text("C").font(.largeTitle).foregroundColor(.white)
                 Text("±").font(.largeTitle).foregroundColor(.white)
                 Text("%").font(.largeTitle).foregroundColor(.white)
                 Text("÷").font(.largeTitle).foregroundColor(.white)
                
            }
                HStack(spacing: 70){
                              Text("7").font(.largeTitle).foregroundColor(.white)
                                Text("8").font(.largeTitle).foregroundColor(.white)
                                Text("9").font(.largeTitle).foregroundColor(.white)
                                Text("x").font(.largeTitle).foregroundColor(.white)
                               
                           }
                
                HStack(spacing: 70){
                              Text("4").font(.largeTitle).foregroundColor(.white)
                                Text("5").font(.largeTitle).foregroundColor(.white)
                                Text("6").font(.largeTitle).foregroundColor(.white)
                                Text("-").font(.largeTitle).foregroundColor(.white)
                               
                           }
                HStack(spacing: 70){
                              Text("1").font(.largeTitle).foregroundColor(.white)
                                Text("2").font(.largeTitle).foregroundColor(.white)
                                Text("3").font(.largeTitle).foregroundColor(.white)
                                Text("+").font(.largeTitle).foregroundColor(.white)
                               
                           }
                HStack{
                    Text("0").font(.largeTitle).foregroundColor(.white).padding(.leading,40).offset(x: -35)
                    
                    Text(".").font(.largeTitle).foregroundColor(.white).padding(.leading,50).offset(x: 25)
                    Text("-").font(.largeTitle).foregroundColor(.white).padding(.leading,60).offset(x: 37)
                                
                               
                           }
                
                
                
                
                
                
                
                
                
                
            }.offset(y: 75)//VStack numbers
            
            
            
            
            
            
        }.edgesIgnoringSafeArea(.all)
        
        
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct horizantalCircle: View {
    var body: some View {
        HStack{
            Circle().fill(Color.gray).frame(width:85 , height:85)
            Circle().fill(Color.gray).frame(width:85 , height:85)
            Circle().fill(Color.gray).frame(width:85 , height:85)
            Circle().fill(Color.orange).frame(width:85 , height:85)
        }.padding(.horizontal,10)
    }
}

struct lastRow: View {
    var body: some View {
        HStack{
            
            Capsule().fill(Color.gray).frame(width: 170, height: 85).padding(.leading,10)
            Circle().fill(Color.gray).frame(width:85 , height:85)
            Circle().fill(Color.orange).frame(width:85 , height:85)
            
            
            
            
        }.padding(.trailing,10)
    }
}
