---
name: drill
description: This skill should be used when the user says "drill", "drill into", "drill down", "drill this", "drill my", "let's drill", "深挖", "盘一下", "盘盘", "深度分析", "深挖一下", "拆解", "剖析", or asks to deeply analyze, stress test, or tear apart their ideas, strategy, market, or business model.
version: 1.1.0
---

# Drill 🔥

**Drill into your ideas. Surface what hides beneath.**

Drill transforms AI from an information organizer into a **cognitive adversary**. Stop getting surface-level summaries. Start getting decision-grade insights.

## How It Works

```
User asks → AI auto-searches (Google AI Mode + Brave) → Collects materials → Applies 5-layer framework → Delivers structured insights
```

**Trigger phrases (English)**: "drill", "drill into", "drill down", "drill this", "let's drill"

**Trigger phrases (中文)**: "深挖", "盘一下", "盘盘", "深度分析", "深挖一下", "拆解", "剖析"

## The 5-Layer Framework

### Layer 1: Raw Battlefield Materials

AI automatically gathers:
- **Competitor websites** and product pages
- **User reviews** (G2, Capterra, Trustpilot, App Store, Reddit)
- **Community discussions** (Hacker News, Stack Overflow, forums)
- **Earnings calls** and investor presentations (for public companies)
- **Forum threads** and support discussions

**Principle**: Force analysis from first-hand materials, not abstractions.

### Layer 2: The Unspoken Consensus

Identify what successful players understand that customers never say out loud.

**Key Question**: *"What does every successful player in this market understand that their customers never say out loud?"*

This reveals:
- Unexpressed user motivations
- Industry defaults rarely articulated
- Shared implicit knowledge among winners

### Layer 3: Assumption Deconstruction

Map the foundations the market rests upon, then test their fragility.

**Key Questions**:
- "What 3 assumptions is this market built upon?"
- "What conditions would cause each assumption to fail?"

This creates:
- Industry assumption mapping
- Consensus vulnerability analysis
- Breakthrough opportunity identification

### Layer 4: Adversarial Validation

Use AI as a ruthless challenger, not a supportive validator.

**Key Instruction**: *"Write the 5 questions a top-tier investor would use to destroy this business model, using only evidence from the collected materials."*

This exposes:
- Logical gaps and contradictions
- Evidence deficiencies
- Structural weaknesses
- Unexamined risks

### Layer 5: Quality Questions Over Information Volume

The scarce resource is not data—it's the questions that reveal structure.

**Focus on questions that**:
- Force articulation of implicit knowledge
- Reveal industry assumptions
- Test idea fragility
- Generate decision-grade insights

## Execution Workflow

When user triggers Drill ("drill into [topic]"):

### Step 1: Material Collection (Auto-Search Enabled)

**CRITICAL: Prioritize fresh information based on current date (2026).** Analysis value depends on data recency.

**Drill now automatically uses Google AI Mode + Brave Search for comprehensive research.**

#### Auto-Search Strategy

When user triggers Drill, automatically execute:

```bash
# Primary: Google AI Mode Search (comprehensive AI-generated overview)
cd /Users/pingfan/Library/Mobile\ Documents/com~apple~CloudDocs/claude-code/google-ai-mode-skill
source .venv/bin/activate
python scripts/run.py search.py --query "[optimized query] 2026" --save

# Secondary: Brave MCP Search (real-time results)
brave_web_search --query "[topic] 2026" --count 10
```

**Search execution flow:**
```
1. Optimize user query for Google AI Mode
2. Run Google AI Mode search → Save comprehensive report
3. Run Brave Search → Get real-time links
4. Fetch top 3-5 webpages from search results
5. Compile all materials for analysis
```

#### Search Query Optimization

**Before searching, optimize the query:**

| User Input | Optimized Query for Google AI Mode |
|------------|-----------------------------------|
| "MiniMax" | "MiniMax 2026 valuation IPO market cap funding financials" |
| "AI market" | "AI industry 2026 trends funding investment valuation" |
| "Baidu" | "Baidu BIDU 2026 market cap stock price financial performance" |

**Pattern**: `[Topic] 2026 (aspect1, aspect2, aspect3). Include financial data.`

