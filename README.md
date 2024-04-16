# TRSS-Yunzai-Docker
这是一个 [TRSS-Yunzai](../../../../TimeRainStarSky/Yunzai) 的容器镜像。

此镜像包含了运行TRSS-Yunzai所需的环境，通过挂载实机TRSS工作目录来实现在容器中运行bot。

**此镜像非开箱即用，镜像内未包含TRSS-Yunzai本体，也未包含协议端/适配器！**

## 使用方法
1. Clone [TRSS-Yunzai](../../../../TimeRainStarSky/Yunzai)（若使用现有工作目录则跳过此步骤）
```
# Clone from Github
git clone --depth 1 https://github.com/TimeRainStarSky/Yunzai TRSS-Yunzai
# Or Use Gitee for CN Users
git clone --depth 1 https://gitee.com/TimeRainStarSky/Yunzai TRSS-Yunzai
```
2. 推荐安装插件(可选)
```
cd TRSS-Yunzai
# Clone from Github
git clone --depth 1 https://github.com/TimeRainStarSky/Yunzai-genshin plugins/genshin
git clone --depth 1 https://github.com/yoimiya-kokomi/miao-plugin plugins/miao-plugin
git clone --depth 1 https://github.com/TimeRainStarSky/TRSS-Plugin plugins/TRSS-Plugin
# Or use Gitee for CN Users
git clone --depth 1 https://gitee.com/TimeRainStarSky/Yunzai-genshin plugins/genshin
git clone --depth 1 https://gitee.com/yoimiya-kokomi/miao-plugin plugins/miao-plugin
git clone --depth 1 https://Yunzai.TRSS.me plugins/TRSS-Plugin
```
3. 启动容器(注意修改挂载目录为TRSS-Yunzai所在路径！)
```
docker run -itd \
-v path/to/TRSS-Yunzai:/TRSS-Yunzai \
-p 2536:2536 \
-p 50831:50831 \
--name TRSS-Yunzai \
registry.cn-shenzhen.aliyuncs.com/noelle-delta/trss-yunzai
```
4. 配置协议端(详见[原仓库README](../../../../TimeRainStarSky/Yunzai))

## 致谢

乐神的 [Yunzai-Bot](../../../../Le-niao/Yunzai-Bot)

喵喵的 [Miao-Yunzai](../../../../yoimiya-kokomi/Miao-Yunzai)

时雨星空的 [TRSS-Yunzai](../../../../TimeRainStarSky/Yunzai)
