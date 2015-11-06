var T = {
    version: '0.0.1-beta'
};

function expose() {
    var oldT = window.T;

    T.noConflict = function () {
        window.T = oldT;
        return this;
    };

    window.T = T;
}

// 定义Tiny为一个AMD模块
if (typeof define === 'function' && define.amd) {
    define(T);
}

// 定义Tiny成为一个全局的T变量
if (typeof window !== 'undefined') {
    expose();
}
