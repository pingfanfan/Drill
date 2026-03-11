---
name: drill
description: This skill should be used when the user says "drill", "drill into", "drill down", "drill this", "drill my", "let's drill", or asks to deeply analyze, stress test, or tear apart their ideas, strategy, market, or business model.
version: 1.0.0
---

# Drill 🔥

**Drill into your ideas. Surface what hides beneath.**

Drill transforms AI from an information organizer into a **cognitive adversary**. Stop getting surface-level summaries. Start getting decision-grade insights.

## How It Works

```
User asks → AI collects materials → Applies 5-layer framework → Delivers structured insights
```

**Trigger phrases**: "drill", "drill into", "drill down", "drill this", "let's drill"

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

### Step 1: Material Collection

**CRITICAL: Prioritize fresh information.** Analysis value depends on data recency.

**Attempt automated collection first:**

```
1. Search for top 3-5 competitors (prioritize 2025 sources)
2. Fetch competitor websites for positioning, pricing, messaging
3. Search for user reviews on [product] + "G2" or "Reddit" (sort by recent)
4. Fetch relevant Reddit threads and forum discussions (last 3-6 months)
5. Search for recent Hacker News discussions (2024-2025)
6. Look for earnings calls or investor materials (latest quarter)
```

**Time-filtered search queries (use these patterns):**
- "[topic] 2025"
- "[topic] latest news"
- "[topic] recent developments"
- "[company] funding 2024 2025"
- "[market] trends 2025"
- site:reddit.com/r/[subreddit] "[topic]" (sort by new)

**Target**: 5-10 primary sources, majority from last 6 months, before analysis begins.

**Data freshness verification:**
- [ ] Check publication dates on all sources
- [ ] Prioritize sources from 2024-2025
- [ ] Flag any source older than 12 months
- [ ] Note real-time data limitations in output

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
- "[market/space] competitors 2025"
- "best [product category] 2025"
- "[market leader] alternatives 2024 2025"

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

**Ready to drill?** Just say:
```
"Drill into [your topic]"
```
