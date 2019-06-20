//
//  ViewController.swift
//  ImagePicker
//
//  Created by Hernand Azevedo on 20/06/19.
//  Copyright © 2019 Hernand Azevedo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func experiment() {
//        presentImagePicker()
//        presentUiActivityViewController()
        presentAlert()
    }
    
    func presentImagePicker() {
        let nextController = UIImagePickerController()
        present(nextController, animated: true, completion: nil)
    }
    
    
    func presentAlert() {
        let controller = UIAlertController()
        controller.title = "Test Alert"
        controller.message = "This is a test"
        let okAction = UIAlertAction(title: "ok", style: UIAlertAction.Style.default) { action in
            self.dismiss(animated: true, completion: nil)
        }
        controller.addAction(okAction)
        present(controller, animated: true, completion: nil)
    }
    func presentUiActivityViewController() {
        let image = UIImage()
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        present(controller, animated: true, completion: nil)
    }
}

