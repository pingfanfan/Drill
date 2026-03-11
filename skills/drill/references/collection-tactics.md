# Material Collection Tactics

## Collection Strategy Overview

The cognitive adversary framework **prefers** automated collection but **adapts** when tools fail. This guide covers both approaches.

**Priority order:**
1. Automated collection (fastest, most comprehensive)
2. User-assisted collection (reliable, quality-controlled)
3. Hybrid approach (flexible, practical)
4. Knowledge-based analysis (last resort, still valuable)

---

## Phase 0: Tool Availability Check

Before promising automated collection, test tools:

```
Test search: Query "test search"
Test fetch: Fetch a known working URL (e.g., example.com)
```

**If tools fail immediately:**
- Skip to "User-Assisted Collection" section
- Do not waste time retrying failing tools
- Be transparent with user about limitations

---

## Automated Collection Strategy

When tools are working, use the following tactics to efficiently collect high-quality primary sources.

**⚠️ CRITICAL: Always prioritize recent information.** Stale data leads to wrong conclusions.

### Time-Based Search Priority (Current Date: 2026-03-11)

| Priority | Time Range | Search Pattern | Usage |
|----------|-----------|----------------|-------|
| **P0** | Last 3 months (2025-12 to 2026-03) | `"[topic] 2026"`, `"[topic] latest"` | Core analysis - HIGHEST PRIORITY |
| **P1** | Last 6 months (2025-09 to 2026-03) | `"[topic] 2025 2026"`, `"recent"` | Supporting evidence |
| **P2** | Last 12 months (2025-03 to 2026-03) | `"[topic] 2025"` | Context only |
| **Avoid** | >12 months (Before 2025-03) | Old sources | Only for historical trend |

### Search Query Templates with Time Filters

**For latest funding/valuation (2026 priority):**
```
"[company] funding 2026"
"[company] valuation 2026"
"[company] series [A/B/C] 2025 2026"
"[company] raised 2026"
"[company] latest funding"
```

**For market trends:**
```
"[market] trends 2026"
"[market] 2026 outlook"
"[market] latest developments"
"[market] news this month"
```

**For competitor intelligence:**
```
"[competitor] announced 2025"
"[competitor] product launch 2024"
"[competitor] earnings Q4 2024"
```

**For Reddit/communities (recent discussions):**
```
"[topic] site:reddit.com" (sort by "new")
"[topic] 2025 site:news.ycombinator.com"
```

### Data Freshness Checklist

For each source collected, verify:
- [ ] **Publication date**: Is it from 2024-2025?
- [ ] **Data vintage**: Financial data from which quarter/year?
- [ ] **Update frequency**: Is this a live dashboard or static report?
- [ ] **Source staleness**: Has the company/source been updated recently?

**Red flags (avoid or flag as outdated):**
- Valuation data from >6 months ago for early-stage companies
- Market size estimates from >12 months ago in fast-moving sectors
- User review sentiment from >6 months ago (rapidly changing products)

---

## Phase 1: Landscape Mapping (5-10 minutes)

### Identify Key Players

**Search sequence:**

1. **Broad category search**
   - Query: `"[category] software" OR "[category] tools"`
   - Goal: Identify the 3-5 main players

2. **Leader identification**
   - Query: `"best [category]" OR "top [category] 2026"`
   - Goal: Confirm market leaders and emerging challengers

3. **Alternative discovery**
   - Query: `"[leader] alternatives" OR "[leader] competitors"`
   - Goal: Find niche players and differentiated offerings

**Example for "AI code review":**
```
Query 1: "AI code review software 2026"  ← PRIORITY
Query 2: "best AI code review tools 2026"
Query 3: "CodeRabbit alternatives 2025 2026"
Query 4: "AI code review latest news 2026"
Query 5: "AI code review recent developments"
```

### Build Target List

Aim for 3-5 competitors representing:
- Market leader (highest awareness)
- Emerging challenger (recent momentum)
- Niche player (differentiated positioning)
- Open source alternative (if applicable)

## Phase 2: Deep Website Analysis (10-15 minutes)

### What to Fetch

For each competitor, collect:

**Core pages:**
- Homepage (positioning, hero message)
- Pricing page (business model, tiers)
- Features page (capabilities emphasis)
- About/Company page (story, differentiation)

**Supporting pages:**
- Case studies (if available)
- Blog (recent posts on strategy)
- Documentation (technical depth indicator)

### Extraction Framework

From each website, extract:

