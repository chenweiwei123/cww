package com.cww.service.impl;

import com.cww.service.UrlService;
import com.fasterxml.jackson.databind.JsonNode;
import org.springframework.stereotype.Service;

import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

@Service
public class UrlServiceImpl implements UrlService {
    @Override
    public JsonNode getWeather(String location) {
        try {
            URL url=new URL("https://www.apiopen.top/weatherApi?city=成都");
            URLConnection urlConnection = url.openConnection();
            urlConnection.connect();
            OutputStream outputStream = urlConnection.getOutputStream();
        } catch (java.io.IOException e) {
            throw new RuntimeException("天气接口异常",e);
        }
        return null;
    }
}
