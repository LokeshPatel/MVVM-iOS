//
//  CustomTableViewCell.swift
//  MVVM_ARCH
//
//  Created by Lokesh on 14/02/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var appLable : UILabel!
    static let cellIdentify = "CustomTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    static func nib()-> UINib{
        return UINib(nibName: "CustomTableViewCell", bundle: nil)
    }
    
    public func configuration(with viewModel: RecordsViewModel){
        appLable.text = "\(viewModel.firstName) \(viewModel.lastName)"
    }
}
