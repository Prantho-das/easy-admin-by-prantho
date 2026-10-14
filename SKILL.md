---
name: easy-admin-by-prantho
description: >-
  Use this skill whenever designing, building, or styling admin dashboards, layouts,
  components, and pages following the Vuexy, Materialize, or Fuse React aesthetic using
  framework-agnostic Pure HTML and Tailwind CSS. It enforces a multi-theme architecture
  and renders child navigation items as horizontal tabs directly above the page content.
license: MIT
compatibility: "antigravity cursor claude-code codex"
---

# Prantho Admin Skill (Pure HTML + Tailwind CSS)

Prantho Admin is a **100% framework-agnostic Pure HTML + Tailwind CSS** design system. You can copy and paste the code directly into **any project** (Vanilla HTML, Laravel Blade, Vue, React, Next.js, Nuxt, Django, or Asp.Net).

---

## 1. Supported Pure HTML Blueprints (Zero Framework Dependencies)

All layout templates are pure HTML with Tailwind CSS and CDN font/icons:

- [**Vuexy 1:1 Pure HTML Layout (`references/vuexy-layout.md`)**](./references/vuexy-layout.md):
  - Fixed `260px` sidebar, `62px` floating glassmorphism navbar (`shadow-[0_2px_6px_0_rgba(47,43,61,0.14)]`).
  - Active menu: `bg-gradient-to-r from-[#7367F0] to-[#7367F0]/80 shadow-[0px_2px_6px_0px_rgba(115,103,240,0.48)]`.
  - Public Sans typography, `rounded-md` (6px) cards.
  - Horizontal glowing pill child navigation tabs above page content.

- [**Materialize 1:1 Pure HTML Layout (`references/materialize-layout.md`)**](./references/materialize-layout.md):
  - Fixed `260px` sidebar with `rounded-e-full` right-rounded pills.
  - Active gradient: `linear-gradient(98deg, #C6A7FE 0%, #9155FD 100%)` or `#666CFF`.
  - Exact `10px` radius (`rounded-[10px]`) and Material M3 elevation (`shadow-[0px_2px_10px_0px_rgba(58,53,65,0.1)]`).
  - Horizontal underline child tabs above page content.

- [**Fuse React 1:1 Pure HTML Layout (`references/fuse-layout.md`)**](./references/fuse-layout.md):
  - Fixed `280px` dark slate (`#0F172A`) sidebar, body `#F1F5F9`.
  - Carded Layout: Header Shelf (`rounded-2xl border border-slate-200/80`) with page title, actions, and integrated child navigation tabs resting on the shelf border.
  - Indigo-600 `#4F46E5` accents.

---

## 2. Top Horizontal Child Navigation Tabs (Pure HTML)

Any parent menu's sub-navigation items are rendered as **horizontal tabs directly above the page content**:
- View all pure HTML variations in [**`references/navigation-tabs.md`**](./references/navigation-tabs.md).

---

## 3. UI Components Catalog (Pure HTML)

All stat cards, data tables, search bars, and pill badges in pure HTML:
- View [**`references/components.md`**](./references/components.md).

---

## 4. Multi-Theme Token Engine

All CSS variables for instant theme switching across Vuexy, Materialize, and Fuse:
- View [**`references/theme-system.md`**](./references/theme-system.md).

---

## 5. Generator Script (`scripts/generate.sh`)

You can generate a ready-to-run pure HTML file directly via shell:
```bash
# Generate Vuexy HTML Page
bash .agents/skills/prantho-admin/scripts/generate.sh vuexy my-page.html

# Generate Materialize HTML Page
bash .agents/skills/prantho-admin/scripts/generate.sh materialize my-page.html

# Generate Fuse React HTML Page
bash .agents/skills/prantho-admin/scripts/generate.sh fuse my-page.html
```
