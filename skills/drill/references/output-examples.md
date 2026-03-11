# Output Examples - Cognitive Adversary Framework

## Example 1: New Market Entry Analysis

### Scenario
Evaluating entry into the "AI-powered code review" market for a startup with engineering productivity tools.

### Materials Provided
- 5 competitor websites (CodeRabbit, PR-Agent, CodeReviewBot)
- 12 G2 reviews (mixed ratings)
- 3 earnings call transcripts from public dev tool companies
- 47 Reddit comments from r/programming and r/devops
- GitHub issues from 2 open-source code review tools

---

## Raw Material Observations

### Evidence Points

1. **CodeRabbit website** emphasizes "AI summaries" and "line-by-line suggestions" but buries pricing (starts at $15/dev/month)

2. **G2 reviews** show 4.2 avg rating but specific complaints: "too many false positives" (mentioned 7x), "doesn't understand context" (5x), "slower than manual review" (3x)

3. **Earnings calls** mention "developer workflow integration" as key priority but no one claims to have solved it

4. **Reddit comments** reveal engineers see AI review as "nice to have" not "must have"—many describe current tools as "noisy" and "ignore after first week"

5. **GitHub issues** show most active feature requests are for IDE integration and customization—not accuracy improvements

6. **Notable absence**: No competitor emphasizes "learning your codebase" or "team-specific patterns"

### Patterns Identified

- Gap between marketing promise ("AI that reviews like senior dev") and reality (noisy, generic suggestions)
- Integration friction repeatedly mentioned as adoption barrier
- Teams that stick with tools have custom configuration; teams that churn use defaults

### Contradictions

- Competitors claim "faster reviews" but users report "slower due to noise"
- "AI-powered" is marketing differentiator but actual value seems to come from customization

---

## Unspoken Consensus

### What Successful Players Understand

**The real job is not "review code faster"—it is "reduce cognitive load on senior engineers."**

Junior and mid-level engineers do not have the pattern library that seniors have. Current AI tools try to replace senior judgment with generic rules. Successful implementation will:

1. Codify the senior engineer's mental model
2. Apply it consistently across the team
3. Teach juniors through explanation, not just flagging

**Why outsiders miss this:** They focus on "accuracy metrics" and "false positive rates"—engineering-centric framings. Insiders know the buyer (engineering managers) cares about team capability building and senior engineer retention.

**Evidence**:
- G2 reviews from engineering managers emphasize "helped junior devs learn" (positive) vs "just another tool to check" (negative)
- Reddit: "The only team that loves theirs spent 2 weeks configuring it to match how our tech lead thinks"

---

## Structural Assumptions

### Assumption 1: Developers want automated code review

**Evidence**: All competitors lead with "save time on reviews"

**If true**: Optimize for speed and coverage

**If false when**: Developers view code review as learning/social interaction, not just gatekeeping

**Fragility condition**: Remote work already reduced social interaction; removing human review entirely may be resisted

**Opportunity if false**: Position as "review assistant" not "review replacement"—augment rather than automate

### Assumption 2: One-size-fits-all rules can work across codebases

**Evidence**: All tools market generic "best practice" detection

**If true**: Scale through broad rule libraries

**If false when**: Codebase-specific patterns matter more than generic rules

**Fragility condition**: Microservices and polyglot environments make universal rules increasingly meaningless

**Opportunity if false**: "Learns your patterns" positioning—custom model training per codebase

### Assumption 3: GitHub PR integration is the right entry point

**Evidence**: Every competitor is GitHub-first with GitLab/Bitbucket secondary

**If true**: Optimize for PR workflow

**If false when**: The real friction is earlier (IDE, local development) or later (production debugging)

**Fragility condition**: AI assistance in IDE (Copilot, Cursor) may capture the moment of code creation, making post-PR review less valuable

**Opportunity if false**: Shift left to IDE or shift right to production—find where the real pain is

---

## Adversarial Challenges

### Question 1: "You are competing with 'ignore the bot'—how is that a business?"

