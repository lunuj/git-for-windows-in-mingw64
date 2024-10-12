# git-for-windows-in-mingw64
避免 windows 下使用 mingw64 的 git 产生的路径问题

# 使用方法
1. 将 mingw64 下的 git.exe 重命名为 gits.exe，做一个备份
2. 将此仓库下的 git.exe 移动至mingw64下的 git.exe 所在的文件夹
3. 尝试命令 git init 是否成功

# 源码说明
1. 此程序使用 bat 批处理命令转换，具体源码见 git.bat
2. 此程序作用仅针对 git 命令的 rev-parse 参数，将其返回值有 unix 格式路径转换为 windows 格式路径

# 应用说明
1. vscode 有一款插件“Git Graph”，在使用mingw64环境下的git时无法正常工作，原因是mingw64下返回的路径为unix格式，windows下无法正常解析，使用此仓库程序即可解决