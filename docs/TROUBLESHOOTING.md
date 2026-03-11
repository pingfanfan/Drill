# Troubleshooting Guide

## Common Issues

### Issue: WebSearch/WebFetch Not Working

**Symptoms**:
- Search returns 400/403 errors
- Fetch returns "access denied"
- "Cannot reach external sources"

**Solutions**:

1. **Drill automatically falls back** to user-assisted collection
   - Provide URLs or text directly
   - Drill continues with available materials

2. **Check your environment**:
   ```bash
   # Test if tools work
   cc --plugin-dir Drill

   # In Claude Code:
   "Test search: what is the weather today"
   ```

3. **For enterprise/restricted environments**:
   - Use user-assisted mode exclusively
   - Prepare materials in advance
   - Request internal document access from IT

### Issue: Analysis Feels Generic

**Symptoms**:
- Output lacks specific details
- Feels like general knowledge
- No surprising insights

**Causes & Fixes**:

| Cause | Fix |
|-------|-----|
| Limited materials collected | Provide specific URLs or documents |
| Broad topic | Narrow the scope |
| Recent topic | News may not be indexed yet |
| Niche topic | Provide industry-specific sources |

**Better prompt**:
```
"Drill into [topic]. I have these specific sources: [URLs]"
```

### Issue: Drill Not Triggering

**Symptoms**:
- Claude responds without using the framework
- No structured 5-layer output

**Solutions**:

1. **Use explicit trigger**:
   ```
   "Drill into [topic]"
   "Use drill on [topic]"
   "Run drill: [topic]"
   ```

2. **Verify skill is loaded**:
   ```
   "What skills are active?"
   ```

3. **Check installation**:
   ```bash
   ls Drill/skills/drill/SKILL.md
   # Should exist
   ```

### Issue: Output Too Long

**Symptoms**:
- Analysis takes too long to read
- Information overload

**Solutions**:

1. **Request condensed output**:
   ```
   "Quick drill: top 3 insights only"
   ```

2. **Focus scope**:
   ```
   "Drill just the competitive threats"
   ```

3. **Iterative drilling**:
   ```
   "Drill overview first"
   "Now drill deeper on [specific aspect]"
   ```

### Issue: Output Too Short

**Symptoms**:
- Analysis feels incomplete
- Missing expected sections

**Solutions**:

1. **Request full framework**:
   ```
   "Deep drill: full 5-layer analysis"
   ```

2. **Provide more materials**:
   ```
   "Drill using these sources: [URLs]"
   ```

3. **Ask follow-ups**:
   ```
   "Expand on the assumptions section"
   "What about adversarial challenges?"
   ```

### Issue: Not Adversarial Enough

**Symptoms**:
- Challenges feel soft
- No hard questions
- Feels supportive rather than testing

**Solutions**:

1. **Explicit request**:
   ```
   "Drill aggressively"
   "Be ruthless"
   "Tear this apart"
   ```

2. **Role-play**:
   ```
   "Drill as if you're a skeptical VC"
   "Drill from a competitor's perspective"
   ```

3. **Multiple angles**:
   ```
   "Drill from user perspective"
   "Now drill from investor perspective"
   ```

### Issue: Drill Collects Wrong Sources

**Symptoms**:
- Competitors identified are irrelevant
- Sources don't match your domain
- Off-topic materials

**Solutions**:

1. **Specify competitors**:
   ```
   "Drill focusing on [specific competitors]"
   ```

2. **Provide context**:
   ```
   "Drill the [industry] market. We're targeting [specific segment]"
   ```

3. **Manual curation**:
   ```
   "Drill these specific materials: [URLs]"
   ```

## Environment-Specific Issues

### Enterprise Environment

**Symptoms**:
- External websites blocked
- Search APIs restricted
- Timeout errors

**Solution**:
Drill automatically uses **user-assisted mode**:
1. Gather materials manually
2. Paste into Claude Code
3. Drill applies framework to your materials

### Slow Internet

**Symptoms**:
- Timeouts during collection
- Partial results

**Solution**:
1. Use offline mode:
   ```
   "I have materials for you to drill: [paste text]"
   ```

2. Or provide URLs only:
   ```
   "Drill these URLs: [list]"
   ```

### Rate Limiting

**Symptoms**:
- Intermittent successes
- "Too many requests" errors

**Solution**:
Drill automatically:
1. Slows down requests
2. Prioritizes key sources
3. Switches to user-assisted if needed

## Getting Help

### Before Opening an Issue

1. **Verify installation**:
   ```bash
   ls Drill/skills/drill/SKILL.md
   ```

2. **Test basic functionality**:
   ```
   "Drill test"
   ```

3. **Try with provided materials**:
   ```
   "Drill this: [paste text]"
   ```

### Opening a Good Bug Report

Include:

```markdown
**Environment**
- OS: [e.g., macOS 14.1]
- Claude Code version: [e.g., 0.24.1]
- Installation method: [git clone / download]

**Issue**
[Clear description]

**Reproduction**
1. Ask: "..."
2. Expected: "..."
3. Actual: "..."

**Logs/Screenshots**
[If applicable]
```

### Requesting Features

Describe:
1. What you want
2. Why it would help
3. Example usage

## Performance Tips

### Faster Analysis

- **Narrow scope**: "Drill just pricing strategy"
- **Provide materials**: Skip collection phase
- **Request bullets**: "Top 3 insights only"

### Better Analysis

- **Provide context**: "We're Series A with 6 months runway"
- **Specific sources**: "Drill these URLs"
- **Iterate**: Use outputs as next inputs

### More Adversarial

- **Explicit ask**: "Be ruthless"
- **Role-play**: "As a skeptical VC"
- **Multiple passes**: "Drill again from different angle"

---

**Still stuck?** Open an [issue](https://github.com/pingfanfan/Drill/issues) with details.