**Why it matters**: Multiple Reddit comments describe current behavior: "We have [tool] but everyone ignores it after week 2." If the default user behavior is dismissal, the business model is broken regardless of technology.

**Evidence from materials**:
- Reddit: "Another notification to dismiss"
- G2 negative: "Just creates more noise"
- Pattern: High initial adoption, low sustained engagement

**Implications**: Without changing the fundamental interaction model, this is a churn business masquerading as growth.

**Counter-strategy**: Build for the engaged minority (teams that configure heavily) rather than the mass market. High touch, high value, high retention vs. low touch, low value, high churn.

### Question 2: "GitHub is already building this—what is your 12-month headstart worth?"

**Why it matters**: GitHub Copilot Code Review is in beta. GitHub has distribution, data, and platform control.

**Evidence**:
- No competitor has meaningful moat beyond "we were here first"
- Earnings calls mention GitHub's AI ambitions but no specific response strategy
- Integration depth is the only current differentiator

**Implications**: Without a defensible advantage that Copilot cannot replicate, this becomes a features arms race that GitHub wins through distribution.

**Counter-strategy**: Focus on team-specific learning (custom models) that requires customer-specific data GitHub cannot easily access. Become the "enterprise customization" player.

### Question 3: "Your target buyer (engineering managers) does not have budget authority—who pays?"

**Why it matters**: $15/dev/month × 20 devs = $3,600/year. Engineering managers cannot approve this without VP/CTO sign-off. The economic buyer and user are misaligned.

**Evidence**:
- Pricing pages hide enterprise tiers behind "contact sales"
- G2 reviews mention "getting approval" as friction point
- No clear ROI quantification on any competitor site

**Implications**: Sales cycle involves multiple stakeholders. Land-and-expand is harder than product-led growth narrative suggests.

**Counter-strategy**: Build clear ROI case (senior engineer hours saved) and sell to VP Engineering with existing productivity tools relationship.

### Question 4: "False positives destroy trust—your AI will never be perfect, so what is the number that kills you?"

**Why it matters**: Users cite false positives as primary churn reason. At what threshold does the tool become net negative?

**Evidence**:
- G2: "Too many false positives" = 7 mentions in negative reviews
- Reddit: "After 3 useless comments, I stopped reading"
- Pattern: Trust is fragile and quickly lost

**Implications**: There is a hard constraint on acceptable error rate that may be below current AI capabilities for certain suggestion types.

**Counter-strategy**: Start with high-confidence, low-stakes suggestions only. Build trust incrementally. Do not ship until false positive rate is demonstrably below human error rate for equivalent task.

### Question 5: "What if the real opportunity is not 'review' but 'knowledge transfer'?"

**Why it matters**: This reframes the entire market. If the job is "teach juniors how seniors think," the product looks completely different—and current competitors are building the wrong thing.

**Evidence**:
- G2 positive: "Helped junior devs learn our patterns"
- Reddit: "Wish it explained why, not just what to change"
- Unspoken consensus analysis suggests teaching frame

**Implications**: Betting on "AI code review" may be betting on the wrong category. The winning product might be "AI engineering mentorship" or "team pattern documentation."

**Counter-strategy**: Consider positioning as "capture and distribute senior engineer knowledge" with code review as one application, not the core value prop.

---

## Strategic Implications

### What Survived the Assault

1. **Market pain is real**—senior engineer bottleneck is confirmed across multiple sources
2. **Current solutions are inadequate**—gap between promise and delivery creates opportunity
3. **Integration matters**—workflow fit is as important as AI capability

### What Emerged as Critical

1. **Customization is the differentiator**—teams that configure heavily retain; others churn
2. **Trust threshold is high**—false positives are existential risk
3. **Positioning matters enormously**—"automation" vs. "augmentation" vs. "education" are different markets

### What Requires More Investigation

1. Exact false positive tolerance threshold
2. Willingness to pay for customization services
3. Competitive response timeline (GitHub, GitLab)

---

## Next Questions

1. **What is the actual cost of false positives?** Can we quantify impact on developer trust and tool usage?