| Element | What to Look For | Why It Matters |
|---------|------------------|----------------|
| Hero message | Main value proposition | How they frame the problem |
| Social proof | Logos, testimonials, numbers | Market traction indicators |
| Feature emphasis | What's above the fold | Strategic priorities |
| Pricing model | Structure, tiers, freemium | Unit economics hints |
| Language patterns | Buzzwords, tone | Target audience sophistication |

### Website Analysis Checklist

For each competitor website, document:

- [ ] What problem do they claim to solve?
- [ ] Who is their target customer?
- [ ] What is their core differentiator?
- [ ] How do they price?
- [ ] What do they emphasize vs. downplay?
- [ ] What is missing from their messaging?

## Phase 3: User Voice Collection (15-20 minutes)

### Review Site Strategy

**G2/Capterra collection:**

Search: `"[product] G2"`

Focus on:
- 3-star reviews (most balanced)
- Recent negative reviews (current pain points)
- Reviews from specific roles (target customer profiles)

**What to extract:**
- Specific complaints (not "it's bad" but "X feature fails when Y")
- Switching triggers (why they chose this tool)
- Comparison mentions (what they evaluated)
- ROI claims (specific metrics if mentioned)

### Reddit/Community Mining

**Search patterns:**

```
"[product]" site:reddit.com
"[product] vs" site:reddit.com
"switching from [product]" site:reddit.com
"[category] recommendations" site:reddit.com
```

**High-value threads:**
- "Why I left [product]"
- "[Product A] vs [Product B] for [use case]"
- "What [category] tool do you use?"
- "Frustrated with [product]"

**Extraction framework:**

For each relevant thread, capture:
- User role/use case
- Specific complaint or praise
- Comparison to alternatives
- Decision criteria mentioned

### Hacker News Discovery

**Search patterns:**

```
"[product]" site:news.ycombinator.com
"Show HN: [category]" site:news.ycombinator.com
"Ask HN: [category]" site:news.ycombinator.com
```

**HN-specific value:**
- Technical depth in discussions
- Early adopter sentiment
- Founder/team insights in launch threads

### Social Media Signals

**Twitter/X search:**
- `"[product]" (frustrated OR disappointed OR love OR recommend)`
- Find candid, unfiltered reactions

**YouTube:**
- `"[product] review"` for detailed walkthroughs
- `"[product] tutorial"` for actual usage patterns

## Phase 4: Financial/Strategic Intelligence (10 minutes, if applicable)

### For Public Companies

**Earnings call search:**
```
"[company] earnings call transcript [quarter] [year]"
"[company] investor presentation"
```

**Key sections to extract:**
- CEO opening remarks (strategic priorities)
- Q&A (investor concerns, management responses)
- Forward guidance (growth expectations)

### For Private Companies

**Funding news search:**
```
"[company] funding" OR "[company] series [A/B/C]"
"[company] raises"
```

**What to capture:**
- Valuation and funding amount
- Investor names (signal of quality)
- Stated use of funds (strategic direction)
- Founder quotes (positioning)

### Job Posting Intelligence

**Search:**
```
"[company] careers" OR site:greenhouse.io "[company]"
```

**What roles reveal:**
- Which teams are growing (strategic priorities)
- Seniority of hires (execution vs. scaling phase)
- Skill requirements (technical stack, go-to-market)

## Phase 5: Synthesis Before Analysis

### Material Quality Check

Before proceeding to framework application, verify:

- [ ] **Diversity**: At least 3 different source types
- [ ] **Recency**: Majority of sources within 18 months
- [ ] **Specificity**: Evidence includes concrete details, not generalizations
- [ ] **Contradictions**: Found at least 2 conflicting viewpoints
- [ ] **Gaps**: Identified what sources do NOT say

### Source Documentation

Create a source inventory:

```markdown
## Sources Collected

### Competitor Websites (N)
1. [Company] - homepage, pricing, features
2. [Company] - homepage, pricing, features
...

### User Reviews (N)
1. G2 reviews for [product] (15 reviews analyzed)
2. Reddit threads (3 threads)
...

### Community Discussions (N)
1. Hacker News thread on [topic]
2. Reddit r/[subreddit] discussion
...

### Financial/Strategic (N)
1. [Company] Series B announcement
2. [Public company] Q3 earnings call
...
```

## User-Assisted Collection (Fallback)

When automated tools fail, seamlessly transition to user-assisted collection.

### The Transition Script

When tools fail, say:

> "I'm experiencing some connectivity limitations with external search tools. Let me work with you to gather the materials we need. This actually has an advantage—you can curate the most relevant sources from your own research."

### Request Materials by Priority

**Priority 1: Competitor landscape (5 minutes)**
Ask: "What are the 3-5 main companies or products in this space you're analyzing?"

