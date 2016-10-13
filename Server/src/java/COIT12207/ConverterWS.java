/**
 *
 * Document   : ConverterWS.java
 * Created on : 05/10/2016, 11:15:00 AM
 * Author     : josh
 *
 * Provides Java Service and calculates result
 *
 * Converts the following temperatures
 * // Celsius
 * // Fahrenheit
 * // Rankine
 * // Delisle
 * // Newton
 * // Reaumur
 * // Romer
 * // Kelvin
 * // Gas Mark
 * // Thermostat
 * // Stufe
 *
 * Formula courtesy off : https://en.wikipedia.org/wiki/Conversion_of_units_of_temperature
 *
 * Extra functionality added because I like Java :)
 *
 */
package COIT12207;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.ejb.Stateless;

@WebService(serviceName = "ConverterWS")
@Stateless()
public class ConverterWS {

    @WebMethod(operationName = "convert")
    public double convert(@WebParam(name = "temperature") double temperature,
                          @WebParam(name = "scalea") int scalea,
                          @WebParam(name = "scaleb") int scaleb) {
        double temperatureToCelsius = 0;
        double returnTemperature = 0;

        // Convert Scale A to Celsius for easier universal conversion, save as $temperatureToCelsius
        switch (scalea) {
            // Celsius
            case 1:
                temperatureToCelsius = temperature;
                break;
            // Fahrenheit
            case 2:
                temperatureToCelsius = ((temperature + 40) / 1.8) - 40;
                break;
            // Rankine
            case 3:
                temperatureToCelsius = ((temperature - 491.67) * 5) / 9;
                break;
            // Delisle
            case 4:
                temperatureToCelsius = (100 - temperature * 2) / 3;
                break;
            // Newton
            case 5:
                temperatureToCelsius = (temperature * 100) / 33;
                break;
            // Reaumur
            case 6:
                temperatureToCelsius = (temperature * 5) / 4;
                break;
            // Romer
            case 7:
                temperatureToCelsius = ((temperature - 7.5) * 40) / 21;
                break;
            // Kelvin
            case 8:
                temperatureToCelsius = temperature - 273.15;
                break;
            // Gas Mark (whole number)   
            case 9:
                temperatureToCelsius = (int) ((temperature * 14) + 121);
                break;
            // Thermostat (whole number)   
            case 10:
                if (temperature > 1) {
                    temperatureToCelsius = (int) (100 + ((temperature - 1) * 50));
                } else {
                    temperatureToCelsius = 75;
                }
                break;
            // Stufe (whole number except under 1.0) 
            case 11:
                if (temperature <= 0.5) {
                    temperatureToCelsius = 125;
                } else if (temperature <= 0.75) {
                    temperatureToCelsius = 150;
                } else if (temperature > 1) {
                    temperatureToCelsius = (int) (150 + ((temperature - 1) * 25));
                }
                break;
        }

        // Convert $temperatureToCelsius to Scale B selection as $returnTemperature
        switch (scaleb) {
            // Celsius
            case 1:
                returnTemperature = temperatureToCelsius;
                break;
            // Fahrenheit
            case 2:
                returnTemperature = ((temperatureToCelsius + 40) * 1.8) - 40;
                break;
            // Rankine
            case 3:
                returnTemperature = ((temperatureToCelsius + 273.15) * 9) / 5;
                break;
            // Delisle
            case 4:
                returnTemperature = ((100 - temperatureToCelsius) * 3) / 2;
                break;
            // Newton
            case 5:
                returnTemperature = (temperatureToCelsius * 33) / 100;
                break;
            // Reaumur
            case 6:
                returnTemperature = (temperatureToCelsius * 4) / 5;
                break;
            // Romer
            case 7:
                returnTemperature = ((temperatureToCelsius * 21) / 40) + 7.5;
                break;
            // Kelvin    
            case 8:
                returnTemperature = temperatureToCelsius + 273.15;
                break;
            // Gas Mark (whole number)   
            case 9:
                returnTemperature = (int) ((temperatureToCelsius - 121) / 14);
                break;
            // Thermostat (whole number)
            case 10:
                if (temperatureToCelsius > 100) {
                    returnTemperature = (int) (1 + ((temperatureToCelsius - 100) / 50));
                } else {
                    returnTemperature = 0;
                }
                break;
            // Stufe (whole number except under 1.0) 
            case 11:
                if (temperatureToCelsius <= 125) {
                    returnTemperature = 0.5;
                } else if (temperatureToCelsius <= 150) {
                    returnTemperature = 0.75;
                } else if (temperatureToCelsius > 150) {
                    returnTemperature = (int) (1 + ((temperatureToCelsius - 150) / 25));
                }
                break;
        }
        return returnTemperature;
    }
}
