package com.cww.service;

import com.cww.pojo.Note;
import com.cww.pojo.Theme;
import com.fasterxml.jackson.databind.JsonNode;

import java.util.List;

public interface UrlService {
    JsonNode getWeather(String location);
    List<Theme> gettheme();
    List<Note> getnotes(Integer owner);
    void insertnotes(Note note);
    Note getnotesByid(Integer id);
    Integer deleteById(Integer id);
}
