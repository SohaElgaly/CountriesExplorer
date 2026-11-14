//
//  APIService.swift
//  CountriesExplorer
//
//  Created by Soha Elgaly on 13/11/2026.
//

import Foundation


final class APIService {


    let baseURL = "https://countries.dev/countries"
   
    
    func fetchCountries() async throws -> [Country] {
        var components = URLComponents(string: baseURL)

           components?.queryItems = [
               URLQueryItem(
                   name: "fields",
                   value: "name,flags,capital,region,population,alpha3Code,languages,currencies"
               )
           ]

           guard let url = components?.url else {
               throw APIError.invalidURL
           }
        
        let (data,response) =  try await URLSession.shared.data(from: url)
        
        guard let response = response as? HTTPURLResponse, (200...299).contains(response.statusCode) else {
            throw APIError.invalidResponse
        }
    
            return try JSONDecoder().decode([Country].self, from: data)
      
    }
    
}




enum APIError: Error {
    case invalidURL
    case invalidResponse
}
