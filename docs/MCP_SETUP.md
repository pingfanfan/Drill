# MCP 搜索工具配置指南

Drill 可以通过 MCP (Model Context Protocol) 服务器集成外部搜索工具，实现更强大的自动材料收集。

## 🔧 已配置的工具

### 1. Brave Search
**功能**: 网络搜索、新闻、图片
**成本**: 每月 2000 次免费查询，之后 $0.003/次
**注册**: https://brave.com/search/api/

### 2. Fetch
**功能**: 网页内容抓取
**成本**: 免费
**要求**: 已安装 `uv` (Python 包管理器)

## 🚀 快速设置

### 步骤 1: 安装依赖

```bash
# 安装 uv (如果还没有)
curl -LsSf https://astral.sh/uv/install.sh | sh

# 安装 Node.js (如果还没有，用于 npx)
# macOS: brew install node
```

### 步骤 2: 获取 Brave API Key

1. 访问 https://brave.com/search/api/
2. 注册账户
3. 创建 API Key (选择 "Free" 套餐)
4. 复制你的 API Key

### 步骤 3: 设置环境变量

**临时设置 (当前终端)**:
```bash
export BRAVE_API_KEY="your-api-key-here"
```

**永久设置 (推荐)**:
```bash
# 添加到 ~/.zshrc 或 ~/.bashrc
echo 'export BRAVE_API_KEY="your-api-key-here"' >> ~/.zshrc
source ~/.zshrc
```

### 步骤 4: 验证配置

启动 Drill:
```bash
drill
```

然后测试:
```
"Search for MiniMax funding news"
```

## 📁 配置文件位置

已为你创建两个配置文件：

1. **项目级**: `Drill/.mcp.json`
   - 仅在使用 Drill 项目时生效

2. **用户级**: `~/.claude/.mcp.json`
   - 所有 Claude Code 会话都可用

## 🔍 可用工具

配置完成后，Claude 可以调用：

### brave_web_search
```
搜索网络内容
参数: {
  "query": "搜索关键词",
  "count": 10  // 返回结果数量
}
```

### brave_local_search
```
搜索本地商家/地点
参数: {
  "query": "餐厅",
  "location": "北京"
}
```

### fetch
```
抓取网页内容
参数: {
  "url": "https://example.com/article",
  "max_length": 5000
}
```

## 💡 在 Drill 中使用

配置完成后，Drill 会自动使用这些工具：

```
User: "Drill into MiniMax"

AI: 现在会调用 brave_web_search 搜索 MiniMax 相关信息
     然后使用 fetch 抓取关键网页
     最后应用 5 层框架分析
```

## 🛠️ 备选搜索工具

如果你不想用 Brave，以下是备选方案：

### 方案 A: SerpAPI (Google 搜索)
```json
{
  "name": "serpapi",
  "type": "stdio",
  "command": "npx",
  "args": ["-y", "@modelcontextprotocol/server-serpapi"],
  "env": {
    "SERPAPI_API_KEY": "${SERPAPI_API_KEY}"
  }
}
```
注册: https://serpapi.com/

### 方案 B: Exa (AI 搜索)
```json
{
  "name": "exa",
  "type": "stdio",
  "command": "npx",
  "args": ["-y", "exa-mcp-server"],
  "env": {
    "EXA_API_KEY": "${EXA_API_KEY}"
  }
}
```
注册: https://exa.ai/

### 方案 C: Tavily (AI 搜索引擎)
```json
{
  "name": "tavily",
  "type": "stdio",
  "command": "npx",
  "args": ["-y", "tavily-mcp-server"],
  "env": {
    "TAVILY_API_KEY": "${TAVILY_API_KEY}"
  }
}
```
注册: https://tavily.com/

## ⚠️ 故障排除

### 问题: "command not found: npx"
**解决**: 安装 Node.js
```bash
brew install node
```

### 问题: "command not found: uvx"
**解决**: 安装 uv
```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

### 问题: "API key invalid"
**解决**:
1. 检查环境变量: `echo $BRAVE_API_KEY`
2. 确认 key 格式正确（无空格）
3. 重启 Claude Code

### 问题: 工具没有出现在 Claude 中
**解决**:
1. 确认 `.mcp.json` 位置正确
2. 重启 Claude Code
3. 询问: "What tools are available?"

## 📝 隐私和安全

- API Key 存储在本地环境变量，不会上传到 GitHub
- `.mcp.json` 中的 `${VAR}` 语法会自动读取环境变量
- 不要将真实 API Key 直接写入 `.mcp.json` 文件

## 🎯 下一步

1. 获取 Brave API Key
2. 设置环境变量
3. 启动 Drill 并测试搜索
4. 享受增强的材料收集能力！

---

**需要帮助?** 查看 [TROUBLESHOOTING.md](TROUBLESHOOTING.md) 或提交 GitHub issue。
