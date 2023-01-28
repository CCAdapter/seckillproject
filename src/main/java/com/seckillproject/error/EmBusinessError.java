package com.seckillproject.error;

public enum EmBusinessError implements CommonError {
    // 通用错误类型10001
    PARAMETER_VALIDATION_ERROR(10001, "参数不合法"),
    UNKNOWN_ERROR(10002, "未知错误"),

    // 20000开头为用户信息相关错误定义
    USER_NOT_EXIST(20001, "用户不存在"),
    ;

    private int errCode;

    private String errMsg;

    @Override
    public int getErrCode() {
        return this.errCode;
    }

    @Override
    public String getErrMsg() {
        return this.errMsg;
    }

    // 定义setErrMsg方法的目的是构建通用错误类型，相同错误码可能有不同的msg，如参数不合法10001的msg可能是"邮箱为空"或者"手机号为空"
    @Override
    public CommonError setErrMsg(String errMsg) {
        this.errMsg = errMsg;
        return this;
    }

    EmBusinessError(int errCode, String errMsg) {
        this.errCode = errCode;
        this.errMsg = errMsg;
    }
}
