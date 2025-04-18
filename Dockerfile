# 使用官方 Node.js 运行时作为基础镜像
FROM node:18-alpine

# 设置工作目录
WORKDIR /app

# 复制 package.json 并安装依赖
COPY package.json ./
RUN npm install --production

# 复制应用代码
COPY server.js ./

# 暴露端口
EXPOSE 3000

# 启动服务
CMD ["npm", "start"] 