# Installation Guide

## Prerequisites

- [Claude Code](https://claude.ai/code) installed and configured
- Git (for cloning the repository)

## Quick Install

### Option 1: Clone and Use

```bash
# Clone the repository
git clone https://github.com/pingfanfan/Drill.git

# Navigate to the directory
cd Drill

# Launch Claude Code with the skill
cc --plugin-dir .
```

### Option 2: Add to Existing Project

```bash
# Clone into your project's .claude directory
mkdir -p .claude
git clone https://github.com/pingfanfan/Drill.git .claude/drill

# Or add as submodule
git submodule add https://github.com/pingfanfan/Drill.git .claude/drill
```

## Verification

Test that Drill is working:

```
You: "Drill test"

AI: "🔥 Drill is active. I can collect materials automatically or work with
     what you provide. Ready to drill deep on any topic you choose."
```

## Troubleshooting Installation

### Issue: "cc command not found"

**Solution**: Ensure Claude Code CLI is installed

```bash
# Install via npm
npm install -g @anthropic-ai/claude-code

# Or download directly from https://claude.ai/code
```

### Issue: "Skill not loading"

**Solution**: Check directory structure

```bash
# Verify structure
ls -la skills/drill/SKILL.md

# Should show the SKILL.md file exists
```

### Issue: "Permission denied"

**Solution**: Fix permissions

```bash
chmod -R 755 Drill/
```

## Environment-Specific Setup

### Enterprise Environments

If you're in a corporate environment with restricted internet:

1. Drill will automatically fall back to user-assisted collection
2. Prepare materials in advance:
   - Competitor URLs
   - User review excerpts
   - Industry reports

3. Start with:
   ```
   "I have materials for you to drill into. Here they are: [paste materials]"
   ```

### Offline Mode

Drill works offline with user-provided materials:

```
You: "Drill into this [paste document]"

AI: "Working with your provided materials. I'll apply the 5-layer framework..."
```

## Updating Drill

```bash
cd Drill
git pull origin main
```

## Uninstallation

```bash
# Simply remove the directory
rm -rf Drill/

# Or if used as submodule
git submodule deinit .claude/drill
git rm .claude/drill
```

## Next Steps

- Read [USAGE.md](USAGE.md) for detailed usage patterns
- Check [TROUBLESHOOTING.md](TROUBLESHOOTING.md) for common issues
- Review [examples](../skills/drill/examples/) for inspiration
