# LegitLK V2

A fresh React + TypeScript storefront and admin dashboard powered by hosted Supabase.

## Features
- Premium responsive storefront
- Product/category browsing
- Offers and product details
- Secure `/nermalen` admin login
- Admin overview, products, add product, orders and categories
- Supabase Database, Auth and Storage integration
- RLS-backed access model

## Supabase
Project ref: `gxbrixisxmzilbizhnem`

Production is already configured in `.env.production` with the hosted Supabase project URL and its browser-safe publishable key. For local overrides, create `.env.local` from `.env.example`.

Never put a secret/service-role key in frontend code.

## Run
```
npm install
npm run dev
```

## Build
```
npm run build
```

## Production hosting
Supabase is the production backend (Postgres/Auth/Storage/Data API), not the static React frontend host. Supabase's current documentation explicitly says Edge Functions are for APIs/data processing rather than serving frontend HTML. Deploy the Vite `dist` output to a frontend host such as Vercel, Netlify or Cloudflare Pages and point the site domain to that deployment.

## First admin
There are currently no Supabase Auth users. Create/sign up the first user, then assign that user's UUID the `admin` role in `public.user_roles`. RLS prevents ordinary authenticated users from managing the store.