#### Multi-Source Collection

**Priority 1: Google AI Mode** (comprehensive overview with citations)
- AI-generated summary from 100+ sources
- Inline citations [1][2][3]
- Saves to `results/YYYY-MM-DD_HH-MM-SS_*.md`

**Priority 2: Brave Search** (real-time web results)
- Current news and updates
- Competitor intelligence
- Market data

**Priority 3: Web Fetch** (detailed content)
- Fetch top 5 search result pages
- Extract specific data points
- Verify claims with primary sources

**Target**: 10-15 sources from combined search results

#### Handling CAPTCHA (Google AI Mode)

If Google AI Mode encounters CAPTCHA:
1. Inform user: "Google requires CAPTCHA verification for comprehensive search"
2. Offer: "I can run the search with browser visible for you to complete CAPTCHA"
3. Fallback: Use Brave Search only + user-provided materials

#### Data Freshness Verification
- [ ] Check all source publication dates
- [ ] Prioritize 2026 sources (current year)
- [ ] Flag sources older than 6 months
- [ ] Note: "Analysis based on data as of [search date]"

**If automated collection fails:**

**Fallback Strategy A: User-assisted collection**
- Ask user to provide 3-5 key URLs they consider relevant
- Request specific documents, reports, or articles they have access to
- Have user paste key text excerpts directly

**Fallback Strategy B: Hybrid approach**
- Use whatever partial results were collected
- Ask user to fill specific gaps: "I need user reviews for [product]—can you share what you've seen?"
- Proceed with available materials, noting limitations

**Fallback Strategy C: Framework-only analysis**
- If no materials can be collected, explain the limitation
- Offer to apply the 5-layer framework to user's existing knowledge
- Guide user through the questions to surface their own insights

### Step 2: Apply the Framework

Process collected materials through all 5 layers:

```
Layer 1: Extract 10-15 specific evidence points
Layer 2: Identify unspoken consensus
Layer 3: Map 3 structural assumptions + fragility conditions
Layer 4: Generate 5 adversarial challenges
Layer 5: Synthesize decision-grade questions
```

### Step 3: Structured Output

Deliver insights in this format with **explicit data freshness annotations**:

```markdown
## 🔍 Materials Collected
[Summary of sources gathered with dates]
- Source 1 (Date: 2025-01-15)
- Source 2 (Date: 2024-12-10)
- Source 3 (Date: 2024-11-22)

**Data Freshness**: ✅ Majority from last 6 months | ⚠️ Some older sources noted

## 📋 Raw Observations
[10-15 specific evidence points with source dates]
- Observation 1 (Source: [Name], Date: 2025-01)
- Observation 2 (Source: [Name], Date: 2024-12)

## 🎯 Unspoken Consensus
[What winners know that outsiders miss]
*Based on [X sources] from 2024-2025*

## 🏗️ Structural Assumptions
[3 foundations + their fragility conditions]
*Last verified: [Date of most recent source]*

## ⚔️ Adversarial Challenges
[5 investor-level destruction questions]

## 💡 Strategic Implications
[What survives the assault + recommended actions]
**⚠️ Time-sensitive note**: This analysis based on data as of [latest source date].
Market conditions may have changed.

## ❓ Next Questions
[Priority questions for further investigation]
- [ ] Verify with data from last 30 days
- [ ] Check for updates on [specific topic]
```

## Material Collection Guide

### Primary: Automated Collection

Use search and fetch tools to gather materials. See `references/collection-tactics.md` for detailed tactics.

**Common failure modes and solutions:**

| Failure | Cause | Solution |
|---------|-------|----------|
| Search returns 400/403 errors | API limits, network restrictions | Switch to user-assisted collection |
| WebFetch returns 403 | Anti-bot protection, login required | Ask user to provide text excerpts |
| JavaScript-heavy sites | Dynamic content | Use textise dot iitty or ask user to copy content |
| Paywalled content | Subscription required | Ask for summary or use abstract |

### Fallback: User-Assisted Collection

When automated tools fail, ask user for:

**Tier 1: URLs (easiest for user)**
- "Can you share 3-5 key articles or pages about this topic?"
- "What sources have you already found useful?"