2. **What is the configuration burden?** Teams that customize heavily—what does that process look like? Is it repeatable/scalable?

3. **What would GitHub Copilot Code Review need to lack for us to have a 24-month window?** Identify specific capabilities or positioning gaps.

---

## Example 2: Competitive Positioning Analysis

### Scenario
Established project management tool (Asana competitor) evaluating positioning against new AI-native entrants.

### Materials Provided
- 3 new AI PM tool websites (Motion, Sunsama, Reclaim)
- 15 Product Hunt launch comments
- 2 founder interviews from tech podcasts
- Comparison of feature sets vs. incumbent

---

## Raw Material Observations

### Evidence Points

1. **Motion** leads with "automatically plan your day"—solves scheduling, not task management

2. **Product Hunt comments** focus on "finally, AI that actually does something"—frustration with chatbot AI

3. **Founder interviews** emphasize "calendar is the source of truth"—different worldview from task-list PM tools

4. **Feature comparison** shows AI entrants have 20% of features but claim 80% of the value

5. **Notable pattern**: All AI tools avoid calling themselves "project management"—use "time management," "daily planning," "focus"

### Contradictions

- Market positioning as "AI PM" but actual functionality is calendar scheduling
- Claim "less planning overhead" but require extensive calendar integration setup
- Target "busy professionals" but pricing ($19/month) suggests prosumers, not enterprise

---

## Unspoken Consensus

### What AI-Native Players Understand

**"Project management" is a category incumbents own. The opportunity is reframing the job as "attention management" or "time protection."**

Incumbents (Asana, Monday, Notion) competed on features, views, and collaboration. AI-native entrants understand:

1. **The real pain is not organizing tasks—it is deciding what to do next**
2. **Calendar integration creates lock-in that feature breadth cannot match**
3. **The buyer is the individual, not the team** (at least initially)

**Why outsiders miss this**: They evaluate AI tools against PM feature matrices. Insiders know they are playing a different game—competing for calendar real estate, not project views.

---

## Structural Assumptions

### Assumption 1: AI can make better scheduling decisions than humans

**If true**: Value prop is "let AI optimize your time"

**If false when**: Users want control, have preferences AI cannot learn, or context is too complex

**Fragility**: High. Trust in AI judgment is low; one bad scheduling decision undermines credibility

### Assumption 2: Individual productivity tools can expand to teams

**If true**: Land with prosumers, expand to enterprise

**If false when**: Team coordination requires different functionality than individual scheduling

**Fragility**: Unclear. No AI-native tool has successfully made this transition yet

### Assumption 3: Calendar is the right integration point

**If true**: Deep Google/Outlook integration is core competency

**If false when**: Task creation happens elsewhere (Slack, email, notes)

**Fragility**: Moderate. Calendar is important but not exclusive source of work

---

## Adversarial Challenges

### Question 1: "What happens when Microsoft/ Google build this into Outlook/Calendar?"

**Why it matters**: Scheduling is a feature, not a product. Platform owners can integrate more deeply.

**Evidence**: None of the AI tools have technical moats; all use standard APIs

**Implications**: Window for independent tools is limited. Build for acquisition or find deeper differentiation fast.

### Question 2: "You are selling 'less planning' but require more setup than Asana—explain?"

**Why it matters**: Onboarding friction includes calendar permissions, task import, preference learning. Initial experience may feel harder, not easier.

**Evidence**: Product Hunt comments mention "took a week to get useful"

**Implications**: Time-to-value may be longer than marketing suggests. Churn risk in first 7 days.

---

## Strategic Implications

### What Survived

- Reframing around "attention" rather than "tasks" is defensible positioning
- Calendar integration creates genuine switching costs
- Individual-first approach avoids incumbent's enterprise complexity

### What Emerged as Vulnerable

- Feature gap vs. incumbents becomes problem as users mature
- Platform risk from Microsoft/Google is existential
- Time-to-value may not match marketing promise

### Recommended Response

