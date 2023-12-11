// 导入
import request from '@/utils/request.js'

//注册
export const userRegisterService = (registerData) => {
    const params = new URLSearchParams()
    for (let key in registerData) {
        params.append(key, registerData[key])
    }
    return request.post('/user/register', params)
}

// 提供登录
export const userLoginServive = (loginData) => {
    const params = new URLSearchParams()
    for (let key in loginData) {
        params.append(key, loginData[key])
    }
    return request.post('/user/login', params)
}

export const userInfoService = () => {
    return request.get('/user/userInfo')
}

export const userUpdateInfoService = (userInfoData) => {
    return request.put('/user/update', userInfoData);
}

export const userUpdatePasswordService = (userInfoData) => {
    return request.patch('/user/updatePwd', userInfoData);
}

export const userUpdateAvatar = (avatarUrl) => {
    const params = new URLSearchParams();
    params.append('avatarUrl', avatarUrl)
    return request.patch('/user/updateAvatar', params);
}