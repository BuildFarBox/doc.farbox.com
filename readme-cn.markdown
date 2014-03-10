Key: doc.farbox.com

Title: FarBox Doc

## About


这是<http://doc.farbox.com>的模板, 大约60行的代码（Jade模板语法），却拥有不少令人惊喜的特性。

这个模板也相当于一个`文档生成器`，它能将一个文件夹直接转化为功能强大的文档站点。

如果你安装了FarBox的`Editor`这个APP，你也可以直接将一个文件夹转化为PDF文档，跟你的网站拥有同样的内容。


## 如何使用?

### 安装

1. 确保你已经拥有了`farbox.com`的账户，这意味着你的Dropbox已经安装了一个名为`FarBox`的APP.
2. 将`template`目录放入 `<your site folder named in Domain format>`的站点文件夹（即FarBox的一个二级目录）中.
3. 登录farbox.com, 你将看到自己新创建出来的网站.

### 运行

1. 将你的文档文件放入`docs`这个文件夹.
2. 在`docs`这个目录中增加`index.txt(/.md/.mk/.markdown)`，可以生成网站的Homepage.
3. 确保`docs`目录内的各个文件夹内有文档，否则将不会加入导航.


## 特性

### 无需服务器，支持自定义域名

这是为`FarBox.com`定制的模板，而FarBox能将你Dropbox的一个文件夹转化为一个强大的网站，所以，不需要服务器。

你可以简单的创建一个站点目录，并以`*.farbox.com`的二级域名命名，比如`the-doc.farbox.com`，那么这个域名就是可访问的。然后，到`http://yourdomain.com/admin`发现一些好玩的东西吧。



### 自定义模板

这是一个少量代码组成的模板，所以，如果你喜欢，修改它吧。

另外，`FarBox`支持`AutoReload`模式，除了`FarBox Editor`，不需要其它工具，当你为模板编写代码时，你的站点将是实时预览的。


### 自定义位置

每一个文档都需要一个`位置`。你可以使用`1.23 document title.txt`来为一个文档定义次序。

这种文件命名的规则也同样适用于目录的命名。

你也可以在文档(或lading文档)的Metadata中声明位置。

对了, `1.2` 的次序将是排在`1.3`之前的。

如果你没有为文档声明次序，它当然也可以运行，支持失去了良好的排序而已。



### Metadata的支持

写文档的正文之前，你可以写入`Metadata`。最简单的方式看起来是这样子的:


```
Title: Document Title
Position: 1.2
Date: 2014-01-06 12:09
```

也支持YAML的格式，它看起来是这样子的:

```
---
Title: Document Title
Position: 1.2
Date: 2014-01-06 12:09
Tags:
    - Tag1
    - Tag2
---
```



### 文件夹的Landing Page

如果一个`index.txt(/.md/.mk/.markdown)` 文件放入到一个文件夹中，那么这个文件夹也将拥有自己的Landing Page.

我们也把这个文档叫做`landing 文档`.



### 支持Table of Contents

它应该在文档的Metadata中被声明.

```
toc: yes
/* or */
toc: no
```


### 自动生成的导航

这个导航是非常聪明的。

`docs`的子目录将会是主菜单，子目录的子目录，将会是二级菜单.

如果你打开一个文档的URL, 并且这个文档内有`table of contents`，那么`table of contents`也会被嵌入到导航中.

如果你打开一个文档的URL, 那么导航将会滚动到当前的选中项.

如果一个文件夹(显示在导航中的)没有`landing 文档`，那么它的url将会是`#`.

**注意：**

1. 文件夹作为二级菜单, 需要确保内有文章类型的文件，且不能使index.md
2. 单篇文章作为二级菜单，确保其直接位于`docs`目录下即可。


### 支持Markdown

- 支持Mathjax.
- 自动分行, 如果不需要这个功能，请确保你的文件名以`.mk`结尾.
- 表格与注脚的扩展.


### 语法高亮

#### 代码高亮


    ```lang
    codes
    ```

#### 代码高亮并显示行数


    ```lang:n
    codes
    ```


### 全文检索

这个特性也同样被`FarBox`支持了，但目前只有两种语言是可以被检索的: 英文与中文.


### 文档的变更日志

这是一个很棒的特性，你可以访问`http://youdomain.com/service/sync_logs`(确保登录的情况下)，这个页面会以`JSON`格式显示你的文档同步记录。

你可以得到一些信息，比如`什么时候`(甚至是什么IP) 修改/删除/创建 了一个文档。

### 还有更多

比如网站可以设定用户与访问密码，比如一个根据用户的行为进行热文挖掘的Dig排序系统，等等。这些都是来自于`FarBox`的特性。


