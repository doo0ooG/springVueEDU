import { defineStore } from "pinia";
import { ref } from "vue";

// 定义store
export const useTokenStore = defineStore("token", () => {
    const token = ref('');

    const setToken = (newToken) => {
        token.value = newToken;
    }

    const removeToken = () => {
        token.value = "";
    }

    return {
        token, setToken, removeToken,
    };

}, {
    persist: true
})