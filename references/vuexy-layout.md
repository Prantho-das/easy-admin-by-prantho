# Vuexy 1:1 Pixel-Perfect Pure HTML Layout (Framework-Agnostic)

This template is 100% Pure HTML + Tailwind CSS. You can copy and paste this into ANY project (HTML, Laravel, Vue, React, Next.js, Nuxt, Django, Asp.Net).

```html
<!DOCTYPE html>
<html lang="en" data-theme="vuexy" class="h-full">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Vuexy Admin Dashboard</title>
  
  <!-- Tailwind CSS CDN (For instant preview or copy-paste into existing Tailwind setup) -->
  <script src="https://cdn.tailwindcss.com"></script>
  
  <!-- Google Font: Public Sans (Vuexy Standard) -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,400&display=swap" rel="stylesheet">
  
  <!-- Tabler Icons (Vuexy Standard) -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@tabler/icons-webfont@latest/tabler-icons.min.css">

  <style>
    body { font-family: 'Public Sans', sans-serif; }
  </style>
</head>
<body class="bg-[#F8F7FA] dark:bg-[#25293C] text-[#6F6B7D] dark:text-[#B6BEE3] min-h-full flex text-[15px] antialiased">

  <!-- =========================================================================
       1. VUEXY SIDEBAR (Width: 260px Fixed)
       ========================================================================= -->
  <aside class="w-[260px] bg-white dark:bg-[#2F3349] border-r border-[#DBDADE]/50 dark:border-[#434968] flex-shrink-0 flex flex-col fixed inset-y-0 left-0 z-30 shadow-[0_0_15px_0_rgba(34,41,47,0.05)]">
    <!-- Brand / Logo Area -->
    <div class="h-[64px] px-6 flex items-center justify-between border-b border-[#DBDADE]/30 dark:border-[#434968]">
      <a href="#" class="flex items-center gap-3">
        <svg width="32" height="22" viewBox="0 0 32 22" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path fill-rule="evenodd" clip-rule="evenodd" d="M0.00172773 0V6.85398C0.00172773 6.85398 -0.133178 9.01207 1.98092 10.8388L13.6912 21.9964L19.7809 21.9181L18.8042 9.88248L16.4951 7.17289L9.23799 0H0.00172773Z" fill="#7367F0"/>
          <path opacity="0.06" fill-rule="evenodd" clip-rule="evenodd" d="M7.69824 16.4364L12.5199 3.23696L16.5541 7.25596L7.69824 16.4364Z" fill="#161616"/>
          <path opacity="0.04" fill-rule="evenodd" clip-rule="evenodd" d="M8.07751 15.9175L13.9419 4.63989L16.5849 7.28475L8.07751 15.9175Z" fill="#161616"/>
          <path fill-rule="evenodd" clip-rule="evenodd" d="M7.77295 16.3566L23.6563 0H32V6.88383C32 6.88383 31.8262 9.17836 30.6591 10.4057L19.7824 22H13.6938L7.77295 16.3566Z" fill="#7367F0"/>
        </svg>
        <span class="text-[20px] font-bold text-[#5D596C] dark:text-[#E6E5E8] tracking-tight">Vuexy</span>
      </a>
      <button class="text-[#A5A3AE] hover:text-[#7367F0] hidden lg:block">
        <i class="ti ti-circle-dot text-[18px]"></i>
      </button>
    </div>

    <!-- Navigation Menu Items -->
    <div class="flex-1 overflow-y-auto px-4 py-4 space-y-1">
      <div class="px-3 pt-3 pb-1 text-[11px] font-semibold uppercase tracking-wider text-[#A5A3AE]">Dashboards & Apps</div>
      
      <!-- Active Menu Item (Vuexy Signature Gradient + Glow) -->
      <a href="#" class="h-[44px] px-4 rounded-md flex items-center justify-between bg-gradient-to-r from-[#7367F0] to-[#7367F0]/80 text-white font-medium shadow-[0px_2px_6px_0px_rgba(115,103,240,0.48)]">
        <div class="flex items-center gap-3">
          <i class="ti ti-smart-home text-[20px]"></i>
          <span>Dashboard</span>
        </div>
        <span class="bg-[#EA5455] text-white text-[11px] font-semibold px-2 py-0.5 rounded-full">5</span>
      </a>

      <!-- Parent Menu with Children (Submenu items will appear as Top Tabs on the page!) -->
      <a href="#" class="h-[44px] px-4 rounded-md flex items-center justify-between text-[#5D596C] dark:text-[#B6BEE3] hover:bg-[#F2F2F3] dark:hover:bg-[#353A52] transition-colors">
        <div class="flex items-center gap-3">
          <i class="ti ti-chart-bar text-[20px] text-[#A5A3AE]"></i>
          <span>Reports & Analytics</span>
        </div>
        <i class="ti ti-chevron-right text-[14px] text-[#A5A3AE]"></i>
      </a>

      <!-- Inactive Menu Item -->
      <a href="#" class="h-[44px] px-4 rounded-md flex items-center justify-between text-[#5D596C] dark:text-[#B6BEE3] hover:bg-[#F2F2F3] dark:hover:bg-[#353A52] transition-colors">
        <div class="flex items-center gap-3">
          <i class="ti ti-users text-[20px] text-[#A5A3AE]"></i>
          <span>Customers</span>
        </div>
      </a>
    </div>
  </aside>

  <!-- =========================================================================
       2. MAIN CONTENT WRAPPER
       ========================================================================= -->
  <div class="flex-1 flex flex-col pl-[260px] min-h-screen">
    
    <!-- FLOATING VUEXY NAVBAR (Height: 62px, Floating Glassmorphism) -->
    <header class="mx-6 mt-3 mb-6 h-[62px] bg-white/80 dark:bg-[#2F3349]/80 backdrop-blur-md rounded-md shadow-[0_2px_6px_0_rgba(47,43,61,0.14)] px-5 flex items-center justify-between sticky top-3 z-20 border border-white/40 dark:border-[#434968]">
      <div class="flex items-center gap-4 text-[#A5A3AE]">
        <button class="hover:text-[#7367F0]"><i class="ti ti-search text-[22px]"></i></button>
        <span class="text-sm">Search (Ctrl+/)</span>
      </div>
      <div class="flex items-center gap-3">
        <button class="w-9 h-9 rounded-full hover:bg-gray-100 dark:hover:bg-gray-800 flex items-center justify-center text-[#5D596C] dark:text-[#B6BEE3]"><i class="ti ti-sun text-[20px]"></i></button>
        <button class="w-9 h-9 rounded-full hover:bg-gray-100 dark:hover:bg-gray-800 flex items-center justify-center text-[#5D596C] dark:text-[#B6BEE3] relative">
          <i class="ti ti-bell text-[20px]"></i>
          <span class="absolute top-2 right-2 w-2 h-2 bg-[#EA5455] rounded-full"></span>
        </button>
        <div class="w-9 h-9 rounded-full bg-[#7367F0]/20 text-[#7367F0] flex items-center justify-center font-bold text-sm">PA</div>
      </div>
    </header>

    <!-- =========================================================================
         3. PAGE BODY WITH CHILD HORIZONTAL TABS
         ========================================================================= -->
    <main class="flex-1 px-6 pb-8">
      
      <!-- Page Title -->
      <div class="mb-4">
        <h4 class="text-[22px] font-semibold text-[#5D596C] dark:text-[#E6E5E8]">Advance Sales & VAT Report</h4>
        <p class="text-[13px] text-[#A5A3AE]">Detailed audit breakdown and daily ledger</p>
      </div>

      <!-- VUEXY TOP HORIZONTAL CHILD NAVIGATION TABS -->
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
      </div>

      <!-- STAT CARDS (Vuexy 1:1 Tinted Icon Containers) -->
      <div class="grid grid-cols-1 md:grid-cols-4 gap-6 mb-6">
        <div class="bg-white dark:bg-[#2F3349] p-5 rounded-md shadow-[0_2px_6px_0_rgba(47,43,61,0.14),0_0_0_1px_rgba(47,43,61,0.04)] flex items-center justify-between">
          <div>
            <div class="text-[13px] font-medium text-[#A5A3AE]">Total Sales</div>
            <div class="text-[24px] font-bold text-[#5D596C] dark:text-[#E6E5E8] mt-1">$48,256</div>
            <div class="flex items-center gap-1 text-[13px] text-[#28C76F] font-semibold mt-1">
              <i class="ti ti-trending-up"></i>
              <span>+18.2%</span>
            </div>
          </div>
          <div class="w-11 h-11 rounded-md bg-[#7367F0]/15 text-[#7367F0] flex items-center justify-center text-[22px]">
            <i class="ti ti-currency-dollar"></i>
          </div>
        </div>
      </div>

      <!-- VUEXY TABLE SUMMARY BAR (Directly Above Table) -->
      <div class="grid grid-cols-2 sm:grid-cols-4 gap-4 mb-4">
        <div class="bg-white dark:bg-[#2F3349] p-4 rounded-md border border-[#DBDADE]/40 dark:border-[#434968] shadow-[0_2px_6px_0_rgba(47,43,61,0.06)] flex items-center justify-between">
          <div>
            <span class="text-[12px] font-semibold text-[#A5A3AE] uppercase tracking-wider">Total Invoices</span>
            <h5 class="text-[20px] font-bold text-[#5D596C] dark:text-[#E6E5E8] mt-0.5">1,428</h5>
          </div>
          <div class="w-9 h-9 rounded-md bg-[#7367F0]/15 text-[#7367F0] flex items-center justify-center text-lg font-bold">
            <i class="ti ti-file-analytics"></i>
          </div>
        </div>
        <div class="bg-white dark:bg-[#2F3349] p-4 rounded-md border border-[#DBDADE]/40 dark:border-[#434968] shadow-[0_2px_6px_0_rgba(47,43,61,0.06)] flex items-center justify-between">
          <div>
            <span class="text-[12px] font-semibold text-[#A5A3AE] uppercase tracking-wider">Paid / Cleared</span>
            <h5 class="text-[20px] font-bold text-[#28C76F] mt-0.5">1,120</h5>
          </div>
          <div class="w-9 h-9 rounded-md bg-[#28C76F]/15 text-[#28C76F] flex items-center justify-center text-lg font-bold">
            <i class="ti ti-circle-check"></i>
          </div>
        </div>
        <div class="bg-white dark:bg-[#2F3349] p-4 rounded-md border border-[#DBDADE]/40 dark:border-[#434968] shadow-[0_2px_6px_0_rgba(47,43,61,0.06)] flex items-center justify-between">
          <div>
            <span class="text-[12px] font-semibold text-[#A5A3AE] uppercase tracking-wider">Pending / Due</span>
            <h5 class="text-[20px] font-bold text-[#FF9F43] mt-0.5">248</h5>
          </div>
          <div class="w-9 h-9 rounded-md bg-[#FF9F43]/15 text-[#FF9F43] flex items-center justify-center text-lg font-bold">
            <i class="ti ti-clock"></i>
          </div>
        </div>
        <div class="bg-white dark:bg-[#2F3349] p-4 rounded-md border border-[#DBDADE]/40 dark:border-[#434968] shadow-[0_2px_6px_0_rgba(47,43,61,0.06)] flex items-center justify-between">
          <div>
            <span class="text-[12px] font-semibold text-[#A5A3AE] uppercase tracking-wider">Total Volume</span>
            <h5 class="text-[20px] font-bold text-[#5D596C] dark:text-[#E6E5E8] mt-0.5">$84,350.00</h5>
          </div>
          <div class="w-9 h-9 rounded-md bg-[#00CFE8]/15 text-[#00CFE8] flex items-center justify-center text-lg font-bold">
            <i class="ti ti-currency-dollar"></i>
          </div>
        </div>
      </div>

      <!-- DATA TABLE (Vuexy 1:1 Clean Ledger with Filters and Export) -->
      <div class="bg-white dark:bg-[#2F3349] rounded-md shadow-[0_2px_6px_0_rgba(47,43,61,0.14),0_0_0_1px_rgba(47,43,61,0.04)] overflow-hidden">
        
        <!-- Table Toolbar -->
        <div class="p-5 border-b border-[#DBDADE]/50 dark:border-[#434968] flex flex-col md:flex-row md:items-center justify-between gap-4">
          <div>
            <h5 class="text-[18px] font-semibold text-[#5D596C] dark:text-[#E6E5E8]">Transactions Ledger</h5>
            <p class="text-[13px] text-[#A5A3AE]">Filter and export transaction entries</p>
          </div>
          
          <div class="flex flex-wrap items-center gap-2.5">
            <!-- Search -->
            <div class="relative">
              <i class="ti ti-search absolute left-3 top-2.5 text-[#A5A3AE] text-base"></i>
              <input type="text" placeholder="Search invoice..." class="pl-9 pr-3 py-1.5 text-[14px] bg-[#F8F7FA] dark:bg-[#25293C] border border-[#DBDADE] dark:border-[#434968] rounded-md focus:outline-none focus:ring-1 focus:ring-[#7367F0] w-44 sm:w-52">
            </div>

            <!-- Status Filter -->
            <select class="px-3 py-1.5 text-[13px] bg-[#F8F7FA] dark:bg-[#25293C] border border-[#DBDADE] dark:border-[#434968] rounded-md text-[#6F6B7D] dark:text-[#B6BEE3] focus:outline-none focus:ring-1 focus:ring-[#7367F0]">
              <option value="">All Statuses</option>
              <option value="paid">Paid</option>
              <option value="pending">Pending</option>
            </select>

            <!-- Export Button with Dropdown -->
            <div class="relative group">
              <button class="h-[34px] px-3.5 rounded-md border border-[#DBDADE] dark:border-[#434968] text-[#5D596C] dark:text-[#E6E5E8] hover:bg-[#F2F2F3] dark:hover:bg-[#353A52] text-[13px] font-medium flex items-center gap-1.5 transition-colors">
                <i class="ti ti-download text-[16px] text-[#A5A3AE]"></i>
                <span>Export</span>
                <i class="ti ti-chevron-down text-xs"></i>
              </button>
              <div class="hidden group-hover:block absolute right-0 mt-1 w-40 bg-white dark:bg-[#2F3349] border border-[#DBDADE]/60 dark:border-[#434968] rounded-md shadow-lg py-1 z-30">
                <a href="#" class="px-3.5 py-1.5 text-[13px] text-[#5D596C] dark:text-[#B6BEE3] hover:bg-[#F8F7FA] dark:hover:bg-[#353A52] flex items-center gap-2">
                  <i class="ti ti-file-spreadsheet text-emerald-600"></i> Excel
                </a>
                <a href="#" class="px-3.5 py-1.5 text-[13px] text-[#5D596C] dark:text-[#B6BEE3] hover:bg-[#F8F7FA] dark:hover:bg-[#353A52] flex items-center gap-2">
                  <i class="ti ti-file-text text-blue-600"></i> CSV
                </a>
                <a href="#" class="px-3.5 py-1.5 text-[13px] text-[#5D596C] dark:text-[#B6BEE3] hover:bg-[#F8F7FA] dark:hover:bg-[#353A52] flex items-center gap-2">
                  <i class="ti ti-file-type-pdf text-rose-600"></i> PDF
                </a>
              </div>
            </div>
          </div>
        </div>

        <!-- Table Element -->
        <table class="w-full text-left">
          <thead class="bg-[#F8F7FA] dark:bg-[#25293C] text-[12px] font-semibold uppercase tracking-wider text-[#5D596C] dark:text-[#B6BEE3] border-b border-[#DBDADE]/50 dark:border-[#434968]">
            <tr>
              <th class="py-3 px-5">Invoice</th>
              <th class="py-3 px-5">Client</th>
              <th class="py-3 px-5">Total</th>
              <th class="py-3 px-5">Status</th>
              <th class="py-3 px-5 text-right">Actions</th>
            </tr>
          </thead>
          <tbody class="divide-y divide-[#DBDADE]/40 dark:divide-[#434968]/50 text-[14px]">
            <tr class="hover:bg-[#F8F7FA]/75 dark:hover:bg-[#353A52]/50 transition-colors">
              <td class="py-3.5 px-5 font-semibold text-[#7367F0]">#INV-5021</td>
              <td class="py-3.5 px-5 text-[#5D596C] dark:text-[#B6BEE3]">Aesthetic Skin Clinic</td>
              <td class="py-3.5 px-5 font-medium">$850.00</td>
              <td class="py-3.5 px-5">
                <span class="bg-[#28C76F]/15 text-[#28C76F] text-[12px] font-semibold px-2.5 py-0.5 rounded-full">Completed</span>
              </td>
              <td class="py-3.5 px-5 text-right">
                <button class="text-[#A5A3AE] hover:text-[#7367F0]"><i class="ti ti-dots-vertical"></i></button>
              </td>
            </tr>
          </tbody>
        </table>
      </div>

    </main>
  </div>
</body>
</html>
```
