# Prantho Admin Core Components (Pure HTML + Tailwind CSS)

100% Framework-Agnostic Vanilla HTML snippets.

---

## 1. Table Summary & Metric Cards (Directly Above Every Table)

Every table MUST have a summary row directly above it to display totals, filtered metrics, and status breakdowns.

### Vuexy Style Table Summary Bar
```html
<!-- Table Summary Metrics -->
<div class="grid grid-cols-2 sm:grid-cols-4 gap-4 mb-4">
  <div class="bg-white dark:bg-[#2F3349] p-4 rounded-md border border-[#DBDADE]/40 dark:border-[#434968] shadow-[0_2px_6px_0_rgba(47,43,61,0.06)] flex items-center justify-between">
    <div>
      <span class="text-[12px] font-semibold text-[#A5A3AE] uppercase tracking-wider">Total Records</span>
      <h5 class="text-[20px] font-bold text-[#5D596C] dark:text-[#E6E5E8] mt-0.5">1,428</h5>
    </div>
    <div class="w-9 h-9 rounded-md bg-[#7367F0]/15 text-[#7367F0] flex items-center justify-center text-lg font-bold">
      <i class="ti ti-database"></i>
    </div>
  </div>

  <div class="bg-white dark:bg-[#2F3349] p-4 rounded-md border border-[#DBDADE]/40 dark:border-[#434968] shadow-[0_2px_6px_0_rgba(47,43,61,0.06)] flex items-center justify-between">
    <div>
      <span class="text-[12px] font-semibold text-[#A5A3AE] uppercase tracking-wider">Completed / Paid</span>
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
      <span class="text-[12px] font-semibold text-[#A5A3AE] uppercase tracking-wider">Total Amount</span>
      <h5 class="text-[20px] font-bold text-[#5D596C] dark:text-[#E6E5E8] mt-0.5">$84,350.00</h5>
    </div>
    <div class="w-9 h-9 rounded-md bg-[#00CFE8]/15 text-[#00CFE8] flex items-center justify-center text-lg font-bold">
      <i class="ti ti-wallet"></i>
    </div>
  </div>
</div>
```

---

## 2. Universal Data Table with Export & Multi-Filter Toolbar

Every table includes a search box, filter dropdowns (Status, Category, Date), and an Export button (CSV, Excel, PDF, Print).

