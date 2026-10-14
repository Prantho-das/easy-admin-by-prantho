# Prantho Admin Core Components (Pure HTML + Tailwind CSS)

100% Framework-Agnostic Vanilla HTML snippets.

---

## 1. Stat / KPI Cards (Vuexy 1:1 Tinted Icon Box)
```html
<div class="bg-white dark:bg-[#2F3349] p-5 rounded-md shadow-[0_2px_6px_0_rgba(47,43,61,0.14),0_0_0_1px_rgba(47,43,61,0.04)] flex items-center justify-between">
  <div>
    <p class="text-[13px] font-medium text-[#A5A3AE]">Total Revenue</p>
    <h4 class="text-[24px] font-bold text-[#5D596C] dark:text-[#E6E5E8] mt-1">$48,256.00</h4>
    <div class="flex items-center gap-1 text-[#28C76F] text-[13px] font-semibold mt-1">
      <i class="ti ti-arrow-up-right"></i>
      <span>+12.8%</span>
      <span class="text-[#A5A3AE] font-normal">vs last month</span>
    </div>
  </div>
  <div class="w-11 h-11 rounded-md bg-[#7367F0]/15 text-[#7367F0] flex items-center justify-center text-[22px]">
    <i class="ti ti-currency-dollar"></i>
  </div>
</div>
```

---

## 2. Data Table (Vuexy 1:1 Ledger)
```html
<div class="bg-white dark:bg-[#2F3349] rounded-md shadow-[0_2px_6px_0_rgba(47,43,61,0.14),0_0_0_1px_rgba(47,43,61,0.04)] overflow-hidden">
  <div class="p-5 border-b border-[#DBDADE]/50 dark:border-[#434968] flex items-center justify-between">
    <h5 class="text-[18px] font-semibold text-[#5D596C] dark:text-[#E6E5E8]">Recent Transactions</h5>
    <input type="text" placeholder="Search..." class="px-3 py-1.5 text-sm bg-[#F8F7FA] dark:bg-[#25293C] border border-[#DBDADE] dark:border-[#434968] rounded-md focus:outline-none focus:ring-1 focus:ring-[#7367F0]">
  </div>
  <table class="w-full text-left">
    <thead class="bg-[#F8F7FA] dark:bg-[#25293C] text-[12px] font-semibold uppercase tracking-wider text-[#5D596C] dark:text-[#B6BEE3] border-b border-[#DBDADE]/50 dark:border-[#434968]">
      <tr>
        <th class="py-3 px-5">Invoice</th>
        <th class="py-3 px-5">Customer</th>
        <th class="py-3 px-5">Amount</th>
        <th class="py-3 px-5">Status</th>
        <th class="py-3 px-5 text-right">Actions</th>
      </tr>
    </thead>
    <tbody class="divide-y divide-[#DBDADE]/40 dark:divide-[#434968]/50 text-[14px]">
      <tr class="hover:bg-[#F8F7FA]/75 dark:hover:bg-[#353A52]/50 transition-colors">
        <td class="py-3.5 px-5 font-semibold text-[#7367F0]">#INV-9204</td>
        <td class="py-3.5 px-5 text-[#5D596C] dark:text-[#B6BEE3]">Dr. Ashfaq Ahmed</td>
        <td class="py-3.5 px-5 font-medium">$340.00</td>
        <td class="py-3.5 px-5">
          <span class="bg-[#28C76F]/15 text-[#28C76F] text-[12px] font-semibold px-2.5 py-0.5 rounded-full">Paid</span>
        </td>
        <td class="py-3.5 px-5 text-right">
          <button class="text-[#A5A3AE] hover:text-[#7367F0]"><i class="ti ti-dots-vertical"></i></button>
        </td>
      </tr>
    </tbody>
  </table>
</div>
```

---

## 3. Light / Tint Badges (Vuexy Pill Badges)
```html
<!-- Primary -->
<span class="bg-[#7367F0]/15 text-[#7367F0] text-[12px] font-semibold px-2.5 py-0.5 rounded-full">Primary</span>

<!-- Success -->
<span class="bg-[#28C76F]/15 text-[#28C76F] text-[12px] font-semibold px-2.5 py-0.5 rounded-full">Active</span>

<!-- Warning -->
<span class="bg-[#FF9F43]/15 text-[#FF9F43] text-[12px] font-semibold px-2.5 py-0.5 rounded-full">Pending</span>

<!-- Danger -->
<span class="bg-[#EA5455]/15 text-[#EA5455] text-[12px] font-semibold px-2.5 py-0.5 rounded-full">Cancelled</span>

<!-- Info -->
<span class="bg-[#00CFE8]/15 text-[#00CFE8] text-[12px] font-semibold px-2.5 py-0.5 rounded-full">Draft</span>
```
