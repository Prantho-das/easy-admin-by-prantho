:root {
  /* ==========================================================================
     1. VUEXY PIXEL-PERFECT TOKENS (PIXINVENT VUEXY v9+)
     ========================================================================== */
  --vx-primary: #7367F0;
  --vx-primary-rgb: 115, 103, 240;
  --vx-primary-gradient: linear-gradient(72.47deg, #7367F0 22.16%, rgba(115, 103, 240, 0.7) 76.47%);
  --vx-primary-light: #EAE8FD;
  --vx-secondary: #A8AAAE;
  --vx-success: #28C76F;
  --vx-danger: #EA5455;
  --vx-warning: #FF9F43;
  --vx-info: #00CFE8;
  --vx-dark: #4B4B4B;
  --vx-body-bg: #F8F7FA;
  --vx-card-bg: #FFFFFF;
  --vx-sidebar-bg: #FFFFFF;
  --vx-sidebar-semi-dark: #2F3349;
  --vx-text-heading: #5D596C;
  --vx-text-body: #6F6B7D;
  --vx-text-muted: #A5A3AE;
  --vx-border: #DBDADE;
  --vx-card-shadow: 0 2px 6px 0 rgba(47, 43, 61, 0.14), 0 0 0 1px rgba(47, 43, 61, 0.04);
  --vx-active-shadow: 0px 2px 6px 0px rgba(115, 103, 240, 0.48);

  /* ==========================================================================
     2. MATERIALIZE PIXEL-PERFECT TOKENS (PIXINVENT MATERIAL 3)
     ========================================================================== */
  --mat-primary: #666CFF;
  --mat-primary-rgb: 102, 108, 255;
  --mat-primary-gradient: linear-gradient(98deg, #C6A7FE 0%, #9155FD 100%);
  --mat-primary-light: #EEEEFF;
  --mat-secondary: #6D788D;
  --mat-success: #72E128;
  --mat-danger: #FF4D49;
  --mat-warning: #FDB528;
  --mat-info: #26C6F9;
  --mat-body-bg: #F4F5FA;
  --mat-card-bg: #FFFFFF;
  --mat-sidebar-bg: #FFFFFF;
  --mat-sidebar-dark: #28243D;
  --mat-text-heading: #3A3541;
  --mat-text-body: #544F5A;
  --mat-border: #E7E7E8;
  --mat-card-shadow: 0px 2px 10px 0px rgba(58, 53, 65, 0.1);
  --mat-active-shadow: 0px 4px 8px 0px rgba(102, 108, 255, 0.4);

  /* ==========================================================================
     3. FUSE REACT PIXEL-PERFECT TOKENS (WITHINPIXELS FUSE)
     ========================================================================== */
  --fuse-primary: #4F46E5;
  --fuse-primary-rgb: 79, 70, 229;
  --fuse-primary-gradient: linear-gradient(135deg, #4F46E5, #6366F1);
  --fuse-body-bg: #F1F5F9;
  --fuse-card-bg: #FFFFFF;
  --fuse-sidebar-bg: #0F172A;
  --fuse-sidebar-text: #94A3B8;
  --fuse-text-heading: #0F172A;
  --fuse-text-body: #334155;
  --fuse-border: #E2E8F0;
  --fuse-card-shadow: 0 1px 3px 0 rgba(0, 0, 0, 0.05), 0 1px 2px -1px rgba(0, 0, 0, 0.05);
}

/* ==========================================================================
   THEME MAPPINGS VIA DATA-THEME ATTRIBUTE
   ========================================================================== */
[data-theme="vuexy"], :root {
  --color-primary: var(--vx-primary-rgb);
  --primary-hex: var(--vx-primary);
  --primary-gradient: var(--vx-primary-gradient);
  --bg-body: var(--vx-body-bg);
  --bg-card: var(--vx-card-bg);
  --bg-sidebar: var(--vx-sidebar-bg);
  --text-heading: var(--vx-text-heading);
  --text-body: var(--vx-text-body);
  --border-subtle: var(--vx-border);
  --shadow-card: var(--vx-card-shadow);
  --shadow-active: var(--vx-active-shadow);
  --radius-card: 0.375rem; /* 6px */
}

[data-theme="vuexy-semi-dark"] {
  --color-primary: var(--vx-primary-rgb);
  --primary-hex: var(--vx-primary);
  --primary-gradient: var(--vx-primary-gradient);
  --bg-body: var(--vx-body-bg);
  --bg-card: var(--vx-card-bg);
  --bg-sidebar: var(--vx-sidebar-semi-dark);
  --text-heading: var(--vx-text-heading);
  --text-body: var(--vx-text-body);
  --border-subtle: var(--vx-border);
  --shadow-card: var(--vx-card-shadow);
  --shadow-active: var(--vx-active-shadow);
  --radius-card: 0.375rem;
}

[data-theme="materialize"] {
  --color-primary: var(--mat-primary-rgb);
  --primary-hex: var(--mat-primary);
  --primary-gradient: var(--mat-primary-gradient);
  --bg-body: var(--mat-body-bg);
  --bg-card: var(--mat-card-bg);
  --bg-sidebar: var(--mat-sidebar-bg);
  --text-heading: var(--mat-text-heading);
  --text-body: var(--mat-text-body);
  --border-subtle: var(--mat-border);
  --shadow-card: var(--mat-card-shadow);
  --shadow-active: var(--mat-active-shadow);
  --radius-card: 0.625rem; /* 10px */
}

[data-theme="fuse"] {
  --color-primary: var(--fuse-primary-rgb);
  --primary-hex: var(--fuse-primary);
  --primary-gradient: var(--fuse-primary-gradient);
  --bg-body: var(--fuse-body-bg);
  --bg-card: var(--fuse-card-bg);
  --bg-sidebar: var(--fuse-sidebar-bg);
  --text-heading: var(--fuse-text-heading);
  --text-body: var(--fuse-text-body);
  --border-subtle: var(--fuse-border);
  --shadow-card: var(--fuse-card-shadow);
  --shadow-active: 0 4px 12px rgba(79, 70, 229, 0.35);
  --radius-card: 1rem; /* 16px */
}
