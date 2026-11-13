//
//  Country.swift
//  CountriesExplorer
//
//  Created by Soha Elgaly on 13/11/2026.
//

import Foundation

struct Country: Codable, Identifiable {
    let name: String
        let alpha3Code: String
        let capital: String?
        let region: String?
        let population: Int?
        let flags: CountryFlags?
        let languages: [CountryLanguage]?
        let currencies: [CountryCurrency]?

        var id: String { alpha3Code }
}

    struct CountryFlags: Codable {
        let png: String?
        let svg: String?
    }

    struct CountryLanguage: Codable {
        let name: String
        let nativeName: String?
        let iso639_1: String?
        let iso639_2: String?
    }

    struct CountryCurrency: Codable {
        let code: String?
        let name: String?
        let symbol: String?
    }
