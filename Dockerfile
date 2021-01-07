# 继承自node
FROM node
# 添加名称
LABEL name='vue-front'
# 添加版本号
LABEL version='1.1.0 '
# 拷贝打包后的dist目录到nginx的静态文件目录
COPY ./dist/ /usr/share/nginx/html/
# 拷贝本地nginx配置文件到 nginx的默认配置文件中
COPY ./vue-front.conf /etc/nginx/conf.d/
# 向外暴露80端口
EXPOSE 80
