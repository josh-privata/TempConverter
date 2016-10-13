<%-- 
    Document   : index.jsp
    Created on : 05/10/2016, 11:09:58 AM
    Author     : josh

    Displays initial form to get user input and send parameters to
    results.jsp

    Converts the following temperatures
        // Celsius
        // Fahrenheit
        // Rankine
        // Delisle
        // Newton
        // Reaumur
        // Romer
        // Kelvin    
        // Gas Mark
        // Thermostat
        // Stufe

        Formula coutesy off : https://en.wikipedia.org/wiki/Conversion_of_units_of_temperature

        Extra functionality added because I like Java :)
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link href="main.css" rel="stylesheet" type="text/css"/>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Temperature Converter - Entry</title>
    </head>
    <body>
        <h1>Universal Temperature Converter</h1>
        <form action="results.jsp" method="POST">
            <table>
                <tr>
                    <td colspan="2">
                        Temperature  <input id=temp type=number name="temperature" value="" required/>
                    </td>
                </tr>
                <tr>
                    <td><br/>
                        From
                    </td>
                    <td ><br/>
                        To
                    </td>
                </tr>
                <tr >
                    <td align="left">
                        <select name="scalea">
                            <option value="1">Celsius</option>
                            <option value="2">Fahrenheit</option>
                            <option value="3">Rankine</option>
                            <option value="4">Delisle</option>
                            <option value="5">Newton</option>
                            <option value="6">Réaumur</option>
                            <option value="7">Rømer</option>
                            <option value="8">Kelvin</option>
                            <option value="9">Gas</option>
                            <option value="10">Thermostat</option>
                            <option value="11">Stufe</option>
                        </select>
                    </td>
                    <td>
                        <select name="scaleb"  >
                            <option value="1">Celsius</option>
                            <option value="2">Fahrenheit</option>
                            <option value="3">Rankine</option>
                            <option value="4">Delisle</option>
                            <option value="5">Newton</option>
                            <option value="6">Réaumur</option>
                            <option value="7">Rømer</option>
                            <option value="8">Kelvin</option>
                            <option value="9">Gas</option>
                            <option value="10">Thermostat</option>
                            <option value="11">Stufe</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <br/> <input type="submit" value="Convert" />
                    </td>
                </tr>
            </table>

        </form>
    </body>
</html>
