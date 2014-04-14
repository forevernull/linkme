[linkme](https://github.com/forevernull/linkme)
======

This tools make you intall eclipse plugins simply and easily.
## 简介

本工具帮助你轻松安装eclipse插件。基本原理：采用link方式安装eclipse插件。

##原理

links方式安装eclipse插件，基本步骤如下：

> * 下载插件并解压。
> * 在eclipse根目录下，新建如下目录结构：
```
myplugins/
	pluginName/
		eclipse/
```
> * 将插件中的features和plugins拷贝到myplugins/pluginName/eclipse下。
> * 在eclipse根目录下，新建links文件夹。
> * 在links目录下新建文本文件，写入如下内容：
```
path=D:/eclipse/myplugins/pluginName
```
> * 启动eclipse！大功告成！

本工具仅仅是参考上述步骤，实现自动处理而已。与手工配置等价。

##如何使用

###基本步骤

下载解压linkme->拷贝到eclipse目录下->下载解压插件update-site->改名->拷贝到linkme目录下->运行linkme.bat。完事！


###具体操作

> * 下载linkme.zip,解压得到如下文件结构：
>       linkme/linkme.bat
> * 拷贝上述文件结构到eclipse根目录。
> * 下载插件并解压，得到如下目录结构：
```
update-site/
	features/
	plugins/
```
> * 拷贝update-site文件夹到linkme文件夹
> * 修改update-site文件夹名称为eclipse插件名称，比如scalaIDE
> * 双击linkme.bat，等待提示安装成功。
> * 启动eclipse。以后就可以按照这么弄了

##声明

本工具的唯一下载地址是本人的[github](https://github.com/forevernull/linkme)地址