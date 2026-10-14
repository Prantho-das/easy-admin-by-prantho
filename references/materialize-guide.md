# Materialize Admin Blueprint (PIXINVENT Material Design)

Materialize brings Google's Material Design 3 (M3) principles into Prantho Admin using pure Tailwind CSS.

---

## 1. Distinct Materialize Visual Tokens

| Element | Vuexy Style | Materialize Style | Tailwind Class |
| :--- | :--- | :--- | :--- |
| **Primary Color** | `#7367F0` (Violet) | `#666CFF` (Material Indigo) | `bg-[rgb(var(--color-primary))]` |
| **Card Shadow** | `0 4px 24px 0 rgba(34,41,47,0.08)` | `0 2px 10px 0 rgba(76,78,100,0.22)` | `shadow-[0_2px_10px_0_rgba(76,78,100,0.22)]` |
| **Card Radius** | `12px` (`rounded-xl`) | `10px` (`rounded-[10px]`) | `rounded-[10px]` |
| **Sidebar Menu** | Pill with soft glow | Full-width rounded-e pill | `rounded-e-full` |
| **Surface Neutral**| `#F8F8F8` | `#F7F7F9` (Material Gray) | `bg-[#F7F7F9]` |

---

## 2. Materialize Card Component

```blade
<div class="bg-white dark:bg-[#312d4b] rounded-[10px] shadow-[0_2px_10px_0_rgba(76,78,100,0.22)] dark:shadow-[0_2px_10px_0_rgba(20,20,30,0.4)] p-6 border-0">
    <div class="flex items-center justify-between pb-4 border-b border-gray-100 dark:border-gray-700/50">
        <div>
            <h5 class="text-lg font-semibold text-gray-800 dark:text-gray-100">Overview Statistics</h5>
            <p class="text-xs text-gray-500">Material Design Elevated Surface</p>
        </div>
        <button class="w-8 h-8 rounded-full hover:bg-gray-100 dark:hover:bg-gray-800 flex items-center justify-center text-gray-500">
            <i class="ti ti-dots-vertical"></i>
        </button>
    </div>
    <div class="mt-4">
        <!-- Content -->
    </div>
</div>
```

---

## 3. Materialize Child Navigation Tabs

In Materialize mode, tabs can be styled with the Material M3 Pill indicator:

```blade
<div class="mb-6 flex items-center gap-2 border-b border-gray-200 dark:border-gray-700 px-2">
    @foreach($tabs as $tab)
        @php
            $isActive = ($activeTab === $tab['id']) || (isset($tab['route']) && request()->routeIs($tab['route']));
        @endphp
        <a href="{{ $tab['url'] ?? route($tab['route']) }}"
           class="relative py-3 px-4 text-sm font-medium transition-colors duration-150 inline-flex items-center gap-2
           {{ $isActive 
                ? 'text-[#666CFF] font-semibold border-b-2 border-[#666CFF]' 
                : 'text-gray-600 dark:text-gray-400 hover:text-[#666CFF]' }}">
            @if(isset($tab['icon']))
                <i class="{{ $tab['icon'] }} text-base"></i>
            @endif
            <span>{{ $tab['title'] }}</span>
        </a>
    @endforeach
</div>
```
