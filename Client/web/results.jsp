<%-- 
    Document   : results.jsp
    Created on : 05/10/2016, 11:15:00 AM
    Author     : josh

    Provides connection to Java Service and displays result

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
        <title>Temperature Converter - Results</title>
    </head>
    <body>
        <%-- start web service invocation --%>
        <h1>Universal Temperature Converter</h1>
        <h2>
            <%  try {
                    double t = Double.parseDouble(request.getParameter("temperature"));
                    int a = Integer.parseInt(request.getParameter("scalea"));
                    int b = Integer.parseInt(request.getParameter("scaleb"));
                    try {
                        coit12207.ConverterWS_Service service = new coit12207.ConverterWS_Service();
                        coit12207.ConverterWS port = service.getConverterWSPort();
                        double temperature = t;
                        int scalea = a;
                        int scaleb = b;
                        double result = port.convert(temperature, scalea, scaleb);
                        String scale = "";
                        switch (scaleb) {
                            case 1:
                                scale = "Celsius";
                                break;
                            case 2:
                                scale = "Fahrenheit";
                                break;
                            case 3:
                                scale = "Rankine";
                                break;
                            case 4:
                                scale = "Delisle";
                                break;
                            case 5:
                                scale = "Newton";
                                break;
                            case 6:
                                scale = "Réaumur";
                                break;
                            case 7:
                                scale = "Rømer";
                                break;
                            case 8:
                                scale = "Kelvin";
                                break;
                            case 9:
                                scale = "Gas Mark";
                                break;
                            case 10:
                                scale = "Thermostat";
                                break;
                            case 11:
                                scale = "Stufe";
                                break;
                        }
                        out.println("The result is : " + result + " " + scale);
                    } catch (Exception ex) {
                        //System.out("ERROR = " + ex);
                        out.println("There was an error connecting to the web service");
                    }
                } catch (Exception e) {
                    //System.out("ERROR = " + e);
                    out.println("Please enter a number");
                }
            %>
        </h1>
        <%-- end web service invocation --%>
        <h3><a href="index.jsp"> Return to Main Page </a></h3>
    </body>
</html>
