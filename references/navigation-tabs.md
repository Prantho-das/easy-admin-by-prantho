# Pure HTML Top Horizontal Child Navigation Tabs

This snippet is 100% Vanilla HTML + Tailwind CSS. It works in any framework or static HTML project (Laravel, Vue, React, Next.js, Django, Asp.Net, Nuxt).

---

## 1. Vuexy Style Pill Tabs (Pure HTML)

Place this directly above your page content card/table:

```html
<!-- Top Child Navigation Tabs (Vuexy Style) -->
<div class="mb-6 flex items-center gap-2 overflow-x-auto pb-1">
  <!-- Active Tab -->
  <a href="#sales" class="h-[38px] px-4 rounded-md bg-[#7367F0] text-white font-medium text-[14px] flex items-center gap-2 shadow-[0px_2px_4px_rgba(115,103,240,0.4)] transition-all">
    <i class="ti ti-file-analytics text-[18px]"></i>
    <span>Sales Summary</span>
  </a>

  <!-- Inactive Tab -->
  <a href="#vat" class="h-[38px] px-4 rounded-md bg-white dark:bg-[#2F3349] text-[#5D596C] dark:text-[#B6BEE3] font-medium text-[14px] flex items-center gap-2 hover:bg-[#F2F2F3] dark:hover:bg-[#353A52] shadow-[0_1px_3px_rgba(47,43,61,0.08)] transition-all">
    <i class="ti ti-receipt-tax text-[18px] text-[#A5A3AE]"></i>
    <span>VAT Statement</span>
  </a>

  <!-- Inactive Tab with Badge -->
  <a href="#bank" class="h-[38px] px-4 rounded-md bg-white dark:bg-[#2F3349] text-[#5D596C] dark:text-[#B6BEE3] font-medium text-[14px] flex items-center gap-2 hover:bg-[#F2F2F3] dark:hover:bg-[#353A52] shadow-[0_1px_3px_rgba(47,43,61,0.08)] transition-all">
    <i class="ti ti-building-bank text-[18px] text-[#A5A3AE]"></i>
    <span>Bank Reconciliation</span>
    <span class="ml-1 bg-[#28C76F]/15 text-[#28C76F] text-[11px] font-bold px-1.5 py-0.5 rounded">Live</span>
  </a>

  <!-- Inactive Tab with Warning Badge -->
  <a href="#audit" class="h-[38px] px-4 rounded-md bg-white dark:bg-[#2F3349] text-[#5D596C] dark:text-[#B6BEE3] font-medium text-[14px] flex items-center gap-2 hover:bg-[#F2F2F3] dark:hover:bg-[#353A52] shadow-[0_1px_3px_rgba(47,43,61,0.08)] transition-all">
    <i class="ti ti-history text-[18px] text-[#A5A3AE]"></i>
    <span>Audit Log</span>
    <span class="ml-1 bg-[#FF9F43]/15 text-[#FF9F43] text-[11px] font-bold px-1.5 py-0.5 rounded">3</span>
  </a>
</div>
```

---

## 2. Materialize Style Underline Tabs (Pure HTML)

```html
<!-- Top Child Navigation Tabs (Materialize Style) -->
<div class="mb-6 flex items-center gap-6 border-b border-[#E7E7E8] dark:border-[#464066] px-1 overflow-x-auto">
  <!-- Active Tab -->
  <a href="#overview" class="pb-3 border-b-2 border-[#666CFF] text-[#666CFF] font-semibold text-[14px] flex items-center gap-2 whitespace-nowrap">
    <i class="ti ti-packages text-[18px]"></i>
    <span>Overview</span>
  </a>

  <!-- Inactive Tab -->
  <a href="#inventory" class="pb-3 border-b-2 border-transparent text-[#8A8D93] hover:text-[#3A3541] dark:hover:text-white font-medium text-[14px] flex items-center gap-2 transition-colors whitespace-nowrap">
    <i class="ti ti-boxes text-[18px]"></i>
    <span>Inventory Details</span>
  </a>

  <!-- Inactive Tab with Alert Badge -->
  <a href="#alerts" class="pb-3 border-b-2 border-transparent text-[#8A8D93] hover:text-[#3A3541] dark:hover:text-white font-medium text-[14px] flex items-center gap-2 transition-colors whitespace-nowrap">
    <i class="ti ti-alert-triangle text-[18px]"></i>
    <span>Low Stock</span>
    <span class="bg-[#FF4D49]/15 text-[#FF4D49] text-[11px] font-bold px-1.5 py-0.5 rounded-full">5</span>
  </a>
</div>
```

---

## 3. Fuse React Style Shelf Tabs (Pure HTML)

```html
<!-- Top Child Navigation Tabs (Fuse Carded Shelf Style) -->
<div class="px-8 flex items-center gap-8 border-t border-slate-100 dark:border-slate-800 overflow-x-auto">
  <!-- Active Tab -->
  <a href="#ledger" class="py-4 border-b-2 border-indigo-600 text-indigo-600 dark:text-indigo-400 font-bold text-sm inline-flex items-center gap-2 whitespace-nowrap">
    <i class="ti ti-chart-bar text-lg"></i>
    <span>Sales Ledger</span>
  </a>

  <!-- Inactive Tab -->
  <a href="#vat" class="py-4 border-b-2 border-transparent text-slate-500 hover:text-slate-800 dark:hover:text-slate-200 font-medium text-sm inline-flex items-center gap-2 transition whitespace-nowrap">
    <i class="ti ti-receipt-tax text-lg"></i>
    <span>VAT Details</span>
  </a>

  <!-- Inactive Tab -->
  <a href="#commission" class="py-4 border-b-2 border-transparent text-slate-500 hover:text-slate-800 dark:hover:text-slate-200 font-medium text-sm inline-flex items-center gap-2 transition whitespace-nowrap">
    <i class="ti ti-clipboard-check text-lg"></i>
    <span>Commission</span>
  </a>
</div>
```
