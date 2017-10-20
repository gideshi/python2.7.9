# Python2.7.9

DocFile:包含 Python2.7.9+Pip9.0.1 + 常用包（requests.MysqlDB.redis.django....）

pre：
   基于 deviclinic/python2.7.9



####  获取代码
```
cd /home/wwwroot/
git clone https://github.com/leon0204/python2.7.9.git
```

#### 先拉取 `deviclinic/python2.7.9`

```	
cd python2.7.9/
docker pull deviclinic/python2.7.9
```


####  build  &&  run
```
docker build -t python279 . 

docker run --privileged=true -i -t  -v  /home/wwwroot/:/home/wwwroot   python279   bash

```
如果对你有帮助的话，帮忙右上角star一下，谢谢！
欢迎 PR ～

