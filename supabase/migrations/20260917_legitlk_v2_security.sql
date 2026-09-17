-- LegitLK V2 production backend hardening.
-- Applied to project gxbrixisxmzilbizhnem on 2026-09-17.

update public.site_settings
set site_name='LegitLK',
    contact_email='support@legitlk.com',
    footer_text='Premium digital products marketplace.',
    seo_title='LegitLK — Premium Digital Products Marketplace',
    version_label='V2',
    updated_at=now()
where id=1;

-- Least-privilege grants for the public storefront.
revoke insert, update, delete, truncate on public.products, public.categories, public.site_settings, public.user_roles from anon;
revoke update, delete, truncate on public.reviews from anon;
revoke update, delete, truncate, select on public.orders from anon;
grant select on public.products, public.categories, public.site_settings, public.reviews to anon;
grant insert on public.orders, public.reviews to anon;
revoke select, references, trigger on public.user_roles from anon;
revoke references, trigger on public.products, public.categories, public.site_settings, public.reviews, public.orders from anon;

-- Existing RLS policies remain authoritative for row-level access.
