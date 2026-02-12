#!/bin/bash
set -e

echo "🚀 UAE Healthcare & AI Briefing — Deploy"
echo ""

# Git init + commit
if [ ! -d ".git" ]; then
  git init
  echo "node_modules/" > .gitignore
  echo ".vercel/" >> .gitignore
fi

git add .
git commit -m "UAE briefing — healthcare + AI infra dashboard" --allow-empty

# GitHub repo
if ! gh repo view uae-healthcare-ai &>/dev/null 2>&1; then
  echo "📦 Creating GitHub repo..."
  gh repo create uae-healthcare-ai --public --source=. --push \
    --description "UAE Healthcare & AI Infrastructure Investment Briefing"
else
  echo "📦 Pushing to existing repo..."
  git push origin main 2>/dev/null || git push -u origin main
fi

# Vercel deploy
echo "🌐 Deploying to Vercel..."
npx vercel --prod --yes

echo ""
echo "✅ 완료!"
echo "📎 Vercel 대시보드에서 도메인 설정:"
echo "   Settings → Domains → uae-healthcare-ai.vercel.app"
