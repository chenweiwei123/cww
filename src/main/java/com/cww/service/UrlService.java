package com.cww.service;

import com.fasterxml.jackson.databind.JsonNode;

public interface UrlService {
    JsonNode getWeather(String location);
}