1. **Short-term**: Match AI scheduling features; do not cede this ground
2. **Medium-term**: Emphasize team coordination capabilities that AI-native tools lack
3. **Long-term**: Acquire or build calendar-native experience before AI tools add team features

---

## Example 3: Pre-Investment Adversarial Prep

### Scenario
Founder preparing for Series A fundraising. Wants to anticipate investor challenges.

### Materials Provided
- Pitch deck (provided by founder)
- 6 competitor websites
- Market research report (industry analyst)
- Customer case studies (3)

---

## Adversarial Challenges (Simulated Investor)

### Question 1: "Your TAM is based on 'all businesses with sales teams'—but your customers are all tech companies. What is the real TAM?"

**Evidence**: Case studies: SaaS (2), tech services (1). No manufacturing, retail, healthcare.

**Implication**: Actual serviceable market may be 10% of claimed TAM

**Preparation**: Segment TAM by industry maturity and digital sophistication. Acknowledge initial beachhead explicitly.

### Question 2: "Your growth is 15% MoM but churn is 8% monthly. You are acquiring to lose them—explain unit economics?"

**Evidence**: Metrics in deck show gross retention 92%, net retention 104%

**Implication**: High churn masked by expansion revenue. May indicate product-market fit issues in specific segments.

**Preparation**: Segment churn by customer profile. Show that high-value customers retain at 95%+; churn concentrated in low-ACV segment being deprioritized.

### Question 3: "Your CTO left 6 months ago and you have not replaced them—how serious is the technical risk?"

**Evidence**: Team slide shows VP Engineering, no CTO

**Implication**: Technical leadership gap may concern Series A investors

**Preparation**: Highlight VP Eng credentials. Explain decision to hire senior ICs instead of CTO. Show technical roadmap on track.

---

## Synthesis Structure Template

Use this structure for final output:

```markdown
## Executive Summary
[3-4 sentences on what was tested, what survived, what matters most]

## Key Findings

### Structural Insights
[Unspoken consensus findings with evidence citations]

### Load-Bearing Assumptions
[3 assumptions + fragility assessment]

### Survived Challenges
[What withstood adversarial testing]

### Vulnerabilities Exposed
[What requires attention or acceptance]

## Strategic Implications

### Recommended Actions
[Specific, prioritized recommendations]

### Risks to Monitor
[What to watch for]

### Decisions This Informs
[How analysis affects specific choices]

## Next Questions
[Priority questions for further investigation]
```

---

## Example 4: Limited Materials Analysis (Tool Failure Scenario)

### Scenario
User asks: "Analyze the market for AI-powered logistics optimization"

**Constraint**: Search and fetch tools are not responding.

**Response**: Transition to user-assisted collection.

### AI Response

> "I'm experiencing connectivity limitations with external search tools. Let me work with you to gather the materials we need.
>
> Can you share:
> 1. 2-3 key companies or products you're aware of in this space?
> 2. Any articles or reports you've already found helpful?
> 3. What user feedback or market sentiment have you encountered?"

### User Provides

- Companies: "I know of Optym, Wise Systems, and some startups like Loop"
- Articles: User pastes excerpts from 2 McKinsey reports on logistics AI
- Sentiment: "Heard mixed things—some say ROI is unclear, others report 15% cost savings"

### Analysis with Limited Materials

