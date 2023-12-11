import request from '@/utils/request.js';
import { useTokenStore } from '@/stores/token';
export const articleCategoryListService = () => {
    const TokenStore = useTokenStore();
    return request.get('/category');
}

export const articleCategoryAddService = (categoryData) => {
    return request.post("/category", categoryData);
}

export const articleCategoryUpdateService = (categoryData) => {
    return request.put("/category", categoryData);
}

export const articleCategoryDeleteService = (id) => {
    return request.delete("/category?id=" + id);
}

export const articleListService = (params) => {
    return request.get("/article", {params:params});
}

export const articleAddService = (articleData) => {
    return request.post("/article", articleData);
}

export const articleUpdateService = (articleData) => {
    return request.put('/article', articleData);
}

export const articleDeleteService = (id) => {
    return request.delete("/article?id=" + id);
}