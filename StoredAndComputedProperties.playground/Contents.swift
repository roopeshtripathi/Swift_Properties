//: Playground - noun: a place where people can play

import UIKit


class Thermometer {
    
    // Here farenheit is Stored Property

    var farenheit : Double
    
    /* Here celsius is Computed Property
        celsius is being computed from farenheit
    */

    var celsius : Double{
        
        get {
            
            return (farenheit - 32) * (5/9)
        }
        
        set {
            
            farenheit = newValue * (9/5) + 32
        
        }
    }
    
    init (farenheit : Double){
        
        self.farenheit = farenheit
    }
    
    

}

let thermometer = Thermometer(farenheit: 502)
thermometer.farenheit
thermometer.celsius

thermometer.celsius = 36
thermometer.farenheit

let temp = 102
