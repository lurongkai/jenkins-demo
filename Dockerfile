FROM node
WORKDIR /limin
EXPOSE 3000
COPY ./ .
RUN rm -rf node_modules && yarn config set registry https://registry.npm.taobao.org && yarn install
ENTRYPOINT [ "node", "index.js"]