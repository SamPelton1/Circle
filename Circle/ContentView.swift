//
//  ContentView.swift
//  Circle
//
//  Created by Samuel Pelton on 2/16/23.
//

import SwiftUI

struct ContentView: View {
    // how far the circle has been dragged
    @State private var offset = CGSize.zero

    // whether it is currently being dragged or not
    @State private var isDragging = false

    var body: some View {
        // a drag gesture that updates offset and dragging as it moves around
        let dragGesture = DragGesture()
            .onChanged { value in offset = value.translation }
            .onEnded { _ in
                withAnimation {
                    offset = .zero
                    isDragging = false
                }
            }

        // a long press gesture that starts drag
        let pressGesture = LongPressGesture()
            .onEnded { value in
                withAnimation {
                    isDragging = true
                }
            }

        // a combined gesture that makes a long press then drag
        let combined = pressGesture.sequenced(before: dragGesture)


        
        ZStack{
            ZStack{
        
        Circle()
                .fill(.pink)
            .frame(width: 25, height: 25)
            .scaleEffect(isDragging ? 1 : 1)
            .offset(offset)
            .gesture(combined)
            .animation(Animation.easeInOut(duration: 2).delay(0.2))
        Circle()
            .fill(.red)
            .frame(width: 15, height: 15)
            .scaleEffect(isDragging ? 1 : 1)
            .offset(offset)
            .gesture(combined)
            .animation(Animation.easeInOut(duration: 2).delay(0.25))
            Circle()
                .fill(.orange)
                .frame(width: 15, height: 15)
                .scaleEffect(isDragging ? 1 : 1)
                .offset(offset)
                .gesture(combined)
                .animation(Animation.easeInOut(duration: 2).delay(0.3))
            Circle()
                .fill(.yellow)
                .frame(width: 15, height: 15)
                .scaleEffect(isDragging ? 1 : 1)
                .offset(offset)
                .gesture(combined)
                .animation(Animation.easeInOut(duration: 2).delay(0.35))
            Circle()
                .fill(.green)
                .frame(width: 15, height: 15)
                .scaleEffect(isDragging ? 1 : 1)
                .offset(offset)
                .gesture(combined)
                .animation(Animation.easeInOut(duration: 2).delay(0.4))
            Circle()
                .fill(.mint)
                .frame(width: 15, height: 15)
                .scaleEffect(isDragging ? 1 : 1)
                .offset(offset)
                .gesture(combined)
                .animation(Animation.easeInOut(duration: 2).delay(0.45))
            Circle()
                .fill(.cyan)
                .frame(width: 15, height: 15)
                .scaleEffect(isDragging ? 1 : 1)
                .offset(offset)
                .gesture(combined)
                .animation(Animation.easeInOut(duration: 2).delay(0.5))
            Circle()
                .fill(.blue)
                .frame(width: 15, height: 15)
                .scaleEffect(isDragging ? 1 : 1)
                .offset(offset)
                .gesture(combined)
                .animation(Animation.easeInOut(duration: 2).delay(0.55))
            Circle()
                .fill(.indigo)
                .frame(width: 15, height: 15)
                .scaleEffect(isDragging ? 1 : 1)
                .offset(offset)
                .gesture(combined)
                .animation(Animation.easeInOut(duration: 2).delay(0.6))
            Circle()
                .fill(.purple)
                .frame(width: 15, height: 15)
                .scaleEffect(isDragging ? 1 : 1)
                .offset(offset)
                .gesture(combined)
                .animation(Animation.easeInOut(duration: 2).delay(0.65))
        }
        ZStack{
            
        
        Circle()
                .fill(.pink)
            .frame(width: 15, height: 15)
            .scaleEffect(isDragging ? 1 : 1)
            .offset(offset)
            .gesture(combined)
            .animation(Animation.easeInOut(duration: 2).delay(0.7))
        Circle()
            .fill(.red)
            .frame(width: 15, height: 15)
            .scaleEffect(isDragging ? 1 : 1)
            .offset(offset)
            .gesture(combined)
            .animation(Animation.easeInOut(duration: 2).delay(0.75))
            Circle()
                .fill(.orange)
                .frame(width: 15, height: 15)
                .scaleEffect(isDragging ? 1 : 1)
                .offset(offset)
                .gesture(combined)
                .animation(Animation.easeInOut(duration: 2).delay(0.8))
            Circle()
                .fill(.yellow)
                .frame(width: 15, height: 15)
                .scaleEffect(isDragging ? 1 : 1)
                .offset(offset)
                .gesture(combined)
                .animation(Animation.easeInOut(duration: 2).delay(0.85))
            Circle()
                .fill(.green)
                .frame(width: 15, height: 15)
                .scaleEffect(isDragging ? 1 : 1)
                .offset(offset)
                .gesture(combined)
                .animation(Animation.easeInOut(duration: 2).delay(0.9))
            Circle()
                .fill(.mint)
                .frame(width: 15, height: 15)
                .scaleEffect(isDragging ? 1 : 1)
                .offset(offset)
                .gesture(combined)
                .animation(Animation.easeInOut(duration: 2).delay(0.95))
            Circle()
                .fill(.cyan)
                .frame(width: 15, height: 15)
                .scaleEffect(isDragging ? 1 : 1)
                .offset(offset)
                .gesture(combined)
                .animation(Animation.easeInOut(duration: 2).delay(1.0))
            Circle()
                .fill(.blue)
                .frame(width: 15, height: 15)
                .scaleEffect(isDragging ? 1 : 1)
                .offset(offset)
                .gesture(combined)
                .animation(Animation.easeInOut(duration: 2).delay(1.05))
            Circle()
                .fill(.indigo)
                .frame(width: 15, height: 15)
                .scaleEffect(isDragging ? 1 : 1)
                .offset(offset)
                .gesture(combined)
                .animation(Animation.easeInOut(duration: 2).delay(1.1))
            Circle()
                .fill(.purple)
                .frame(width: 15, height: 15)
                .scaleEffect(isDragging ? 1 : 1)
                .offset(offset)
                .gesture(combined)
                .animation(Animation.easeInOut(duration: 2).delay(1.15))
        }
            ZStack{
                
            
            Circle()
                    .fill(.pink)
                .frame(width: 15, height: 15)
                .scaleEffect(isDragging ? 1 : 1)
                .offset(offset)
                .gesture(combined)
                .animation(Animation.easeInOut(duration: 2).delay(1.2))
            Circle()
                .fill(.red)
                .frame(width: 15, height: 15)
                .scaleEffect(isDragging ? 1 : 1)
                .offset(offset)
                .gesture(combined)
                .animation(Animation.easeInOut(duration: 2).delay(1.25))
                Circle()
                    .fill(.orange)
                    .frame(width: 15, height: 15)
                    .scaleEffect(isDragging ? 1 : 1)
                    .offset(offset)
                    .gesture(combined)
                    .animation(Animation.easeInOut(duration: 2).delay(1.3))
                Circle()
                    .fill(.yellow)
                    .frame(width: 15, height: 15)
                    .scaleEffect(isDragging ? 1 : 1)
                    .offset(offset)
                    .gesture(combined)
                    .animation(Animation.easeInOut(duration: 2).delay(1.35))
                Circle()
                    .fill(.green)
                    .frame(width: 15, height: 15)
                    .scaleEffect(isDragging ? 1 : 1)
                    .offset(offset)
                    .gesture(combined)
                    .animation(Animation.easeInOut(duration: 2).delay(1.4))
                Circle()
                    .fill(.mint)
                    .frame(width: 15, height: 15)
                    .scaleEffect(isDragging ? 1 : 1)
                    .offset(offset)
                    .gesture(combined)
                    .animation(Animation.easeInOut(duration: 2).delay(1.45))
                Circle()
                    .fill(.cyan)
                    .frame(width: 15, height: 15)
                    .scaleEffect(isDragging ? 1 : 1)
                    .offset(offset)
                    .gesture(combined)
                    .animation(Animation.easeInOut(duration: 2).delay(1.5))
                Circle()
                    .fill(.blue)
                    .frame(width: 15, height: 15)
                    .scaleEffect(isDragging ? 1 : 1)
                    .offset(offset)
                    .gesture(combined)
                    .animation(Animation.easeInOut(duration: 2).delay(1.55))
                Circle()
                    .fill(.indigo)
                    .frame(width: 15, height: 15)
                    .scaleEffect(isDragging ? 1 : 1)
                    .offset(offset)
                    .gesture(combined)
                    .animation(Animation.easeInOut(duration: 2).delay(1.6))
                Circle()
                    .fill(.purple)
                    .frame(width: 15, height: 15)
                    .scaleEffect(isDragging ? 1 : 1)
                    .offset(offset)
                    .gesture(combined)
                    .animation(Animation.easeInOut(duration: 2).delay(1.65))
            }
            ZStack{
                
            
            Circle()
                    .fill(.pink)
                .frame(width: 15, height: 15)
                .scaleEffect(isDragging ? 1 : 1)
                .offset(offset)
                .gesture(combined)
                .animation(Animation.easeInOut(duration: 2).delay(1.7))
            Circle()
                .fill(.red)
                .frame(width: 15, height: 15)
                .scaleEffect(isDragging ? 1 : 1)
                .offset(offset)
                .gesture(combined)
                .animation(Animation.easeInOut(duration: 2).delay(1.75))
                Circle()
                    .fill(.orange)
                    .frame(width: 15, height: 15)
                    .scaleEffect(isDragging ? 1 : 1)
                    .offset(offset)
                    .gesture(combined)
                    .animation(Animation.easeInOut(duration: 2).delay(1.8))
                Circle()
                    .fill(.yellow)
                    .frame(width: 15, height: 15)
                    .scaleEffect(isDragging ? 1 : 1)
                    .offset(offset)
                    .gesture(combined)
                    .animation(Animation.easeInOut(duration: 2).delay(1.85))
                Circle()
                    .fill(.green)
                    .frame(width: 15, height: 15)
                    .scaleEffect(isDragging ? 1 : 1)
                    .offset(offset)
                    .gesture(combined)
                    .animation(Animation.easeInOut(duration: 2).delay(1.9))
                Circle()
                    .fill(.mint)
                    .frame(width: 15, height: 15)
                    .scaleEffect(isDragging ? 1 : 1)
                    .offset(offset)
                    .gesture(combined)
                    .animation(Animation.easeInOut(duration: 2).delay(1.95))
                Circle()
                    .fill(.cyan)
                    .frame(width: 15, height: 15)
                    .scaleEffect(isDragging ? 1 : 1)
                    .offset(offset)
                    .gesture(combined)
                    .animation(Animation.easeInOut(duration: 2).delay(2.0))
                Circle()
                    .fill(.blue)
                    .frame(width: 15, height: 15)
                    .scaleEffect(isDragging ? 1 : 1)
                    .offset(offset)
                    .gesture(combined)
                    .animation(Animation.easeInOut(duration: 2).delay(2.05))
                Circle()
                    .fill(.indigo)
                    .frame(width: 15, height: 15)
                    .scaleEffect(isDragging ? 1 : 1)
                    .offset(offset)
                    .gesture(combined)
                    .animation(Animation.easeInOut(duration: 2).delay(2.1))
                Circle()
                    .fill(.purple)
                    .frame(width: 15, height: 15)
                    .scaleEffect(isDragging ? 1 : 1)
                    .offset(offset)
                    .gesture(combined)
                    .animation(Animation.easeInOut(duration: 2).delay(2.15))
            }
                ZStack{
                    
                
                Circle()
                        .fill(.pink)
                    .frame(width: 15, height: 15)
                    .scaleEffect(isDragging ? 1 : 1)
                    .offset(offset)
                    .gesture(combined)
                    .animation(Animation.easeInOut(duration: 2).delay(2.2))
                Circle()
                    .fill(.red)
                    .frame(width: 15, height: 15)
                    .scaleEffect(isDragging ? 1 : 1)
                    .offset(offset)
                    .gesture(combined)
                    .animation(Animation.easeInOut(duration: 2).delay(2.25))
                    Circle()
                        .fill(.orange)
                        .frame(width: 15, height: 15)
                        .scaleEffect(isDragging ? 1 : 1)
                        .offset(offset)
                        .gesture(combined)
                        .animation(Animation.easeInOut(duration: 2).delay(2.3))
                    Circle()
                        .fill(.yellow)
                        .frame(width: 15, height: 15)
                        .scaleEffect(isDragging ? 1 : 1)
                        .offset(offset)
                        .gesture(combined)
                        .animation(Animation.easeInOut(duration: 2).delay(2.35))
                    Circle()
                        .fill(.green)
                        .frame(width: 15, height: 15)
                        .scaleEffect(isDragging ? 1 : 1)
                        .offset(offset)
                        .gesture(combined)
                        .animation(Animation.easeInOut(duration: 2).delay(2.4))
                    Circle()
                        .fill(.mint)
                        .frame(width: 15, height: 15)
                        .scaleEffect(isDragging ? 1 : 1)
                        .offset(offset)
                        .gesture(combined)
                        .animation(Animation.easeInOut(duration: 2).delay(2.45))
                    Circle()
                        .fill(.cyan)
                        .frame(width: 15, height: 15)
                        .scaleEffect(isDragging ? 1 : 1)
                        .offset(offset)
                        .gesture(combined)
                        .animation(Animation.easeInOut(duration: 2).delay(2.5))
                    Circle()
                        .fill(.blue)
                        .frame(width: 15, height: 15)
                        .scaleEffect(isDragging ? 1 : 1)
                        .offset(offset)
                        .gesture(combined)
                        .animation(Animation.easeInOut(duration: 2).delay(2.55))
                    Circle()
                        .fill(.indigo)
                        .frame(width: 15, height: 15)
                        .scaleEffect(isDragging ? 1 : 1)
                        .offset(offset)
                        .gesture(combined)
                        .animation(Animation.easeInOut(duration: 2).delay(2.6))
                    Circle()
                        .fill(.purple)
                        .frame(width: 15, height: 15)
                        .scaleEffect(isDragging ? 1 : 1)
                        .offset(offset)
                        .gesture(combined)
                        .animation(Animation.easeInOut(duration: 2).delay(2.65))
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
