# 修复 WebSearch 和 WebFetch 工具问题

## 🔍 问题诊断

### 问题 1: WebSearch 返回 400 错误
```
API Error: 400
"thinking is enabled but reasoning_content is missing"
```

**原因**: Claude Code 内部的 WebSearch 工具 API 配置问题，不是你这边的问题。

**解决**: 使用外部 MCP 搜索服务器替代。

---

### 问题 2: WebFetch 被限制 (403)
**原因**: 网站反爬虫保护，需要 JavaScript 渲染，或付费墙。

**解决**: 使用 MCP fetch 服务器 + 备用获取策略。

---

## ✅ 解决方案

### 方案 1: 验证 MCP 配置（推荐）

#### 步骤 1: 检查全局 MCP 配置

```bash
# 检查全局配置是否存在
cat ~/.claude/.mcp.json

# 应该显示:
# {
#   "servers": [
#     {
#       "name": "brave-search",
#       ...
#     }
#   ]
# }
```

#### 步骤 2: 验证环境变量

```bash
# 检查 BRAVE_API_KEY
echo $BRAVE_API_KEY

# 如果没有显示，需要设置:
export BRAVE_API_KEY="BSAfp29teYBYQhXXLDejB2-mHMhO-IT"

# 永久设置
echo 'export BRAVE_API_KEY="BSAfp29teYBYQhXXLDejB2-mHMhO-IT"' >> ~/.zshrc
```

#### 步骤 3: 重启 Claude Code

**重要**: 修改 MCP 配置后需要重启 Claude Code 才能生效。

```bash
# 退出当前 Claude Code 会话
# 然后重新启动:
cc --plugin-dir /Users/pingfan/Library/Mobile\ Documents/com~apple~CloudDocs/claude-code/Rimsha/Drill
```

#### 步骤 4: 测试 MCP 工具

启动后，询问：
```
"What tools are available?"
```

应该看到：
- `brave_web_search`
- `brave_local_search`
- `fetch`

---

### 方案 2: 如果 MCP 不工作，使用备用搜索策略

如果 MCP 工具也无法使用，Drill 会自动降级到：

1. **用户协助模式**: 你提供关键 URL 或文本
2. **知识增强模式**: 基于我已有知识 + 你的补充

**在 Drill 中说**：
```
"Search tools aren't working. Let me provide the materials directly."
```

然后粘贴你找到的信息。

---

### 方案 3: 手动提供材料（最可靠）

绕过所有工具问题，直接提供材料：

```
"Drill into this with the following materials:

[粘贴你找到的文章/数据/链接]"
```

---

## 🛠️ 备选 MCP 服务器

如果 Brave 不工作，可以尝试其他搜索服务：

### Tavily (推荐备选)
```bash
# 注册: https://tavily.com/
# 每月 1000 次免费
```

添加到 `~/.claude/.mcp.json`:
```json
{
  "servers": [
    {
      "name": "tavily",
      "type": "stdio",
      "command": "npx",
      "args": ["-y", "tavily-mcp-server"],
      "env": {
        "TAVILY_API_KEY": "${TAVILY_API_KEY}"
      }
    }
  ]
}
```

### Exa (AI 专用搜索)
```bash
# 注册: https://exa.ai/
```

---

## 🔧 立即测试

### 测试 1: MCP 服务器是否运行

```bash
# 在终端测试 Brave MCP 服务器
BRAVE_API_KEY="BSAfp29teYBYQhXXLDejB2-mHMhO-IT" npx -y @modelcontextprotocol/server-brave-search

# 如果显示 "Brave Search MCP Server running on stdio"，说明服务器正常
```

### 测试 2: Fetch 服务器

```bash
# 测试 fetch 服务器
uvx mcp-server-fetch

# 应该启动没有错误
```

---

## 📋 快速修复清单

- [ ] 确认 `~/.claude/.mcp.json` 存在
- [ ] 确认 `BRAVE_API_KEY` 环境变量已设置
- [ ] 重启 Claude Code
- [ ] 询问 "What tools are available?"
- [ ] 如果 MCP 工具出现，测试搜索

---

## 🚨 如果都不工作

**最终备用方案**:

1. **你手动搜索**：使用 Google/百度搜索 MiniMax 2026 最新信息
2. **粘贴给我**：我直接分析你提供的材料
3. **跳过工具层**：Drill 的 5 层框架仍然可以应用

**Drill 仍然有价值**：即使没有自动收集，框架本身（隐性共识、假设拆解、对抗验证）依然有效。

---

## 💡 建议

鉴于工具不稳定，**建议采用混合模式**：

1. **你搜索**：用 Google 搜索 "MiniMax 2026 估值"
2. **你筛选**：找到 2-3 个最可靠 sources
3. **Drill 分析**：我应用 5 层框架深度分析

这样比依赖不稳定的工具更可靠。
