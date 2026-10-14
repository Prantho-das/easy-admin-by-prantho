# Fuse React 1:1 Pixel-Perfect Pure HTML Layout (Framework-Agnostic)

This template is 100% Pure HTML + Tailwind CSS. You can copy and paste this into ANY project (HTML, Laravel, Vue, React, Next.js, Nuxt, Django, Asp.Net).

```html
<!DOCTYPE html>
<html lang="en" data-theme="fuse" class="h-full">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Fuse Admin Dashboard</title>
  
  <!-- Tailwind CSS CDN -->
  <script src="https://cdn.tailwindcss.com"></script>
  
  <!-- Google Font: Inter -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
  
  <!-- Tabler Icons -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@tabler/icons-webfont@latest/tabler-icons.min.css">

  <style>
    body { font-family: 'Inter', sans-serif; }
  </style>
</head>
<body class="bg-[#F1F5F9] dark:bg-[#0B1120] text-slate-700 dark:text-slate-300 min-h-full flex text-[14px] antialiased">

  <!-- =========================================================================
       1. FUSE SLATE SIDEBAR (Width: 280px, Dark Slate #0F172A)
       ========================================================================= -->
  <aside class="w-[280px] bg-[#0F172A] flex-shrink-0 flex flex-col fixed inset-y-0 left-0 z-30 text-slate-400">
    <!-- Brand / Logo Area -->
    <div class="h-[70px] px-6 flex items-center gap-3 border-b border-slate-800">
      <div class="w-9 h-9 rounded-xl bg-indigo-600 flex items-center justify-center text-white font-black text-xl shadow-lg shadow-indigo-600/30">
        F
      </div>
      <div class="flex flex-col">
        <span class="text-white font-bold text-lg tracking-tight">FUSE</span>
        <span class="text-[11px] text-slate-500 font-semibold uppercase tracking-wider">React Admin</span>
      </div>
    </div>

    <!-- Navigation Menu Items -->
    <div class="flex-1 overflow-y-auto px-4 py-6 space-y-1">
      <div class="px-3 pb-2 text-[11px] font-bold uppercase tracking-wider text-slate-500">Applications</div>
      
      <!-- Active Nav Item -->
      <a href="#" class="h-[42px] px-4 rounded-xl flex items-center gap-3 bg-indigo-600 text-white font-medium shadow-md shadow-indigo-600/25">
        <i class="ti ti-chart-dots text-[18px]"></i>
        <span>Analytics</span>
      </a>

      <!-- Parent Menu (Children appear as tabs on page shelf) -->
      <a href="#" class="h-[42px] px-4 rounded-xl flex items-center gap-3 text-slate-400 hover:text-white hover:bg-slate-800/60 transition-colors">
        <i class="ti ti-file-analytics text-[18px]"></i>
        <span>Reports</span>
      </a>

      <!-- Inactive Nav Item -->
      <a href="#" class="h-[42px] px-4 rounded-xl flex items-center gap-3 text-slate-400 hover:text-white hover:bg-slate-800/60 transition-colors">
        <i class="ti ti-users text-[18px]"></i>
        <span>Patients & Clients</span>
      </a>
    </div>
  </aside>

  <!-- =========================================================================
       2. MAIN CONTENT WRAPPER
       ========================================================================= -->
  <div class="flex-1 flex flex-col pl-[280px] min-h-screen">
    
    <!-- FUSE TOP NAVBAR (Clean Slate Border Style) -->
    <header class="h-[70px] bg-white dark:bg-slate-900 border-b border-slate-200 dark:border-slate-800 px-8 flex items-center justify-between sticky top-0 z-20">
      <div class="flex items-center gap-3 text-slate-400">
        <i class="ti ti-search text-xl"></i>
        <input type="text" placeholder="Search anything (Press 'Ctrl+K')" class="bg-transparent text-sm text-slate-700 dark:text-slate-200 focus:outline-none w-64">
      </div>
      <div class="flex items-center gap-4">
        <button class="p-2 text-slate-400 hover:text-slate-700 dark:hover:text-white"><i class="ti ti-bell text-xl"></i></button>
        <div class="flex items-center gap-3 pl-4 border-l border-slate-200 dark:border-slate-800">
          <div class="text-right">
            <div class="text-sm font-semibold text-slate-900 dark:text-white leading-tight">Administrator</div>
            <div class="text-xs text-slate-400">Super Admin</div>
          </div>
          <div class="w-10 h-10 rounded-xl bg-indigo-100 text-indigo-700 font-bold flex items-center justify-center">AD</div>
        </div>
      </div>
    </header>

    <!-- =========================================================================
         3. FUSE CARDED SHELF WITH INTEGRATED CHILD TABS
         ========================================================================= -->
    <main class="flex-1 p-8">
      
      <!-- FUSE HEADER SHELF (Containing Breadcrumb, Title, Actions, and Child Tabs) -->
      <div class="bg-white dark:bg-slate-900 border border-slate-200/80 dark:border-slate-800 rounded-2xl shadow-sm mb-8 overflow-hidden">
        <div class="p-8 pb-6 flex flex-col md:flex-row md:items-center justify-between gap-4">
          <div>
            <div class="flex items-center gap-2 text-xs font-semibold text-slate-400 uppercase tracking-wider mb-1">
              <span>Apps</span>
              <i class="ti ti-chevron-right text-[10px]"></i>
              <span class="text-indigo-600">Reports</span>
            </div>
            <h2 class="text-2xl font-extrabold text-slate-900 dark:text-white tracking-tight">Clinical & Sales Audit</h2>
          </div>
          <div>
            <button class="px-5 py-2.5 bg-indigo-600 hover:bg-indigo-700 text-white font-semibold text-sm rounded-xl shadow-md shadow-indigo-600/25 transition">
              <i class="ti ti-download mr-1.5"></i> Export Report
            </button>
          </div>
        </div>

        <!-- INTEGRATED FUSE CHILD TABS (Directly on shelf bottom border) -->
        <div class="px-8 flex items-center gap-8 border-t border-slate-100 dark:border-slate-800 overflow-x-auto scrollbar-none">
          <!-- Active Tab -->
          <a href="#sales" class="py-4 border-b-2 border-indigo-600 text-indigo-600 dark:text-indigo-400 font-bold text-sm inline-flex items-center gap-2 whitespace-nowrap">
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
      </div>

      <!-- FUSE TABLE SUMMARY METRICS -->
      <div class="grid grid-cols-2 sm:grid-cols-4 gap-4 mb-6">
        <div class="bg-white dark:bg-slate-900 border border-slate-200/80 dark:border-slate-800 rounded-2xl p-5 shadow-sm flex items-center justify-between">
          <div>
            <div class="text-xs font-semibold text-slate-400 uppercase tracking-wider">Total Patients</div>
            <div class="text-2xl font-extrabold text-slate-900 dark:text-white mt-1">2,845</div>
          </div>
          <div class="w-10 h-10 rounded-xl bg-indigo-50 dark:bg-indigo-950/50 text-indigo-600 dark:text-indigo-400 flex items-center justify-center text-lg">
            <i class="ti ti-users"></i>
          </div>
        </div>
        <div class="bg-white dark:bg-slate-900 border border-slate-200/80 dark:border-slate-800 rounded-2xl p-5 shadow-sm flex items-center justify-between">
          <div>
            <div class="text-xs font-semibold text-slate-400 uppercase tracking-wider">Appointments Done</div>
            <div class="text-2xl font-extrabold text-emerald-600 mt-1">2,410</div>
          </div>
          <div class="w-10 h-10 rounded-xl bg-emerald-50 dark:bg-emerald-950/50 text-emerald-600 flex items-center justify-center text-lg">
            <i class="ti ti-calendar-check"></i>
          </div>
        </div>
        <div class="bg-white dark:bg-slate-900 border border-slate-200/80 dark:border-slate-800 rounded-2xl p-5 shadow-sm flex items-center justify-between">
          <div>
            <div class="text-xs font-semibold text-slate-400 uppercase tracking-wider">Pending Visits</div>
            <div class="text-2xl font-extrabold text-amber-500 mt-1">435</div>
          </div>
          <div class="w-10 h-10 rounded-xl bg-amber-50 dark:bg-amber-950/50 text-amber-600 flex items-center justify-center text-lg">
            <i class="ti ti-clock-hour-4"></i>
          </div>
        </div>
        <div class="bg-white dark:bg-slate-900 border border-slate-200/80 dark:border-slate-800 rounded-2xl p-5 shadow-sm flex items-center justify-between">
          <div>
            <div class="text-xs font-semibold text-slate-400 uppercase tracking-wider">Revenue Collected</div>
            <div class="text-2xl font-extrabold text-slate-900 dark:text-white mt-1">$96,400</div>
          </div>
          <div class="w-10 h-10 rounded-xl bg-cyan-50 dark:bg-cyan-950/50 text-cyan-600 flex items-center justify-center text-lg">
            <i class="ti ti-credit-card"></i>
          </div>
        </div>
      </div>

      <!-- FUSE CARDED TABLE WITH SEARCH, FILTERS & EXPORT -->
      <div class="bg-white dark:bg-slate-900 border border-slate-200/80 dark:border-slate-800 rounded-2xl shadow-sm overflow-hidden">
        
        <!-- Toolbar Header -->
        <div class="p-6 border-b border-slate-200/80 dark:border-slate-800 flex flex-col md:flex-row md:items-center justify-between gap-4">
          <div>
            <h4 class="text-lg font-bold text-slate-900 dark:text-white">Patient Clinical Registry</h4>
            <p class="text-xs text-slate-500">Filter, search, and export appointment histories</p>
          </div>

          <div class="flex flex-wrap items-center gap-3">
            <div class="relative">
              <i class="ti ti-search absolute left-3.5 top-2.5 text-slate-400 text-base"></i>
              <input type="text" placeholder="Search patient..." class="pl-10 pr-4 py-2 bg-slate-50 dark:bg-slate-800/60 border border-slate-200 dark:border-slate-700 rounded-xl text-sm focus:outline-none focus:ring-2 focus:ring-indigo-500 w-48 sm:w-60">
            </div>

            <select class="px-3.5 py-2 bg-slate-50 dark:bg-slate-800/60 border border-slate-200 dark:border-slate-700 rounded-xl text-sm text-slate-600 dark:text-slate-300 focus:outline-none focus:ring-2 focus:ring-indigo-500">
              <option value="">All Treatments</option>
              <option value="botox">Botox & Fillers</option>
              <option value="laser">Laser Resurfacing</option>
            </select>

            <button class="px-4 py-2 bg-indigo-600 hover:bg-indigo-700 text-white rounded-xl text-sm font-semibold flex items-center gap-2 shadow-sm shadow-indigo-500/20 transition">
              <i class="ti ti-download"></i>
              <span>Export</span>
            </button>
          </div>
        </div>

        <!-- Table -->
        <div class="overflow-x-auto">
          <table class="w-full text-left">
            <thead class="bg-slate-50 dark:bg-slate-800/40 text-xs font-bold uppercase tracking-wider text-slate-500 border-b border-slate-200/80 dark:border-slate-800">
              <tr>
                <th class="py-3.5 px-6">Patient ID</th>
                <th class="py-3.5 px-6">Patient Name</th>
                <th class="py-3.5 px-6">Treatment</th>
                <th class="py-3.5 px-6">Doctor</th>
                <th class="py-3.5 px-6">Status</th>
                <th class="py-3.5 px-6 text-right">Actions</th>
              </tr>
            </thead>
            <tbody class="divide-y divide-slate-100 dark:divide-slate-800 text-sm text-slate-700 dark:text-slate-300">
              <tr class="hover:bg-slate-50/70 dark:hover:bg-slate-800/30">
                <td class="py-4 px-6 font-semibold text-indigo-600 dark:text-indigo-400">#PT-3092</td>
                <td class="py-4 px-6 font-medium">Farhana Yasmin</td>
                <td class="py-4 px-6">Chemical Peel - Glycolic</td>
                <td class="py-4 px-6 text-slate-500">Dr. N. Haque</td>
                <td class="py-4 px-6">
                  <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-semibold bg-emerald-50 text-emerald-700 dark:bg-emerald-950/40 dark:text-emerald-400 border border-emerald-200 dark:border-transparent">Confirmed</span>
                </td>
                <td class="py-4 px-6 text-right">
                  <button class="p-1 text-slate-400 hover:text-indigo-600"><i class="ti ti-dots-vertical"></i></button>
                </td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>

    </main>
  </div>
</body>
</html>
```
