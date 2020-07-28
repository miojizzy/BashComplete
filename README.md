




### level
文件内容全部由"{lv}:{options}"格式构成
{lv}: 表示当前补充的是第n个参数,1开始
{options}: 表示当前补充的所有待选项


### tree 

### full


### notice
1.只能在当前目录下运行时才能正确出现提示
eg: 
    ./test.sh -> succ
    ./test/test.sh -> err  

2.bash配置中脚本名称在全局可能会冲突