**Priority 2: Key sources (5 minutes)**
Ask: "Do you have 2-3 articles, reports, or pages you've already found helpful? Please share the URLs or paste key excerpts."

**Priority 3: User perspective (5 minutes)**
Ask: "What feedback or sentiment have you encountered from users or the market? Any specific complaints or praise you've heard?"

### Working with Limited Materials

**If user provides only 1-2 sources:**
- Deep-read those sources thoroughly
- Extract maximum insight from available material
- Clearly note analysis limitations
- Identify specific gaps for future research

**If user provides no sources but has knowledge:**
- Apply the 5-layer framework to their knowledge
- Treat their insights as "expert interviews"
- Flag which insights need external validation
- Guide them through adversarial questioning

### Quality over Quantity Principle

**Better**: 3 high-quality, diverse sources
**Worse**: 10 low-quality or similar sources

With limited materials, focus on:
- Depth of analysis over breadth
- Multiple passes through the same material
- Contradiction hunting within available sources
- Explicitly noting confidence levels

---

## Common Tool Failures & Solutions

### Failure: Search API returns errors

**Symptoms**: 400, 403, or timeout errors on all searches

**Solution**:
1. Immediately switch to user-assisted collection
2. Do not retry more than once
3. Ask user for specific URLs or documents

**Script**:
> "Search tools aren't responding. Let's gather materials directly. Can you share the most important article or report you've found on this topic?"

### Failure: WebFetch returns 403/anti-bot errors

**Symptoms**: Multiple websites block fetch attempts

**Solution**:
1. Try textise dot iitty or textise dot iitty alternatives
2. Ask user to copy-paste key sections
3. Use search results snippets as partial data

**Script**:
> "Some websites are blocking automated access. Can you copy the most relevant paragraph from [source]? Or share the key points in your own words?"

### Failure: JavaScript-heavy sites

**Symptoms**: Fetch returns scripts instead of content

**Solution**:
1. Try alternative URLs (mobile versions often work)
2. Use textise dot iitty or textise dot iitty
3. Ask user for direct excerpts

**Alternative URL patterns to try**:
- `https://r.jina.ai/http://example.com/article` (Jina AI summarizer)
- `https://r.jina.ai/http://textise dot iitty` (text extraction)
- Mobile version: `https://m.example.com/article`

### Failure: Paywalled content

**Symptoms**: Fetch returns paywall or abstract only

**Solution**:
1. Use available abstract/summary
2. Ask user for their summary if they've read it
3. Search for secondary coverage of the same information
4. Note the limitation in analysis

**Script**:
> "I can see the abstract of [article], but the full content is behind a paywall. If you've read it, can you share the key insights? Or shall I work with the abstract and find alternative sources?"

### Failure: Rate limiting

**Symptoms**: Intermittent successes followed by failures

**Solution**:
1. Space out requests (if possible)
2. Prioritize most important sources
3. Switch to user-assisted for remaining needs

---

## Hybrid Collection Strategy

**Best practice**: Even when tools work, involve user for quality control

**Hybrid workflow**:
1. AI attempts automated collection (10-15 minutes)
2. AI presents collected sources to user
3. User validates: "Are these the right sources? Anything missing?"
4. User provides additional materials if needed
5. Proceed with combined corpus

**Benefits**:
- User can correct AI's source selection
- Catches blind spots in automated search
- Builds shared understanding of evidence base
- Higher confidence in final analysis

---

## Collection Efficiency Tips

### Parallel Collection

Fetch multiple sources simultaneously rather than sequentially:
- Fetch 3 competitor homepages at once
- Search for reviews on multiple products in parallel
- Collect Reddit threads and HN discussions together

### Iterative Deepening

Start broad, then narrow:
1. **Pass 1**: Identify top 3 competitors
2. **Pass 2**: Deep dive on each competitor
3. **Pass 3**: Find community discussions and reviews

### Red Flags to Avoid

**Skip these sources:**
- Press releases without independent verification
- Affiliate marketing "reviews"
- Sources older than 2 years (unless historical context needed)
- Single anecdote without pattern confirmation

## Collection Templates

### Competitor Snapshot Template

```markdown
## [Company Name]

### Positioning
- Tagline:
- Target customer:
- Core promise:

### Business Model
- Pricing:
- Free tier:
- Enterprise offering:

### Key Differentiators
1.
2.
3.

### Gaps/Omissions
- What's not mentioned:
- What they downplay:

### Evidence of Traction
- Customer logos:
- Metrics claimed:
- Social proof:
```

### User Sentiment Template