### Vuexy Style Data Table (Complete with Toolbar & Summary)
```html
<!-- COMPLETE VUEXY TABLE COMPONENT -->
<div class="bg-white dark:bg-[#2F3349] rounded-md shadow-[0_2px_6px_0_rgba(47,43,61,0.14),0_0_0_1px_rgba(47,43,61,0.04)] overflow-hidden">
  
  <!-- Table Header Toolbar (Search + Filters + Export) -->
  <div class="p-5 border-b border-[#DBDADE]/50 dark:border-[#434968] flex flex-col md:flex-row md:items-center justify-between gap-4">
    <div>
      <h5 class="text-[18px] font-semibold text-[#5D596C] dark:text-[#E6E5E8]">Invoice & Sales Ledger</h5>
      <p class="text-[13px] text-[#A5A3AE]">Manage, filter, and export detailed records</p>
    </div>

    <!-- Actions Toolbar -->
    <div class="flex flex-wrap items-center gap-2.5">
      <!-- Search Input -->
      <div class="relative">
        <i class="ti ti-search absolute left-3 top-2.5 text-[#A5A3AE] text-base"></i>
        <input type="text" placeholder="Search records..." class="pl-9 pr-4 py-2 text-[14px] bg-[#F8F7FA] dark:bg-[#25293C] border border-[#DBDADE] dark:border-[#434968] rounded-md focus:outline-none focus:ring-1 focus:ring-[#7367F0] w-48 sm:w-60">
      </div>

      <!-- Filter Dropdown: Status -->
      <select class="px-3 py-2 text-[14px] bg-[#F8F7FA] dark:bg-[#25293C] border border-[#DBDADE] dark:border-[#434968] rounded-md text-[#6F6B7D] dark:text-[#B6BEE3] focus:outline-none focus:ring-1 focus:ring-[#7367F0]">
        <option value="">All Statuses</option>
        <option value="paid">Paid</option>
        <option value="pending">Pending</option>
        <option value="cancelled">Cancelled</option>
      </select>

      <!-- Filter Dropdown: Date Range -->
      <select class="px-3 py-2 text-[14px] bg-[#F8F7FA] dark:bg-[#25293C] border border-[#DBDADE] dark:border-[#434968] rounded-md text-[#6F6B7D] dark:text-[#B6BEE3] focus:outline-none focus:ring-1 focus:ring-[#7367F0]">
        <option value="all">All Dates</option>
        <option value="today">Today</option>
        <option value="this-month" selected>This Month</option>
        <option value="last-month">Last Month</option>
      </select>

      <!-- Export Dropdown Button -->
      <div class="relative group">
        <button class="h-[38px] px-4 rounded-md border border-[#DBDADE] dark:border-[#434968] text-[#5D596C] dark:text-[#E6E5E8] hover:bg-[#F2F2F3] dark:hover:bg-[#353A52] text-[14px] font-medium flex items-center gap-2 transition-colors">
          <i class="ti ti-download text-[17px] text-[#A5A3AE]"></i>
          <span>Export</span>
          <i class="ti ti-chevron-down text-xs"></i>
        </button>

        <!-- Export Menu Dropdown -->
        <div class="hidden group-hover:block absolute right-0 mt-1 w-44 bg-white dark:bg-[#2F3349] border border-[#DBDADE]/60 dark:border-[#434968] rounded-md shadow-lg py-1 z-30">
          <a href="#" class="px-4 py-2 text-[13px] text-[#5D596C] dark:text-[#B6BEE3] hover:bg-[#F8F7FA] dark:hover:bg-[#353A52] flex items-center gap-2">
            <i class="ti ti-file-spreadsheet text-emerald-600 text-base"></i> Export to Excel
          </a>
          <a href="#" class="px-4 py-2 text-[13px] text-[#5D596C] dark:text-[#B6BEE3] hover:bg-[#F8F7FA] dark:hover:bg-[#353A52] flex items-center gap-2">
            <i class="ti ti-file-text text-blue-600 text-base"></i> Export to CSV
          </a>
          <a href="#" class="px-4 py-2 text-[13px] text-[#5D596C] dark:text-[#B6BEE3] hover:bg-[#F8F7FA] dark:hover:bg-[#353A52] flex items-center gap-2">
            <i class="ti ti-file-type-pdf text-rose-600 text-base"></i> Export to PDF
          </a>
          <a href="#" class="px-4 py-2 text-[13px] text-[#5D596C] dark:text-[#B6BEE3] hover:bg-[#F8F7FA] dark:hover:bg-[#353A52] flex items-center gap-2">
            <i class="ti ti-printer text-gray-600 text-base"></i> Print Table
          </a>
        </div>
      </div>
    </div>
  </div>

  <!-- Table Body -->
  <div class="overflow-x-auto">
    <table class="w-full text-left">
      <thead class="bg-[#F8F7FA] dark:bg-[#25293C] text-[12px] font-semibold uppercase tracking-wider text-[#5D596C] dark:text-[#B6BEE3] border-b border-[#DBDADE]/50 dark:border-[#434968]">
        <tr>
          <th class="py-3 px-5">Invoice ID</th>
          <th class="py-3 px-5">Customer / Patient</th>
          <th class="py-3 px-5">Service / Treatment</th>
          <th class="py-3 px-5">Date</th>
          <th class="py-3 px-5">Total</th>
          <th class="py-3 px-5">Status</th>
          <th class="py-3 px-5 text-right">Actions</th>
        </tr>
      </thead>
      <tbody class="divide-y divide-[#DBDADE]/40 dark:divide-[#434968]/50 text-[14px]">
        <tr class="hover:bg-[#F8F7FA]/75 dark:hover:bg-[#353A52]/50 transition-colors">
          <td class="py-3.5 px-5 font-semibold text-[#7367F0]">#INV-9204</td>
          <td class="py-3.5 px-5 font-medium text-[#5D596C] dark:text-[#B6BEE3]">Dr. Ashfaq Ahmed</td>
          <td class="py-3.5 px-5 text-[#6F6B7D] dark:text-[#A5A3AE]">HydraFacial Treatment</td>
          <td class="py-3.5 px-5 text-[#A5A3AE]">14 Oct 2026</td>
          <td class="py-3.5 px-5 font-semibold">$340.00</td>
          <td class="py-3.5 px-5">
            <span class="bg-[#28C76F]/15 text-[#28C76F] text-[12px] font-semibold px-2.5 py-0.5 rounded-full">Paid</span>
          </td>
          <td class="py-3.5 px-5 text-right">
            <button class="text-[#A5A3AE] hover:text-[#7367F0] p-1"><i class="ti ti-dots-vertical"></i></button>
          </td>
        </tr>
      </tbody>
    </table>
  </div>

  <!-- Table Pagination Footer -->
  <div class="p-4 border-t border-[#DBDADE]/40 dark:border-[#434968] flex items-center justify-between text-[13px] text-[#A5A3AE]">
    <div>Showing 1 to 10 of 1,428 entries</div>
    <div class="flex items-center gap-1">
      <button class="px-3 py-1 rounded border border-[#DBDADE] dark:border-[#434968] hover:bg-[#F8F7FA] dark:hover:bg-[#353A52] text-[#5D596C] dark:text-[#B6BEE3] disabled:opacity-50">Prev</button>
      <button class="px-3 py-1 rounded bg-[#7367F0] text-white font-medium">1</button>
      <button class="px-3 py-1 rounded border border-[#DBDADE] dark:border-[#434968] hover:bg-[#F8F7FA] dark:hover:bg-[#353A52] text-[#5D596C] dark:text-[#B6BEE3]">2</button>
      <button class="px-3 py-1 rounded border border-[#DBDADE] dark:border-[#434968] hover:bg-[#F8F7FA] dark:hover:bg-[#353A52] text-[#5D596C] dark:text-[#B6BEE3]">Next</button>
    </div>
  </div>
</div>
```

---

## 3. Light / Tint Badges (Vuexy Pill Badges)
```html
<span class="bg-[#7367F0]/15 text-[#7367F0] text-[12px] font-semibold px-2.5 py-0.5 rounded-full">Primary</span>
<span class="bg-[#28C76F]/15 text-[#28C76F] text-[12px] font-semibold px-2.5 py-0.5 rounded-full">Active</span>
<span class="bg-[#FF9F43]/15 text-[#FF9F43] text-[12px] font-semibold px-2.5 py-0.5 rounded-full">Pending</span>
<span class="bg-[#EA5455]/15 text-[#EA5455] text-[12px] font-semibold px-2.5 py-0.5 rounded-full">Cancelled</span>
<span class="bg-[#00CFE8]/15 text-[#00CFE8] text-[12px] font-semibold px-2.5 py-0.5 rounded-full">Draft</span>
```
