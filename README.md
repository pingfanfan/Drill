# Drill 🔥

> **Drill into your ideas. Surface what hides beneath.**

[![Claude Code](https://img.shields.io/badge/Claude%20Code-Plugin-blue)](https://claude.ai/code)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](CONTRIBUTING.md)

Drill is a [Claude Code](https://claude.ai/code) skill that transforms AI from an information organizer into a **cognitive adversary**. Stop getting surface-level summaries. Start getting decision-grade insights.

```
You: "Drill into the AI code review market"

AI:  Collects materials → Applies 5-layer framework
     → Surfaces hidden assumptions → Stress-tests your strategy
     → Delivers structured, evidence-driven analysis
```

## ✨ What Makes Drill Different

| Regular AI Usage | Drill |
|-----------------|-------|
| "Research this for me" | **"Drill into this"** |
| Surface summaries | **Decision-grade insights** |
| General knowledge | **Evidence-driven analysis** |
| Confirmation bias | **Adversarial stress-testing** |
| Passive consumption | **Active cognitive combat** |

## 🚀 Quick Start

### Installation

```bash
# Clone the repository
git clone https://github.com/pingfanfan/Drill.git
cd Drill

# Use with Claude Code
cc --plugin-dir .
```

### Usage

Just say the word:

```
"Drill into the market for [your idea]"
"Drill down on this competitive landscape"
"Drill my strategy"
"Let's drill"
```

**That's it.** Drill automatically collects materials and applies rigorous analysis.

## 🧠 The 5-Layer Framework

Drill applies a systematic approach to deep thinking:

```
┌─────────────────────────────────────────┐
│  Layer 1: RAW BATTLEFIELD MATERIALS     │
│  Collect competitors, reviews, forums   │
└─────────────────────────────────────────┘
                    ↓
┌─────────────────────────────────────────┐
│  Layer 2: UNSPOKEN CONSENSUS            │
│  What winners know that outsiders miss  │
└─────────────────────────────────────────┘
                    ↓
┌─────────────────────────────────────────┐
│  Layer 3: ASSUMPTION DECONSTRUCTION     │
│  Map the 3 structural assumptions       │
│  Test what would cause each to fail     │
└─────────────────────────────────────────┘
                    ↓
┌─────────────────────────────────────────┐
│  Layer 4: ADVERSARIAL VALIDATION        │
│  Generate investor-level challenges     │
│  Only what survives matters             │
└─────────────────────────────────────────┘
                    ↓
┌─────────────────────────────────────────┐
│  Layer 5: QUALITY QUESTIONS             │
│  Synthesize decision-grade insights     │
│  Identify next questions to explore     │
└─────────────────────────────────────────┘
```

## 📊 Example Output

### Input
```
"Drill into the AI-powered code review market"
```

### Output

```markdown
## 🔍 Materials Collected
- 5 competitor websites analyzed
- 23 user reviews examined
- 4 community discussions reviewed

## 📋 Raw Observations
1. CodeRabbit emphasizes "AI summaries" but buries pricing
2. G2 reviews: "too many false positives" (7 mentions)
3. Reddit: Engineers see AI review as "nice to have" not "must have"
4. Notable absence: No competitor emphasizes "learning your codebase"

## 🎯 Unspoken Consensus
The real job is not "review code faster" — it is "reduce cognitive
load on senior engineers." Current AI tools try to replace senior
judgment; successful ones will codify it.

## 🏗️ Structural Assumptions

**Assumption 1: Developers want automated code review**
- If false when: Developers view review as learning/social interaction
- Fragility: Remote work already reduced social interaction

**Assumption 2: One-size-fits-all rules work across codebases**
- If false when: Codebase-specific patterns matter more
- Opportunity: "Learns your patterns" positioning

**Assumption 3: GitHub PR integration is the right entry point**
- If false when: Real friction is earlier (IDE) or later (production)
- Threat: IDE assistants (Copilot, Cursor) capture creation moment

## ⚔️ Adversarial Challenges

**Q1: "You are competing with 'ignore the bot' — how is that a business?"**
- Evidence: Reddit "Another notification to dismiss"
- Implication: Without changing interaction model, this is a churn business

**Q2: "GitHub is already building this — what is your 12-month headstart worth?"**
- Evidence: No competitor has meaningful moat
- Implication: Distribution beats features; find defensible advantage

[... 3 more questions]

## 💡 Strategic Implications

**What survived:**
- Market pain is real (senior engineer bottleneck)
- Current solutions are inadequate
- Integration matters as much as AI capability

**What emerged as critical:**
- Customization is the differentiator
- Trust threshold is existential
- Positioning (automation vs augmentation) defines the market

## ❓ Next Questions
1. What is the actual cost of false positives?
2. What is the configuration burden for teams that retain?
3. What would GitHub Copilot Code Review need to lack for a 24-month window?
```

## 📁 Project Structure

```
Drill/
├── README.md                 # This file
├── LICENSE                   # MIT License
├── CONTRIBUTING.md           # How to contribute
├── CHANGELOG.md             # Version history
├── CODE_OF_CONDUCT.md       # Community guidelines
│
├── skills/
│   └── drill/
│       ├── SKILL.md          # Core skill instructions
│       ├── references/
│       │   ├── framework-guide.md    # Complete methodology
│       │   ├── question-bank.md      # Curated questions
│       │   ├── output-examples.md    # Full examples
│       │   └── collection-tactics.md # Material gathering
│       └── examples/
│           └── startup-analysis.md   # Usage examples
│
└── docs/
    ├── INSTALLATION.md      # Detailed setup guide
    ├── USAGE.md            # Usage patterns & tips
    └── TROUBLESHOOTING.md  # Common issues
```

## 🔧 Environment Compatibility

| Environment | WebSearch | WebFetch | Fallback Strategy |
|-------------|-----------|----------|-------------------|
| Claude Code (Standard) | ✅ | ✅ | Hybrid if needed |
| Claude Code (Enterprise) | Varies | Varies | User-assisted |
| Custom MCP Setup | Config-dependent | Config-dependent | Adapt to tools |

**Drill gracefully degrades.** If automated collection fails, it seamlessly switches to user-assisted mode and still delivers structured analysis.

## 🤝 Contributing

We welcome contributions! See [CONTRIBUTING.md](CONTRIBUTING.md) for details.

### Ways to Contribute

- 🌍 **Region Support**: Add collection sources for China, EU, etc.
- 🏭 **Domain Expertise**: Add fintech, healthcare, academic guides
- 🐛 **Bug Reports**: Tool failures, unclear instructions
- 💡 **Feature Ideas**: New question patterns, output formats

## 📝 Philosophy

> "The gap between average and exceptional analysis lies not in information volume, but in question quality."

Drill treats AI as an **externalized strategic mind**:
- Pushes thinking deeper than surface patterns
- Exposes hidden structures through systematic questioning
- Tests ideas under adversarial pressure
- Generates questions that lead to better questions

**Not**: "AI, research this for me"
**But**: "AI, help me think about this more rigorously"

## 📜 License

MIT License - see [LICENSE](LICENSE) for details.

## 🙏 Acknowledgments

Inspired by:
- Charlie Munger's mental models
- Naval Ravikant's approach to decision-making
- Ray Dalio's principle of "radical transparency"
- First-principles thinking methodology

---

**Questions?** Open an [issue](https://github.com/pingfanfan/Drill/issues) or start a [discussion](https://github.com/pingfanfan/Drill/discussions).

**Ready to drill?**
```
"Drill into my startup idea"
```
