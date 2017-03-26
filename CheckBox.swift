//
//  CheckBox.swift
//  CheckBox
//
//  Created by QWERTY on 26/03/2017.
//  Copyright © 2017 servercalap. All rights reserved.
//

import UIKit

class CheckBox: UIButton {


    
    let checkedImage = UIImage(named:"checkImg")! as UIImage
    let unCheckedImage  = UIImage(named: "unCheckImg")! as UIImage
    
    
    
    var isChecked:Bool = false{
        didSet{
            if isChecked == true{
                self.setImage(checkedImage, for: .normal)
                
            }else{
                self.setImage(unCheckedImage, for: .normal)
                
            }
            
            
        }
    }
    
    
    override func awakeFromNib() {
        self.addTarget(self, action: #selector(CheckBox.buttonClicked), for: .touchUpInside)
        self.isChecked = false
    }
    
    func buttonClicked(sender:UIButton) {
        if (sender == self){
            
            if isChecked == true{
                
                isChecked = false
            
            }else{
                isChecked = true
            
            }
        }
        
    }




}
