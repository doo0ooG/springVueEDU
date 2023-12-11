package org.doog.mapper;

import org.apache.ibatis.annotations.*;
import org.doog.pojo.Article;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Mapper
public interface ArticleMapper {

    @Insert("insert into article(title, content, cover_img, state, category_id, create_user, create_time, update_time) values(#{title}, #{content}, #{coverImg}, #{state}, #{categoryId}, #{createUser}, #{createTime}, #{updateTime});")
    void add(Article article);

    @Delete("delete from article where id = #{id};")
    void delete(Integer id);

    @Update("update article set title=#{title}, content=#{content}, cover_img=#{coverImg}, state=#{state}, category_id=#{categoryId}, update_time=#{updateTime} where id=#{id};")
    void update(Article article);

    @Select("select * from article where id=#{id};")
    Article detail(Integer id);

    List<Article> list(Integer userId, Integer categoryId, String state);
}
