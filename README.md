# jakubpawelczak.com

Personal academic website for Jakub M. Pawelczak, Assistant Professor of Economics at Universidad del Pacífico.

Static HTML + CSS, no build step. Deployed on Netlify.

## Layout

```
.
├── index.html          single-page site: bio + research
├── assets/
│   ├── css/style.css
│   └── figures/        photo + per-paper thumbnails
├── papers/             PDFs
├── cv/                 CV PDF
└── teaching/           teaching subpage + syllabi
```

## Local preview

```
cd website-v2
python3 -m http.server 8000
# open http://localhost:8000
```

## Adding a paper

1. Drop the PDF in `papers/`.
2. Drop a thumbnail (PNG, ~600px wide) in `assets/figures/papers/`.
3. Duplicate one of the `<article class="paper">` blocks in `index.html` and edit the title, authors, abstract, thumbnail, and links.
