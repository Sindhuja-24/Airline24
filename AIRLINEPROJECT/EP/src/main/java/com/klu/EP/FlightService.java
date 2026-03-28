package com.klu.EP;

import java.util.Arrays;
import java.util.List;

import pojo.Flight;

public class FlightService {

    public static List<String> getDestinations() {
        return Arrays.asList("New York", "Los Angeles", "Chicago", "Houston", "Miami");
    }

    public static List<Flight> getAvailableFlights(String from, String to, String date, int passengers) {
        // Return a list of available flights matching criteria
        // (Stub data for example)
        return List.of(new Flight("Delta", "DL123", from, to, date, "$300"));
    }
}
