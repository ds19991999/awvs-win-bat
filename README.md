# `AWVS` 批量扫描可自定义脚本

鉴于现有的 `AWVS` 脚本处理过于依赖 `Access` 数据库，对结果处理极不方便，故有了此脚本的诞生。

## 批处理扫描脚本 `awvs.bat`

批处理脚本采用最笨的方式，利用`AWVS` 自带的 `wvs_console` 可执行文件，从指定文件读取目标网站，简单实现的批量扫描，并将扫描结果输出到指定文件夹，同时自动导出 `HTML` 格式，便于使用 `Python` 对扫描结果进行处理和分析。批处理脚本可以参考`config/usage.txt`的参数进行自定义相关参数和扫描策略。

* 第一步，配置 `wvs_console`

* 第二步，在 `config/url.txt` 添加你要扫描的 `url`，必须带 `http(s)`

* 第三步，修改扫描策略，默认 `ws_default` , 在 `config/default.txt` 中修改，策略名可以參考 `config/profile.txt`

* 第四步，双击 `awvs.bat` 运行脚本，不要以管理员方式运行

* 扫描结果保存到 `result/` 文件夾
