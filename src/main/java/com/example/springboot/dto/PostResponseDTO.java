package com.example.springboot.dto;

import lombok.*;

import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class PostResponseDTO {
    private long id;
    private AuthorDTO author;
    private String content;
    private List<String> tags;
    private GeoDTO geo;
}
