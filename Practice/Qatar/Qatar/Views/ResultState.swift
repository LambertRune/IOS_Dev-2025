//
//  ResultState.swift
//  Qatar
//
//  Created by rune on 14/01/2026.
//

import Foundation

@Observable
class ResultState{
    var selectedWkResult: WKResult?
        private var _selectedLocation : String?
        var selectedLocation: String? {
            get {
                return _selectedLocation
            }
            set {
                selectedWkResult = nil
                _selectedLocation = newValue
            }
        }
}
