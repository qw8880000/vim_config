
# 使用方法

以管理员权限运行`install.bat`

# 说明

SpaceVim 无法在其默认的配置文件里面直接添加 Vim 配置，需要通过SpaceVim启动时的钩子函数来实现自定义配置。
修改 `~/.SpaceVim.d/init.toml`，加入 bootstrap_before 选项：

```
[options]
  bootstrap_before = "myspacevim#init"
```

然后，把`autoload/myspacevim.vim` 放到 `~/.SpaceVim.d/autoload/` 之下。

