//
//  ViewController.swift
//  PageChange
//
//  Created by 羅以捷 on 2022/7/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pageChangeOutlet.numberOfPages = aniaImage.count
    }
    let aniaImage = ["安妮亞00", "安妮亞01", "安妮亞02", "安妮亞03"]
    var index = 0
    func changePage (){
        imageView.image = UIImage(named: aniaImage[index])
        pageChangeOutlet.currentPage = index
        segmentOutlet.selectedSegmentIndex = index
    }
    @IBOutlet weak var pageChangeOutlet: UIPageControl!
    @IBOutlet weak var segmentOutlet: UISegmentedControl!
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func pageChange(_ sender: UIPageControl) {
        index = sender.currentPage
        changePage()
    }
    @IBAction func segmentChange(_ sender: UISegmentedControl) {
        index = sender.selectedSegmentIndex
        changePage()
    }
    @IBAction func nextPage(_ sender: Any) {
        index = index + 1
        index = index > aniaImage.count-1 ? aniaImage.count-1 : index
        changePage()
        
    }
    @IBAction func prePage(_ sender: Any) {
        index = index - 1
        index = index < 0 ? 0 : index
        changePage()
    }
    @IBAction func toRightSide(_ sender: Any) {
        index = index + 1
        index = index > aniaImage.count-1 ? aniaImage.count-1 : index
        changePage()
    }
    @IBAction func toLeftSide(_ sender: Any) {
        index = index - 1
        index = index < 0 ? 0 : index
        changePage()
    }
    
}