```markdown
## Analysis: AI Logistics Optimization Market

### Materials Collected
**Sources**: User-provided materials (automated collection failed)
- 3 company names (Optym, Wise Systems, Loop)
- 2 McKinsey report excerpts
- User's market observations

**Limitations**:
- No competitor website analysis
- No user review data
- Limited community sentiment
- ⚠️ Analysis confidence: Medium (user knowledge + 2 reports)

### Raw Observations

**From McKinsey excerpts**:
1. Logistics AI market projected $12B by 2027
2. Implementation challenges cited as primary barrier
3. ROI realization typically 12-18 months

**From user input**:
4. Optym, Wise Systems = established players
5. Loop = newer entrant
6. Market sentiment split: ROI skepticism vs. 15% savings claims

**Notable pattern**: Gap between projected market size and reported implementation challenges

### Unspoken Consensus

**What successful players likely understand**:
The sale is not to logistics managers—it's to CFOs who can sign off on 12-18 month payback periods.

**Evidence**: McKinsey emphasizes implementation challenges and timeline to ROI. User notes mixed sentiment on ROI clarity. The friction is not technical—it's organizational/capital commitment.

**Confidence**: Medium (inferred from limited sources)

### Structural Assumptions

**Assumption 1: Customers have data infrastructure to support AI optimization**

**If true**: Market ready for rapid adoption

**If false when**: Legacy systems, data silos prevent implementation

**Fragility**: High—McKinsey cites implementation as primary barrier

**Confidence**: High (directly supported by McKinsey)

---

**Assumption 2: 15% cost savings justify implementation costs**

**If true**: Clear ROI case drives adoption

**If false when**: Implementation costs, disruption exceed savings

**Fragility**: Medium—user reports mixed sentiment on ROI

**Confidence**: Medium (contradictory evidence)

---

**Assumption 3: Established players (Optym, Wise) have sustainable moats**

**If true**: New entrants face high barriers

**If false when**: AI commoditizes optimization algorithms

**Fragility**: Unknown—no competitor analysis possible

**Confidence**: Low (insufficient data)

### Adversarial Challenges

**Question 1**: "You cite 15% savings, but McKinsey says implementation is the primary barrier. Are you solving a technical problem or a change management problem?"

**Evidence**: McKinsey emphasizes implementation challenges
**Implication**: If change management is the real issue, AI optimization is a feature, not a product
**Confidence**: Medium

**Question 2**: "Your materials don't mention any of these companies' pricing. How do you know customers will pay enough to sustain a business?"

**Evidence**: No pricing data in provided materials
**Implication**: Business model unvalidated
**Confidence**: High (acknowledged gap)

**Question 3**: "If ROI takes 12-18 months, what happens in a recession when capital expenditures get cut?"

**Evidence**: McKinsey timeline + economic cyclicality
**Implication**: Business may be cyclical/vulnerable
**Confidence**: Medium (logical inference)

### Strategic Implications

**With limited confidence**:

1. **The real job**: Reduce implementation friction, not just optimize routes
2. **Target buyer**: CFO with CapEx authority, not logistics manager
3. **Risk factor**: Economic cyclicality + long sales cycles

**Critical gaps to fill**:
- Competitor pricing and positioning
- Actual user feedback (G2, case studies)
- Implementation cost data

### Next Questions

**High priority** (would significantly improve analysis):
1. What do Optym and Wise Systems charge? What's their pricing model?
2. Can you find 3-5 customer case studies with specific ROI claims?

**Medium priority**:
3. What implementation challenges do customers specifically cite?
4. How long are typical sales cycles?

---

**Analysis confidence**: Medium-Low due to limited materials
**Recommendation**: Fill gaps above before making strategic decisions
```

### Key Differences from Full Analysis

| Aspect | Full Collection | Limited Materials |
|--------|-----------------|-------------------|
| Source count | 10-20 sources | 3-5 sources |
| Confidence level | High | Medium-Low |
| Citations | Specific URLs/quotes | General attribution |
| Assumption validation | Multi-source confirmation | Single-source or inferred |
| Output | Decision-grade | Hypothesis-grade |

### Value Still Delivered

Even with limited materials, the framework provides:

1. **Structured thinking**: User's scattered knowledge organized into 5 layers
2. **Gap identification**: Clear list of what research is still needed
3. **Confidence calibration**: Honest assessment of analysis reliability
4. **Decision support**: Framework for evaluation even with incomplete data
5. **Next steps**: Prioritized questions to improve analysis quality

### Communication Best Practices

When presenting limited-material analysis:

- ✅ Be transparent about source limitations
- ✅ Label confidence levels explicitly
- ✅ Separate "supported" from "inferred" insights
- ✅ Provide specific guidance on filling gaps
- ❌ Don't pretend confidence is higher than it is
- ❌ Don't skip layers due to limited data—adapt each layer to available materials
