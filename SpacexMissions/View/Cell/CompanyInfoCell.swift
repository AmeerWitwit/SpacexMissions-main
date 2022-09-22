//
//  CompanyInfoCell.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/20/22.


import UIKit

class CompanyInfoCell: UITableViewCell {
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()
    
    var viewModel: CompanyInfoCellViewModel? {
        didSet {
            guard var viewModel = viewModel else { return }
            nameLabel.text = viewModel.companyDescription
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        addSubViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubViews() {
        addSubview(nameLabel)
        nameLabel.pinToSuperview(with: 15)
    }
    
}
