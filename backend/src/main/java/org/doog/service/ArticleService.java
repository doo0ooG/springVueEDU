package org.doog.service;

import org.doog.pojo.Article;
import org.doog.pojo.PageBean;

public interface ArticleService {
    void add(Article article);

    void delete(Integer id);

    void update(Article article);

    Article detail(Integer id);

    PageBean<Article> list(Integer pageNum, Integer pageSize, Integer categoryId, String state);
}
