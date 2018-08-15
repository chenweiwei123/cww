package com.cww.mapper;

import com.cww.pojo.Note;
import com.cww.pojo.Theme;

import java.util.List;

public interface UrlMapper {
    List<Theme> selectAllTheme();
    List<Note> selectallNotes(Integer owner);
    void insertNotes(Note note);
    Note selectNoteById(Integer id);
    Theme selectTheme(Integer id);
    Integer deleteNoteById(Integer id);
}
