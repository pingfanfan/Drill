#!/bin/bash
# Drill Auto-Search Script
# Automatically runs Google AI Mode search and feeds results to Drill

set -e

# Configuration
GOOGLE_AI_SKILL_DIR="/Users/pingfan/Library/Mobile Documents/com~apple~CloudDocs/claude-code/google-ai-mode-skill"
DRILL_DIR="/Users/pingfan/Library/Mobile Documents/com~apple~CloudDocs/claude-code/Rimsha/Drill"
QUERY="$1"

if [ -z "$QUERY" ]; then
    echo "Usage: auto-search.sh 'your search query'"
    exit 1
fi

echo "🔥 Drill Auto-Search"
echo "Query: $QUERY"
echo ""

# Step 1: Run Google AI Mode Search
echo "🌐 Step 1: Running Google AI Mode search..."
cd "$GOOGLE_AI_SKILL_DIR"
source .venv/bin/activate

# Run search with save flag
python scripts/run.py search.py \
    --query "$QUERY 2026" \
    --save \
    2>&1 | tee /tmp/drill_search.log

# Check if search succeeded
if [ $? -eq 0 ]; then
    echo "✅ Google AI Mode search completed"

    # Find the latest result file
    LATEST_RESULT=$(ls -t "$GOOGLE_AI_SKILL_DIR"/results/*.md 2>/dev/null | head -1)

    if [ -f "$LATEST_RESULT" ]; then
        echo "📄 Result saved to: $LATEST_RESULT"
        echo ""
        echo "🎯 Next step: Start Drill and analyze the results"
        echo ""
        echo "Run: drill"
        echo "Then: 'Drill into this topic with the search results'"
        echo ""
        echo "Search result preview:"
        head -50 "$LATEST_RESULT"
    else
        echo "⚠️  Result file not found, but search may have succeeded"
    fi
else
    echo "❌ Google AI Mode search failed"
    echo "Falling back to Brave Search..."

    # Fallback to using Claude Code with Brave MCP
    echo "Please run drill and I'll use alternative search methods"
fi
