package com.example.springboot.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.List;

@Entity // требование Entity
@Table(name = "posts") // только для удобства
@NoArgsConstructor // требование Entity
@AllArgsConstructor // только для удобства
@Getter
@Setter
public class PostEntity {
    @Id // требование Entity
    @GeneratedValue(strategy = GenerationType.IDENTITY) // только для удобства
    private long id;
    @JoinColumn(name="author_id")
    @ManyToOne(optional = false)
    private UserEntity author;
    @Column(nullable = false, columnDefinition = "TEXT")
    private String content;
    @ElementCollection
    @CollectionTable(name = "post_tags", joinColumns = @JoinColumn(name = "post_id"))
    @Column(name = "tag", nullable = false, columnDefinition = "TEXT")
    private List<String> tags;
    @Embedded
    @AttributeOverrides({
            @AttributeOverride(name="lat", column=@Column(name = "geo_lat")),
            @AttributeOverride(name="lng", column=@Column(name = "geo_lng")),
    })
    private GeoEmbeddable geo;
}
