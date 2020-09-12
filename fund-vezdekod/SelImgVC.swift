//
//  SelImgVC.swift
//  fund-vezdekod
//
//  Created by Никита Порубаймех on 12.09.2020.
//  Copyright © 2020 Никита Порубаймех. All rights reserved.
//

import UIKit


class SelImgVC: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    override func viewDidAppear(_ animated: Bool) {
        imageView.isUserInteractionEnabled = true;
    }
    @IBOutlet var imageView: UIImageView!

    var imagePicker = UIImagePickerController()

    @IBAction func btnClicked() {

        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
            print("Button capture")

            imagePicker.delegate = self
            imagePicker.sourceType = .savedPhotosAlbum
            imagePicker.allowsEditing = false

            present(imagePicker, animated: true, completion: nil)
        }
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
        if let image = info[.originalImage] as? UIImage {
            imageView?.image = image
            dismiss(animated: true, completion: nil)
        }
    }
}
