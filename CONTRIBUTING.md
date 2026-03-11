# Contributing to Drill 🔥

Thank you for your interest in contributing to Drill! This document provides guidelines and instructions for contributing.

## 🤝 Ways to Contribute

### 1. 🌍 Region Support
Help adapt Drill for different regions:
- Add local search engines and sources
- Translate trigger phrases
- Document regional compliance (GDPR, etc.)

### 2. 🏭 Domain Expertise
Add specialized guides for specific industries:
- Fintech / Healthcare / Academia
- Specific analysis patterns
- Domain-appropriate question templates

### 3. 🐛 Bug Reports
Report issues with:
- Tool collection failures
- Unclear skill instructions
- Analysis output problems

### 4. 💡 Feature Ideas
Suggest improvements:
- New question patterns
- Output format enhancements
- Collection strategies

### 5. 📖 Documentation
Improve:
- README clarity
- Usage examples
- Troubleshooting guides

## 🚀 Getting Started

### Setting Up Development Environment

```bash
# Fork the repository
git clone https://github.com/YOUR_USERNAME/Drill.git
cd Drill

# Test with Claude Code
cc --plugin-dir .
```

### Testing Your Changes

1. **Test automated collection**: Try "Drill into [topic]"
2. **Test fallback mode**: Verify graceful degradation
3. **Test output quality**: Check 5-layer framework application

## 📋 Contribution Guidelines

### Pull Request Process

1. **Fork** the repository
2. **Create a branch** for your feature (`git checkout -b feature/amazing-feature`)
3. **Make your changes** following our style guide
4. **Test thoroughly** with Claude Code
5. **Update documentation** as needed
6. **Submit a PR** with clear description

### Style Guide

#### SKILL.md Writing
- Use **imperative/infinitive form** ("Start by..." not "You should start by...")
- Keep it **lean** (1,500-2,000 words)
- Use **progressive disclosure**: details go in `references/`

#### Question Bank Entries
- Include **context** for when to use
- Provide **examples** of expected output
- Note **confidence levels** for different scenarios

#### Documentation
- Use **clear headings**
- Include **code blocks** for examples
- Add **tables** for comparisons

## 🏗️ Project Structure

```
Drill/
├── skills/drill/SKILL.md          # Core instructions
├── skills/drill/references/       # Detailed guides
├── skills/drill/examples/         # Usage examples
├── docs/                          # Additional documentation
└── scripts/                       # Utility scripts (optional)
```

## 🌍 Adding Region Support

### Example: China Region

Create `references/china-sources.md`:

```markdown
# China Region Collection Sources

## Search Engines
- Baidu (百度) - https://www.baidu.com
- Sogou (搜狗) - https://www.sogou.com

## Tech News
- 36Kr - https://36kr.com
- PingWest (品玩) - https://www.pingwest.com

## Communities
- 知乎 (Zhihu) - https://www.zhihu.com
- V2EX - https://www.v2ex.com

## Trigger Phrases (Chinese)
- "盘一下" (pan yi xia)
- "深挖" (shen wa)
- "拆解" (chai jie)
```

### Testing Region Support

```bash
# Test with region-specific queries
"Drill into the Chinese EV market"
"盘一下这个商业模式"
```

## 🏭 Adding Domain Expertise

### Example: Fintech Domain

Create `references/fintech-guide.md`:

```markdown
# Fintech Analysis Guide

## Key Sources
- SEC filings (10-K, 10-Q)
- Investor presentations
- Regulatory filings

## Domain-Specific Questions
- "How does regulatory risk affect unit economics?"
- "What compliance costs are underestimated?"

## Common Assumptions
1. Regulatory approval timeline
2. Customer acquisition via traditional channels
3. Underwriting model accuracy
```

## 🐛 Reporting Bugs

Use this template:

```markdown
**Environment**
- Claude Code version:
- OS:
- Tool availability: WebSearch [Y/N], WebFetch [Y/N]

**Describe the bug**
What happened?

**To Reproduce**
Steps to reproduce:
1. Ask: "..."
2. See error

**Expected behavior**
What should have happened?

**Screenshots/Logs**
If applicable, add logs
```

## 💡 Suggesting Features

Use this template:

```markdown
**Is your feature request related to a problem?**
A clear description of what the problem is.

**Describe the solution you'd like**
What should happen?

**Describe alternatives you've considered**
Other approaches?

**Additional context**
Any other context?
```

## 📜 Code of Conduct

This project adheres to a [Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code.

### Our Standards

- **Be respectful**: Constructive criticism welcome, personal attacks are not
- **Be patient**: Maintainers are volunteers
- **Be thorough**: Test your contributions
- **Be collaborative**: Help others learn

## 🙏 Recognition

Contributors will be:
- Listed in README acknowledgments
- Mentioned in release notes for significant contributions
- Invited to become maintainers for sustained contributions

## 📞 Questions?

- **General questions**: Open a [Discussion](https://github.com/pingfanfan/Drill/discussions)
- **Bug reports**: Open an [Issue](https://github.com/pingfanfan/Drill/issues)
- **Private inquiries**: Email maintainers

---

Thank you for making Drill better! 🔥
