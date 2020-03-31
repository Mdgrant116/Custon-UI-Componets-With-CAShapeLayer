//
//  ViewController.swift
//  Custon UI Componets With CAShapeLayer
//
//  Created by Grant, Michael on 3/31/20.
//  Copyright © 2020 Grant, Michael. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let squareShapeLayer: CAShapeLayer = CAShapeLayer()
    let triangleShapeLayer: CAShapeLayer = CAShapeLayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createSquareShape()
        createTriangleShape()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        squareShapeLayer.path = UIBezierPath(rect: CGRect(x: 50, y: 50, width: 100, height: 100)).cgPath
        
        let trianglePath = UIBezierPath()
        trianglePath.move(to: CGPoint(x: 50, y: 300))
        trianglePath.addLine(to: CGPoint(x: 150, y: 300))
        trianglePath.addLine(to: CGPoint(x: 100, y: 120))
        trianglePath.close()
        triangleShapeLayer.path = trianglePath.cgPath
    }

    func createSquareShape() {
        squareShapeLayer.fillColor = UIColor.red.cgColor
        view.layer.addSublayer(squareShapeLayer)
        
    }
    
    func createTriangleShape() {
        triangleShapeLayer.fillColor = UIColor.gray.cgColor
        view.layer.addSublayer(triangleShapeLayer)
    }
}

