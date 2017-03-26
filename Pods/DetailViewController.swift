//
//  DetailViewController.swift
//  Pods
//
//  Created by Victoria Ku on 3/22/17.
//
//

import UIKit

class DetailViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var posterimageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    @IBOutlet weak var infoView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!

    
    var movie: NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.navigationItem.title = "Detailed View"
        
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width, height: infoView.frame.origin.y + infoView.frame.size.height)
       
       
        
        let title = movie["title"] as! String
        titleLabel.text = title
        let overview = movie["overview"] as! String
        overviewLabel.text = overview
        overviewLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w500/"
        if let postPath = movie["poster_path"] as? String{
            let ImageURL = NSURL(string: baseUrl + postPath)
            posterimageView.setImageWith(ImageURL as! URL)
        
        }
        
        
        
        // Do any additional setup after loading the view.
        
        
        scrollView.delegate = self
        scrollView.minimumZoomScale = 1
        scrollView.maximumZoomScale = 3
        scrollView.addSubview(posterimageView)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewForZooming(in: UIScrollView) -> UIView?{
        return self.posterimageView
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        print("prepare for segue called")
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
