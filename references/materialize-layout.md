# Materialize 1:1 Pixel-Perfect Pure HTML Layout (Framework-Agnostic)

This template is 100% Pure HTML + Tailwind CSS. You can copy and paste this into ANY project (HTML, Laravel, Vue, React, Next.js, Nuxt, Django, Asp.Net).

```html
<!DOCTYPE html>
<html lang="en" data-theme="materialize" class="h-full">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Materialize Admin Dashboard</title>
  
  <!-- Tailwind CSS CDN -->
  <script src="https://cdn.tailwindcss.com"></script>
  
  <!-- Google Font: Inter (Material 3 Standard) -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  
  <!-- Tabler Icons -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@tabler/icons-webfont@latest/tabler-icons.min.css">

  <style>
    body { font-family: 'Inter', sans-serif; }
  </style>
</head>
<body class="bg-[#F4F5FA] dark:bg-[#28243D] text-[#544F5A] dark:text-[#CFCCE4] min-h-full flex text-[15px] antialiased">

  <!-- =========================================================================
       1. MATERIALIZE SIDEBAR (Width: 260px, M3 Rounded-E-Full Pills)
       ========================================================================= -->
  <aside class="w-[260px] bg-white dark:bg-[#312D4B] flex-shrink-0 flex flex-col fixed inset-y-0 left-0 z-30 shadow-[0_0_15px_0_rgba(58,53,65,0.06)]">
    <!-- Brand / Logo Area -->
    <div class="h-[64px] px-6 flex items-center justify-between">
      <a href="#" class="flex items-center gap-3">
        <div class="w-8 h-8 rounded-lg bg-gradient-to-tr from-[#666CFF] to-[#8589FF] flex items-center justify-center text-white font-black text-lg shadow-[0_2px_6px_rgba(102,108,255,0.4)]">
          M
        </div>
        <span class="text-[20px] font-bold text-[#3A3541] dark:text-[#E7E3FC] tracking-tight">Materialize</span>
      </a>
    </div>

    <!-- Navigation Menu Items -->
    <div class="flex-1 overflow-y-auto pr-3 py-4 space-y-1.5">
      <div class="px-6 pt-2 pb-1 text-[11px] font-bold uppercase tracking-wider text-[#8A8D93]">Main Menu</div>
      
      <!-- Active Item: M3 Curved right-rounded pill with purple glow -->
      <a href="#" class="h-[44px] pl-6 pr-4 rounded-e-full flex items-center justify-between bg-gradient-to-r from-[#666CFF] to-[#8589FF] text-white font-medium shadow-[0px_4px_8px_0px_rgba(102,108,255,0.4)]">
        <div class="flex items-center gap-3">
          <i class="ti ti-smart-home text-[20px]"></i>
          <span>Dashboard</span>
        </div>
        <i class="ti ti-chevron-right text-xs"></i>
      </a>

      <!-- Parent Menu (Children displayed as top tabs on page) -->
      <a href="#" class="h-[44px] pl-6 pr-4 rounded-e-full flex items-center justify-between text-[#544F5A] dark:text-[#CFCCE4] hover:bg-[#F4F5FA] dark:hover:bg-[#3D3759] transition-all">
        <div class="flex items-center gap-3">
          <i class="ti ti-chart-pie text-[20px] text-[#8A8D93]"></i>
          <span>Analytics & Reports</span>
        </div>
        <i class="ti ti-chevron-right text-xs text-[#8A8D93]"></i>
      </a>

      <!-- Inactive Item -->
      <a href="#" class="h-[44px] pl-6 pr-4 rounded-e-full flex items-center justify-between text-[#544F5A] dark:text-[#CFCCE4] hover:bg-[#F4F5FA] dark:hover:bg-[#3D3759] transition-all">
        <div class="flex items-center gap-3">
          <i class="ti ti-package text-[20px] text-[#8A8D93]"></i>
          <span>Inventory</span>
        </div>
      </a>
    </div>
  </aside>

  <!-- =========================================================================
       2. MAIN CONTENT WRAPPER
       ========================================================================= -->
  <div class="flex-1 flex flex-col pl-[260px] min-h-screen">
    
    <!-- FLOATING MATERIALIZE NAVBAR (Height: 62px, 10px Radius) -->
    <header class="mx-6 mt-3 mb-6 h-[62px] bg-white/80 dark:bg-[#312D4B]/80 backdrop-blur-md rounded-[10px] shadow-[0px_2px_10px_0px_rgba(58,53,65,0.1)] px-5 flex items-center justify-between sticky top-3 z-20">
      <div class="flex items-center gap-3 text-[#8A8D93]">
        <button class="hover:text-[#666CFF]"><i class="ti ti-search text-[20px]"></i></button>
        <span class="text-sm">Search</span>
      </div>
      <div class="flex items-center gap-3">
        <button class="w-9 h-9 rounded-full hover:bg-gray-100 dark:hover:bg-gray-800 flex items-center justify-center text-[#544F5A] dark:text-[#CFCCE4]"><i class="ti ti-sun text-[20px]"></i></button>
        <div class="w-9 h-9 rounded-full bg-[#666CFF] text-white flex items-center justify-center font-bold text-sm shadow-[0_2px_6px_rgba(102,108,255,0.4)]">M</div>
      </div>
    </header>

    <!-- =========================================================================
         3. PAGE BODY WITH MATERIAL HORIZONTAL TABS
         ========================================================================= -->
    <main class="flex-1 px-6 pb-8">
      
      <div class="mb-4">
        <h4 class="text-[22px] font-semibold text-[#3A3541] dark:text-[#E7E3FC]">Inventory & Treatment Audit</h4>
        <p class="text-[13px] text-[#8A8D93]">Material Design 3 Surface Architecture</p>
      </div>

      <!-- MATERIALIZE TOP CHILD TABS (Underline Active Style) -->
      <div class="mb-6 flex items-center gap-6 border-b border-[#E7E7E8] dark:border-[#464066] px-1 overflow-x-auto">
        <!-- Active Tab -->
        <a href="#items" class="pb-3 border-b-2 border-[#666CFF] text-[#666CFF] font-semibold text-[14px] flex items-center gap-2 whitespace-nowrap">
          <i class="ti ti-packages text-[18px]"></i>
          <span>All Items</span>
        </a>
        <!-- Inactive Tab -->
        <a href="#alerts" class="pb-3 border-b-2 border-transparent text-[#8A8D93] hover:text-[#3A3541] dark:hover:text-white font-medium text-[14px] flex items-center gap-2 transition-colors whitespace-nowrap">
          <i class="ti ti-alert-triangle text-[18px]"></i>
          <span>Low Stock Alert</span>
          <span class="bg-[#FF4D49]/15 text-[#FF4D49] text-[11px] font-bold px-1.5 py-0.5 rounded-full">3</span>
        </a>
      </div>

      <!-- MATERIALIZE TABLE SUMMARY (Directly Above Table) -->
      <div class="grid grid-cols-2 sm:grid-cols-4 gap-4 mb-5">
        <div class="bg-white dark:bg-[#312D4B] p-4 rounded-[10px] shadow-[0px_2px_10px_0px_rgba(58,53,65,0.08)] flex items-center justify-between">
          <div>
            <div class="text-[12px] font-semibold text-[#8A8D93] uppercase tracking-wider">Total Items</div>
            <div class="text-[20px] font-bold text-[#3A3541] dark:text-[#E7E3FC] mt-0.5">856</div>
          </div>
          <div class="w-10 h-10 rounded-full bg-[#666CFF]/15 text-[#666CFF] flex items-center justify-center text-lg">
            <i class="ti ti-packages"></i>
          </div>
        </div>
        <div class="bg-white dark:bg-[#312D4B] p-4 rounded-[10px] shadow-[0px_2px_10px_0px_rgba(58,53,65,0.08)] flex items-center justify-between">
          <div>
            <div class="text-[12px] font-semibold text-[#8A8D93] uppercase tracking-wider">In Stock</div>
            <div class="text-[20px] font-bold text-[#72E128] mt-0.5">742</div>
          </div>
          <div class="w-10 h-10 rounded-full bg-[#72E128]/15 text-[#72E128] flex items-center justify-center text-lg">
            <i class="ti ti-check"></i>
          </div>
        </div>
        <div class="bg-white dark:bg-[#312D4B] p-4 rounded-[10px] shadow-[0px_2px_10px_0px_rgba(58,53,65,0.08)] flex items-center justify-between">
          <div>
            <div class="text-[12px] font-semibold text-[#8A8D93] uppercase tracking-wider">Low Stock</div>
            <div class="text-[20px] font-bold text-[#FF4D49] mt-0.5">14</div>
          </div>
          <div class="w-10 h-10 rounded-full bg-[#FF4D49]/15 text-[#FF4D49] flex items-center justify-center text-lg">
            <i class="ti ti-alert-triangle"></i>
          </div>
        </div>
        <div class="bg-white dark:bg-[#312D4B] p-4 rounded-[10px] shadow-[0px_2px_10px_0px_rgba(58,53,65,0.08)] flex items-center justify-between">
          <div>
            <div class="text-[12px] font-semibold text-[#8A8D93] uppercase tracking-wider">Inventory Value</div>
            <div class="text-[20px] font-bold text-[#3A3541] dark:text-[#E7E3FC] mt-0.5">$124,500</div>
          </div>
          <div class="w-10 h-10 rounded-full bg-[#26C6F9]/15 text-[#26C6F9] flex items-center justify-center text-lg">
            <i class="ti ti-coin"></i>
          </div>
        </div>
      </div>

      <!-- MATERIALIZE ELEVATED TABLE WITH TOOLBAR -->
      <div class="bg-white dark:bg-[#312D4B] rounded-[10px] shadow-[0px_2px_10px_0px_rgba(58,53,65,0.1)] overflow-hidden">
        
        <!-- Toolbar (Search, Filter, Export) -->
        <div class="p-5 border-b border-[#E7E7E8] dark:border-[#464066] flex flex-col md:flex-row md:items-center justify-between gap-4">
          <div>
            <h5 class="text-[18px] font-semibold text-[#3A3541] dark:text-[#E7E3FC]">Stock Inventory Management</h5>
            <p class="text-[13px] text-[#8A8D93]">Material M3 Table with real-time filters</p>
          </div>

          <div class="flex flex-wrap items-center gap-3">
            <div class="relative">
              <i class="ti ti-search absolute left-3 top-2.5 text-[#8A8D93]"></i>
              <input type="text" placeholder="Search items..." class="pl-9 pr-3 py-1.5 text-sm bg-[#F4F5FA] dark:bg-[#28243D] border border-[#E7E7E8] dark:border-[#464066] rounded-lg focus:outline-none focus:ring-1 focus:ring-[#666CFF]">
            </div>

            <select class="px-3 py-1.5 text-sm bg-[#F4F5FA] dark:bg-[#28243D] border border-[#E7E7E8] dark:border-[#464066] rounded-lg text-[#544F5A] dark:text-[#CFCCE4] focus:outline-none focus:ring-1 focus:ring-[#666CFF]">
              <option value="">All Categories</option>
              <option value="dermatology">Dermatology</option>
              <option value="laser">Laser Equipment</option>
            </select>

            <button class="h-[36px] px-4 rounded-lg bg-[#666CFF] hover:bg-[#5A5FE0] text-white text-sm font-medium flex items-center gap-1.5 shadow-[0_2px_6px_rgba(102,108,255,0.35)] transition-colors">
              <i class="ti ti-download"></i>
              <span>Export</span>
            </button>
          </div>
        </div>

        <!-- Table -->
        <div class="overflow-x-auto">
          <table class="w-full text-left">
            <thead class="bg-[#F4F5FA] dark:bg-[#28243D] text-[12px] font-bold uppercase tracking-wider text-[#8A8D93] border-b border-[#E7E7E8] dark:border-[#464066]">
              <tr>
                <th class="py-3 px-5">Item Code</th>
                <th class="py-3 px-5">Product Name</th>
                <th class="py-3 px-5">Category</th>
                <th class="py-3 px-5">Unit Price</th>
                <th class="py-3 px-5">Status</th>
                <th class="py-3 px-5 text-right">Actions</th>
              </tr>
            </thead>
            <tbody class="divide-y divide-[#E7E7E8] dark:divide-[#464066] text-sm text-[#544F5A] dark:text-[#CFCCE4]">
              <tr class="hover:bg-[#F4F5FA]/60 dark:hover:bg-[#3D3759]/40">
                <td class="py-3.5 px-5 font-semibold text-[#666CFF]">SKU-9901</td>
                <td class="py-3.5 px-5 font-medium">Hyaluronic Acid Serum (50ml)</td>
                <td class="py-3.5 px-5">Skincare</td>
                <td class="py-3.5 px-5 font-semibold">$65.00</td>
                <td class="py-3.5 px-5">
                  <span class="bg-[#72E128]/15 text-[#72E128] text-xs font-bold px-2 py-0.5 rounded-full">In Stock</span>
                </td>
                <td class="py-3.5 px-5 text-right">
                  <button class="text-[#8A8D93] hover:text-[#666CFF]"><i class="ti ti-dots-vertical"></i></button>
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
