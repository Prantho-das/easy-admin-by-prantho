# Fuse React Admin Blueprint (Tailwind CSS)

Fuse React (by Withinpixels) is renowned for its clean slate backgrounds, carded container layouts (`fuse-carded`), rounded-2xl panels, and integrated page header shelves.

---

## 1. Fuse Visual Identity Tokens

| Element | Fuse React Pattern | Tailwind CSS Utility |
| :--- | :--- | :--- |
| **Primary Palette** | Indigo `#4F46E5` | `bg-indigo-600` / `var(--color-primary)` |
| **Neutral Base** | Slate (`#F1F5F9` body, `#0F172A` sidebar) | `bg-slate-100`, `dark:bg-slate-900` |
| **Card Borders** | Crisp 1px slate border with subtle shadow | `border border-slate-200/80 dark:border-slate-800` |
| **Radius** | Extra rounded containers | `rounded-2xl` (`16px`) |
| **Layout Mode** | Carded Page with Header Shelf | Sticky header with integrated bottom tabs |

---

## 2. Fuse "Carded Layout" with Child Navigation Tabs

In Fuse, the page header acts as a **shelf** holding page titles, breadcrumbs, search actions, and child navigation tabs:

```blade
<!-- Fuse Header Shelf -->
<div class="bg-white dark:bg-slate-900 border-b border-slate-200 dark:border-slate-800 px-6 pt-6 pb-0 mb-6 rounded-2xl shadow-sm">
    <div class="flex flex-col md:flex-row md:items-center justify-between gap-4 pb-6">
        <div>
            <div class="flex items-center gap-2 text-xs font-semibold text-slate-500 uppercase tracking-wider mb-1">
                <span>Dashboard</span>
                <i class="ti ti-chevron-right text-[10px]"></i>
                <span class="text-indigo-600 dark:text-indigo-400">Reports</span>
            </div>
            <h2 class="text-2xl font-bold text-slate-900 dark:text-white tracking-tight">Advanced Analytics</h2>
        </div>
        <div class="flex items-center gap-3">
            <button class="inline-flex items-center gap-2 px-4 py-2 bg-indigo-600 hover:bg-indigo-700 text-white rounded-xl text-sm font-medium shadow-sm transition">
                <i class="ti ti-plus"></i>
                <span>Generate Report</span>
            </button>
        </div>
    </div>

    <!-- Fuse Child Tabs (Inside Shelf) -->
    <div class="flex items-center gap-6 border-t border-slate-100 dark:border-slate-800 overflow-x-auto scrollbar-none">
        @foreach($tabs as $tab)
            @php
                $isActive = ($activeTab === $tab['id']) || (isset($tab['route']) && request()->routeIs($tab['route']));
            @endphp
            <a href="{{ $tab['url'] ?? route($tab['route']) }}"
               class="py-3.5 text-sm font-medium transition-all border-b-2 inline-flex items-center gap-2 whitespace-nowrap
               {{ $isActive 
                    ? 'border-indigo-600 text-indigo-600 dark:text-indigo-400 font-semibold' 
                    : 'border-transparent text-slate-500 hover:text-slate-800 dark:hover:text-slate-200 hover:border-slate-300' }}">
                @if(isset($tab['icon']))
                    <i class="{{ $tab['icon'] }} text-base"></i>
                @endif
                <span>{{ $tab['title'] }}</span>
            </a>
        @endforeach
    </div>
</div>
```

---

## 3. Fuse Stat Widget

```blade
<div class="bg-white dark:bg-slate-900 border border-slate-200/80 dark:border-slate-800 p-6 rounded-2xl shadow-sm flex flex-col justify-between">
    <div class="flex items-center justify-between text-slate-500 dark:text-slate-400">
        <span class="text-xs font-semibold uppercase tracking-wider">Active Patients</span>
        <span class="p-2 bg-indigo-50 dark:bg-indigo-950/50 text-indigo-600 dark:text-indigo-400 rounded-xl">
            <i class="ti ti-users text-lg"></i>
        </span>
    </div>
    <div class="mt-4">
        <div class="text-3xl font-extrabold text-slate-900 dark:text-white">1,429</div>
        <p class="text-xs text-emerald-600 font-medium mt-1 flex items-center gap-1">
            <i class="ti ti-trending-up"></i>
            <span>+8.4% this week</span>
        </p>
    </div>
</div>
```
