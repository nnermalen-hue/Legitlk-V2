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

Create `.env.local` from `.env.example` and set:
```
VITE_SUPABASE_URL=https://gxbrixisxmzilbizhnem.supabase.co
VITE_SUPABASE_PUBLISHABLE_KEY=<publishable-key>
```
Never put a secret/service-role key in the frontend.

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
Supabase is the backend (Postgres/Auth/Storage/API), not the static React frontend host. Deploy the Vite `dist` output to a static host such as Cloudflare Pages, Netlify or Vercel and configure the two VITE environment variables there. Point `legitlk.com` to that frontend deployment.

## First admin
Create a user in Supabase Auth, then assign that user's UUID the `admin` role in `public.user_roles`. RLS prevents ordinary authenticated users from managing the store.
