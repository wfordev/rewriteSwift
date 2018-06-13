//
//  ViewController.swift
//  rewriteSwift
//
//  Created by watabe on 2018/06/13.
//  Copyright © 2018年 watabe. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    @IBOutlet weak var myTextView: UITextView!
    @IBOutlet weak var resultTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextView.rx.text
            .subscribe(onNext: { [weak self] text in
                self!.resultTextView.text = text
            })
       
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

