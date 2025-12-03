//
//  ContentView.swift
//  PencilKitPractice
//
//  Created by Leo A.Molina on 02/12/25.
//

import SwiftUI
import PencilKit

struct CanvasView: UIViewRepresentable {
    typealias UIViewType = PKCanvasView
    
    func makeUIView(context: Context) -> PKCanvasView {
        let canvasView = PKCanvasView()
        // canvasView.contentSize = CGSize(width: 600, height: 600)
        canvasView.tool = PKInkingTool(.pen, color: .orange, width: 30)
        canvasView.isRulerActive = false
        canvasView.drawingPolicy = .default // Check if drawing policy affects users without apple pencil
        canvasView.horizontalScrollIndicatorInsets.top = 100    // Don't really know what this does
        canvasView.verticalScrollIndicatorInsets.bottom = 100   // Don't really know what this does
        canvasView.backgroundColor = .brown
        return canvasView
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        
    }
}

struct DrawingView: View {
    var body: some View {
        NavigationStack {
            CanvasView()
        }
    }
}

#Preview {
    DrawingView()
}
