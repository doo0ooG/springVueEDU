<script setup>
import { ref } from "vue";
const userInfo = ref({
  old_pwd: "",
  new_pwd: "",
  re_pwd: "",
});
// 校验密码的函数
const checkRePassword = (rule, value, callback) => {
  if (value === "") {
    callback(new Error("请在此确认密码"));
  } else if (value !== userInfo.value.new_pwd) {
    callback(new Error("请确保两次输入的密码一样"));
    // console.log(value, registerData.value.password);
  } else {
    callback();
  }
};
const rules = {
  old_pwd: [
    { required: true, message: "请输入旧密码", trigger: "blur" },
    {
      pattern: /^\S{5,16}$/,
      message: "长度为5~16非空字符",
      trigger: "blur",
    },
  ],
  new_pwd: [
    { required: true, message: "请输入新密码", trigger: "blur" },
    {
      pattern: /^\S{5,16}$/,
      message: "长度为5~16非空字符",
      trigger: "blur",
    },
  ],
  re_pwd: [{ validator: checkRePassword, trigger: "blur" }],
};
import { userUpdatePasswordService } from "@/api/user.js";
import { ElMessage } from "element-plus";
import { useRouter } from "vue-router";
import { useTokenStore } from "@/stores/token";
import useUserInfoStore from "@/stores/userInfo";
const router = useRouter();
const userInfoStore = useUserInfoStore();
const tokenStore = useTokenStore();
const updatePassword = async () => {
  let result = await userUpdatePasswordService(userInfo.value);
  ElMessage.success(result.msg ? result.msg : "修改成功");

  userInfoStore.removeInfo();
  tokenStore.removeToken();

  router.push("/login");
};
</script>
<template>
  <el-card class="page-container">
    <template #header>
      <div class="header">
        <span>基本资料</span>
      </div>
    </template>
    <el-row>
      <el-col :span="12">
        <el-form
          :model="userInfo"
          :rules="rules"
          label-width="100px"
          size="large"
        >
          <el-form-item label="旧密码" prop="old_pwd">
            <el-input v-model="userInfo.old_pwd"></el-input>
          </el-form-item>
          <el-form-item label="新密码" prop="new_pwd">
            <el-input v-model="userInfo.new_pwd"></el-input>
          </el-form-item>
          <el-form-item label="再次输入" prop="re_pwd">
            <el-input v-model="userInfo.re_pwd"></el-input>
          </el-form-item>
          <el-form-item>
            <el-button type="primary" @click="updatePassword"
              >提交修改</el-button
            >
          </el-form-item>
        </el-form>
      </el-col>
    </el-row>
  </el-card>
</template>
