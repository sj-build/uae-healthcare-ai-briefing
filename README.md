# UAE Healthcare & AI Investment Briefing

2탭 대시보드 (헬스케어 + AI 인프라) + Obsidian 미팅 노트 템플릿

## 🚀 Claude Code에서 배포

```bash
# 이 폴더에서 한 줄로 끝
chmod +x deploy.sh && ./deploy.sh
```

### 사전 요구사항
```bash
npm i -g vercel       # Vercel CLI
gh auth login         # GitHub CLI 로그인
```

## 📁 구조
```
├── public/
│   └── index.html        # 브리핑 대시보드 (2탭)
├── obsidian/
│   ├── KARA_피부과_미팅_질문.md    # 범용 피부과 템플릿
│   ├── KARA_리벨리온_미팅_질문.md  # 리벨리온 전용
│   └── KARA_SJ_차별화_가치.md     # Cross-deal 전략
├── vercel.json
├── deploy.sh
└── README.md
```

## Obsidian 연동
`obsidian/` 폴더를 Obsidian Vault로 복사하면 바로 사용 가능.
각 MD 파일에 녹음 파일 임베드 슬롯 포함: `![[recording_YYYYMMDD.mp3]]`
