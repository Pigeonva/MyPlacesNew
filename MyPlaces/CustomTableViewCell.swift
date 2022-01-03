//
//  CustomTableViewCell.swift
//  MyPlaces
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var imageOfPlace: UIImageView! {
        didSet{
            imageOfPlace.layer.cornerRadius = imageOfPlace.frame.size.height / 2
            imageOfPlace.clipsToBounds = true
        }
    }
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var ratingInCell: RatingControl!
    

}
