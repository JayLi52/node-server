# 使用阿里云 Node.js 运行时作为基础镜像
FROM registry.cn-hangzhou.aliyuncs.com/aliyun-node/node:18-alpine

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json
COPY package*.json ./

# 安装依赖
RUN npm install

# 复制项目文件
COPY . .

# 启动应用
CMD ["node", "server.js"]