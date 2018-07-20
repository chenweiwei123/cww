package com.cww.service.impl;

import com.cww.mapper.UrlMapper;
import com.cww.pojo.Note;
import com.cww.pojo.Theme;
import com.cww.service.UrlService;
import com.fasterxml.jackson.databind.JsonNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;

@Service
public class UrlServiceImpl implements UrlService {
    @Autowired
    UrlMapper mapper;
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

    @Override
    public List<Theme> gettheme() {
        return mapper.selectAllTheme();
    }

    @Override
    public List<Note> getnotes(Integer owner) {
        return mapper.selectallNotes(owner);
    }

    @Override
    public void insertnotes(Note note) {
        mapper.insertNotes(note);
    }

    @Override
    public Note getnotesByid(Integer id) {
        return mapper.selectNoteById(id);
    }
}
