# 发布到 GitHub 指南

## 📋 发布前检查清单

### 1. 本地验证

```bash
# 进入项目目录
cd /Users/pingfan/Library/Mobile\ Documents/com~apple~CloudDocs/claude-code/Rimsha/Drill

# 检查文件结构
ls -la
# 应该看到: README.md, LICENSE, CHANGELOG.md, CONTRIBUTING.md, CODE_OF_CONDUCT.md

ls skills/drill/
# 应该看到: SKILL.md, references/, examples/

ls skills/drill/references/
# 应该看到: framework-guide.md, question-bank.md, output-examples.md, collection-tactics.md
```

### 2. 内容检查

- [ ] README.md 中的项目名称正确 (Drill)
- [ ] 所有链接指向正确的 GitHub 仓库地址
- [ ] 版本号在 CHANGELOG.md 和 SKILL.md 中一致
- [ ] 没有敏感信息（API keys, 个人信息）

### 3. Git 初始化

```bash
# 如果还没有 git 仓库
cd /Users/pingfan/Library/Mobile\ Documents/com~apple~CloudDocs/claude-code/Rimsha/Drill
git init

# 添加所有文件
git add .

# 创建初始提交
git commit -m "Initial release: Drill v1.0.0

- 5-layer cognitive adversary framework
- Automated + user-assisted material collection
- Comprehensive documentation
- MIT License"
```

## 🚀 发布到 GitHub

### 步骤 1: 在 GitHub 创建仓库

1. 访问 https://github.com/new
2. **Repository name**: `Drill`
3. **Description**: `Drill into your ideas. Surface what hides beneath. A Claude Code skill for decision-grade analysis.`
4. 选择 **Public** (推荐开源)
5. **不要**勾选 "Add a README" (我们已经有 README 了)
6. 点击 **Create repository**

### 步骤 2: 连接本地仓库

```bash
# 添加远程仓库 (替换 YOUR_USERNAME 为你的 GitHub 用户名)
git remote add origin https://github.com/pingfanfan/Drill.git

# 验证连接
git remote -v
# 应该显示 origin 指向你的 GitHub 仓库
```

### 步骤 3: 推送代码

```bash
# 推送到 GitHub
git push -u origin main

# 或者如果你在用 master 分支
git push -u origin master
```

### 步骤 4: 验证发布

1. 访问 https://github.com/pingfanfan/Drill
2. 检查所有文件是否正确显示
3. 确认 README 渲染正常

## 🏷️ 创建 Release

### 步骤 1: 创建 Tag

```bash
# 创建版本标签
git tag -a v1.0.0 -m "Release Drill v1.0.0

Features:
- 5-layer cognitive adversary framework
- Automated material collection with graceful fallback
- Multi-region and domain support architecture
- Comprehensive documentation and examples"

# 推送标签到 GitHub
git push origin v1.0.0
```

### 步骤 2: 在 GitHub 创建 Release

1. 访问 https://github.com/pingfanfan/Drill/releases
2. 点击 **Draft a new release**
3. **Choose a tag**: 选择 `v1.0.0`
4. **Release title**: `Drill v1.0.0 - Initial Release`
5. **Description**:
```markdown
## 🎉 Drill v1.0.0

**Drill into your ideas. Surface what hides beneath.**

Drill is a Claude Code skill that transforms AI from an information organizer into a cognitive adversary.

### ✨ Features

- **5-Layer Framework**: Raw materials → Unspoken consensus → Assumption deconstruction → Adversarial validation → Quality questions
- **Automated Collection**: Gathers competitor intel, user reviews, community discussions
- **Graceful Fallback**: Works even when tools fail
- **Decision-Grade Output**: Structured insights, not surface summaries

### 🚀 Quick Start

```bash
git clone https://github.com/pingfanfan/Drill.git
cd Drill
cc --plugin-dir .
```

Then just say: **"Drill into [your topic]"**

### 📚 Documentation

- [Installation Guide](docs/INSTALLATION.md)
- [Usage Guide](docs/USAGE.md)
- [Troubleshooting](docs/TROUBLESHOOTING.md)

### 🙏 Thanks

Thanks for trying Drill! Open an issue if you encounter problems or have ideas.
```

6. 点击 **Publish release**

## 📢 发布后推广

### 社交媒体

**Twitter/X 帖子**:
```
Just launched Drill 🔥 — a Claude Code skill for decision-grade analysis.

Stop getting AI summaries. Start getting insights that survive investor scrutiny.

github.com/pingfanfan/Drill

#ClaudeCode #AI #ProductManagement #Startup
```

**LinkedIn 帖子**:
```
Excited to share Drill — a new skill for Claude Code that applies rigorous cognitive adversary analysis to your ideas.

Instead of surface-level summaries, Drill:
✓ Collects primary sources automatically
✓ Surfaces hidden assumptions
✓ Stress-tests with adversarial questioning
✓ Delivers structured, decision-grade insights

Perfect for product managers, founders, and strategists who need more than "AI research."

Check it out: github.com/pingfanfan/Drill

#AI #ProductManagement #Strategy #ClaudeCode
```

### 相关社区

- **Hacker News**: Submit to "Show HN"
- **Reddit**: r/claude, r/ChatGPT, r/productmanagement
- **Indie Hackers**: Share in "Ideas & Validation"
- **Discord**: Claude Code community, AI communities

### Product Hunt (可选)

考虑在 Product Hunt 发布：
- 制作简单的演示视频/GIF
- 准备 hunter 和 maker 介绍
- 选择发布时间 (周二-周四上午)

## 🔄 后续维护

### 更新流程

```bash
# 本地修改
# ... 编辑文件 ...

# 提交更改
git add .
git commit -m "Fix: [description of change]"

# 推送
git push origin main

# 创建新标签 (如果是版本更新)
git tag -a v1.1.0 -m "Release v1.1.0"
git push origin v1.1.0

# 在 GitHub 创建新的 Release
```

### 更新 CHANGELOG

每次发布前更新 `CHANGELOG.md`:

```markdown
## [1.1.0] - 2024-XX-XX

### Added
- [New feature]

### Fixed
- [Bug fix]

### Changed
- [Modification]
```

## 🆘 故障排除

### 推送失败

```bash
# 如果提示权限错误
# 1. 确认你已在 GitHub 登录
# 2. 使用 SSH 而不是 HTTPS:
git remote set-url origin git@github.com:pingfanfan/Drill.git

# 或者使用个人访问令牌 (PAT)
```

### 文件没显示

```bash
# 检查是否有未提交的更改
git status

# 如果有，提交它们
git add .
git commit -m "Add missing files"
git push origin main
```

### README 渲染问题

- 在本地用 markdown 预览检查
- 确保图片链接使用绝对 URL 或相对路径正确
- 检查表格语法

## ✅ 发布完成检查清单

- [ ] 代码推送到 GitHub
- [ ] README 正确渲染
- [ ] Release 已创建
- [ ] 标签已推送
- [ ] 能成功克隆并运行

**测试安装**:
```bash
# 在新目录测试
cd /tmp
git clone https://github.com/pingfanfan/Drill.git
cd Drill
ls
# 确认所有文件都存在
```

---

**恭喜！** 🎉 Drill 现在已经开源在 GitHub 上了。

访问 https://github.com/pingfanfan/Drill 查看你的项目。
