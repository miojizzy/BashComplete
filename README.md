
## install
运行install会在～下copy生成.bash_complete文件
在其中用complete命令增加自己的脚本:
```
complete -F FUNCTION SCRIPT
# FUNCTION 指补全方式对应的函数
# SCRIPT   指脚本名 不需要加路径
```
注意，需要在.bashrc中添加此文件：
```
if [ -f ~/.bash_complete ]; then
	. ~/.bash_complete
fi
```
补全的内容由.cf的配置文件指出,可以自定义前缀后缀,test内是三个例子


## 配置格式

### level
格式为"{lv}:{options}"
{lv}: 表示当前补充的是第n个参数,1开始
{options}: 表示当前补充的所有待选项 空格分割

根据当前补全的是第几级而出不同的补全内容


### tree 
格式为"{pattern}:{lv}:{options}"
{pattern}: 表示上一级的选项(支持正则匹配，shell字符串截取的方式实现,[具体参考](https://www.cnblogs.com/zhaochi/p/12805935.html))

根据上一级的内容和当前层级出当前的补全内容，以树状向层级深处生长

### full
格式为"{options}"
文件列出全部补全的情况 不能用正则

根据前置的补全信息生成后续的补全


### notice
bash配置中脚本名称在全局可能会冲突