```markdown
## [Product] User Sentiment

### Top Complaints (3+ mentions)
1. [Complaint] - [frequency/context]
2. [Complaint] - [frequency/context]
3. [Complaint] - [frequency/context]

### Top Praise (3+ mentions)
1. [Praise] - [frequency/context]
2. [Praise] - [frequency/context]
3. [Praise] - [frequency/context]

### Switching Triggers
- From: [previous tool] → Because: [reason]
- From: [previous tool] → Because: [reason]

### Decision Criteria Mentioned
1.
2.
3.
```

## Time Budgeting

**Total collection time: 30-45 minutes**

| Phase | Time | Output |
|-------|------|--------|
| Landscape mapping | 5-10 min | 3-5 competitor list |
| Website analysis | 10-15 min | Competitor snapshots |
| User voice collection | 15-20 min | Sentiment summary |
| Financial/strategic | 5-10 min | Funding/strategy notes |
| Synthesis | 5 min | Source inventory |

## Quality Thresholds

**Minimum viable collection:**
- 3 competitor websites
- 10+ user reviews or comments
- 2 community discussions

**Robust collection:**
- 5 competitor websites
- 25+ user reviews across multiple platforms
- 5+ community discussions
- Funding/strategic materials if available

## From Collection to Analysis

Once materials are collected:

1. **Review source inventory** - Ensure diversity and quality
2. **Highlight contradictions** - Note conflicting evidence
3. **Mark gaps** - Identify what's missing
4. **Proceed to Layer 1** - Begin the 5-layer framework

The collection phase should feel "sufficient but not exhaustive"—enough to identify patterns, not so much that analysis never begins.

---

## Open Source Deployment Considerations

### Environment Variability

When this skill is used in different Claude Code environments:

**Enterprise environments** may have:
- ✅ WebSearch/WebFetch available
- ✅ Internal document access
- ❌ External website restrictions
- **Strategy**: Use hybrid approach, leverage internal docs

**Personal/standard environments** may have:
- ✅ WebSearch/WebFetch available
- ❌ Rate limits on API calls
- **Strategy**: Cache results, use efficient queries

**Restricted environments** may have:
- ❌ No WebSearch
- ❌ No WebFetch
- **Strategy**: Pure user-assisted collection

### Custom Tool Integration

Users can extend this skill with custom tools:

**MCP Server Integration**:
```yaml
# .mcp.json example
{
  "servers": [
    {
      "name": "web-search",
      "type": "sse",
      "url": "https://api.search-service.com/sse"
    }
  ]
}
```

**Custom Scripts**:
- Add `scripts/` directory with custom collection tools
- Reference in SKILL.md as alternative collection methods
- Example: `scripts/collect-reddit.py` for Reddit API access

### Adapting to Local Context

**For different regions**:
- China: Baidu Search, 36Kr, PingWest instead of Google/TechCrunch
- Europe: GDPR-aware collection, local review sites
- Enterprise: Internal Slack, Confluence, SharePoint

**For different domains**:
- Academic: Google Scholar, arXiv, ResearchGate
- Finance: Bloomberg, SEC filings, investor reports
- Medical: PubMed, clinical trial databases

### Testing Collection in New Environments

When deploying to a new environment, run this test:

```
User: "Test cognitive adversary collection"

AI should:
1. Attempt a simple search ("AI tools 2024")
2. Attempt a simple fetch (example.com)
3. Report which tools are working
4. Confirm the fallback strategy for this session
```

### Graceful Degradation Principle

**Never fail completely**. Always provide value:

| Tool Status | Approach | Output Quality |
|-------------|----------|----------------|
| All tools working | Automated + Hybrid | High |
| Search only | User provides URLs | High |
| Fetch only | User provides search terms | Medium-High |
| No tools | User provides all materials | Medium |
| No materials | Knowledge-based framework | Medium |

**User communication**:
- Be transparent about limitations
- Explain what was collected vs. what was provided
- Note confidence levels in analysis
- Suggest follow-up research for gaps

### Community Extensions

Encourage users to contribute:

**Region-specific addons**:
- `references/china-sources.md` - Chinese market research
- `references/eu-gdpr-guide.md` - GDPR-compliant collection

**Domain-specific addons**:
- `references/fintech-sources.md` - Financial data collection
- `references/healthcare-sources.md` - Medical research collection

**Tool integrations**:
- `scripts/serpapi-collect.py` - SerpAPI integration
- `scripts/reddit-api.py` - Reddit API access

### Success Metrics

**Good collection** (regardless of method):
- ✅ 3+ diverse sources
- ✅ Specific evidence points with citations
- ✅ Contradictions identified
- ✅ Gaps acknowledged

**Poor collection**:
- ❌ Single source type
- ❌ Generalizations without evidence
- ❌ No contradictions found
- ❌ Unacknowledged limitations