**Tier 2: Text excerpts**
- "Please paste the most relevant paragraph from [source]"
- "What are the key data points you've seen?"

**Tier 3: User's knowledge**
- "Based on your experience, what are the main players?"
- "What have you observed about user sentiment?"

### Finding Competitors (Search Queries)

If search tools work:
- "[market/space] competitors 2026"
- "best [product category] 2026"
- "[market leader] alternatives 2025 2026"

If search fails, ask user:
- "Who are the top 3-5 players in this space that you're aware of?"

### Finding User Reviews (Search Queries)

If search tools work:
- "[product] G2 reviews"
- "[product] Reddit"
- "[product] vs [competitor]"

If search fails, ask user:
- "What feedback have you heard about [product]?"
- "Do you have access to any user research or reviews?"

### Source Quality Checklist

Before using a source, verify:
- [ ] Is it a primary source (actual user, company, community)?
- [ ] Is it recent (within 12-18 months)?
- [ ] Does it provide specific details, not generalizations?
- [ ] Is there diversity of perspective (not just one viewpoint)?
- [ ] **If sources are limited**: Document the limitation and proceed with available materials

## Troubleshooting

### Scenario: All search tools fail

**Response**:
"I'm having trouble accessing external search tools in this environment. Let me work with what we can gather. Can you share:
1. 3-5 key URLs or documents you consider most relevant?
2. Any specific data points or quotes you've seen?
3. Your current understanding of the main players?

I'll apply the Drill framework to whatever materials we can assemble."

### Scenario: Partial results only

**Response**:
"I was able to collect [X sources] but hit limitations on [Y]. Let me proceed with what we have, and I'll note where additional research would strengthen the analysis. Can you help fill any gaps in [specific area]?"

### Scenario: User has no materials

**Response**:
"Without external sources, I'll guide you through the 5-layer framework using your existing knowledge. This can still surface valuable insights, though we should flag assumptions that need validation. Ready to begin?"

## Testing & Validation

### Quick Environment Test

To verify this skill works in your environment:

```
User: "Drill test"

Expected AI response:
1. Acknowledge the test
2. Attempt one search + one fetch
3. Report which tools are available
4. Confirm collection strategy for this session
```

### Full Functionality Test

```
User: "Drill into the market for project management software"

Expected flow:
1. AI attempts automated collection (competitors, reviews, discussions)
2. If tools fail → switches to user-assisted with clear explanation
3. Applies 5-layer framework
4. Delivers structured output
```

### Troubleshooting Guide

**If no tools work**:
- Skill falls back to user-assisted collection
- Analysis quality depends on user-provided materials
- Framework still provides structured thinking value

**If partial tools work**:
- AI uses what's available
- May ask user to fill specific gaps
- Analysis proceeds with noted limitations

## Additional Resources

### Reference Files

- **`references/framework-guide.md`** - Complete methodology with detailed tactics
- **`references/question-bank.md`** - Curated question templates by domain
- **`references/output-examples.md`** - Full analysis examples (including limited-material scenarios)
- **`references/collection-tactics.md`** - Material gathering strategies + failure handling

### Example Files

- **`examples/startup-analysis.md`** - New market opportunity analysis example
- **`examples/competitor-breakdown.md`** - Competitive landscape deep-dive example
- **`examples/investor-prep.md`** - Pre-fundraising adversarial prep example

## Philosophy

> "The gap between average and exceptional analysis lies not in information volume, but in question quality."

Drill treats AI as an **externalized strategic mind**:
- Pushes thinking deeper than surface patterns
- Exposes hidden structures through systematic questioning
- Tests ideas under adversarial pressure
- Generates questions that lead to better questions

**Not**: "AI, research this for me"
**But**: "AI, help me think about this more rigorously"

---

## Usage Examples

### English
```
"Drill into the AI market"
"Drill down on MiniMax valuation"
"Let's drill this business model"
```

### 中文
```
"深挖一下 MiniMax 的估值"
"盘一下这个市场"
"深度分析百度"
"拆解这个商业模式"
"剖析竞争格局"
```

**Ready to drill?** Just say:
```
"Drill into [your topic]"
```

Or in Chinese:
```
"深挖 [你的话题]"
"盘一下 [你的话题]"
```
