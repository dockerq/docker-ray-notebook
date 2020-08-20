# Ray Jupyter Notebook
Ray Jupyter Notebook是一款基于notebook的[Ray](https://ray.io)开发环境，它的目的是利用Jupyter Notebook和Docker技术的优势，帮助开发者快速搭建Ray环境，把精力集中在Ray的学习和体验上。

# 依赖软件
- docker
- make
- chrome/firefox or some browser else

# 指南
运行下面四个步骤就可以快速搭建起ray容器环境了，**步骤1，2可以运行make dev简化**。

1. 为容器数据卷创建目录：
```shell
mkdir data
```
2. 运行ray-notebook容器
```shell
docker run -d --name ray --net host \
		-v `pwd`/data:/home/jovyan/work \
		dockerq/ray-notebook
```
3. 查看jupyter notebook token
```shell
docker logs ray
# sample output
Executing the command: jupyter notebook
[I 12:42:36.823 NotebookApp] Serving notebooks from local directory: /home/jovyan
[I 12:42:36.823 NotebookApp] The Jupyter Notebook is running at:
[I 12:42:36.823 NotebookApp] http://green-poll-2.localdomain:8888/?token=2e4ec6d4a34b83aac9d73e3c7144367f1927929e13e42007
[I 12:42:36.823 NotebookApp]  or http://127.0.0.1:8888/?token=2e4ec6d4a34b83aac9d73e3c7144367f1927929e13e42007
```
4. 复制`token=`后面的字符串，打开浏览器访问`localhost:8888`，输入token开始探索ray吧~

# Reference
- [jupyter select image](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/selecting.html)
- [jupyter run container](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/running.html)