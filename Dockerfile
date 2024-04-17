FROM node
VOLUME /TRSS-Yunzai
WORKDIR /TRSS-Yunzai
RUN sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list \
    && apt update && apt install -y redis chromium locales \
    && npm --registry=https://registry.npmmirror.com install pnpm -g && pnpm config set registry https://registry.npmmirror.com
EXPOSE 2536/tcp
EXPOSE 50831/tcp
CMD pnpm i && pnpm start && pnpm run log
