//
//  Planet.swift
//  Space Age
//
//  Created by Scott Eggleston on 1/5/16.
//  Copyright © 2016 Scott Eggleston. All rights reserved.
//

import Foundation

struct Planet {
    let name: String
    let orbitalRatio: Float
    let earthYearInSeconds: Float = 31557600.00
    let demonym: String
    
    func ageToPlanetYears(ageInEarthSeconds: Float) -> Float {
        let unroundedAge = ageInEarthSeconds / (earthYearInSeconds * self.orbitalRatio)
        return round(1000 * unroundedAge) / 1000
    }
}
