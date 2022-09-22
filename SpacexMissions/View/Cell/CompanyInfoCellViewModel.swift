//
//  CompanyInfoCellViewModel.swift
//  SpacexMissions
//
//  Created by Ameer Witwit on 9/20/22.


import Foundation

struct CompanyInfoCellViewModel: Hashable {
    
    private let company: Company
    
    lazy var companyDescription: String = {
        return String(format: Localizer.companyInfo.localized,
                      company.name,
                      company.founder,
                      "\(company.founded)",
                      "\(company.employees)",
                      "\(company.launchSites)",
                      company.valuation.formattedWithSeparator)
    }()
    
    init(company: Company) {
        self.company = company
    }
    
}
