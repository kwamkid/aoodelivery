--
-- PostgreSQL database dump
--

\restrict 6gbV7pRSEEIpMBPAMgmwUhePE9xO3pJfgZf1AlwCA0naaLT4PTBlvRv920OTVH0

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.8 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP EVENT TRIGGER IF EXISTS pgrst_drop_watch;
DROP EVENT TRIGGER IF EXISTS pgrst_ddl_watch;
DROP EVENT TRIGGER IF EXISTS issue_pg_net_access;
DROP EVENT TRIGGER IF EXISTS issue_pg_graphql_access;
DROP EVENT TRIGGER IF EXISTS issue_pg_cron_access;
DROP EVENT TRIGGER IF EXISTS issue_graphql_placeholder;
DROP PUBLICATION IF EXISTS supabase_realtime_messages_publication;
DROP PUBLICATION IF EXISTS supabase_realtime;
DROP POLICY IF EXISTS "Service role can upload chat media" ON storage.objects;
DROP POLICY IF EXISTS "Service role can manage chat media" ON storage.objects;
DROP POLICY IF EXISTS "Service role can delete chat media" ON storage.objects;
DROP POLICY IF EXISTS "Public read payment slips" ON storage.objects;
DROP POLICY IF EXISTS "Public read access for product images" ON storage.objects;
DROP POLICY IF EXISTS "Public read access for chat media" ON storage.objects;
DROP POLICY IF EXISTS "Authenticated users can upload product images" ON storage.objects;
DROP POLICY IF EXISTS "Authenticated users can update product images" ON storage.objects;
DROP POLICY IF EXISTS "Authenticated users can delete product images" ON storage.objects;
DROP POLICY IF EXISTS "Anyone can upload payment slips" ON storage.objects;
DROP POLICY IF EXISTS service_role_all_access ON public.user_profiles;
DROP POLICY IF EXISTS allow_update_own_profile ON public.user_profiles;
DROP POLICY IF EXISTS allow_read_all_profiles ON public.user_profiles;
DROP POLICY IF EXISTS allow_insert_own_profile ON public.user_profiles;
DROP POLICY IF EXISTS admin_all_access ON public.user_profiles;
DROP POLICY IF EXISTS "Users can view payment records" ON public.payment_records;
DROP POLICY IF EXISTS "Users can update payment records" ON public.payment_records;
DROP POLICY IF EXISTS "Users can update own profile" ON public.user_profiles;
DROP POLICY IF EXISTS "Users can insert payment records" ON public.payment_records;
DROP POLICY IF EXISTS "Service role has full access" ON public.user_profiles;
DROP POLICY IF EXISTS "Service role bypass stock_lots" ON public.stock_lots;
DROP POLICY IF EXISTS "Service role bypass stock_lot_usages" ON public.stock_lot_usages;
DROP POLICY IF EXISTS "Service role bypass sellable_products" ON public.products;
DROP POLICY IF EXISTS "Service role bypass sellable_product_variations" ON public.product_variations;
DROP POLICY IF EXISTS "Service role bypass finished_goods" ON public.finished_goods;
DROP POLICY IF EXISTS "Sales and Admin can manage orders" ON public.sales_orders;
DROP POLICY IF EXISTS "Sales and Admin can manage order items" ON public.sales_order_items;
DROP POLICY IF EXISTS "Sales and Admin can manage customers" ON public.customers;
DROP POLICY IF EXISTS "Sales and Admin can manage activities" ON public.customer_activities;
DROP POLICY IF EXISTS "Sales and Admin can manage LINE users" ON public.line_users;
DROP POLICY IF EXISTS "Sales and Admin can manage LINE groups" ON public.line_groups;
DROP POLICY IF EXISTS "Production team can view inventory" ON public.inventory_batches;
DROP POLICY IF EXISTS "Production team can manage QC" ON public.quality_tests;
DROP POLICY IF EXISTS "Manager up can view supplier materials" ON public.supplier_materials;
DROP POLICY IF EXISTS "Manager can view orders" ON public.sales_orders;
DROP POLICY IF EXISTS "Authenticated users can view all profiles" ON public.user_profiles;
DROP POLICY IF EXISTS "Allow read variation_types" ON public.variation_types;
DROP POLICY IF EXISTS "Allow authenticated users to view shipping_addresses" ON public.shipping_addresses;
DROP POLICY IF EXISTS "Allow authenticated users to view price_lists" ON public.price_lists;
DROP POLICY IF EXISTS "Allow authenticated users to view payments" ON public.payments;
DROP POLICY IF EXISTS "Allow authenticated users to view orders" ON public.orders;
DROP POLICY IF EXISTS "Allow authenticated users to view order_shipments" ON public.order_shipments;
DROP POLICY IF EXISTS "Allow authenticated users to view order_items" ON public.order_items;
DROP POLICY IF EXISTS "Allow authenticated users to view line_message_templates" ON public.line_message_templates;
DROP POLICY IF EXISTS "Allow authenticated users to view line_message_logs" ON public.line_message_logs;
DROP POLICY IF EXISTS "Allow authenticated users to view customers" ON public.customers;
DROP POLICY IF EXISTS "Allow authenticated users to update shipping_addresses" ON public.shipping_addresses;
DROP POLICY IF EXISTS "Allow authenticated users to update price_lists" ON public.price_lists;
DROP POLICY IF EXISTS "Allow authenticated users to update payments" ON public.payments;
DROP POLICY IF EXISTS "Allow authenticated users to update orders" ON public.orders;
DROP POLICY IF EXISTS "Allow authenticated users to update order_shipments" ON public.order_shipments;
DROP POLICY IF EXISTS "Allow authenticated users to update order_items" ON public.order_items;
DROP POLICY IF EXISTS "Allow authenticated users to update line_message_templates" ON public.line_message_templates;
DROP POLICY IF EXISTS "Allow authenticated users to update customers" ON public.customers;
DROP POLICY IF EXISTS "Allow authenticated users to read crm_settings" ON public.crm_settings;
DROP POLICY IF EXISTS "Allow authenticated users to insert shipping_addresses" ON public.shipping_addresses;
DROP POLICY IF EXISTS "Allow authenticated users to insert price_lists" ON public.price_lists;
DROP POLICY IF EXISTS "Allow authenticated users to insert payments" ON public.payments;
DROP POLICY IF EXISTS "Allow authenticated users to insert orders" ON public.orders;
DROP POLICY IF EXISTS "Allow authenticated users to insert order_shipments" ON public.order_shipments;
DROP POLICY IF EXISTS "Allow authenticated users to insert order_items" ON public.order_items;
DROP POLICY IF EXISTS "Allow authenticated users to insert line_message_templates" ON public.line_message_templates;
DROP POLICY IF EXISTS "Allow authenticated users to insert line_message_logs" ON public.line_message_logs;
DROP POLICY IF EXISTS "Allow authenticated users to insert customers" ON public.customers;
DROP POLICY IF EXISTS "Allow authenticated users to delete shipping_addresses" ON public.shipping_addresses;
DROP POLICY IF EXISTS "Allow authenticated users to delete price_lists" ON public.price_lists;
DROP POLICY IF EXISTS "Allow authenticated users to delete payments" ON public.payments;
DROP POLICY IF EXISTS "Allow authenticated users to delete orders" ON public.orders;
DROP POLICY IF EXISTS "Allow authenticated users to delete order_shipments" ON public.order_shipments;
DROP POLICY IF EXISTS "Allow authenticated users to delete order_items" ON public.order_items;
DROP POLICY IF EXISTS "Allow authenticated users to delete line_message_templates" ON public.line_message_templates;
DROP POLICY IF EXISTS "Allow authenticated users to delete customers" ON public.customers;
DROP POLICY IF EXISTS "Allow authenticated read stock_lots" ON public.stock_lots;
DROP POLICY IF EXISTS "Allow authenticated read stock_lot_usages" ON public.stock_lot_usages;
DROP POLICY IF EXISTS "Allow authenticated read sellable_products" ON public.products;
DROP POLICY IF EXISTS "Allow authenticated read sellable_product_variations" ON public.product_variations;
DROP POLICY IF EXISTS "Allow authenticated read payment_channels" ON public.payment_channels;
DROP POLICY IF EXISTS "Allow authenticated read finished_goods" ON public.finished_goods;
DROP POLICY IF EXISTS "Allow all for service role payment_channels" ON public.payment_channels;
DROP POLICY IF EXISTS "Allow all for service role" ON public.variation_types;
DROP POLICY IF EXISTS "Allow all for line_messages" ON public.line_messages;
DROP POLICY IF EXISTS "Allow all for line_contacts" ON public.line_contacts;
DROP POLICY IF EXISTS "Allow admin/manager/sales write sellable_products" ON public.products;
DROP POLICY IF EXISTS "Allow admin/manager/sales write sellable_product_variations" ON public.product_variations;
DROP POLICY IF EXISTS "Allow admin/manager/operation write stock_lots" ON public.stock_lots;
DROP POLICY IF EXISTS "Allow admin/manager/operation write stock_lot_usages" ON public.stock_lot_usages;
DROP POLICY IF EXISTS "Allow admin/manager/operation write finished_goods" ON public.finished_goods;
DROP POLICY IF EXISTS "Allow admin to update crm_settings" ON public.crm_settings;
DROP POLICY IF EXISTS "Allow admin to insert crm_settings" ON public.crm_settings;
DROP POLICY IF EXISTS "Admin and Manager can manage supplier materials" ON public.supplier_materials;
DROP POLICY IF EXISTS "Admin and Manager can manage inventory" ON public.inventory_batches;
ALTER TABLE IF EXISTS ONLY storage.vector_indexes DROP CONSTRAINT IF EXISTS vector_indexes_bucket_id_fkey;
ALTER TABLE IF EXISTS ONLY storage.s3_multipart_uploads_parts DROP CONSTRAINT IF EXISTS s3_multipart_uploads_parts_upload_id_fkey;
ALTER TABLE IF EXISTS ONLY storage.s3_multipart_uploads_parts DROP CONSTRAINT IF EXISTS s3_multipart_uploads_parts_bucket_id_fkey;
ALTER TABLE IF EXISTS ONLY storage.s3_multipart_uploads DROP CONSTRAINT IF EXISTS s3_multipart_uploads_bucket_id_fkey;
ALTER TABLE IF EXISTS ONLY storage.objects DROP CONSTRAINT IF EXISTS "objects_bucketId_fkey";
ALTER TABLE IF EXISTS ONLY public.user_profiles DROP CONSTRAINT IF EXISTS user_profiles_id_fkey;
ALTER TABLE IF EXISTS ONLY public.stock_lot_usages DROP CONSTRAINT IF EXISTS stock_lot_usages_stock_lot_id_fkey;
ALTER TABLE IF EXISTS ONLY public.shipping_addresses DROP CONSTRAINT IF EXISTS shipping_addresses_customer_id_fkey;
ALTER TABLE IF EXISTS ONLY public.shipping_addresses DROP CONSTRAINT IF EXISTS shipping_addresses_created_by_fkey;
ALTER TABLE IF EXISTS ONLY public.product_variations DROP CONSTRAINT IF EXISTS sellable_product_variations_sellable_product_id_fkey;
ALTER TABLE IF EXISTS ONLY public.sales_orders DROP CONSTRAINT IF EXISTS sales_orders_customer_id_fkey;
ALTER TABLE IF EXISTS ONLY public.sales_orders DROP CONSTRAINT IF EXISTS sales_orders_created_by_fkey;
ALTER TABLE IF EXISTS ONLY public.sales_order_items DROP CONSTRAINT IF EXISTS sales_order_items_order_id_fkey;
ALTER TABLE IF EXISTS ONLY public.quality_tests DROP CONSTRAINT IF EXISTS quality_tests_tested_by_fkey;
ALTER TABLE IF EXISTS ONLY public.product_images DROP CONSTRAINT IF EXISTS product_images_variation_id_fkey;
ALTER TABLE IF EXISTS ONLY public.product_images DROP CONSTRAINT IF EXISTS product_images_sellable_product_id_fkey;
ALTER TABLE IF EXISTS ONLY public.payments DROP CONSTRAINT IF EXISTS payments_received_by_fkey;
ALTER TABLE IF EXISTS ONLY public.payments DROP CONSTRAINT IF EXISTS payments_order_id_fkey;
ALTER TABLE IF EXISTS ONLY public.payment_records DROP CONSTRAINT IF EXISTS payment_records_order_id_fkey;
ALTER TABLE IF EXISTS ONLY public.payment_records DROP CONSTRAINT IF EXISTS payment_records_created_by_fkey;
ALTER TABLE IF EXISTS ONLY public.orders DROP CONSTRAINT IF EXISTS orders_customer_id_fkey;
ALTER TABLE IF EXISTS ONLY public.orders DROP CONSTRAINT IF EXISTS orders_created_by_fkey;
ALTER TABLE IF EXISTS ONLY public.order_shipments DROP CONSTRAINT IF EXISTS order_shipments_shipping_address_id_fkey;
ALTER TABLE IF EXISTS ONLY public.order_shipments DROP CONSTRAINT IF EXISTS order_shipments_order_item_id_fkey;
ALTER TABLE IF EXISTS ONLY public.order_items DROP CONSTRAINT IF EXISTS order_items_variation_id_fkey;
ALTER TABLE IF EXISTS ONLY public.order_items DROP CONSTRAINT IF EXISTS order_items_sellable_product_id_fkey;
ALTER TABLE IF EXISTS ONLY public.order_items DROP CONSTRAINT IF EXISTS order_items_order_id_fkey;
ALTER TABLE IF EXISTS ONLY public.line_users DROP CONSTRAINT IF EXISTS line_users_mapped_by_fkey;
ALTER TABLE IF EXISTS ONLY public.line_users DROP CONSTRAINT IF EXISTS line_users_customer_id_fkey;
ALTER TABLE IF EXISTS ONLY public.line_messages DROP CONSTRAINT IF EXISTS line_messages_sent_by_fkey;
ALTER TABLE IF EXISTS ONLY public.line_messages DROP CONSTRAINT IF EXISTS line_messages_line_contact_id_fkey;
ALTER TABLE IF EXISTS ONLY public.line_message_templates DROP CONSTRAINT IF EXISTS line_message_templates_created_by_fkey;
ALTER TABLE IF EXISTS ONLY public.line_message_logs DROP CONSTRAINT IF EXISTS line_message_logs_template_id_fkey;
ALTER TABLE IF EXISTS ONLY public.line_message_logs DROP CONSTRAINT IF EXISTS line_message_logs_order_id_fkey;
ALTER TABLE IF EXISTS ONLY public.line_groups DROP CONSTRAINT IF EXISTS line_groups_mapped_by_fkey;
ALTER TABLE IF EXISTS ONLY public.line_groups DROP CONSTRAINT IF EXISTS line_groups_customer_id_fkey;
ALTER TABLE IF EXISTS ONLY public.line_contacts DROP CONSTRAINT IF EXISTS line_contacts_customer_id_fkey;
ALTER TABLE IF EXISTS ONLY public.customers DROP CONSTRAINT IF EXISTS customers_created_by_fkey;
ALTER TABLE IF EXISTS ONLY public.customers DROP CONSTRAINT IF EXISTS customers_assigned_salesperson_fkey;
ALTER TABLE IF EXISTS ONLY public.customer_activities DROP CONSTRAINT IF EXISTS customer_activities_customer_id_fkey;
ALTER TABLE IF EXISTS ONLY public.customer_activities DROP CONSTRAINT IF EXISTS customer_activities_created_by_fkey;
ALTER TABLE IF EXISTS ONLY auth.sso_domains DROP CONSTRAINT IF EXISTS sso_domains_sso_provider_id_fkey;
ALTER TABLE IF EXISTS ONLY auth.sessions DROP CONSTRAINT IF EXISTS sessions_user_id_fkey;
ALTER TABLE IF EXISTS ONLY auth.sessions DROP CONSTRAINT IF EXISTS sessions_oauth_client_id_fkey;
ALTER TABLE IF EXISTS ONLY auth.saml_relay_states DROP CONSTRAINT IF EXISTS saml_relay_states_sso_provider_id_fkey;
ALTER TABLE IF EXISTS ONLY auth.saml_relay_states DROP CONSTRAINT IF EXISTS saml_relay_states_flow_state_id_fkey;
ALTER TABLE IF EXISTS ONLY auth.saml_providers DROP CONSTRAINT IF EXISTS saml_providers_sso_provider_id_fkey;
ALTER TABLE IF EXISTS ONLY auth.refresh_tokens DROP CONSTRAINT IF EXISTS refresh_tokens_session_id_fkey;
ALTER TABLE IF EXISTS ONLY auth.one_time_tokens DROP CONSTRAINT IF EXISTS one_time_tokens_user_id_fkey;
ALTER TABLE IF EXISTS ONLY auth.oauth_consents DROP CONSTRAINT IF EXISTS oauth_consents_user_id_fkey;
ALTER TABLE IF EXISTS ONLY auth.oauth_consents DROP CONSTRAINT IF EXISTS oauth_consents_client_id_fkey;
ALTER TABLE IF EXISTS ONLY auth.oauth_authorizations DROP CONSTRAINT IF EXISTS oauth_authorizations_user_id_fkey;
ALTER TABLE IF EXISTS ONLY auth.oauth_authorizations DROP CONSTRAINT IF EXISTS oauth_authorizations_client_id_fkey;
ALTER TABLE IF EXISTS ONLY auth.mfa_factors DROP CONSTRAINT IF EXISTS mfa_factors_user_id_fkey;
ALTER TABLE IF EXISTS ONLY auth.mfa_challenges DROP CONSTRAINT IF EXISTS mfa_challenges_auth_factor_id_fkey;
ALTER TABLE IF EXISTS ONLY auth.mfa_amr_claims DROP CONSTRAINT IF EXISTS mfa_amr_claims_session_id_fkey;
ALTER TABLE IF EXISTS ONLY auth.identities DROP CONSTRAINT IF EXISTS identities_user_id_fkey;
DROP TRIGGER IF EXISTS update_objects_updated_at ON storage.objects;
DROP TRIGGER IF EXISTS protect_objects_delete ON storage.objects;
DROP TRIGGER IF EXISTS protect_buckets_delete ON storage.buckets;
DROP TRIGGER IF EXISTS enforce_bucket_name_length_trigger ON storage.buckets;
DROP TRIGGER IF EXISTS tr_check_filters ON realtime.subscription;
DROP TRIGGER IF EXISTS update_variations_updated_at ON public.product_variations;
DROP TRIGGER IF EXISTS update_user_profiles_updated_at ON public.user_profiles;
DROP TRIGGER IF EXISTS update_shipping_addresses_updated_at ON public.shipping_addresses;
DROP TRIGGER IF EXISTS update_sellable_products_updated_at ON public.products;
DROP TRIGGER IF EXISTS update_sales_orders_updated_at ON public.sales_orders;
DROP TRIGGER IF EXISTS update_price_lists_updated_at ON public.price_lists;
DROP TRIGGER IF EXISTS update_payments_updated_at ON public.payments;
DROP TRIGGER IF EXISTS update_orders_updated_at ON public.orders;
DROP TRIGGER IF EXISTS update_order_shipments_updated_at ON public.order_shipments;
DROP TRIGGER IF EXISTS update_order_items_updated_at ON public.order_items;
DROP TRIGGER IF EXISTS update_line_users_updated_at ON public.line_users;
DROP TRIGGER IF EXISTS update_line_message_templates_updated_at ON public.line_message_templates;
DROP TRIGGER IF EXISTS update_line_groups_updated_at ON public.line_groups;
DROP TRIGGER IF EXISTS update_inventory_batches_updated_at ON public.inventory_batches;
DROP TRIGGER IF EXISTS update_customers_updated_at ON public.customers;
DROP TRIGGER IF EXISTS update_customer_activities_updated_at ON public.customer_activities;
DROP TRIGGER IF EXISTS trigger_validate_shipment_quantities ON public.order_shipments;
DROP TRIGGER IF EXISTS trigger_update_payment_status_update ON public.payments;
DROP TRIGGER IF EXISTS trigger_update_payment_status_insert ON public.payments;
DROP TRIGGER IF EXISTS trigger_update_payment_status_delete ON public.payments;
DROP TRIGGER IF EXISTS trigger_update_order_totals_update ON public.order_items;
DROP TRIGGER IF EXISTS trigger_update_order_totals_insert ON public.order_items;
DROP TRIGGER IF EXISTS trigger_update_order_totals_delete ON public.order_items;
DROP TRIGGER IF EXISTS trigger_ensure_one_default_address ON public.shipping_addresses;
DROP TRIGGER IF EXISTS trigger_auto_update_customer_stats ON public.orders;
DROP TRIGGER IF EXISTS trg_update_order_totals ON public.order_items;
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE OR REPLACE VIEW public.order_summary AS
SELECT
    NULL::uuid AS id,
    NULL::text AS order_number,
    NULL::date AS order_date,
    NULL::date AS delivery_date,
    NULL::numeric(12,2) AS total_amount,
    NULL::text AS payment_status,
    NULL::text AS order_status,
    NULL::uuid AS customer_id,
    NULL::text AS customer_code,
    NULL::text AS customer_name,
    NULL::text AS contact_person,
    NULL::text AS customer_phone,
    NULL::bigint AS item_count,
    NULL::bigint AS branch_count;
DROP INDEX IF EXISTS storage.vector_indexes_name_bucket_id_idx;
DROP INDEX IF EXISTS storage.name_prefix_search;
DROP INDEX IF EXISTS storage.idx_objects_bucket_id_name_lower;
DROP INDEX IF EXISTS storage.idx_objects_bucket_id_name;
DROP INDEX IF EXISTS storage.idx_multipart_uploads_list;
DROP INDEX IF EXISTS storage.buckets_analytics_unique_name_idx;
DROP INDEX IF EXISTS storage.bucketid_objname;
DROP INDEX IF EXISTS storage.bname;
DROP INDEX IF EXISTS realtime.subscription_subscription_id_entity_filters_action_filter_key;
DROP INDEX IF EXISTS realtime.messages_inserted_at_topic_index;
DROP INDEX IF EXISTS realtime.ix_realtime_subscription_entity;
DROP INDEX IF EXISTS public.stock_lots_raw_material_id_idx;
DROP INDEX IF EXISTS public.stock_lots_purchase_date_idx;
DROP INDEX IF EXISTS public.stock_lot_usages_stock_lot_id_idx;
DROP INDEX IF EXISTS public.stock_lot_usages_production_batch_id_idx;
DROP INDEX IF EXISTS public.idx_variations_sellable;
DROP INDEX IF EXISTS public.idx_variations_active;
DROP INDEX IF EXISTS public.idx_shipping_addresses_default;
DROP INDEX IF EXISTS public.idx_shipping_addresses_customer;
DROP INDEX IF EXISTS public.idx_shipping_addresses_active;
DROP INDEX IF EXISTS public.idx_sellable_products_code;
DROP INDEX IF EXISTS public.idx_sellable_products_active;
DROP INDEX IF EXISTS public.idx_sales_orders_status;
DROP INDEX IF EXISTS public.idx_sales_orders_payment_status;
DROP INDEX IF EXISTS public.idx_sales_orders_customer;
DROP INDEX IF EXISTS public.idx_product_images_variation;
DROP INDEX IF EXISTS public.idx_product_images_product;
DROP INDEX IF EXISTS public.idx_price_lists_product;
DROP INDEX IF EXISTS public.idx_payments_order;
DROP INDEX IF EXISTS public.idx_payments_date;
DROP INDEX IF EXISTS public.idx_payment_records_payment_date;
DROP INDEX IF EXISTS public.idx_payment_records_order_id;
DROP INDEX IF EXISTS public.idx_orders_payment_status;
DROP INDEX IF EXISTS public.idx_orders_order_status;
DROP INDEX IF EXISTS public.idx_orders_order_number;
DROP INDEX IF EXISTS public.idx_orders_order_date;
DROP INDEX IF EXISTS public.idx_orders_number;
DROP INDEX IF EXISTS public.idx_orders_date;
DROP INDEX IF EXISTS public.idx_orders_customer;
DROP INDEX IF EXISTS public.idx_order_shipments_status;
DROP INDEX IF EXISTS public.idx_order_shipments_item;
DROP INDEX IF EXISTS public.idx_order_shipments_address;
DROP INDEX IF EXISTS public.idx_order_items_variation_id;
DROP INDEX IF EXISTS public.idx_order_items_sellable_product_id;
DROP INDEX IF EXISTS public.idx_order_items_order;
DROP INDEX IF EXISTS public.idx_line_users_line_id;
DROP INDEX IF EXISTS public.idx_line_users_customer;
DROP INDEX IF EXISTS public.idx_line_messages_contact_id;
DROP INDEX IF EXISTS public.idx_line_message_logs_user;
DROP INDEX IF EXISTS public.idx_line_message_logs_order;
DROP INDEX IF EXISTS public.idx_line_message_logs_group;
DROP INDEX IF EXISTS public.idx_line_groups_line_id;
DROP INDEX IF EXISTS public.idx_line_groups_customer;
DROP INDEX IF EXISTS public.idx_line_contacts_line_user_id;
DROP INDEX IF EXISTS public.idx_line_contacts_customer_id;
DROP INDEX IF EXISTS public.idx_inventory_batches_remaining;
DROP INDEX IF EXISTS public.idx_inventory_batches_material;
DROP INDEX IF EXISTS public.idx_customers_type;
DROP INDEX IF EXISTS public.idx_customers_status;
DROP INDEX IF EXISTS public.idx_customers_name;
DROP INDEX IF EXISTS public.idx_customers_code_unique;
DROP INDEX IF EXISTS public.idx_customers_code;
DROP INDEX IF EXISTS public.idx_customers_churn_risk;
DROP INDEX IF EXISTS public.idx_customers_active;
DROP INDEX IF EXISTS public.idx_customer_activities_follow_up;
DROP INDEX IF EXISTS public.idx_customer_activities_customer;
DROP INDEX IF EXISTS public.finished_goods_production_batch_id_idx;
DROP INDEX IF EXISTS public.finished_goods_product_id_idx;
DROP INDEX IF EXISTS public.finished_goods_manufactured_date_idx;
DROP INDEX IF EXISTS public.finished_goods_bottle_type_id_idx;
DROP INDEX IF EXISTS auth.users_is_anonymous_idx;
DROP INDEX IF EXISTS auth.users_instance_id_idx;
DROP INDEX IF EXISTS auth.users_instance_id_email_idx;
DROP INDEX IF EXISTS auth.users_email_partial_key;
DROP INDEX IF EXISTS auth.user_id_created_at_idx;
DROP INDEX IF EXISTS auth.unique_phone_factor_per_user;
DROP INDEX IF EXISTS auth.sso_providers_resource_id_pattern_idx;
DROP INDEX IF EXISTS auth.sso_providers_resource_id_idx;
DROP INDEX IF EXISTS auth.sso_domains_sso_provider_id_idx;
DROP INDEX IF EXISTS auth.sso_domains_domain_idx;
DROP INDEX IF EXISTS auth.sessions_user_id_idx;
DROP INDEX IF EXISTS auth.sessions_oauth_client_id_idx;
DROP INDEX IF EXISTS auth.sessions_not_after_idx;
DROP INDEX IF EXISTS auth.saml_relay_states_sso_provider_id_idx;
DROP INDEX IF EXISTS auth.saml_relay_states_for_email_idx;
DROP INDEX IF EXISTS auth.saml_relay_states_created_at_idx;
DROP INDEX IF EXISTS auth.saml_providers_sso_provider_id_idx;
DROP INDEX IF EXISTS auth.refresh_tokens_updated_at_idx;
DROP INDEX IF EXISTS auth.refresh_tokens_session_id_revoked_idx;
DROP INDEX IF EXISTS auth.refresh_tokens_parent_idx;
DROP INDEX IF EXISTS auth.refresh_tokens_instance_id_user_id_idx;
DROP INDEX IF EXISTS auth.refresh_tokens_instance_id_idx;
DROP INDEX IF EXISTS auth.recovery_token_idx;
DROP INDEX IF EXISTS auth.reauthentication_token_idx;
DROP INDEX IF EXISTS auth.one_time_tokens_user_id_token_type_key;
DROP INDEX IF EXISTS auth.one_time_tokens_token_hash_hash_idx;
DROP INDEX IF EXISTS auth.one_time_tokens_relates_to_hash_idx;
DROP INDEX IF EXISTS auth.oauth_consents_user_order_idx;
DROP INDEX IF EXISTS auth.oauth_consents_active_user_client_idx;
DROP INDEX IF EXISTS auth.oauth_consents_active_client_idx;
DROP INDEX IF EXISTS auth.oauth_clients_deleted_at_idx;
DROP INDEX IF EXISTS auth.oauth_auth_pending_exp_idx;
DROP INDEX IF EXISTS auth.mfa_factors_user_id_idx;
DROP INDEX IF EXISTS auth.mfa_factors_user_friendly_name_unique;
DROP INDEX IF EXISTS auth.mfa_challenge_created_at_idx;
DROP INDEX IF EXISTS auth.idx_user_id_auth_method;
DROP INDEX IF EXISTS auth.idx_oauth_client_states_created_at;
DROP INDEX IF EXISTS auth.idx_auth_code;
DROP INDEX IF EXISTS auth.identities_user_id_idx;
DROP INDEX IF EXISTS auth.identities_email_idx;
DROP INDEX IF EXISTS auth.flow_state_created_at_idx;
DROP INDEX IF EXISTS auth.factor_id_created_at_idx;
DROP INDEX IF EXISTS auth.email_change_token_new_idx;
DROP INDEX IF EXISTS auth.email_change_token_current_idx;
DROP INDEX IF EXISTS auth.confirmation_token_idx;
DROP INDEX IF EXISTS auth.audit_logs_instance_id_idx;
ALTER TABLE IF EXISTS ONLY storage.vector_indexes DROP CONSTRAINT IF EXISTS vector_indexes_pkey;
ALTER TABLE IF EXISTS ONLY storage.s3_multipart_uploads DROP CONSTRAINT IF EXISTS s3_multipart_uploads_pkey;
ALTER TABLE IF EXISTS ONLY storage.s3_multipart_uploads_parts DROP CONSTRAINT IF EXISTS s3_multipart_uploads_parts_pkey;
ALTER TABLE IF EXISTS ONLY storage.objects DROP CONSTRAINT IF EXISTS objects_pkey;
ALTER TABLE IF EXISTS ONLY storage.migrations DROP CONSTRAINT IF EXISTS migrations_pkey;
ALTER TABLE IF EXISTS ONLY storage.migrations DROP CONSTRAINT IF EXISTS migrations_name_key;
ALTER TABLE IF EXISTS ONLY storage.buckets_vectors DROP CONSTRAINT IF EXISTS buckets_vectors_pkey;
ALTER TABLE IF EXISTS ONLY storage.buckets DROP CONSTRAINT IF EXISTS buckets_pkey;
ALTER TABLE IF EXISTS ONLY storage.buckets_analytics DROP CONSTRAINT IF EXISTS buckets_analytics_pkey;
ALTER TABLE IF EXISTS ONLY realtime.schema_migrations DROP CONSTRAINT IF EXISTS schema_migrations_pkey;
ALTER TABLE IF EXISTS ONLY realtime.subscription DROP CONSTRAINT IF EXISTS pk_subscription;
ALTER TABLE IF EXISTS ONLY realtime.messages_2026_02_16 DROP CONSTRAINT IF EXISTS messages_2026_02_16_pkey;
ALTER TABLE IF EXISTS ONLY realtime.messages_2026_02_15 DROP CONSTRAINT IF EXISTS messages_2026_02_15_pkey;
ALTER TABLE IF EXISTS ONLY realtime.messages_2026_02_14 DROP CONSTRAINT IF EXISTS messages_2026_02_14_pkey;
ALTER TABLE IF EXISTS ONLY realtime.messages_2026_02_13 DROP CONSTRAINT IF EXISTS messages_2026_02_13_pkey;
ALTER TABLE IF EXISTS ONLY realtime.messages_2026_02_12 DROP CONSTRAINT IF EXISTS messages_2026_02_12_pkey;
ALTER TABLE IF EXISTS ONLY realtime.messages_2026_02_11 DROP CONSTRAINT IF EXISTS messages_2026_02_11_pkey;
ALTER TABLE IF EXISTS ONLY realtime.messages_2026_02_10 DROP CONSTRAINT IF EXISTS messages_2026_02_10_pkey;
ALTER TABLE IF EXISTS ONLY realtime.messages DROP CONSTRAINT IF EXISTS messages_pkey;
ALTER TABLE IF EXISTS ONLY public.variation_types DROP CONSTRAINT IF EXISTS variation_types_pkey;
ALTER TABLE IF EXISTS ONLY public.variation_types DROP CONSTRAINT IF EXISTS variation_types_name_key;
ALTER TABLE IF EXISTS ONLY public.user_profiles DROP CONSTRAINT IF EXISTS user_profiles_pkey;
ALTER TABLE IF EXISTS ONLY public.user_profiles DROP CONSTRAINT IF EXISTS user_profiles_line_user_id_key;
ALTER TABLE IF EXISTS ONLY public.user_profiles DROP CONSTRAINT IF EXISTS user_profiles_email_key;
ALTER TABLE IF EXISTS ONLY public.supplier_materials DROP CONSTRAINT IF EXISTS supplier_materials_pkey;
ALTER TABLE IF EXISTS ONLY public.stock_lots DROP CONSTRAINT IF EXISTS stock_lots_pkey;
ALTER TABLE IF EXISTS ONLY public.stock_lot_usages DROP CONSTRAINT IF EXISTS stock_lot_usages_pkey;
ALTER TABLE IF EXISTS ONLY public.shipping_addresses DROP CONSTRAINT IF EXISTS shipping_addresses_pkey;
ALTER TABLE IF EXISTS ONLY public.products DROP CONSTRAINT IF EXISTS sellable_products_pkey;
ALTER TABLE IF EXISTS ONLY public.products DROP CONSTRAINT IF EXISTS sellable_products_code_key;
ALTER TABLE IF EXISTS ONLY public.product_variations DROP CONSTRAINT IF EXISTS sellable_product_variations_pkey;
ALTER TABLE IF EXISTS ONLY public.sales_orders DROP CONSTRAINT IF EXISTS sales_orders_pkey;
ALTER TABLE IF EXISTS ONLY public.sales_orders DROP CONSTRAINT IF EXISTS sales_orders_order_number_key;
ALTER TABLE IF EXISTS ONLY public.sales_order_items DROP CONSTRAINT IF EXISTS sales_order_items_pkey;
ALTER TABLE IF EXISTS ONLY public.quality_tests DROP CONSTRAINT IF EXISTS quality_tests_pkey;
ALTER TABLE IF EXISTS ONLY public.product_images DROP CONSTRAINT IF EXISTS product_images_pkey;
ALTER TABLE IF EXISTS ONLY public.price_lists DROP CONSTRAINT IF EXISTS price_lists_product_id_bottle_id_key;
ALTER TABLE IF EXISTS ONLY public.price_lists DROP CONSTRAINT IF EXISTS price_lists_pkey;
ALTER TABLE IF EXISTS ONLY public.payments DROP CONSTRAINT IF EXISTS payments_pkey;
ALTER TABLE IF EXISTS ONLY public.payment_records DROP CONSTRAINT IF EXISTS payment_records_pkey;
ALTER TABLE IF EXISTS ONLY public.payment_channels DROP CONSTRAINT IF EXISTS payment_channels_pkey;
ALTER TABLE IF EXISTS ONLY public.orders DROP CONSTRAINT IF EXISTS orders_pkey;
ALTER TABLE IF EXISTS ONLY public.orders DROP CONSTRAINT IF EXISTS orders_order_number_key;
ALTER TABLE IF EXISTS ONLY public.order_shipments DROP CONSTRAINT IF EXISTS order_shipments_pkey;
ALTER TABLE IF EXISTS ONLY public.order_items DROP CONSTRAINT IF EXISTS order_items_pkey;
ALTER TABLE IF EXISTS ONLY public.line_users DROP CONSTRAINT IF EXISTS line_users_user_id_key;
ALTER TABLE IF EXISTS ONLY public.line_users DROP CONSTRAINT IF EXISTS line_users_pkey;
ALTER TABLE IF EXISTS ONLY public.line_messages DROP CONSTRAINT IF EXISTS line_messages_pkey;
ALTER TABLE IF EXISTS ONLY public.line_message_templates DROP CONSTRAINT IF EXISTS line_message_templates_pkey;
ALTER TABLE IF EXISTS ONLY public.line_message_logs DROP CONSTRAINT IF EXISTS line_message_logs_pkey;
ALTER TABLE IF EXISTS ONLY public.line_groups DROP CONSTRAINT IF EXISTS line_groups_pkey;
ALTER TABLE IF EXISTS ONLY public.line_groups DROP CONSTRAINT IF EXISTS line_groups_group_id_key;
ALTER TABLE IF EXISTS ONLY public.line_contacts DROP CONSTRAINT IF EXISTS line_contacts_pkey;
ALTER TABLE IF EXISTS ONLY public.line_contacts DROP CONSTRAINT IF EXISTS line_contacts_line_user_id_key;
ALTER TABLE IF EXISTS ONLY public.inventory_batches DROP CONSTRAINT IF EXISTS inventory_batches_pkey;
ALTER TABLE IF EXISTS ONLY public.inventory_batches DROP CONSTRAINT IF EXISTS inventory_batches_batch_number_key;
ALTER TABLE IF EXISTS ONLY public.finished_goods DROP CONSTRAINT IF EXISTS finished_goods_pkey;
ALTER TABLE IF EXISTS ONLY public.customers DROP CONSTRAINT IF EXISTS customers_pkey;
ALTER TABLE IF EXISTS ONLY public.customer_activities DROP CONSTRAINT IF EXISTS customer_activities_pkey;
ALTER TABLE IF EXISTS ONLY public.crm_settings DROP CONSTRAINT IF EXISTS crm_settings_setting_key_key;
ALTER TABLE IF EXISTS ONLY public.crm_settings DROP CONSTRAINT IF EXISTS crm_settings_pkey;
ALTER TABLE IF EXISTS ONLY auth.users DROP CONSTRAINT IF EXISTS users_pkey;
ALTER TABLE IF EXISTS ONLY auth.users DROP CONSTRAINT IF EXISTS users_phone_key;
ALTER TABLE IF EXISTS ONLY auth.sso_providers DROP CONSTRAINT IF EXISTS sso_providers_pkey;
ALTER TABLE IF EXISTS ONLY auth.sso_domains DROP CONSTRAINT IF EXISTS sso_domains_pkey;
ALTER TABLE IF EXISTS ONLY auth.sessions DROP CONSTRAINT IF EXISTS sessions_pkey;
ALTER TABLE IF EXISTS ONLY auth.schema_migrations DROP CONSTRAINT IF EXISTS schema_migrations_pkey;
ALTER TABLE IF EXISTS ONLY auth.saml_relay_states DROP CONSTRAINT IF EXISTS saml_relay_states_pkey;
ALTER TABLE IF EXISTS ONLY auth.saml_providers DROP CONSTRAINT IF EXISTS saml_providers_pkey;
ALTER TABLE IF EXISTS ONLY auth.saml_providers DROP CONSTRAINT IF EXISTS saml_providers_entity_id_key;
ALTER TABLE IF EXISTS ONLY auth.refresh_tokens DROP CONSTRAINT IF EXISTS refresh_tokens_token_unique;
ALTER TABLE IF EXISTS ONLY auth.refresh_tokens DROP CONSTRAINT IF EXISTS refresh_tokens_pkey;
ALTER TABLE IF EXISTS ONLY auth.one_time_tokens DROP CONSTRAINT IF EXISTS one_time_tokens_pkey;
ALTER TABLE IF EXISTS ONLY auth.oauth_consents DROP CONSTRAINT IF EXISTS oauth_consents_user_client_unique;
ALTER TABLE IF EXISTS ONLY auth.oauth_consents DROP CONSTRAINT IF EXISTS oauth_consents_pkey;
ALTER TABLE IF EXISTS ONLY auth.oauth_clients DROP CONSTRAINT IF EXISTS oauth_clients_pkey;
ALTER TABLE IF EXISTS ONLY auth.oauth_client_states DROP CONSTRAINT IF EXISTS oauth_client_states_pkey;
ALTER TABLE IF EXISTS ONLY auth.oauth_authorizations DROP CONSTRAINT IF EXISTS oauth_authorizations_pkey;
ALTER TABLE IF EXISTS ONLY auth.oauth_authorizations DROP CONSTRAINT IF EXISTS oauth_authorizations_authorization_id_key;
ALTER TABLE IF EXISTS ONLY auth.oauth_authorizations DROP CONSTRAINT IF EXISTS oauth_authorizations_authorization_code_key;
ALTER TABLE IF EXISTS ONLY auth.mfa_factors DROP CONSTRAINT IF EXISTS mfa_factors_pkey;
ALTER TABLE IF EXISTS ONLY auth.mfa_factors DROP CONSTRAINT IF EXISTS mfa_factors_last_challenged_at_key;
ALTER TABLE IF EXISTS ONLY auth.mfa_challenges DROP CONSTRAINT IF EXISTS mfa_challenges_pkey;
ALTER TABLE IF EXISTS ONLY auth.mfa_amr_claims DROP CONSTRAINT IF EXISTS mfa_amr_claims_session_id_authentication_method_pkey;
ALTER TABLE IF EXISTS ONLY auth.instances DROP CONSTRAINT IF EXISTS instances_pkey;
ALTER TABLE IF EXISTS ONLY auth.identities DROP CONSTRAINT IF EXISTS identities_provider_id_provider_unique;
ALTER TABLE IF EXISTS ONLY auth.identities DROP CONSTRAINT IF EXISTS identities_pkey;
ALTER TABLE IF EXISTS ONLY auth.flow_state DROP CONSTRAINT IF EXISTS flow_state_pkey;
ALTER TABLE IF EXISTS ONLY auth.audit_log_entries DROP CONSTRAINT IF EXISTS audit_log_entries_pkey;
ALTER TABLE IF EXISTS ONLY auth.mfa_amr_claims DROP CONSTRAINT IF EXISTS amr_id_pk;
ALTER TABLE IF EXISTS auth.refresh_tokens ALTER COLUMN id DROP DEFAULT;
DROP TABLE IF EXISTS storage.vector_indexes;
DROP TABLE IF EXISTS storage.s3_multipart_uploads_parts;
DROP TABLE IF EXISTS storage.s3_multipart_uploads;
DROP TABLE IF EXISTS storage.objects;
DROP TABLE IF EXISTS storage.migrations;
DROP TABLE IF EXISTS storage.buckets_vectors;
DROP TABLE IF EXISTS storage.buckets_analytics;
DROP TABLE IF EXISTS storage.buckets;
DROP TABLE IF EXISTS realtime.subscription;
DROP TABLE IF EXISTS realtime.schema_migrations;
DROP TABLE IF EXISTS realtime.messages_2026_02_16;
DROP TABLE IF EXISTS realtime.messages_2026_02_15;
DROP TABLE IF EXISTS realtime.messages_2026_02_14;
DROP TABLE IF EXISTS realtime.messages_2026_02_13;
DROP TABLE IF EXISTS realtime.messages_2026_02_12;
DROP TABLE IF EXISTS realtime.messages_2026_02_11;
DROP TABLE IF EXISTS realtime.messages_2026_02_10;
DROP TABLE IF EXISTS realtime.messages;
DROP TABLE IF EXISTS public.variation_types;
DROP TABLE IF EXISTS public.user_profiles;
DROP TABLE IF EXISTS public.supplier_materials;
DROP TABLE IF EXISTS public.stock_lots;
DROP TABLE IF EXISTS public.stock_lot_usages;
DROP TABLE IF EXISTS public.shipping_addresses;
DROP TABLE IF EXISTS public.sales_orders;
DROP TABLE IF EXISTS public.sales_order_items;
DROP TABLE IF EXISTS public.quality_tests;
DROP VIEW IF EXISTS public.products_with_variations;
DROP VIEW IF EXISTS public.products_view;
DROP TABLE IF EXISTS public.products;
DROP TABLE IF EXISTS public.product_variations;
DROP TABLE IF EXISTS public.product_images;
DROP TABLE IF EXISTS public.price_lists;
DROP TABLE IF EXISTS public.payments;
DROP TABLE IF EXISTS public.payment_records;
DROP TABLE IF EXISTS public.payment_channels;
DROP TABLE IF EXISTS public.orders;
DROP VIEW IF EXISTS public.order_summary;
DROP TABLE IF EXISTS public.order_shipments;
DROP TABLE IF EXISTS public.order_items;
DROP TABLE IF EXISTS public.line_users;
DROP TABLE IF EXISTS public.line_messages;
DROP TABLE IF EXISTS public.line_message_templates;
DROP TABLE IF EXISTS public.line_message_logs;
DROP TABLE IF EXISTS public.line_groups;
DROP TABLE IF EXISTS public.line_contacts;
DROP TABLE IF EXISTS public.inventory_batches;
DROP TABLE IF EXISTS public.finished_goods;
DROP TABLE IF EXISTS public.customers;
DROP TABLE IF EXISTS public.customer_activities;
DROP TABLE IF EXISTS public.crm_settings;
DROP TABLE IF EXISTS auth.users;
DROP TABLE IF EXISTS auth.sso_providers;
DROP TABLE IF EXISTS auth.sso_domains;
DROP TABLE IF EXISTS auth.sessions;
DROP TABLE IF EXISTS auth.schema_migrations;
DROP TABLE IF EXISTS auth.saml_relay_states;
DROP TABLE IF EXISTS auth.saml_providers;
DROP SEQUENCE IF EXISTS auth.refresh_tokens_id_seq;
DROP TABLE IF EXISTS auth.refresh_tokens;
DROP TABLE IF EXISTS auth.one_time_tokens;
DROP TABLE IF EXISTS auth.oauth_consents;
DROP TABLE IF EXISTS auth.oauth_clients;
DROP TABLE IF EXISTS auth.oauth_client_states;
DROP TABLE IF EXISTS auth.oauth_authorizations;
DROP TABLE IF EXISTS auth.mfa_factors;
DROP TABLE IF EXISTS auth.mfa_challenges;
DROP TABLE IF EXISTS auth.mfa_amr_claims;
DROP TABLE IF EXISTS auth.instances;
DROP TABLE IF EXISTS auth.identities;
DROP TABLE IF EXISTS auth.flow_state;
DROP TABLE IF EXISTS auth.audit_log_entries;
DROP FUNCTION IF EXISTS storage.update_updated_at_column();
DROP FUNCTION IF EXISTS storage.search_v2(prefix text, bucket_name text, limits integer, levels integer, start_after text, sort_order text, sort_column text, sort_column_after text);
DROP FUNCTION IF EXISTS storage.search_legacy_v1(prefix text, bucketname text, limits integer, levels integer, offsets integer, search text, sortcolumn text, sortorder text);
DROP FUNCTION IF EXISTS storage.search_by_timestamp(p_prefix text, p_bucket_id text, p_limit integer, p_level integer, p_start_after text, p_sort_order text, p_sort_column text, p_sort_column_after text);
DROP FUNCTION IF EXISTS storage.search(prefix text, bucketname text, limits integer, levels integer, offsets integer, search text, sortcolumn text, sortorder text);
DROP FUNCTION IF EXISTS storage.protect_delete();
DROP FUNCTION IF EXISTS storage.operation();
DROP FUNCTION IF EXISTS storage.list_objects_with_delimiter(_bucket_id text, prefix_param text, delimiter_param text, max_keys integer, start_after text, next_token text, sort_order text);
DROP FUNCTION IF EXISTS storage.list_multipart_uploads_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer, next_key_token text, next_upload_token text);
DROP FUNCTION IF EXISTS storage.get_size_by_bucket();
DROP FUNCTION IF EXISTS storage.get_prefixes(name text);
DROP FUNCTION IF EXISTS storage.get_prefix(name text);
DROP FUNCTION IF EXISTS storage.get_level(name text);
DROP FUNCTION IF EXISTS storage.get_common_prefix(p_key text, p_prefix text, p_delimiter text);
DROP FUNCTION IF EXISTS storage.foldername(name text);
DROP FUNCTION IF EXISTS storage.filename(name text);
DROP FUNCTION IF EXISTS storage.extension(name text);
DROP FUNCTION IF EXISTS storage.enforce_bucket_name_length();
DROP FUNCTION IF EXISTS storage.delete_leaf_prefixes(bucket_ids text[], names text[]);
DROP FUNCTION IF EXISTS storage.can_insert_object(bucketid text, name text, owner uuid, metadata jsonb);
DROP FUNCTION IF EXISTS realtime.topic();
DROP FUNCTION IF EXISTS realtime.to_regrole(role_name text);
DROP FUNCTION IF EXISTS realtime.subscription_check_filters();
DROP FUNCTION IF EXISTS realtime.send(payload jsonb, event text, topic text, private boolean);
DROP FUNCTION IF EXISTS realtime.quote_wal2json(entity regclass);
DROP FUNCTION IF EXISTS realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer);
DROP FUNCTION IF EXISTS realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]);
DROP FUNCTION IF EXISTS realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text);
DROP FUNCTION IF EXISTS realtime."cast"(val text, type_ regtype);
DROP FUNCTION IF EXISTS realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]);
DROP FUNCTION IF EXISTS realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text);
DROP FUNCTION IF EXISTS realtime.apply_rls(wal jsonb, max_record_bytes integer);
DROP FUNCTION IF EXISTS public.validate_shipment_quantities();
DROP FUNCTION IF EXISTS public.update_updated_at_column();
DROP FUNCTION IF EXISTS public.update_payment_status();
DROP FUNCTION IF EXISTS public.update_order_totals();
DROP FUNCTION IF EXISTS public.update_customer_stats(p_customer_id uuid);
DROP FUNCTION IF EXISTS public.update_customer_stats();
DROP FUNCTION IF EXISTS public.trigger_update_customer_stats();
DROP FUNCTION IF EXISTS public.search_customers(search_query text);
DROP FUNCTION IF EXISTS public.is_sales_or_admin();
DROP FUNCTION IF EXISTS public.is_production_staff();
DROP FUNCTION IF EXISTS public.is_manager_or_admin();
DROP FUNCTION IF EXISTS public.is_admin();
DROP FUNCTION IF EXISTS public.handle_new_user();
DROP FUNCTION IF EXISTS public.get_production_summary(start_date timestamp with time zone, end_date timestamp with time zone);
DROP FUNCTION IF EXISTS public.get_outstanding_report(p_start_date date, p_end_date date, p_status text);
DROP FUNCTION IF EXISTS public.get_order_details(p_order_id uuid);
DROP FUNCTION IF EXISTS public.get_customer_statistics(customer_uuid uuid);
DROP FUNCTION IF EXISTS public.get_customer_shipping_addresses(p_customer_id uuid);
DROP FUNCTION IF EXISTS public.get_customer_last_prices_by_variation(p_customer_id uuid);
DROP FUNCTION IF EXISTS public.get_customer_last_prices(p_customer_id uuid);
DROP FUNCTION IF EXISTS public.generate_order_number();
DROP FUNCTION IF EXISTS public.generate_customer_code();
DROP FUNCTION IF EXISTS public.generate_batch_id();
DROP FUNCTION IF EXISTS public.ensure_one_default_address();
DROP FUNCTION IF EXISTS public.deduct_stock_fifo(p_raw_material_id uuid, p_quantity_to_deduct numeric, p_stock_transaction_id uuid, p_production_batch_id uuid);
DROP FUNCTION IF EXISTS public.check_material_availability(p_product_id uuid, p_total_volume_liters numeric);
DROP FUNCTION IF EXISTS public.calculate_weighted_average_cost(p_raw_material_id uuid);
DROP FUNCTION IF EXISTS public.calculate_production_cost_fifo(p_production_batch_id uuid, p_actual_materials jsonb, p_actual_items jsonb);
DROP FUNCTION IF EXISTS pgbouncer.get_auth(p_usename text);
DROP FUNCTION IF EXISTS extensions.set_graphql_placeholder();
DROP FUNCTION IF EXISTS extensions.pgrst_drop_watch();
DROP FUNCTION IF EXISTS extensions.pgrst_ddl_watch();
DROP FUNCTION IF EXISTS extensions.grant_pg_net_access();
DROP FUNCTION IF EXISTS extensions.grant_pg_graphql_access();
DROP FUNCTION IF EXISTS extensions.grant_pg_cron_access();
DROP FUNCTION IF EXISTS auth.uid();
DROP FUNCTION IF EXISTS auth.role();
DROP FUNCTION IF EXISTS auth.jwt();
DROP FUNCTION IF EXISTS auth.email();
DROP TYPE IF EXISTS storage.buckettype;
DROP TYPE IF EXISTS realtime.wal_rls;
DROP TYPE IF EXISTS realtime.wal_column;
DROP TYPE IF EXISTS realtime.user_defined_filter;
DROP TYPE IF EXISTS realtime.equality_op;
DROP TYPE IF EXISTS realtime.action;
DROP TYPE IF EXISTS public.user_role;
DROP TYPE IF EXISTS public.supplier_status;
DROP TYPE IF EXISTS public.production_status;
DROP TYPE IF EXISTS public.payment_status;
DROP TYPE IF EXISTS public.payment_method;
DROP TYPE IF EXISTS public.order_status;
DROP TYPE IF EXISTS public.customer_type;
DROP TYPE IF EXISTS public.customer_status;
DROP TYPE IF EXISTS public.churn_risk;
DROP TYPE IF EXISTS auth.one_time_token_type;
DROP TYPE IF EXISTS auth.oauth_response_type;
DROP TYPE IF EXISTS auth.oauth_registration_type;
DROP TYPE IF EXISTS auth.oauth_client_type;
DROP TYPE IF EXISTS auth.oauth_authorization_status;
DROP TYPE IF EXISTS auth.factor_type;
DROP TYPE IF EXISTS auth.factor_status;
DROP TYPE IF EXISTS auth.code_challenge_method;
DROP TYPE IF EXISTS auth.aal_level;
DROP EXTENSION IF EXISTS "uuid-ossp";
DROP EXTENSION IF EXISTS unaccent;
DROP EXTENSION IF EXISTS supabase_vault;
DROP EXTENSION IF EXISTS pgcrypto;
DROP EXTENSION IF EXISTS pg_trgm;
DROP EXTENSION IF EXISTS pg_stat_statements;
DROP EXTENSION IF EXISTS pg_graphql;
DROP SCHEMA IF EXISTS vault;
DROP SCHEMA IF EXISTS storage;
DROP SCHEMA IF EXISTS realtime;
DROP SCHEMA IF EXISTS pgbouncer;
DROP SCHEMA IF EXISTS graphql_public;
DROP SCHEMA IF EXISTS graphql;
DROP SCHEMA IF EXISTS extensions;
DROP SCHEMA IF EXISTS auth;
--
-- Name: auth; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA auth;


--
-- Name: extensions; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA extensions;


--
-- Name: graphql; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA graphql;


--
-- Name: graphql_public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA graphql_public;


--
-- Name: pgbouncer; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA pgbouncer;


--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'JOOLZ Factory Management System - Complete Database Schema v1.0';


--
-- Name: realtime; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA realtime;


--
-- Name: storage; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA storage;


--
-- Name: vault; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA vault;


--
-- Name: pg_graphql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_graphql WITH SCHEMA graphql;


--
-- Name: EXTENSION pg_graphql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION pg_graphql IS 'pg_graphql: GraphQL support';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA extensions;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA extensions;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: supabase_vault; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS supabase_vault WITH SCHEMA vault;


--
-- Name: EXTENSION supabase_vault; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION supabase_vault IS 'Supabase Vault Extension';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA extensions;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: aal_level; Type: TYPE; Schema: auth; Owner: -
--

CREATE TYPE auth.aal_level AS ENUM (
    'aal1',
    'aal2',
    'aal3'
);


--
-- Name: code_challenge_method; Type: TYPE; Schema: auth; Owner: -
--

CREATE TYPE auth.code_challenge_method AS ENUM (
    's256',
    'plain'
);


--
-- Name: factor_status; Type: TYPE; Schema: auth; Owner: -
--

CREATE TYPE auth.factor_status AS ENUM (
    'unverified',
    'verified'
);


--
-- Name: factor_type; Type: TYPE; Schema: auth; Owner: -
--

CREATE TYPE auth.factor_type AS ENUM (
    'totp',
    'webauthn',
    'phone'
);


--
-- Name: oauth_authorization_status; Type: TYPE; Schema: auth; Owner: -
--

CREATE TYPE auth.oauth_authorization_status AS ENUM (
    'pending',
    'approved',
    'denied',
    'expired'
);


--
-- Name: oauth_client_type; Type: TYPE; Schema: auth; Owner: -
--

CREATE TYPE auth.oauth_client_type AS ENUM (
    'public',
    'confidential'
);


--
-- Name: oauth_registration_type; Type: TYPE; Schema: auth; Owner: -
--

CREATE TYPE auth.oauth_registration_type AS ENUM (
    'dynamic',
    'manual'
);


--
-- Name: oauth_response_type; Type: TYPE; Schema: auth; Owner: -
--

CREATE TYPE auth.oauth_response_type AS ENUM (
    'code'
);


--
-- Name: one_time_token_type; Type: TYPE; Schema: auth; Owner: -
--

CREATE TYPE auth.one_time_token_type AS ENUM (
    'confirmation_token',
    'reauthentication_token',
    'recovery_token',
    'email_change_token_new',
    'email_change_token_current',
    'phone_change_token'
);


--
-- Name: churn_risk; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.churn_risk AS ENUM (
    'low',
    'medium',
    'high'
);


--
-- Name: customer_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.customer_status AS ENUM (
    'active',
    'inactive',
    'lost'
);


--
-- Name: customer_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.customer_type AS ENUM (
    'retail',
    'wholesale',
    'distributor'
);


--
-- Name: order_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.order_status AS ENUM (
    'draft',
    'confirmed',
    'in_production',
    'ready',
    'delivered',
    'cancelled'
);


--
-- Name: payment_method; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.payment_method AS ENUM (
    'cash',
    'credit'
);


--
-- Name: payment_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.payment_status AS ENUM (
    'pending',
    'paid'
);


--
-- Name: production_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.production_status AS ENUM (
    'planned',
    'in_production',
    'completed',
    'cancelled'
);


--
-- Name: supplier_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.supplier_status AS ENUM (
    'active',
    'banned'
);


--
-- Name: user_role; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.user_role AS ENUM (
    'admin',
    'manager',
    'operation',
    'sales'
);


--
-- Name: action; Type: TYPE; Schema: realtime; Owner: -
--

CREATE TYPE realtime.action AS ENUM (
    'INSERT',
    'UPDATE',
    'DELETE',
    'TRUNCATE',
    'ERROR'
);


--
-- Name: equality_op; Type: TYPE; Schema: realtime; Owner: -
--

CREATE TYPE realtime.equality_op AS ENUM (
    'eq',
    'neq',
    'lt',
    'lte',
    'gt',
    'gte',
    'in'
);


--
-- Name: user_defined_filter; Type: TYPE; Schema: realtime; Owner: -
--

CREATE TYPE realtime.user_defined_filter AS (
	column_name text,
	op realtime.equality_op,
	value text
);


--
-- Name: wal_column; Type: TYPE; Schema: realtime; Owner: -
--

CREATE TYPE realtime.wal_column AS (
	name text,
	type_name text,
	type_oid oid,
	value jsonb,
	is_pkey boolean,
	is_selectable boolean
);


--
-- Name: wal_rls; Type: TYPE; Schema: realtime; Owner: -
--

CREATE TYPE realtime.wal_rls AS (
	wal jsonb,
	is_rls_enabled boolean,
	subscription_ids uuid[],
	errors text[]
);


--
-- Name: buckettype; Type: TYPE; Schema: storage; Owner: -
--

CREATE TYPE storage.buckettype AS ENUM (
    'STANDARD',
    'ANALYTICS',
    'VECTOR'
);


--
-- Name: email(); Type: FUNCTION; Schema: auth; Owner: -
--

CREATE FUNCTION auth.email() RETURNS text
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.email', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'email')
  )::text
$$;


--
-- Name: FUNCTION email(); Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON FUNCTION auth.email() IS 'Deprecated. Use auth.jwt() -> ''email'' instead.';


--
-- Name: jwt(); Type: FUNCTION; Schema: auth; Owner: -
--

CREATE FUNCTION auth.jwt() RETURNS jsonb
    LANGUAGE sql STABLE
    AS $$
  select 
    coalesce(
        nullif(current_setting('request.jwt.claim', true), ''),
        nullif(current_setting('request.jwt.claims', true), '')
    )::jsonb
$$;


--
-- Name: role(); Type: FUNCTION; Schema: auth; Owner: -
--

CREATE FUNCTION auth.role() RETURNS text
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.role', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'role')
  )::text
$$;


--
-- Name: FUNCTION role(); Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON FUNCTION auth.role() IS 'Deprecated. Use auth.jwt() -> ''role'' instead.';


--
-- Name: uid(); Type: FUNCTION; Schema: auth; Owner: -
--

CREATE FUNCTION auth.uid() RETURNS uuid
    LANGUAGE sql STABLE
    AS $$
  select 
  coalesce(
    nullif(current_setting('request.jwt.claim.sub', true), ''),
    (nullif(current_setting('request.jwt.claims', true), '')::jsonb ->> 'sub')
  )::uuid
$$;


--
-- Name: FUNCTION uid(); Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON FUNCTION auth.uid() IS 'Deprecated. Use auth.jwt() -> ''sub'' instead.';


--
-- Name: grant_pg_cron_access(); Type: FUNCTION; Schema: extensions; Owner: -
--

CREATE FUNCTION extensions.grant_pg_cron_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF EXISTS (
    SELECT
    FROM pg_event_trigger_ddl_commands() AS ev
    JOIN pg_extension AS ext
    ON ev.objid = ext.oid
    WHERE ext.extname = 'pg_cron'
  )
  THEN
    grant usage on schema cron to postgres with grant option;

    alter default privileges in schema cron grant all on tables to postgres with grant option;
    alter default privileges in schema cron grant all on functions to postgres with grant option;
    alter default privileges in schema cron grant all on sequences to postgres with grant option;

    alter default privileges for user supabase_admin in schema cron grant all
        on sequences to postgres with grant option;
    alter default privileges for user supabase_admin in schema cron grant all
        on tables to postgres with grant option;
    alter default privileges for user supabase_admin in schema cron grant all
        on functions to postgres with grant option;

    grant all privileges on all tables in schema cron to postgres with grant option;
    revoke all on table cron.job from postgres;
    grant select on table cron.job to postgres with grant option;
  END IF;
END;
$$;


--
-- Name: FUNCTION grant_pg_cron_access(); Type: COMMENT; Schema: extensions; Owner: -
--

COMMENT ON FUNCTION extensions.grant_pg_cron_access() IS 'Grants access to pg_cron';


--
-- Name: grant_pg_graphql_access(); Type: FUNCTION; Schema: extensions; Owner: -
--

CREATE FUNCTION extensions.grant_pg_graphql_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $_$
DECLARE
    func_is_graphql_resolve bool;
BEGIN
    func_is_graphql_resolve = (
        SELECT n.proname = 'resolve'
        FROM pg_event_trigger_ddl_commands() AS ev
        LEFT JOIN pg_catalog.pg_proc AS n
        ON ev.objid = n.oid
    );

    IF func_is_graphql_resolve
    THEN
        -- Update public wrapper to pass all arguments through to the pg_graphql resolve func
        DROP FUNCTION IF EXISTS graphql_public.graphql;
        create or replace function graphql_public.graphql(
            "operationName" text default null,
            query text default null,
            variables jsonb default null,
            extensions jsonb default null
        )
            returns jsonb
            language sql
        as $$
            select graphql.resolve(
                query := query,
                variables := coalesce(variables, '{}'),
                "operationName" := "operationName",
                extensions := extensions
            );
        $$;

        -- This hook executes when `graphql.resolve` is created. That is not necessarily the last
        -- function in the extension so we need to grant permissions on existing entities AND
        -- update default permissions to any others that are created after `graphql.resolve`
        grant usage on schema graphql to postgres, anon, authenticated, service_role;
        grant select on all tables in schema graphql to postgres, anon, authenticated, service_role;
        grant execute on all functions in schema graphql to postgres, anon, authenticated, service_role;
        grant all on all sequences in schema graphql to postgres, anon, authenticated, service_role;
        alter default privileges in schema graphql grant all on tables to postgres, anon, authenticated, service_role;
        alter default privileges in schema graphql grant all on functions to postgres, anon, authenticated, service_role;
        alter default privileges in schema graphql grant all on sequences to postgres, anon, authenticated, service_role;

        -- Allow postgres role to allow granting usage on graphql and graphql_public schemas to custom roles
        grant usage on schema graphql_public to postgres with grant option;
        grant usage on schema graphql to postgres with grant option;
    END IF;

END;
$_$;


--
-- Name: FUNCTION grant_pg_graphql_access(); Type: COMMENT; Schema: extensions; Owner: -
--

COMMENT ON FUNCTION extensions.grant_pg_graphql_access() IS 'Grants access to pg_graphql';


--
-- Name: grant_pg_net_access(); Type: FUNCTION; Schema: extensions; Owner: -
--

CREATE FUNCTION extensions.grant_pg_net_access() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF EXISTS (
    SELECT 1
    FROM pg_event_trigger_ddl_commands() AS ev
    JOIN pg_extension AS ext
    ON ev.objid = ext.oid
    WHERE ext.extname = 'pg_net'
  )
  THEN
    IF NOT EXISTS (
      SELECT 1
      FROM pg_roles
      WHERE rolname = 'supabase_functions_admin'
    )
    THEN
      CREATE USER supabase_functions_admin NOINHERIT CREATEROLE LOGIN NOREPLICATION;
    END IF;

    GRANT USAGE ON SCHEMA net TO supabase_functions_admin, postgres, anon, authenticated, service_role;

    IF EXISTS (
      SELECT FROM pg_extension
      WHERE extname = 'pg_net'
      -- all versions in use on existing projects as of 2025-02-20
      -- version 0.12.0 onwards don't need these applied
      AND extversion IN ('0.2', '0.6', '0.7', '0.7.1', '0.8', '0.10.0', '0.11.0')
    ) THEN
      ALTER function net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) SECURITY DEFINER;
      ALTER function net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) SECURITY DEFINER;

      ALTER function net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) SET search_path = net;
      ALTER function net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) SET search_path = net;

      REVOKE ALL ON FUNCTION net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) FROM PUBLIC;
      REVOKE ALL ON FUNCTION net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) FROM PUBLIC;

      GRANT EXECUTE ON FUNCTION net.http_get(url text, params jsonb, headers jsonb, timeout_milliseconds integer) TO supabase_functions_admin, postgres, anon, authenticated, service_role;
      GRANT EXECUTE ON FUNCTION net.http_post(url text, body jsonb, params jsonb, headers jsonb, timeout_milliseconds integer) TO supabase_functions_admin, postgres, anon, authenticated, service_role;
    END IF;
  END IF;
END;
$$;


--
-- Name: FUNCTION grant_pg_net_access(); Type: COMMENT; Schema: extensions; Owner: -
--

COMMENT ON FUNCTION extensions.grant_pg_net_access() IS 'Grants access to pg_net';


--
-- Name: pgrst_ddl_watch(); Type: FUNCTION; Schema: extensions; Owner: -
--

CREATE FUNCTION extensions.pgrst_ddl_watch() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  cmd record;
BEGIN
  FOR cmd IN SELECT * FROM pg_event_trigger_ddl_commands()
  LOOP
    IF cmd.command_tag IN (
      'CREATE SCHEMA', 'ALTER SCHEMA'
    , 'CREATE TABLE', 'CREATE TABLE AS', 'SELECT INTO', 'ALTER TABLE'
    , 'CREATE FOREIGN TABLE', 'ALTER FOREIGN TABLE'
    , 'CREATE VIEW', 'ALTER VIEW'
    , 'CREATE MATERIALIZED VIEW', 'ALTER MATERIALIZED VIEW'
    , 'CREATE FUNCTION', 'ALTER FUNCTION'
    , 'CREATE TRIGGER'
    , 'CREATE TYPE', 'ALTER TYPE'
    , 'CREATE RULE'
    , 'COMMENT'
    )
    -- don't notify in case of CREATE TEMP table or other objects created on pg_temp
    AND cmd.schema_name is distinct from 'pg_temp'
    THEN
      NOTIFY pgrst, 'reload schema';
    END IF;
  END LOOP;
END; $$;


--
-- Name: pgrst_drop_watch(); Type: FUNCTION; Schema: extensions; Owner: -
--

CREATE FUNCTION extensions.pgrst_drop_watch() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  obj record;
BEGIN
  FOR obj IN SELECT * FROM pg_event_trigger_dropped_objects()
  LOOP
    IF obj.object_type IN (
      'schema'
    , 'table'
    , 'foreign table'
    , 'view'
    , 'materialized view'
    , 'function'
    , 'trigger'
    , 'type'
    , 'rule'
    )
    AND obj.is_temporary IS false -- no pg_temp objects
    THEN
      NOTIFY pgrst, 'reload schema';
    END IF;
  END LOOP;
END; $$;


--
-- Name: set_graphql_placeholder(); Type: FUNCTION; Schema: extensions; Owner: -
--

CREATE FUNCTION extensions.set_graphql_placeholder() RETURNS event_trigger
    LANGUAGE plpgsql
    AS $_$
    DECLARE
    graphql_is_dropped bool;
    BEGIN
    graphql_is_dropped = (
        SELECT ev.schema_name = 'graphql_public'
        FROM pg_event_trigger_dropped_objects() AS ev
        WHERE ev.schema_name = 'graphql_public'
    );

    IF graphql_is_dropped
    THEN
        create or replace function graphql_public.graphql(
            "operationName" text default null,
            query text default null,
            variables jsonb default null,
            extensions jsonb default null
        )
            returns jsonb
            language plpgsql
        as $$
            DECLARE
                server_version float;
            BEGIN
                server_version = (SELECT (SPLIT_PART((select version()), ' ', 2))::float);

                IF server_version >= 14 THEN
                    RETURN jsonb_build_object(
                        'errors', jsonb_build_array(
                            jsonb_build_object(
                                'message', 'pg_graphql extension is not enabled.'
                            )
                        )
                    );
                ELSE
                    RETURN jsonb_build_object(
                        'errors', jsonb_build_array(
                            jsonb_build_object(
                                'message', 'pg_graphql is only available on projects running Postgres 14 onwards.'
                            )
                        )
                    );
                END IF;
            END;
        $$;
    END IF;

    END;
$_$;


--
-- Name: FUNCTION set_graphql_placeholder(); Type: COMMENT; Schema: extensions; Owner: -
--

COMMENT ON FUNCTION extensions.set_graphql_placeholder() IS 'Reintroduces placeholder function for graphql_public.graphql';


--
-- Name: get_auth(text); Type: FUNCTION; Schema: pgbouncer; Owner: -
--

CREATE FUNCTION pgbouncer.get_auth(p_usename text) RETURNS TABLE(username text, password text)
    LANGUAGE plpgsql SECURITY DEFINER
    SET search_path TO ''
    AS $_$
  BEGIN
      RAISE DEBUG 'PgBouncer auth request: %', p_usename;

      RETURN QUERY
      SELECT
          rolname::text,
          CASE WHEN rolvaliduntil < now()
              THEN null
              ELSE rolpassword::text
          END
      FROM pg_authid
      WHERE rolname=$1 and rolcanlogin;
  END;
  $_$;


--
-- Name: calculate_production_cost_fifo(uuid, jsonb, jsonb); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.calculate_production_cost_fifo(p_production_batch_id uuid, p_actual_materials jsonb, p_actual_items jsonb) RETURNS TABLE(total_material_cost numeric, total_bottle_cost numeric, unit_cost_per_ml numeric, total_volume_ml numeric, cost_breakdown jsonb)
    LANGUAGE plpgsql
    AS $$
DECLARE
    v_material_cost NUMERIC := 0;
    v_bottle_cost NUMERIC := 0;
    v_total_volume_ml NUMERIC := 0;
    v_breakdown JSONB := '[]'::JSONB;
    v_material RECORD;
    v_bottle RECORD;
    v_lot RECORD;
    v_remaining_to_use NUMERIC;
    v_lots_used JSONB;
BEGIN
    -- คำนวณปริมาตรรวม (ml)
    FOR v_bottle IN
        SELECT
            (item->>'bottle_type_id')::UUID as bottle_type_id,
            (item->>'quantity')::INTEGER as quantity
        FROM jsonb_array_elements(p_actual_items) as item
    LOOP
        -- ดึงขนาดขวด (capacity_ml)
        SELECT capacity_ml
        INTO v_lot
        FROM bottle_types
        WHERE id = v_bottle.bottle_type_id;

        IF v_lot.capacity_ml IS NOT NULL THEN
            v_total_volume_ml := v_total_volume_ml + (v_lot.capacity_ml * v_bottle.quantity);
        END IF;
    END LOOP;

    -- คำนวณต้นทุนวัตถุดิบแบบ FIFO
    FOR v_material IN
        SELECT
            (item->>'material_id')::UUID as material_id,
            (item->>'quantity_used')::NUMERIC as quantity_used
        FROM jsonb_array_elements(p_actual_materials) as item
    LOOP
        v_remaining_to_use := v_material.quantity_used;
        v_lots_used := '[]'::JSONB;

        -- ดึง stock_lots เรียงตาม FIFO (เก่าสุดก่อน)
        FOR v_lot IN
            SELECT
                sl.id,
                sl.unit_price,
                sl.quantity_remaining
            FROM stock_lots sl
            WHERE sl.raw_material_id = v_material.material_id
              AND sl.quantity_remaining > 0
            ORDER BY sl.purchase_date ASC, sl.created_at ASC
        LOOP
            IF v_remaining_to_use <= 0 THEN
                EXIT;
            END IF;

            DECLARE
                v_qty_from_lot NUMERIC;
                v_cost_from_lot NUMERIC;
            BEGIN
                -- ใช้จาก lot นี้เท่าไหร่
                v_qty_from_lot := LEAST(v_remaining_to_use, v_lot.quantity_remaining);
                v_cost_from_lot := v_qty_from_lot * v_lot.unit_price;

                -- เพิ่มใน lots_used
                v_lots_used := v_lots_used || jsonb_build_object(
                    'lot_id', v_lot.id,
                    'quantity', v_qty_from_lot,
                    'unit_cost', v_lot.unit_price,
                    'cost', v_cost_from_lot
                );

                v_material_cost := v_material_cost + v_cost_from_lot;
                v_remaining_to_use := v_remaining_to_use - v_qty_from_lot;
            END;
        END LOOP;

        -- เพิ่มรายละเอียดใน breakdown
        IF jsonb_array_length(v_lots_used) > 0 THEN
            DECLARE
                v_total_cost_for_material NUMERIC;
            BEGIN
                -- คำนวณ total cost จาก lots
                SELECT SUM((lot->>'cost')::NUMERIC)
                INTO v_total_cost_for_material
                FROM jsonb_array_elements(v_lots_used) AS lot;

                v_breakdown := v_breakdown || jsonb_build_object(
                    'type', 'material',
                    'material_id', v_material.material_id,
                    'quantity_used', v_material.quantity_used,
                    'cost', v_total_cost_for_material,
                    'lots', v_lots_used
                );
            END;
        END IF;
    END LOOP;

    -- คำนวณต้นทุนขวด (ใช้ราคาเฉลี่ยจาก bottle_types)
    FOR v_bottle IN
        SELECT
            (item->>'bottle_type_id')::UUID as bottle_type_id,
            (item->>'quantity')::INTEGER as quantity
        FROM jsonb_array_elements(p_actual_items) as item
    LOOP
        SELECT average_price
        INTO v_lot
        FROM bottle_types
        WHERE id = v_bottle.bottle_type_id;

        IF v_lot.average_price IS NOT NULL AND v_lot.average_price > 0 THEN
            DECLARE
                v_bottle_total_cost NUMERIC := v_lot.average_price * v_bottle.quantity;
            BEGIN
                v_bottle_cost := v_bottle_cost + v_bottle_total_cost;

                -- เพิ่มรายละเอียดใน breakdown
                v_breakdown := v_breakdown || jsonb_build_object(
                    'type', 'bottle',
                    'bottle_type_id', v_bottle.bottle_type_id,
                    'quantity', v_bottle.quantity,
                    'unit_price', v_lot.average_price,
                    'cost', v_bottle_total_cost
                );
            END;
        END IF;
    END LOOP;

    -- คำนวณต้นทุนต่อ ml
    DECLARE
        v_unit_cost_per_ml_calc NUMERIC := 0;
    BEGIN
        IF v_total_volume_ml > 0 THEN
            v_unit_cost_per_ml_calc := (v_material_cost + v_bottle_cost) / v_total_volume_ml;
        END IF;

        RETURN QUERY SELECT
            v_material_cost,
            v_bottle_cost,
            v_unit_cost_per_ml_calc,
            v_total_volume_ml,
            v_breakdown;
    END;
END;
$$;


--
-- Name: FUNCTION calculate_production_cost_fifo(p_production_batch_id uuid, p_actual_materials jsonb, p_actual_items jsonb); Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON FUNCTION public.calculate_production_cost_fifo(p_production_batch_id uuid, p_actual_materials jsonb, p_actual_items jsonb) IS 'คำนวณต้นทุนการผลิตแบบ FIFO โดยคิดต่อ ml (ไม่ใช่ต่อขวด)';


--
-- Name: calculate_weighted_average_cost(uuid); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.calculate_weighted_average_cost(p_raw_material_id uuid) RETURNS numeric
    LANGUAGE plpgsql
    AS $$
DECLARE
    v_total_value NUMERIC;
    v_total_quantity NUMERIC;
    v_avg_cost NUMERIC;
BEGIN
    -- คำนวณมูลค่ารวมและจำนวนรวมจาก lots ที่เหลืออยู่
    SELECT
        SUM(quantity_remaining * unit_price),
        SUM(quantity_remaining)
    INTO v_total_value, v_total_quantity
    FROM stock_lots
    WHERE raw_material_id = p_raw_material_id
      AND quantity_remaining > 0;

    -- ถ้าไม่มี stock เหลือ ให้ return 0
    IF v_total_quantity IS NULL OR v_total_quantity = 0 THEN
        RETURN 0;
    END IF;

    -- คำนวณต้นทุนเฉลี่ย
    v_avg_cost := v_total_value / v_total_quantity;

    RETURN ROUND(v_avg_cost, 2);
END;
$$;


--
-- Name: FUNCTION calculate_weighted_average_cost(p_raw_material_id uuid); Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON FUNCTION public.calculate_weighted_average_cost(p_raw_material_id uuid) IS 'คำนวณต้นทุนเฉลี่ยถ่วงน้ำหนัก (Weighted Average) จาก lots ที่เหลือ';


--
-- Name: check_material_availability(uuid, numeric); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.check_material_availability(p_product_id uuid, p_total_volume_liters numeric) RETURNS TABLE(is_sufficient boolean, insufficient_materials jsonb)
    LANGUAGE plpgsql
    AS $$
DECLARE
    v_insufficient JSONB := '[]'::JSONB;
    v_recipe RECORD;
    v_required NUMERIC;
    v_available NUMERIC;
BEGIN
    -- ตรวจสอบแต่ละวัตถุดิบจากสูตร
    FOR v_recipe IN
        SELECT
            pr.raw_material_id,
            pr.quantity_per_unit,
            rm.current_stock,
            rm.name,
            rm.unit
        FROM product_recipes pr
        JOIN raw_materials rm ON rm.id = pr.raw_material_id
        WHERE pr.product_id = p_product_id
    LOOP
        v_required := v_recipe.quantity_per_unit * p_total_volume_liters;
        v_available := v_recipe.current_stock;

        IF v_available < v_required THEN
            v_insufficient := v_insufficient || jsonb_build_object(
                'material_id', v_recipe.raw_material_id,
                'material_name', v_recipe.name,
                'unit', v_recipe.unit,
                'required', v_required,
                'available', v_available,
                'shortage', v_required - v_available
            );
        END IF;
    END LOOP;

    -- ถ้าไม่มี insufficient วัสดุเลย = พอ
    RETURN QUERY SELECT
        (jsonb_array_length(v_insufficient) = 0)::BOOLEAN,
        v_insufficient;
END;
$$;


--
-- Name: FUNCTION check_material_availability(p_product_id uuid, p_total_volume_liters numeric); Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON FUNCTION public.check_material_availability(p_product_id uuid, p_total_volume_liters numeric) IS 'ตรวจสอบว่าวัตถุดิบเพียงพอสำหรับการผลิตหรือไม่';


--
-- Name: deduct_stock_fifo(uuid, numeric, uuid, uuid); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.deduct_stock_fifo(p_raw_material_id uuid, p_quantity_to_deduct numeric, p_stock_transaction_id uuid DEFAULT NULL::uuid, p_production_batch_id uuid DEFAULT NULL::uuid) RETURNS TABLE(lot_id uuid, quantity_used numeric, unit_cost numeric, total_cost numeric)
    LANGUAGE plpgsql
    AS $$
DECLARE
    v_remaining NUMERIC := p_quantity_to_deduct;
    v_lot RECORD;
    v_quantity_from_lot NUMERIC;
BEGIN
    -- Loop through lots จากเก่าสุดไปใหม่สุด (FIFO)
    FOR v_lot IN
        SELECT id, quantity_remaining, unit_price
        FROM stock_lots
        WHERE raw_material_id = p_raw_material_id
          AND quantity_remaining > 0
        ORDER BY purchase_date ASC, created_at ASC
    LOOP
        EXIT WHEN v_remaining <= 0;

        -- คำนวณว่าจะเอาจาก lot นี้เท่าไหร่
        v_quantity_from_lot := LEAST(v_remaining, v_lot.quantity_remaining);

        -- อัพเดท quantity_remaining ใน lot
        UPDATE stock_lots
        SET quantity_remaining = quantity_remaining - v_quantity_from_lot,
            updated_at = now()
        WHERE id = v_lot.id;

        -- บันทึกการใช้งาน lot นี้
        INSERT INTO stock_lot_usages (
            stock_lot_id,
            stock_transaction_id,
            production_batch_id,
            quantity_used,
            unit_cost,
            total_cost,
            usage_date
        ) VALUES (
            v_lot.id,
            p_stock_transaction_id,
            p_production_batch_id,
            v_quantity_from_lot,
            v_lot.unit_price,
            v_quantity_from_lot * v_lot.unit_price,
            now()
        );

        -- Return รายละเอียดการตัด
        RETURN QUERY SELECT
            v_lot.id,
            v_quantity_from_lot,
            v_lot.unit_price,
            v_quantity_from_lot * v_lot.unit_price;

        -- ลดจำนวนที่เหลือต้องตัด
        v_remaining := v_remaining - v_quantity_from_lot;
    END LOOP;

    -- ถ้ายังเหลือจำนวนที่ต้องตัด แสดงว่า stock ไม่พอ
    IF v_remaining > 0 THEN
        RAISE EXCEPTION 'Insufficient stock. Still need to deduct: %', v_remaining;
    END IF;
END;
$$;


--
-- Name: FUNCTION deduct_stock_fifo(p_raw_material_id uuid, p_quantity_to_deduct numeric, p_stock_transaction_id uuid, p_production_batch_id uuid); Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON FUNCTION public.deduct_stock_fifo(p_raw_material_id uuid, p_quantity_to_deduct numeric, p_stock_transaction_id uuid, p_production_batch_id uuid) IS 'ตัด stock แบบ FIFO (lot เก่าสุดออกก่อน) และบันทึก lot usage';


--
-- Name: ensure_one_default_address(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.ensure_one_default_address() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  -- If setting this address as default
  IF NEW.is_default = true THEN
    -- Remove default flag from other addresses of this customer
    UPDATE shipping_addresses
    SET is_default = false
    WHERE customer_id = NEW.customer_id
      AND id != NEW.id
      AND is_default = true;
  END IF;

  RETURN NEW;
END;
$$;


--
-- Name: generate_batch_id(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.generate_batch_id() RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
  year_part TEXT;
  sequence_num INTEGER;
  new_batch_id TEXT;
BEGIN
  year_part := TO_CHAR(CURRENT_DATE, 'YYYY');

  -- Get the next sequence number for this year
  SELECT COALESCE(MAX(
    CAST(SPLIT_PART(batch_id, '-', 3) AS INTEGER)
  ), 0) + 1
  INTO sequence_num
  FROM production_batches
  WHERE batch_id LIKE 'BATCH-' || year_part || '-%';

  new_batch_id := 'BATCH-' || year_part || '-' || LPAD(sequence_num::TEXT, 4, '0');

  RETURN new_batch_id;
END;
$$;


--
-- Name: generate_customer_code(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.generate_customer_code() RETURNS text
    LANGUAGE plpgsql
    AS $_$
DECLARE
  sequence_num INTEGER;
  new_code TEXT;
BEGIN
  -- Get the next sequence number
  SELECT COALESCE(MAX(
    CAST(SUBSTRING(customer_code FROM 'CUST-([0-9]+)') AS INTEGER)
  ), 0) + 1
  INTO sequence_num
  FROM customers
  WHERE customer_code ~ '^CUST-[0-9]+$';

  new_code := 'CUST-' || LPAD(sequence_num::TEXT, 4, '0');

  RETURN new_code;
END;
$_$;


--
-- Name: generate_order_number(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.generate_order_number() RETURNS text
    LANGUAGE plpgsql
    AS $_$
DECLARE
  next_num INTEGER;
  year_part TEXT;
  month_part TEXT;
BEGIN
  -- Get current year and month
  year_part := TO_CHAR(NOW(), 'YYYY');
  month_part := TO_CHAR(NOW(), 'MM');

  -- Get the next number for this year-month
  SELECT COALESCE(MAX(
    CAST(SUBSTRING(order_number FROM '\d+$') AS INTEGER)
  ), 0) + 1
  INTO next_num
  FROM orders
  WHERE order_number LIKE 'ORD-' || year_part || month_part || '-%';

  -- Return formatted order number: ORD-YYYYMM-0001
  RETURN 'ORD-' || year_part || month_part || '-' || LPAD(next_num::TEXT, 4, '0');
END;
$_$;


--
-- Name: get_customer_last_prices(uuid); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.get_customer_last_prices(p_customer_id uuid) RETURNS TABLE(product_id uuid, last_unit_price numeric, last_discount_percent numeric, last_order_date timestamp with time zone)
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN QUERY
  SELECT DISTINCT ON (oi.product_id)
    oi.product_id,
    oi.unit_price,
    oi.discount_percent,
    o.order_date
  FROM order_items oi
  JOIN orders o ON oi.order_id = o.id
  WHERE o.customer_id = p_customer_id
    AND o.order_status != 'cancelled'
  ORDER BY oi.product_id, o.order_date DESC;
END;
$$;


--
-- Name: FUNCTION get_customer_last_prices(p_customer_id uuid); Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON FUNCTION public.get_customer_last_prices(p_customer_id uuid) IS 'ดึงราคาล่าสุดที่ลูกค้าเคยซื้อสินค้าแต่ละชิ้น (Get last prices customer paid for each product)';


--
-- Name: get_customer_last_prices_by_variation(uuid); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.get_customer_last_prices_by_variation(p_customer_id uuid) RETURNS TABLE(variation_id uuid, last_unit_price numeric, last_discount_percent numeric)
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN QUERY
  SELECT DISTINCT ON (oi.variation_id)
    oi.variation_id,
    oi.unit_price as last_unit_price,
    oi.discount_percent as last_discount_percent
  FROM order_items oi
  INNER JOIN orders o ON oi.order_id = o.id
  WHERE o.customer_id = p_customer_id
    AND oi.variation_id IS NOT NULL
    AND o.order_status != 'cancelled'
  ORDER BY oi.variation_id, o.order_date DESC, o.created_at DESC;
END;
$$;


--
-- Name: get_customer_shipping_addresses(uuid); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.get_customer_shipping_addresses(p_customer_id uuid) RETURNS TABLE(id uuid, address_name text, contact_person text, phone text, full_address text, google_maps_link text, delivery_notes text, is_default boolean, is_active boolean)
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN QUERY
  SELECT
    sa.id,
    sa.address_name,
    sa.contact_person,
    sa.phone,
    CONCAT_WS(' ',
      sa.address_line1,
      sa.address_line2,
      sa.district,
      sa.amphoe,
      sa.province,
      sa.postal_code
    ) AS full_address,
    sa.google_maps_link,
    sa.delivery_notes,
    sa.is_default,
    sa.is_active
  FROM shipping_addresses sa
  WHERE sa.customer_id = p_customer_id
    AND sa.is_active = true
  ORDER BY sa.is_default DESC, sa.created_at DESC;
END;
$$;


--
-- Name: get_customer_statistics(uuid); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.get_customer_statistics(customer_uuid uuid) RETURNS TABLE(total_orders integer, total_revenue numeric, average_order_value numeric, last_order_date timestamp with time zone)
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN QUERY
  SELECT 
    COUNT(*)::INTEGER as total_orders,
    COALESCE(SUM(total), 0)::DECIMAL as total_revenue,
    COALESCE(AVG(total), 0)::DECIMAL as average_order_value,
    MAX(order_date) as last_order_date
  FROM sales_orders
  WHERE customer_id = customer_uuid
    AND status NOT IN ('cancelled', 'draft');
END;
$$;


--
-- Name: get_order_details(uuid); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.get_order_details(p_order_id uuid) RETURNS json
    LANGUAGE plpgsql
    AS $$
DECLARE
  result JSON;
BEGIN
  SELECT json_build_object(
    'order', row_to_json(o.*),
    'customer', row_to_json(c.*),
    'items', (
      SELECT json_agg(
        json_build_object(
          'item', row_to_json(oi.*),
          'product', row_to_json(p.*),
          'shipments', (
            SELECT json_agg(
              json_build_object(
                'shipment', row_to_json(os.*),
                'address', row_to_json(sa.*)
              )
            )
            FROM order_shipments os
            LEFT JOIN shipping_addresses sa ON os.shipping_address_id = sa.id
            WHERE os.order_item_id = oi.id
          )
        )
      )
      FROM order_items oi
      LEFT JOIN products p ON oi.product_id = p.id
      WHERE oi.order_id = o.id
    )
  ) INTO result
  FROM orders o
  LEFT JOIN customers c ON o.customer_id = c.id
  WHERE o.id = p_order_id;

  RETURN result;
END;
$$;


--
-- Name: get_outstanding_report(date, date, text); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.get_outstanding_report(p_start_date date DEFAULT NULL::date, p_end_date date DEFAULT NULL::date, p_status text DEFAULT 'all'::text) RETURNS TABLE(customer_id uuid, customer_name text, customer_code text, order_id uuid, order_number text, order_date date, due_date date, total_amount numeric, paid_amount numeric, outstanding numeric, days_overdue integer, status_color text)
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN QUERY
  SELECT
    c.id,
    c.name,
    c.customer_code,
    o.id,
    o.order_number,
    o.order_date,
    o.due_date,
    o.total_amount,
    o.paid_amount,
    o.total_amount - o.paid_amount AS outstanding,
    CASE
      WHEN o.due_date < CURRENT_DATE THEN CURRENT_DATE - o.due_date
      ELSE 0
    END AS days_overdue,
    CASE
      WHEN o.due_date < CURRENT_DATE THEN 'red'
      WHEN o.due_date - CURRENT_DATE <= 7 THEN 'yellow'
      ELSE 'green'
    END AS status_color
  FROM orders o
  JOIN customers c ON o.customer_id = c.id
  WHERE o.payment_status != 'paid'
    AND o.payment_method = 'credit'
    AND o.status NOT IN ('cancelled', 'draft')
    AND (p_start_date IS NULL OR o.order_date >= p_start_date)
    AND (p_end_date IS NULL OR o.order_date <= p_end_date)
    AND (
      p_status = 'all' OR
      (p_status = 'overdue' AND o.due_date < CURRENT_DATE) OR
      (p_status = 'upcoming' AND o.due_date >= CURRENT_DATE AND o.due_date - CURRENT_DATE <= 7)
    )
  ORDER BY
    CASE
      WHEN o.due_date < CURRENT_DATE THEN 1
      WHEN o.due_date - CURRENT_DATE <= 7 THEN 2
      ELSE 3
    END,
    o.due_date;
END;
$$;


--
-- Name: get_production_summary(timestamp with time zone, timestamp with time zone); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.get_production_summary(start_date timestamp with time zone, end_date timestamp with time zone) RETURNS TABLE(total_batches integer, completed_batches integer, total_bottles integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN QUERY
  SELECT 
    COUNT(*)::INTEGER as total_batches,
    COUNT(*) FILTER (WHERE status = 'completed')::INTEGER as completed_batches,
    COALESCE(SUM(
      (actual_bottles->>'250ml')::INTEGER + 
      (actual_bottles->>'350ml')::INTEGER + 
      (actual_bottles->>'1000ml')::INTEGER
    ), 0)::INTEGER as total_bottles
  FROM production_batches
  WHERE planned_date BETWEEN start_date AND end_date;
END;
$$;


--
-- Name: handle_new_user(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.handle_new_user() RETURNS trigger
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
DECLARE
  user_role_value public.user_role;  -- Explicitly specify schema
BEGIN
  -- Extract role from metadata, default to 'operation' if not provided
  BEGIN
    user_role_value := COALESCE(
      (new.raw_user_meta_data->>'role')::public.user_role,
      'operation'::public.user_role
    );
  EXCEPTION
    WHEN OTHERS THEN
      -- If casting fails, use default
      user_role_value := 'operation'::public.user_role;
      RAISE WARNING 'Failed to cast role, using default: %', SQLERRM;
  END;

  -- Insert or update user profile
  INSERT INTO public.user_profiles (id, email, name, role, is_active)
  VALUES (
    new.id,
    new.email,
    COALESCE(new.raw_user_meta_data->>'name', split_part(new.email, '@', 1)),
    user_role_value,
    true
  )
  ON CONFLICT (id) DO UPDATE
  SET
    email = EXCLUDED.email,
    updated_at = NOW();

  RETURN new;
EXCEPTION
  WHEN OTHERS THEN
    -- Log error and re-raise to prevent user creation if profile fails
    RAISE WARNING 'Error in handle_new_user: %', SQLERRM;
    RAISE;
END;
$$;


--
-- Name: is_admin(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.is_admin() RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
  SELECT EXISTS (
    SELECT 1 FROM user_profiles 
    WHERE id = auth.uid() AND role = 'admin'
  );
$$;


--
-- Name: is_manager_or_admin(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.is_manager_or_admin() RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
  SELECT EXISTS (
    SELECT 1 FROM user_profiles 
    WHERE id = auth.uid() AND role IN ('manager', 'admin')
  );
$$;


--
-- Name: is_production_staff(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.is_production_staff() RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
  SELECT EXISTS (
    SELECT 1 FROM user_profiles 
    WHERE id = auth.uid() AND role IN ('operation', 'manager', 'admin')
  );
$$;


--
-- Name: is_sales_or_admin(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.is_sales_or_admin() RETURNS boolean
    LANGUAGE sql STABLE SECURITY DEFINER
    AS $$
  SELECT EXISTS (
    SELECT 1 FROM user_profiles 
    WHERE id = auth.uid() AND role IN ('sales', 'admin')
  );
$$;


--
-- Name: search_customers(text); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.search_customers(search_query text) RETURNS TABLE(id uuid, business_name character varying, contact_name character varying, phone character varying, rank real)
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN QUERY
  SELECT 
    c.id,
    c.business_name,
    c.contact_name,
    c.phone,
    ts_rank(
      to_tsvector('simple', coalesce(c.business_name, '') || ' ' || coalesce(c.contact_name, '') || ' ' || coalesce(c.phone, '')),
      plainto_tsquery('simple', search_query)
    ) as rank
  FROM customers c
  WHERE 
    to_tsvector('simple', coalesce(c.business_name, '') || ' ' || coalesce(c.contact_name, '') || ' ' || coalesce(c.phone, ''))
    @@ plainto_tsquery('simple', search_query)
  ORDER BY rank DESC
  LIMIT 20;
END;
$$;


--
-- Name: trigger_update_customer_stats(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.trigger_update_customer_stats() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  -- Update stats for the affected customer
  IF TG_OP IN ('INSERT', 'UPDATE') THEN
    PERFORM update_customer_stats(NEW.customer_id);
  END IF;

  IF TG_OP = 'DELETE' THEN
    PERFORM update_customer_stats(OLD.customer_id);
  END IF;

  RETURN COALESCE(NEW, OLD);
END;
$$;


--
-- Name: update_customer_stats(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.update_customer_stats() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  IF TG_OP = 'INSERT' OR TG_OP = 'UPDATE' THEN
    UPDATE customers
    SET 
      total_orders = (
        SELECT COUNT(*) 
        FROM sales_orders 
        WHERE customer_id = NEW.customer_id 
          AND status NOT IN ('cancelled', 'draft')
      ),
      total_revenue = (
        SELECT COALESCE(SUM(total), 0) 
        FROM sales_orders 
        WHERE customer_id = NEW.customer_id 
          AND status NOT IN ('cancelled', 'draft')
      ),
      average_order_value = (
        SELECT COALESCE(AVG(total), 0) 
        FROM sales_orders 
        WHERE customer_id = NEW.customer_id 
          AND status NOT IN ('cancelled', 'draft')
      ),
      last_order_date = (
        SELECT MAX(order_date) 
        FROM sales_orders 
        WHERE customer_id = NEW.customer_id 
          AND status NOT IN ('cancelled', 'draft')
      ),
      first_order_date = (
        SELECT MIN(order_date) 
        FROM sales_orders 
        WHERE customer_id = NEW.customer_id 
          AND status NOT IN ('cancelled', 'draft')
      ),
      days_since_last_order = (
        SELECT EXTRACT(DAY FROM NOW() - MAX(order_date))::INTEGER
        FROM sales_orders 
        WHERE customer_id = NEW.customer_id 
          AND status NOT IN ('cancelled', 'draft')
      ),
      is_at_risk = (
        SELECT EXTRACT(DAY FROM NOW() - MAX(order_date))::INTEGER > 90
        FROM sales_orders 
        WHERE customer_id = NEW.customer_id 
          AND status NOT IN ('cancelled', 'draft')
      )
    WHERE id = NEW.customer_id;
  END IF;
  
  RETURN NEW;
END;
$$;


--
-- Name: update_customer_stats(uuid); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.update_customer_stats(p_customer_id uuid) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  v_first_order_date DATE;
  v_last_order_date DATE;
  v_total_orders INTEGER;
BEGIN
  -- Calculate stats from orders (excluding cancelled orders)
  SELECT
    MIN(order_date),
    MAX(order_date),
    COUNT(*)
  INTO
    v_first_order_date,
    v_last_order_date,
    v_total_orders
  FROM orders
  WHERE customer_id = p_customer_id
    AND order_status != 'cancelled';

  -- Update customer stats (only fields that exist in customers table)
  UPDATE customers
  SET
    first_order_date = v_first_order_date,
    last_order_date = v_last_order_date,
    total_orders = v_total_orders,
    updated_at = NOW()
  WHERE id = p_customer_id;
END;
$$;


--
-- Name: update_order_totals(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.update_order_totals() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  v_order_id UUID;
  v_items_total NUMERIC(15,2); -- Total from items (already includes VAT)
  v_discount_amount NUMERIC(15,2);
  v_subtotal NUMERIC(15,2); -- Price before VAT
  v_vat_amount NUMERIC(15,2); -- VAT amount
  v_total_amount NUMERIC(15,2); -- Final total (same as items_total - discount)
BEGIN
  -- Get order_id from the triggered row
  IF TG_OP = 'DELETE' THEN
    v_order_id := OLD.order_id;
  ELSE
    v_order_id := NEW.order_id;
  END IF;

  -- Sum all item totals (these already include VAT)
  SELECT COALESCE(SUM(total), 0) INTO v_items_total
  FROM order_items
  WHERE order_id = v_order_id;

  -- Get discount amount from order
  SELECT COALESCE(discount_amount, 0) INTO v_discount_amount
  FROM orders
  WHERE id = v_order_id;

  -- Calculate final total (items total - discount)
  v_total_amount := v_items_total - v_discount_amount;

  -- Calculate backwards to get subtotal (before VAT)
  -- Formula: Subtotal = Total / 1.07
  v_subtotal := ROUND(v_total_amount / 1.07, 2);

  -- Calculate VAT amount
  -- Formula: VAT = Total - Subtotal
  v_vat_amount := v_total_amount - v_subtotal;

  -- Update order with calculated values
  UPDATE orders
  SET
    subtotal = v_subtotal,
    vat_amount = v_vat_amount,
    total_amount = v_total_amount,
    updated_at = NOW()
  WHERE id = v_order_id;

  RETURN NULL;
END;
$$;


--
-- Name: update_payment_status(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.update_payment_status() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  order_total DECIMAL(12, 2);
  total_paid DECIMAL(12, 2);
  new_status TEXT;
BEGIN
  -- Get order total
  SELECT total_amount INTO order_total
  FROM orders
  WHERE id = COALESCE(NEW.order_id, OLD.order_id);

  -- Get total paid amount
  SELECT COALESCE(SUM(amount), 0) INTO total_paid
  FROM payments
  WHERE order_id = COALESCE(NEW.order_id, OLD.order_id);

  -- Determine payment status
  IF total_paid >= order_total THEN
    new_status := 'paid';
  ELSIF total_paid > 0 THEN
    new_status := 'partial';
  ELSE
    new_status := 'pending';
  END IF;

  -- Update order
  UPDATE orders
  SET
    paid_amount = total_paid,
    payment_status = new_status,
    updated_at = NOW()
  WHERE id = COALESCE(NEW.order_id, OLD.order_id);

  RETURN COALESCE(NEW, OLD);
END;
$$;


--
-- Name: update_updated_at_column(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.update_updated_at_column() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$;


--
-- Name: validate_shipment_quantities(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.validate_shipment_quantities() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  total_shipped INTEGER;
  item_quantity INTEGER;
BEGIN
  -- Get total quantity for this order item
  SELECT quantity INTO item_quantity
  FROM order_items
  WHERE id = NEW.order_item_id;

  -- Get total quantity already allocated to shipments (including this new one)
  SELECT COALESCE(SUM(quantity), 0) INTO total_shipped
  FROM order_shipments
  WHERE order_item_id = NEW.order_item_id;

  -- Check if total shipped exceeds item quantity
  IF total_shipped > item_quantity THEN
    RAISE EXCEPTION 'Total shipment quantity (%) exceeds order item quantity (%)', total_shipped, item_quantity;
  END IF;

  RETURN NEW;
END;
$$;


--
-- Name: apply_rls(jsonb, integer); Type: FUNCTION; Schema: realtime; Owner: -
--

CREATE FUNCTION realtime.apply_rls(wal jsonb, max_record_bytes integer DEFAULT (1024 * 1024)) RETURNS SETOF realtime.wal_rls
    LANGUAGE plpgsql
    AS $$
declare
-- Regclass of the table e.g. public.notes
entity_ regclass = (quote_ident(wal ->> 'schema') || '.' || quote_ident(wal ->> 'table'))::regclass;

-- I, U, D, T: insert, update ...
action realtime.action = (
    case wal ->> 'action'
        when 'I' then 'INSERT'
        when 'U' then 'UPDATE'
        when 'D' then 'DELETE'
        else 'ERROR'
    end
);

-- Is row level security enabled for the table
is_rls_enabled bool = relrowsecurity from pg_class where oid = entity_;

subscriptions realtime.subscription[] = array_agg(subs)
    from
        realtime.subscription subs
    where
        subs.entity = entity_
        -- Filter by action early - only get subscriptions interested in this action
        -- action_filter column can be: '*' (all), 'INSERT', 'UPDATE', or 'DELETE'
        and (subs.action_filter = '*' or subs.action_filter = action::text);

-- Subscription vars
roles regrole[] = array_agg(distinct us.claims_role::text)
    from
        unnest(subscriptions) us;

working_role regrole;
claimed_role regrole;
claims jsonb;

subscription_id uuid;
subscription_has_access bool;
visible_to_subscription_ids uuid[] = '{}';

-- structured info for wal's columns
columns realtime.wal_column[];
-- previous identity values for update/delete
old_columns realtime.wal_column[];

error_record_exceeds_max_size boolean = octet_length(wal::text) > max_record_bytes;

-- Primary jsonb output for record
output jsonb;

begin
perform set_config('role', null, true);

columns =
    array_agg(
        (
            x->>'name',
            x->>'type',
            x->>'typeoid',
            realtime.cast(
                (x->'value') #>> '{}',
                coalesce(
                    (x->>'typeoid')::regtype, -- null when wal2json version <= 2.4
                    (x->>'type')::regtype
                )
            ),
            (pks ->> 'name') is not null,
            true
        )::realtime.wal_column
    )
    from
        jsonb_array_elements(wal -> 'columns') x
        left join jsonb_array_elements(wal -> 'pk') pks
            on (x ->> 'name') = (pks ->> 'name');

old_columns =
    array_agg(
        (
            x->>'name',
            x->>'type',
            x->>'typeoid',
            realtime.cast(
                (x->'value') #>> '{}',
                coalesce(
                    (x->>'typeoid')::regtype, -- null when wal2json version <= 2.4
                    (x->>'type')::regtype
                )
            ),
            (pks ->> 'name') is not null,
            true
        )::realtime.wal_column
    )
    from
        jsonb_array_elements(wal -> 'identity') x
        left join jsonb_array_elements(wal -> 'pk') pks
            on (x ->> 'name') = (pks ->> 'name');

for working_role in select * from unnest(roles) loop

    -- Update `is_selectable` for columns and old_columns
    columns =
        array_agg(
            (
                c.name,
                c.type_name,
                c.type_oid,
                c.value,
                c.is_pkey,
                pg_catalog.has_column_privilege(working_role, entity_, c.name, 'SELECT')
            )::realtime.wal_column
        )
        from
            unnest(columns) c;

    old_columns =
            array_agg(
                (
                    c.name,
                    c.type_name,
                    c.type_oid,
                    c.value,
                    c.is_pkey,
                    pg_catalog.has_column_privilege(working_role, entity_, c.name, 'SELECT')
                )::realtime.wal_column
            )
            from
                unnest(old_columns) c;

    if action <> 'DELETE' and count(1) = 0 from unnest(columns) c where c.is_pkey then
        return next (
            jsonb_build_object(
                'schema', wal ->> 'schema',
                'table', wal ->> 'table',
                'type', action
            ),
            is_rls_enabled,
            -- subscriptions is already filtered by entity
            (select array_agg(s.subscription_id) from unnest(subscriptions) as s where claims_role = working_role),
            array['Error 400: Bad Request, no primary key']
        )::realtime.wal_rls;

    -- The claims role does not have SELECT permission to the primary key of entity
    elsif action <> 'DELETE' and sum(c.is_selectable::int) <> count(1) from unnest(columns) c where c.is_pkey then
        return next (
            jsonb_build_object(
                'schema', wal ->> 'schema',
                'table', wal ->> 'table',
                'type', action
            ),
            is_rls_enabled,
            (select array_agg(s.subscription_id) from unnest(subscriptions) as s where claims_role = working_role),
            array['Error 401: Unauthorized']
        )::realtime.wal_rls;

    else
        output = jsonb_build_object(
            'schema', wal ->> 'schema',
            'table', wal ->> 'table',
            'type', action,
            'commit_timestamp', to_char(
                ((wal ->> 'timestamp')::timestamptz at time zone 'utc'),
                'YYYY-MM-DD"T"HH24:MI:SS.MS"Z"'
            ),
            'columns', (
                select
                    jsonb_agg(
                        jsonb_build_object(
                            'name', pa.attname,
                            'type', pt.typname
                        )
                        order by pa.attnum asc
                    )
                from
                    pg_attribute pa
                    join pg_type pt
                        on pa.atttypid = pt.oid
                where
                    attrelid = entity_
                    and attnum > 0
                    and pg_catalog.has_column_privilege(working_role, entity_, pa.attname, 'SELECT')
            )
        )
        -- Add "record" key for insert and update
        || case
            when action in ('INSERT', 'UPDATE') then
                jsonb_build_object(
                    'record',
                    (
                        select
                            jsonb_object_agg(
                                -- if unchanged toast, get column name and value from old record
                                coalesce((c).name, (oc).name),
                                case
                                    when (c).name is null then (oc).value
                                    else (c).value
                                end
                            )
                        from
                            unnest(columns) c
                            full outer join unnest(old_columns) oc
                                on (c).name = (oc).name
                        where
                            coalesce((c).is_selectable, (oc).is_selectable)
                            and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                    )
                )
            else '{}'::jsonb
        end
        -- Add "old_record" key for update and delete
        || case
            when action = 'UPDATE' then
                jsonb_build_object(
                        'old_record',
                        (
                            select jsonb_object_agg((c).name, (c).value)
                            from unnest(old_columns) c
                            where
                                (c).is_selectable
                                and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                        )
                    )
            when action = 'DELETE' then
                jsonb_build_object(
                    'old_record',
                    (
                        select jsonb_object_agg((c).name, (c).value)
                        from unnest(old_columns) c
                        where
                            (c).is_selectable
                            and ( not error_record_exceeds_max_size or (octet_length((c).value::text) <= 64))
                            and ( not is_rls_enabled or (c).is_pkey ) -- if RLS enabled, we can't secure deletes so filter to pkey
                    )
                )
            else '{}'::jsonb
        end;

        -- Create the prepared statement
        if is_rls_enabled and action <> 'DELETE' then
            if (select 1 from pg_prepared_statements where name = 'walrus_rls_stmt' limit 1) > 0 then
                deallocate walrus_rls_stmt;
            end if;
            execute realtime.build_prepared_statement_sql('walrus_rls_stmt', entity_, columns);
        end if;

        visible_to_subscription_ids = '{}';

        for subscription_id, claims in (
                select
                    subs.subscription_id,
                    subs.claims
                from
                    unnest(subscriptions) subs
                where
                    subs.entity = entity_
                    and subs.claims_role = working_role
                    and (
                        realtime.is_visible_through_filters(columns, subs.filters)
                        or (
                          action = 'DELETE'
                          and realtime.is_visible_through_filters(old_columns, subs.filters)
                        )
                    )
        ) loop

            if not is_rls_enabled or action = 'DELETE' then
                visible_to_subscription_ids = visible_to_subscription_ids || subscription_id;
            else
                -- Check if RLS allows the role to see the record
                perform
                    -- Trim leading and trailing quotes from working_role because set_config
                    -- doesn't recognize the role as valid if they are included
                    set_config('role', trim(both '"' from working_role::text), true),
                    set_config('request.jwt.claims', claims::text, true);

                execute 'execute walrus_rls_stmt' into subscription_has_access;

                if subscription_has_access then
                    visible_to_subscription_ids = visible_to_subscription_ids || subscription_id;
                end if;
            end if;
        end loop;

        perform set_config('role', null, true);

        return next (
            output,
            is_rls_enabled,
            visible_to_subscription_ids,
            case
                when error_record_exceeds_max_size then array['Error 413: Payload Too Large']
                else '{}'
            end
        )::realtime.wal_rls;

    end if;
end loop;

perform set_config('role', null, true);
end;
$$;


--
-- Name: broadcast_changes(text, text, text, text, text, record, record, text); Type: FUNCTION; Schema: realtime; Owner: -
--

CREATE FUNCTION realtime.broadcast_changes(topic_name text, event_name text, operation text, table_name text, table_schema text, new record, old record, level text DEFAULT 'ROW'::text) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
    -- Declare a variable to hold the JSONB representation of the row
    row_data jsonb := '{}'::jsonb;
BEGIN
    IF level = 'STATEMENT' THEN
        RAISE EXCEPTION 'function can only be triggered for each row, not for each statement';
    END IF;
    -- Check the operation type and handle accordingly
    IF operation = 'INSERT' OR operation = 'UPDATE' OR operation = 'DELETE' THEN
        row_data := jsonb_build_object('old_record', OLD, 'record', NEW, 'operation', operation, 'table', table_name, 'schema', table_schema);
        PERFORM realtime.send (row_data, event_name, topic_name);
    ELSE
        RAISE EXCEPTION 'Unexpected operation type: %', operation;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        RAISE EXCEPTION 'Failed to process the row: %', SQLERRM;
END;

$$;


--
-- Name: build_prepared_statement_sql(text, regclass, realtime.wal_column[]); Type: FUNCTION; Schema: realtime; Owner: -
--

CREATE FUNCTION realtime.build_prepared_statement_sql(prepared_statement_name text, entity regclass, columns realtime.wal_column[]) RETURNS text
    LANGUAGE sql
    AS $$
      /*
      Builds a sql string that, if executed, creates a prepared statement to
      tests retrive a row from *entity* by its primary key columns.
      Example
          select realtime.build_prepared_statement_sql('public.notes', '{"id"}'::text[], '{"bigint"}'::text[])
      */
          select
      'prepare ' || prepared_statement_name || ' as
          select
              exists(
                  select
                      1
                  from
                      ' || entity || '
                  where
                      ' || string_agg(quote_ident(pkc.name) || '=' || quote_nullable(pkc.value #>> '{}') , ' and ') || '
              )'
          from
              unnest(columns) pkc
          where
              pkc.is_pkey
          group by
              entity
      $$;


--
-- Name: cast(text, regtype); Type: FUNCTION; Schema: realtime; Owner: -
--

CREATE FUNCTION realtime."cast"(val text, type_ regtype) RETURNS jsonb
    LANGUAGE plpgsql IMMUTABLE
    AS $$
    declare
      res jsonb;
    begin
      execute format('select to_jsonb(%L::'|| type_::text || ')', val)  into res;
      return res;
    end
    $$;


--
-- Name: check_equality_op(realtime.equality_op, regtype, text, text); Type: FUNCTION; Schema: realtime; Owner: -
--

CREATE FUNCTION realtime.check_equality_op(op realtime.equality_op, type_ regtype, val_1 text, val_2 text) RETURNS boolean
    LANGUAGE plpgsql IMMUTABLE
    AS $$
      /*
      Casts *val_1* and *val_2* as type *type_* and check the *op* condition for truthiness
      */
      declare
          op_symbol text = (
              case
                  when op = 'eq' then '='
                  when op = 'neq' then '!='
                  when op = 'lt' then '<'
                  when op = 'lte' then '<='
                  when op = 'gt' then '>'
                  when op = 'gte' then '>='
                  when op = 'in' then '= any'
                  else 'UNKNOWN OP'
              end
          );
          res boolean;
      begin
          execute format(
              'select %L::'|| type_::text || ' ' || op_symbol
              || ' ( %L::'
              || (
                  case
                      when op = 'in' then type_::text || '[]'
                      else type_::text end
              )
              || ')', val_1, val_2) into res;
          return res;
      end;
      $$;


--
-- Name: is_visible_through_filters(realtime.wal_column[], realtime.user_defined_filter[]); Type: FUNCTION; Schema: realtime; Owner: -
--

CREATE FUNCTION realtime.is_visible_through_filters(columns realtime.wal_column[], filters realtime.user_defined_filter[]) RETURNS boolean
    LANGUAGE sql IMMUTABLE
    AS $_$
    /*
    Should the record be visible (true) or filtered out (false) after *filters* are applied
    */
        select
            -- Default to allowed when no filters present
            $2 is null -- no filters. this should not happen because subscriptions has a default
            or array_length($2, 1) is null -- array length of an empty array is null
            or bool_and(
                coalesce(
                    realtime.check_equality_op(
                        op:=f.op,
                        type_:=coalesce(
                            col.type_oid::regtype, -- null when wal2json version <= 2.4
                            col.type_name::regtype
                        ),
                        -- cast jsonb to text
                        val_1:=col.value #>> '{}',
                        val_2:=f.value
                    ),
                    false -- if null, filter does not match
                )
            )
        from
            unnest(filters) f
            join unnest(columns) col
                on f.column_name = col.name;
    $_$;


--
-- Name: list_changes(name, name, integer, integer); Type: FUNCTION; Schema: realtime; Owner: -
--

CREATE FUNCTION realtime.list_changes(publication name, slot_name name, max_changes integer, max_record_bytes integer) RETURNS SETOF realtime.wal_rls
    LANGUAGE sql
    SET log_min_messages TO 'fatal'
    AS $$
      with pub as (
        select
          concat_ws(
            ',',
            case when bool_or(pubinsert) then 'insert' else null end,
            case when bool_or(pubupdate) then 'update' else null end,
            case when bool_or(pubdelete) then 'delete' else null end
          ) as w2j_actions,
          coalesce(
            string_agg(
              realtime.quote_wal2json(format('%I.%I', schemaname, tablename)::regclass),
              ','
            ) filter (where ppt.tablename is not null and ppt.tablename not like '% %'),
            ''
          ) w2j_add_tables
        from
          pg_publication pp
          left join pg_publication_tables ppt
            on pp.pubname = ppt.pubname
        where
          pp.pubname = publication
        group by
          pp.pubname
        limit 1
      ),
      w2j as (
        select
          x.*, pub.w2j_add_tables
        from
          pub,
          pg_logical_slot_get_changes(
            slot_name, null, max_changes,
            'include-pk', 'true',
            'include-transaction', 'false',
            'include-timestamp', 'true',
            'include-type-oids', 'true',
            'format-version', '2',
            'actions', pub.w2j_actions,
            'add-tables', pub.w2j_add_tables
          ) x
      )
      select
        xyz.wal,
        xyz.is_rls_enabled,
        xyz.subscription_ids,
        xyz.errors
      from
        w2j,
        realtime.apply_rls(
          wal := w2j.data::jsonb,
          max_record_bytes := max_record_bytes
        ) xyz(wal, is_rls_enabled, subscription_ids, errors)
      where
        w2j.w2j_add_tables <> ''
        and xyz.subscription_ids[1] is not null
    $$;


--
-- Name: quote_wal2json(regclass); Type: FUNCTION; Schema: realtime; Owner: -
--

CREATE FUNCTION realtime.quote_wal2json(entity regclass) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $$
      select
        (
          select string_agg('' || ch,'')
          from unnest(string_to_array(nsp.nspname::text, null)) with ordinality x(ch, idx)
          where
            not (x.idx = 1 and x.ch = '"')
            and not (
              x.idx = array_length(string_to_array(nsp.nspname::text, null), 1)
              and x.ch = '"'
            )
        )
        || '.'
        || (
          select string_agg('' || ch,'')
          from unnest(string_to_array(pc.relname::text, null)) with ordinality x(ch, idx)
          where
            not (x.idx = 1 and x.ch = '"')
            and not (
              x.idx = array_length(string_to_array(nsp.nspname::text, null), 1)
              and x.ch = '"'
            )
          )
      from
        pg_class pc
        join pg_namespace nsp
          on pc.relnamespace = nsp.oid
      where
        pc.oid = entity
    $$;


--
-- Name: send(jsonb, text, text, boolean); Type: FUNCTION; Schema: realtime; Owner: -
--

CREATE FUNCTION realtime.send(payload jsonb, event text, topic text, private boolean DEFAULT true) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  generated_id uuid;
  final_payload jsonb;
BEGIN
  BEGIN
    -- Generate a new UUID for the id
    generated_id := gen_random_uuid();

    -- Check if payload has an 'id' key, if not, add the generated UUID
    IF payload ? 'id' THEN
      final_payload := payload;
    ELSE
      final_payload := jsonb_set(payload, '{id}', to_jsonb(generated_id));
    END IF;

    -- Set the topic configuration
    EXECUTE format('SET LOCAL realtime.topic TO %L', topic);

    -- Attempt to insert the message
    INSERT INTO realtime.messages (id, payload, event, topic, private, extension)
    VALUES (generated_id, final_payload, event, topic, private, 'broadcast');
  EXCEPTION
    WHEN OTHERS THEN
      -- Capture and notify the error
      RAISE WARNING 'ErrorSendingBroadcastMessage: %', SQLERRM;
  END;
END;
$$;


--
-- Name: subscription_check_filters(); Type: FUNCTION; Schema: realtime; Owner: -
--

CREATE FUNCTION realtime.subscription_check_filters() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
    /*
    Validates that the user defined filters for a subscription:
    - refer to valid columns that the claimed role may access
    - values are coercable to the correct column type
    */
    declare
        col_names text[] = coalesce(
                array_agg(c.column_name order by c.ordinal_position),
                '{}'::text[]
            )
            from
                information_schema.columns c
            where
                format('%I.%I', c.table_schema, c.table_name)::regclass = new.entity
                and pg_catalog.has_column_privilege(
                    (new.claims ->> 'role'),
                    format('%I.%I', c.table_schema, c.table_name)::regclass,
                    c.column_name,
                    'SELECT'
                );
        filter realtime.user_defined_filter;
        col_type regtype;

        in_val jsonb;
    begin
        for filter in select * from unnest(new.filters) loop
            -- Filtered column is valid
            if not filter.column_name = any(col_names) then
                raise exception 'invalid column for filter %', filter.column_name;
            end if;

            -- Type is sanitized and safe for string interpolation
            col_type = (
                select atttypid::regtype
                from pg_catalog.pg_attribute
                where attrelid = new.entity
                      and attname = filter.column_name
            );
            if col_type is null then
                raise exception 'failed to lookup type for column %', filter.column_name;
            end if;

            -- Set maximum number of entries for in filter
            if filter.op = 'in'::realtime.equality_op then
                in_val = realtime.cast(filter.value, (col_type::text || '[]')::regtype);
                if coalesce(jsonb_array_length(in_val), 0) > 100 then
                    raise exception 'too many values for `in` filter. Maximum 100';
                end if;
            else
                -- raises an exception if value is not coercable to type
                perform realtime.cast(filter.value, col_type);
            end if;

        end loop;

        -- Apply consistent order to filters so the unique constraint on
        -- (subscription_id, entity, filters) can't be tricked by a different filter order
        new.filters = coalesce(
            array_agg(f order by f.column_name, f.op, f.value),
            '{}'
        ) from unnest(new.filters) f;

        return new;
    end;
    $$;


--
-- Name: to_regrole(text); Type: FUNCTION; Schema: realtime; Owner: -
--

CREATE FUNCTION realtime.to_regrole(role_name text) RETURNS regrole
    LANGUAGE sql IMMUTABLE
    AS $$ select role_name::regrole $$;


--
-- Name: topic(); Type: FUNCTION; Schema: realtime; Owner: -
--

CREATE FUNCTION realtime.topic() RETURNS text
    LANGUAGE sql STABLE
    AS $$
select nullif(current_setting('realtime.topic', true), '')::text;
$$;


--
-- Name: can_insert_object(text, text, uuid, jsonb); Type: FUNCTION; Schema: storage; Owner: -
--

CREATE FUNCTION storage.can_insert_object(bucketid text, name text, owner uuid, metadata jsonb) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
  INSERT INTO "storage"."objects" ("bucket_id", "name", "owner", "metadata") VALUES (bucketid, name, owner, metadata);
  -- hack to rollback the successful insert
  RAISE sqlstate 'PT200' using
  message = 'ROLLBACK',
  detail = 'rollback successful insert';
END
$$;


--
-- Name: delete_leaf_prefixes(text[], text[]); Type: FUNCTION; Schema: storage; Owner: -
--

CREATE FUNCTION storage.delete_leaf_prefixes(bucket_ids text[], names text[]) RETURNS void
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
DECLARE
    v_rows_deleted integer;
BEGIN
    LOOP
        WITH candidates AS (
            SELECT DISTINCT
                t.bucket_id,
                unnest(storage.get_prefixes(t.name)) AS name
            FROM unnest(bucket_ids, names) AS t(bucket_id, name)
        ),
        uniq AS (
             SELECT
                 bucket_id,
                 name,
                 storage.get_level(name) AS level
             FROM candidates
             WHERE name <> ''
             GROUP BY bucket_id, name
        ),
        leaf AS (
             SELECT
                 p.bucket_id,
                 p.name,
                 p.level
             FROM storage.prefixes AS p
                  JOIN uniq AS u
                       ON u.bucket_id = p.bucket_id
                           AND u.name = p.name
                           AND u.level = p.level
             WHERE NOT EXISTS (
                 SELECT 1
                 FROM storage.objects AS o
                 WHERE o.bucket_id = p.bucket_id
                   AND o.level = p.level + 1
                   AND o.name COLLATE "C" LIKE p.name || '/%'
             )
             AND NOT EXISTS (
                 SELECT 1
                 FROM storage.prefixes AS c
                 WHERE c.bucket_id = p.bucket_id
                   AND c.level = p.level + 1
                   AND c.name COLLATE "C" LIKE p.name || '/%'
             )
        )
        DELETE
        FROM storage.prefixes AS p
            USING leaf AS l
        WHERE p.bucket_id = l.bucket_id
          AND p.name = l.name
          AND p.level = l.level;

        GET DIAGNOSTICS v_rows_deleted = ROW_COUNT;
        EXIT WHEN v_rows_deleted = 0;
    END LOOP;
END;
$$;


--
-- Name: enforce_bucket_name_length(); Type: FUNCTION; Schema: storage; Owner: -
--

CREATE FUNCTION storage.enforce_bucket_name_length() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin
    if length(new.name) > 100 then
        raise exception 'bucket name "%" is too long (% characters). Max is 100.', new.name, length(new.name);
    end if;
    return new;
end;
$$;


--
-- Name: extension(text); Type: FUNCTION; Schema: storage; Owner: -
--

CREATE FUNCTION storage.extension(name text) RETURNS text
    LANGUAGE plpgsql IMMUTABLE
    AS $$
DECLARE
    _parts text[];
    _filename text;
BEGIN
    SELECT string_to_array(name, '/') INTO _parts;
    SELECT _parts[array_length(_parts,1)] INTO _filename;
    RETURN reverse(split_part(reverse(_filename), '.', 1));
END
$$;


--
-- Name: filename(text); Type: FUNCTION; Schema: storage; Owner: -
--

CREATE FUNCTION storage.filename(name text) RETURNS text
    LANGUAGE plpgsql
    AS $$
DECLARE
_parts text[];
BEGIN
	select string_to_array(name, '/') into _parts;
	return _parts[array_length(_parts,1)];
END
$$;


--
-- Name: foldername(text); Type: FUNCTION; Schema: storage; Owner: -
--

CREATE FUNCTION storage.foldername(name text) RETURNS text[]
    LANGUAGE plpgsql IMMUTABLE
    AS $$
DECLARE
    _parts text[];
BEGIN
    -- Split on "/" to get path segments
    SELECT string_to_array(name, '/') INTO _parts;
    -- Return everything except the last segment
    RETURN _parts[1 : array_length(_parts,1) - 1];
END
$$;


--
-- Name: get_common_prefix(text, text, text); Type: FUNCTION; Schema: storage; Owner: -
--

CREATE FUNCTION storage.get_common_prefix(p_key text, p_prefix text, p_delimiter text) RETURNS text
    LANGUAGE sql IMMUTABLE
    AS $$
SELECT CASE
    WHEN position(p_delimiter IN substring(p_key FROM length(p_prefix) + 1)) > 0
    THEN left(p_key, length(p_prefix) + position(p_delimiter IN substring(p_key FROM length(p_prefix) + 1)))
    ELSE NULL
END;
$$;


--
-- Name: get_level(text); Type: FUNCTION; Schema: storage; Owner: -
--

CREATE FUNCTION storage.get_level(name text) RETURNS integer
    LANGUAGE sql IMMUTABLE STRICT
    AS $$
SELECT array_length(string_to_array("name", '/'), 1);
$$;


--
-- Name: get_prefix(text); Type: FUNCTION; Schema: storage; Owner: -
--

CREATE FUNCTION storage.get_prefix(name text) RETURNS text
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
SELECT
    CASE WHEN strpos("name", '/') > 0 THEN
             regexp_replace("name", '[\/]{1}[^\/]+\/?$', '')
         ELSE
             ''
        END;
$_$;


--
-- Name: get_prefixes(text); Type: FUNCTION; Schema: storage; Owner: -
--

CREATE FUNCTION storage.get_prefixes(name text) RETURNS text[]
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $$
DECLARE
    parts text[];
    prefixes text[];
    prefix text;
BEGIN
    -- Split the name into parts by '/'
    parts := string_to_array("name", '/');
    prefixes := '{}';

    -- Construct the prefixes, stopping one level below the last part
    FOR i IN 1..array_length(parts, 1) - 1 LOOP
            prefix := array_to_string(parts[1:i], '/');
            prefixes := array_append(prefixes, prefix);
    END LOOP;

    RETURN prefixes;
END;
$$;


--
-- Name: get_size_by_bucket(); Type: FUNCTION; Schema: storage; Owner: -
--

CREATE FUNCTION storage.get_size_by_bucket() RETURNS TABLE(size bigint, bucket_id text)
    LANGUAGE plpgsql STABLE
    AS $$
BEGIN
    return query
        select sum((metadata->>'size')::bigint) as size, obj.bucket_id
        from "storage".objects as obj
        group by obj.bucket_id;
END
$$;


--
-- Name: list_multipart_uploads_with_delimiter(text, text, text, integer, text, text); Type: FUNCTION; Schema: storage; Owner: -
--

CREATE FUNCTION storage.list_multipart_uploads_with_delimiter(bucket_id text, prefix_param text, delimiter_param text, max_keys integer DEFAULT 100, next_key_token text DEFAULT ''::text, next_upload_token text DEFAULT ''::text) RETURNS TABLE(key text, id text, created_at timestamp with time zone)
    LANGUAGE plpgsql
    AS $_$
BEGIN
    RETURN QUERY EXECUTE
        'SELECT DISTINCT ON(key COLLATE "C") * from (
            SELECT
                CASE
                    WHEN position($2 IN substring(key from length($1) + 1)) > 0 THEN
                        substring(key from 1 for length($1) + position($2 IN substring(key from length($1) + 1)))
                    ELSE
                        key
                END AS key, id, created_at
            FROM
                storage.s3_multipart_uploads
            WHERE
                bucket_id = $5 AND
                key ILIKE $1 || ''%'' AND
                CASE
                    WHEN $4 != '''' AND $6 = '''' THEN
                        CASE
                            WHEN position($2 IN substring(key from length($1) + 1)) > 0 THEN
                                substring(key from 1 for length($1) + position($2 IN substring(key from length($1) + 1))) COLLATE "C" > $4
                            ELSE
                                key COLLATE "C" > $4
                            END
                    ELSE
                        true
                END AND
                CASE
                    WHEN $6 != '''' THEN
                        id COLLATE "C" > $6
                    ELSE
                        true
                    END
            ORDER BY
                key COLLATE "C" ASC, created_at ASC) as e order by key COLLATE "C" LIMIT $3'
        USING prefix_param, delimiter_param, max_keys, next_key_token, bucket_id, next_upload_token;
END;
$_$;


--
-- Name: list_objects_with_delimiter(text, text, text, integer, text, text, text); Type: FUNCTION; Schema: storage; Owner: -
--

CREATE FUNCTION storage.list_objects_with_delimiter(_bucket_id text, prefix_param text, delimiter_param text, max_keys integer DEFAULT 100, start_after text DEFAULT ''::text, next_token text DEFAULT ''::text, sort_order text DEFAULT 'asc'::text) RETURNS TABLE(name text, id uuid, metadata jsonb, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone)
    LANGUAGE plpgsql STABLE
    AS $_$
DECLARE
    v_peek_name TEXT;
    v_current RECORD;
    v_common_prefix TEXT;

    -- Configuration
    v_is_asc BOOLEAN;
    v_prefix TEXT;
    v_start TEXT;
    v_upper_bound TEXT;
    v_file_batch_size INT;

    -- Seek state
    v_next_seek TEXT;
    v_count INT := 0;

    -- Dynamic SQL for batch query only
    v_batch_query TEXT;

BEGIN
    -- ========================================================================
    -- INITIALIZATION
    -- ========================================================================
    v_is_asc := lower(coalesce(sort_order, 'asc')) = 'asc';
    v_prefix := coalesce(prefix_param, '');
    v_start := CASE WHEN coalesce(next_token, '') <> '' THEN next_token ELSE coalesce(start_after, '') END;
    v_file_batch_size := LEAST(GREATEST(max_keys * 2, 100), 1000);

    -- Calculate upper bound for prefix filtering (bytewise, using COLLATE "C")
    IF v_prefix = '' THEN
        v_upper_bound := NULL;
    ELSIF right(v_prefix, 1) = delimiter_param THEN
        v_upper_bound := left(v_prefix, -1) || chr(ascii(delimiter_param) + 1);
    ELSE
        v_upper_bound := left(v_prefix, -1) || chr(ascii(right(v_prefix, 1)) + 1);
    END IF;

    -- Build batch query (dynamic SQL - called infrequently, amortized over many rows)
    IF v_is_asc THEN
        IF v_upper_bound IS NOT NULL THEN
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND o.name COLLATE "C" >= $2 ' ||
                'AND o.name COLLATE "C" < $3 ORDER BY o.name COLLATE "C" ASC LIMIT $4';
        ELSE
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND o.name COLLATE "C" >= $2 ' ||
                'ORDER BY o.name COLLATE "C" ASC LIMIT $4';
        END IF;
    ELSE
        IF v_upper_bound IS NOT NULL THEN
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND o.name COLLATE "C" < $2 ' ||
                'AND o.name COLLATE "C" >= $3 ORDER BY o.name COLLATE "C" DESC LIMIT $4';
        ELSE
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND o.name COLLATE "C" < $2 ' ||
                'ORDER BY o.name COLLATE "C" DESC LIMIT $4';
        END IF;
    END IF;

    -- ========================================================================
    -- SEEK INITIALIZATION: Determine starting position
    -- ========================================================================
    IF v_start = '' THEN
        IF v_is_asc THEN
            v_next_seek := v_prefix;
        ELSE
            -- DESC without cursor: find the last item in range
            IF v_upper_bound IS NOT NULL THEN
                SELECT o.name INTO v_next_seek FROM storage.objects o
                WHERE o.bucket_id = _bucket_id AND o.name COLLATE "C" >= v_prefix AND o.name COLLATE "C" < v_upper_bound
                ORDER BY o.name COLLATE "C" DESC LIMIT 1;
            ELSIF v_prefix <> '' THEN
                SELECT o.name INTO v_next_seek FROM storage.objects o
                WHERE o.bucket_id = _bucket_id AND o.name COLLATE "C" >= v_prefix
                ORDER BY o.name COLLATE "C" DESC LIMIT 1;
            ELSE
                SELECT o.name INTO v_next_seek FROM storage.objects o
                WHERE o.bucket_id = _bucket_id
                ORDER BY o.name COLLATE "C" DESC LIMIT 1;
            END IF;

            IF v_next_seek IS NOT NULL THEN
                v_next_seek := v_next_seek || delimiter_param;
            ELSE
                RETURN;
            END IF;
        END IF;
    ELSE
        -- Cursor provided: determine if it refers to a folder or leaf
        IF EXISTS (
            SELECT 1 FROM storage.objects o
            WHERE o.bucket_id = _bucket_id
              AND o.name COLLATE "C" LIKE v_start || delimiter_param || '%'
            LIMIT 1
        ) THEN
            -- Cursor refers to a folder
            IF v_is_asc THEN
                v_next_seek := v_start || chr(ascii(delimiter_param) + 1);
            ELSE
                v_next_seek := v_start || delimiter_param;
            END IF;
        ELSE
            -- Cursor refers to a leaf object
            IF v_is_asc THEN
                v_next_seek := v_start || delimiter_param;
            ELSE
                v_next_seek := v_start;
            END IF;
        END IF;
    END IF;

    -- ========================================================================
    -- MAIN LOOP: Hybrid peek-then-batch algorithm
    -- Uses STATIC SQL for peek (hot path) and DYNAMIC SQL for batch
    -- ========================================================================
    LOOP
        EXIT WHEN v_count >= max_keys;

        -- STEP 1: PEEK using STATIC SQL (plan cached, very fast)
        IF v_is_asc THEN
            IF v_upper_bound IS NOT NULL THEN
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = _bucket_id AND o.name COLLATE "C" >= v_next_seek AND o.name COLLATE "C" < v_upper_bound
                ORDER BY o.name COLLATE "C" ASC LIMIT 1;
            ELSE
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = _bucket_id AND o.name COLLATE "C" >= v_next_seek
                ORDER BY o.name COLLATE "C" ASC LIMIT 1;
            END IF;
        ELSE
            IF v_upper_bound IS NOT NULL THEN
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = _bucket_id AND o.name COLLATE "C" < v_next_seek AND o.name COLLATE "C" >= v_prefix
                ORDER BY o.name COLLATE "C" DESC LIMIT 1;
            ELSIF v_prefix <> '' THEN
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = _bucket_id AND o.name COLLATE "C" < v_next_seek AND o.name COLLATE "C" >= v_prefix
                ORDER BY o.name COLLATE "C" DESC LIMIT 1;
            ELSE
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = _bucket_id AND o.name COLLATE "C" < v_next_seek
                ORDER BY o.name COLLATE "C" DESC LIMIT 1;
            END IF;
        END IF;

        EXIT WHEN v_peek_name IS NULL;

        -- STEP 2: Check if this is a FOLDER or FILE
        v_common_prefix := storage.get_common_prefix(v_peek_name, v_prefix, delimiter_param);

        IF v_common_prefix IS NOT NULL THEN
            -- FOLDER: Emit and skip to next folder (no heap access needed)
            name := rtrim(v_common_prefix, delimiter_param);
            id := NULL;
            updated_at := NULL;
            created_at := NULL;
            last_accessed_at := NULL;
            metadata := NULL;
            RETURN NEXT;
            v_count := v_count + 1;

            -- Advance seek past the folder range
            IF v_is_asc THEN
                v_next_seek := left(v_common_prefix, -1) || chr(ascii(delimiter_param) + 1);
            ELSE
                v_next_seek := v_common_prefix;
            END IF;
        ELSE
            -- FILE: Batch fetch using DYNAMIC SQL (overhead amortized over many rows)
            -- For ASC: upper_bound is the exclusive upper limit (< condition)
            -- For DESC: prefix is the inclusive lower limit (>= condition)
            FOR v_current IN EXECUTE v_batch_query USING _bucket_id, v_next_seek,
                CASE WHEN v_is_asc THEN COALESCE(v_upper_bound, v_prefix) ELSE v_prefix END, v_file_batch_size
            LOOP
                v_common_prefix := storage.get_common_prefix(v_current.name, v_prefix, delimiter_param);

                IF v_common_prefix IS NOT NULL THEN
                    -- Hit a folder: exit batch, let peek handle it
                    v_next_seek := v_current.name;
                    EXIT;
                END IF;

                -- Emit file
                name := v_current.name;
                id := v_current.id;
                updated_at := v_current.updated_at;
                created_at := v_current.created_at;
                last_accessed_at := v_current.last_accessed_at;
                metadata := v_current.metadata;
                RETURN NEXT;
                v_count := v_count + 1;

                -- Advance seek past this file
                IF v_is_asc THEN
                    v_next_seek := v_current.name || delimiter_param;
                ELSE
                    v_next_seek := v_current.name;
                END IF;

                EXIT WHEN v_count >= max_keys;
            END LOOP;
        END IF;
    END LOOP;
END;
$_$;


--
-- Name: operation(); Type: FUNCTION; Schema: storage; Owner: -
--

CREATE FUNCTION storage.operation() RETURNS text
    LANGUAGE plpgsql STABLE
    AS $$
BEGIN
    RETURN current_setting('storage.operation', true);
END;
$$;


--
-- Name: protect_delete(); Type: FUNCTION; Schema: storage; Owner: -
--

CREATE FUNCTION storage.protect_delete() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    -- Check if storage.allow_delete_query is set to 'true'
    IF COALESCE(current_setting('storage.allow_delete_query', true), 'false') != 'true' THEN
        RAISE EXCEPTION 'Direct deletion from storage tables is not allowed. Use the Storage API instead.'
            USING HINT = 'This prevents accidental data loss from orphaned objects.',
                  ERRCODE = '42501';
    END IF;
    RETURN NULL;
END;
$$;


--
-- Name: search(text, text, integer, integer, integer, text, text, text); Type: FUNCTION; Schema: storage; Owner: -
--

CREATE FUNCTION storage.search(prefix text, bucketname text, limits integer DEFAULT 100, levels integer DEFAULT 1, offsets integer DEFAULT 0, search text DEFAULT ''::text, sortcolumn text DEFAULT 'name'::text, sortorder text DEFAULT 'asc'::text) RETURNS TABLE(name text, id uuid, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone, metadata jsonb)
    LANGUAGE plpgsql STABLE
    AS $_$
DECLARE
    v_peek_name TEXT;
    v_current RECORD;
    v_common_prefix TEXT;
    v_delimiter CONSTANT TEXT := '/';

    -- Configuration
    v_limit INT;
    v_prefix TEXT;
    v_prefix_lower TEXT;
    v_is_asc BOOLEAN;
    v_order_by TEXT;
    v_sort_order TEXT;
    v_upper_bound TEXT;
    v_file_batch_size INT;

    -- Dynamic SQL for batch query only
    v_batch_query TEXT;

    -- Seek state
    v_next_seek TEXT;
    v_count INT := 0;
    v_skipped INT := 0;
BEGIN
    -- ========================================================================
    -- INITIALIZATION
    -- ========================================================================
    v_limit := LEAST(coalesce(limits, 100), 1500);
    v_prefix := coalesce(prefix, '') || coalesce(search, '');
    v_prefix_lower := lower(v_prefix);
    v_is_asc := lower(coalesce(sortorder, 'asc')) = 'asc';
    v_file_batch_size := LEAST(GREATEST(v_limit * 2, 100), 1000);

    -- Validate sort column
    CASE lower(coalesce(sortcolumn, 'name'))
        WHEN 'name' THEN v_order_by := 'name';
        WHEN 'updated_at' THEN v_order_by := 'updated_at';
        WHEN 'created_at' THEN v_order_by := 'created_at';
        WHEN 'last_accessed_at' THEN v_order_by := 'last_accessed_at';
        ELSE v_order_by := 'name';
    END CASE;

    v_sort_order := CASE WHEN v_is_asc THEN 'asc' ELSE 'desc' END;

    -- ========================================================================
    -- NON-NAME SORTING: Use path_tokens approach (unchanged)
    -- ========================================================================
    IF v_order_by != 'name' THEN
        RETURN QUERY EXECUTE format(
            $sql$
            WITH folders AS (
                SELECT path_tokens[$1] AS folder
                FROM storage.objects
                WHERE objects.name ILIKE $2 || '%%'
                  AND bucket_id = $3
                  AND array_length(objects.path_tokens, 1) <> $1
                GROUP BY folder
                ORDER BY folder %s
            )
            (SELECT folder AS "name",
                   NULL::uuid AS id,
                   NULL::timestamptz AS updated_at,
                   NULL::timestamptz AS created_at,
                   NULL::timestamptz AS last_accessed_at,
                   NULL::jsonb AS metadata FROM folders)
            UNION ALL
            (SELECT path_tokens[$1] AS "name",
                   id, updated_at, created_at, last_accessed_at, metadata
             FROM storage.objects
             WHERE objects.name ILIKE $2 || '%%'
               AND bucket_id = $3
               AND array_length(objects.path_tokens, 1) = $1
             ORDER BY %I %s)
            LIMIT $4 OFFSET $5
            $sql$, v_sort_order, v_order_by, v_sort_order
        ) USING levels, v_prefix, bucketname, v_limit, offsets;
        RETURN;
    END IF;

    -- ========================================================================
    -- NAME SORTING: Hybrid skip-scan with batch optimization
    -- ========================================================================

    -- Calculate upper bound for prefix filtering
    IF v_prefix_lower = '' THEN
        v_upper_bound := NULL;
    ELSIF right(v_prefix_lower, 1) = v_delimiter THEN
        v_upper_bound := left(v_prefix_lower, -1) || chr(ascii(v_delimiter) + 1);
    ELSE
        v_upper_bound := left(v_prefix_lower, -1) || chr(ascii(right(v_prefix_lower, 1)) + 1);
    END IF;

    -- Build batch query (dynamic SQL - called infrequently, amortized over many rows)
    IF v_is_asc THEN
        IF v_upper_bound IS NOT NULL THEN
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND lower(o.name) COLLATE "C" >= $2 ' ||
                'AND lower(o.name) COLLATE "C" < $3 ORDER BY lower(o.name) COLLATE "C" ASC LIMIT $4';
        ELSE
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND lower(o.name) COLLATE "C" >= $2 ' ||
                'ORDER BY lower(o.name) COLLATE "C" ASC LIMIT $4';
        END IF;
    ELSE
        IF v_upper_bound IS NOT NULL THEN
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND lower(o.name) COLLATE "C" < $2 ' ||
                'AND lower(o.name) COLLATE "C" >= $3 ORDER BY lower(o.name) COLLATE "C" DESC LIMIT $4';
        ELSE
            v_batch_query := 'SELECT o.name, o.id, o.updated_at, o.created_at, o.last_accessed_at, o.metadata ' ||
                'FROM storage.objects o WHERE o.bucket_id = $1 AND lower(o.name) COLLATE "C" < $2 ' ||
                'ORDER BY lower(o.name) COLLATE "C" DESC LIMIT $4';
        END IF;
    END IF;

    -- Initialize seek position
    IF v_is_asc THEN
        v_next_seek := v_prefix_lower;
    ELSE
        -- DESC: find the last item in range first (static SQL)
        IF v_upper_bound IS NOT NULL THEN
            SELECT o.name INTO v_peek_name FROM storage.objects o
            WHERE o.bucket_id = bucketname AND lower(o.name) COLLATE "C" >= v_prefix_lower AND lower(o.name) COLLATE "C" < v_upper_bound
            ORDER BY lower(o.name) COLLATE "C" DESC LIMIT 1;
        ELSIF v_prefix_lower <> '' THEN
            SELECT o.name INTO v_peek_name FROM storage.objects o
            WHERE o.bucket_id = bucketname AND lower(o.name) COLLATE "C" >= v_prefix_lower
            ORDER BY lower(o.name) COLLATE "C" DESC LIMIT 1;
        ELSE
            SELECT o.name INTO v_peek_name FROM storage.objects o
            WHERE o.bucket_id = bucketname
            ORDER BY lower(o.name) COLLATE "C" DESC LIMIT 1;
        END IF;

        IF v_peek_name IS NOT NULL THEN
            v_next_seek := lower(v_peek_name) || v_delimiter;
        ELSE
            RETURN;
        END IF;
    END IF;

    -- ========================================================================
    -- MAIN LOOP: Hybrid peek-then-batch algorithm
    -- Uses STATIC SQL for peek (hot path) and DYNAMIC SQL for batch
    -- ========================================================================
    LOOP
        EXIT WHEN v_count >= v_limit;

        -- STEP 1: PEEK using STATIC SQL (plan cached, very fast)
        IF v_is_asc THEN
            IF v_upper_bound IS NOT NULL THEN
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = bucketname AND lower(o.name) COLLATE "C" >= v_next_seek AND lower(o.name) COLLATE "C" < v_upper_bound
                ORDER BY lower(o.name) COLLATE "C" ASC LIMIT 1;
            ELSE
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = bucketname AND lower(o.name) COLLATE "C" >= v_next_seek
                ORDER BY lower(o.name) COLLATE "C" ASC LIMIT 1;
            END IF;
        ELSE
            IF v_upper_bound IS NOT NULL THEN
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = bucketname AND lower(o.name) COLLATE "C" < v_next_seek AND lower(o.name) COLLATE "C" >= v_prefix_lower
                ORDER BY lower(o.name) COLLATE "C" DESC LIMIT 1;
            ELSIF v_prefix_lower <> '' THEN
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = bucketname AND lower(o.name) COLLATE "C" < v_next_seek AND lower(o.name) COLLATE "C" >= v_prefix_lower
                ORDER BY lower(o.name) COLLATE "C" DESC LIMIT 1;
            ELSE
                SELECT o.name INTO v_peek_name FROM storage.objects o
                WHERE o.bucket_id = bucketname AND lower(o.name) COLLATE "C" < v_next_seek
                ORDER BY lower(o.name) COLLATE "C" DESC LIMIT 1;
            END IF;
        END IF;

        EXIT WHEN v_peek_name IS NULL;

        -- STEP 2: Check if this is a FOLDER or FILE
        v_common_prefix := storage.get_common_prefix(lower(v_peek_name), v_prefix_lower, v_delimiter);

        IF v_common_prefix IS NOT NULL THEN
            -- FOLDER: Handle offset, emit if needed, skip to next folder
            IF v_skipped < offsets THEN
                v_skipped := v_skipped + 1;
            ELSE
                name := split_part(rtrim(storage.get_common_prefix(v_peek_name, v_prefix, v_delimiter), v_delimiter), v_delimiter, levels);
                id := NULL;
                updated_at := NULL;
                created_at := NULL;
                last_accessed_at := NULL;
                metadata := NULL;
                RETURN NEXT;
                v_count := v_count + 1;
            END IF;

            -- Advance seek past the folder range
            IF v_is_asc THEN
                v_next_seek := lower(left(v_common_prefix, -1)) || chr(ascii(v_delimiter) + 1);
            ELSE
                v_next_seek := lower(v_common_prefix);
            END IF;
        ELSE
            -- FILE: Batch fetch using DYNAMIC SQL (overhead amortized over many rows)
            -- For ASC: upper_bound is the exclusive upper limit (< condition)
            -- For DESC: prefix_lower is the inclusive lower limit (>= condition)
            FOR v_current IN EXECUTE v_batch_query
                USING bucketname, v_next_seek,
                    CASE WHEN v_is_asc THEN COALESCE(v_upper_bound, v_prefix_lower) ELSE v_prefix_lower END, v_file_batch_size
            LOOP
                v_common_prefix := storage.get_common_prefix(lower(v_current.name), v_prefix_lower, v_delimiter);

                IF v_common_prefix IS NOT NULL THEN
                    -- Hit a folder: exit batch, let peek handle it
                    v_next_seek := lower(v_current.name);
                    EXIT;
                END IF;

                -- Handle offset skipping
                IF v_skipped < offsets THEN
                    v_skipped := v_skipped + 1;
                ELSE
                    -- Emit file
                    name := split_part(v_current.name, v_delimiter, levels);
                    id := v_current.id;
                    updated_at := v_current.updated_at;
                    created_at := v_current.created_at;
                    last_accessed_at := v_current.last_accessed_at;
                    metadata := v_current.metadata;
                    RETURN NEXT;
                    v_count := v_count + 1;
                END IF;

                -- Advance seek past this file
                IF v_is_asc THEN
                    v_next_seek := lower(v_current.name) || v_delimiter;
                ELSE
                    v_next_seek := lower(v_current.name);
                END IF;

                EXIT WHEN v_count >= v_limit;
            END LOOP;
        END IF;
    END LOOP;
END;
$_$;


--
-- Name: search_by_timestamp(text, text, integer, integer, text, text, text, text); Type: FUNCTION; Schema: storage; Owner: -
--

CREATE FUNCTION storage.search_by_timestamp(p_prefix text, p_bucket_id text, p_limit integer, p_level integer, p_start_after text, p_sort_order text, p_sort_column text, p_sort_column_after text) RETURNS TABLE(key text, name text, id uuid, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone, metadata jsonb)
    LANGUAGE plpgsql STABLE
    AS $_$
DECLARE
    v_cursor_op text;
    v_query text;
    v_prefix text;
BEGIN
    v_prefix := coalesce(p_prefix, '');

    IF p_sort_order = 'asc' THEN
        v_cursor_op := '>';
    ELSE
        v_cursor_op := '<';
    END IF;

    v_query := format($sql$
        WITH raw_objects AS (
            SELECT
                o.name AS obj_name,
                o.id AS obj_id,
                o.updated_at AS obj_updated_at,
                o.created_at AS obj_created_at,
                o.last_accessed_at AS obj_last_accessed_at,
                o.metadata AS obj_metadata,
                storage.get_common_prefix(o.name, $1, '/') AS common_prefix
            FROM storage.objects o
            WHERE o.bucket_id = $2
              AND o.name COLLATE "C" LIKE $1 || '%%'
        ),
        -- Aggregate common prefixes (folders)
        -- Both created_at and updated_at use MIN(obj_created_at) to match the old prefixes table behavior
        aggregated_prefixes AS (
            SELECT
                rtrim(common_prefix, '/') AS name,
                NULL::uuid AS id,
                MIN(obj_created_at) AS updated_at,
                MIN(obj_created_at) AS created_at,
                NULL::timestamptz AS last_accessed_at,
                NULL::jsonb AS metadata,
                TRUE AS is_prefix
            FROM raw_objects
            WHERE common_prefix IS NOT NULL
            GROUP BY common_prefix
        ),
        leaf_objects AS (
            SELECT
                obj_name AS name,
                obj_id AS id,
                obj_updated_at AS updated_at,
                obj_created_at AS created_at,
                obj_last_accessed_at AS last_accessed_at,
                obj_metadata AS metadata,
                FALSE AS is_prefix
            FROM raw_objects
            WHERE common_prefix IS NULL
        ),
        combined AS (
            SELECT * FROM aggregated_prefixes
            UNION ALL
            SELECT * FROM leaf_objects
        ),
        filtered AS (
            SELECT *
            FROM combined
            WHERE (
                $5 = ''
                OR ROW(
                    date_trunc('milliseconds', %I),
                    name COLLATE "C"
                ) %s ROW(
                    COALESCE(NULLIF($6, '')::timestamptz, 'epoch'::timestamptz),
                    $5
                )
            )
        )
        SELECT
            split_part(name, '/', $3) AS key,
            name,
            id,
            updated_at,
            created_at,
            last_accessed_at,
            metadata
        FROM filtered
        ORDER BY
            COALESCE(date_trunc('milliseconds', %I), 'epoch'::timestamptz) %s,
            name COLLATE "C" %s
        LIMIT $4
    $sql$,
        p_sort_column,
        v_cursor_op,
        p_sort_column,
        p_sort_order,
        p_sort_order
    );

    RETURN QUERY EXECUTE v_query
    USING v_prefix, p_bucket_id, p_level, p_limit, p_start_after, p_sort_column_after;
END;
$_$;


--
-- Name: search_legacy_v1(text, text, integer, integer, integer, text, text, text); Type: FUNCTION; Schema: storage; Owner: -
--

CREATE FUNCTION storage.search_legacy_v1(prefix text, bucketname text, limits integer DEFAULT 100, levels integer DEFAULT 1, offsets integer DEFAULT 0, search text DEFAULT ''::text, sortcolumn text DEFAULT 'name'::text, sortorder text DEFAULT 'asc'::text) RETURNS TABLE(name text, id uuid, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone, metadata jsonb)
    LANGUAGE plpgsql STABLE
    AS $_$
declare
    v_order_by text;
    v_sort_order text;
begin
    case
        when sortcolumn = 'name' then
            v_order_by = 'name';
        when sortcolumn = 'updated_at' then
            v_order_by = 'updated_at';
        when sortcolumn = 'created_at' then
            v_order_by = 'created_at';
        when sortcolumn = 'last_accessed_at' then
            v_order_by = 'last_accessed_at';
        else
            v_order_by = 'name';
        end case;

    case
        when sortorder = 'asc' then
            v_sort_order = 'asc';
        when sortorder = 'desc' then
            v_sort_order = 'desc';
        else
            v_sort_order = 'asc';
        end case;

    v_order_by = v_order_by || ' ' || v_sort_order;

    return query execute
        'with folders as (
           select path_tokens[$1] as folder
           from storage.objects
             where objects.name ilike $2 || $3 || ''%''
               and bucket_id = $4
               and array_length(objects.path_tokens, 1) <> $1
           group by folder
           order by folder ' || v_sort_order || '
     )
     (select folder as "name",
            null as id,
            null as updated_at,
            null as created_at,
            null as last_accessed_at,
            null as metadata from folders)
     union all
     (select path_tokens[$1] as "name",
            id,
            updated_at,
            created_at,
            last_accessed_at,
            metadata
     from storage.objects
     where objects.name ilike $2 || $3 || ''%''
       and bucket_id = $4
       and array_length(objects.path_tokens, 1) = $1
     order by ' || v_order_by || ')
     limit $5
     offset $6' using levels, prefix, search, bucketname, limits, offsets;
end;
$_$;


--
-- Name: search_v2(text, text, integer, integer, text, text, text, text); Type: FUNCTION; Schema: storage; Owner: -
--

CREATE FUNCTION storage.search_v2(prefix text, bucket_name text, limits integer DEFAULT 100, levels integer DEFAULT 1, start_after text DEFAULT ''::text, sort_order text DEFAULT 'asc'::text, sort_column text DEFAULT 'name'::text, sort_column_after text DEFAULT ''::text) RETURNS TABLE(key text, name text, id uuid, updated_at timestamp with time zone, created_at timestamp with time zone, last_accessed_at timestamp with time zone, metadata jsonb)
    LANGUAGE plpgsql STABLE
    AS $$
DECLARE
    v_sort_col text;
    v_sort_ord text;
    v_limit int;
BEGIN
    -- Cap limit to maximum of 1500 records
    v_limit := LEAST(coalesce(limits, 100), 1500);

    -- Validate and normalize sort_order
    v_sort_ord := lower(coalesce(sort_order, 'asc'));
    IF v_sort_ord NOT IN ('asc', 'desc') THEN
        v_sort_ord := 'asc';
    END IF;

    -- Validate and normalize sort_column
    v_sort_col := lower(coalesce(sort_column, 'name'));
    IF v_sort_col NOT IN ('name', 'updated_at', 'created_at') THEN
        v_sort_col := 'name';
    END IF;

    -- Route to appropriate implementation
    IF v_sort_col = 'name' THEN
        -- Use list_objects_with_delimiter for name sorting (most efficient: O(k * log n))
        RETURN QUERY
        SELECT
            split_part(l.name, '/', levels) AS key,
            l.name AS name,
            l.id,
            l.updated_at,
            l.created_at,
            l.last_accessed_at,
            l.metadata
        FROM storage.list_objects_with_delimiter(
            bucket_name,
            coalesce(prefix, ''),
            '/',
            v_limit,
            start_after,
            '',
            v_sort_ord
        ) l;
    ELSE
        -- Use aggregation approach for timestamp sorting
        -- Not efficient for large datasets but supports correct pagination
        RETURN QUERY SELECT * FROM storage.search_by_timestamp(
            prefix, bucket_name, v_limit, levels, start_after,
            v_sort_ord, v_sort_col, sort_column_after
        );
    END IF;
END;
$$;


--
-- Name: update_updated_at_column(); Type: FUNCTION; Schema: storage; Owner: -
--

CREATE FUNCTION storage.update_updated_at_column() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW; 
END;
$$;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: audit_log_entries; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE auth.audit_log_entries (
    instance_id uuid,
    id uuid NOT NULL,
    payload json,
    created_at timestamp with time zone,
    ip_address character varying(64) DEFAULT ''::character varying NOT NULL
);


--
-- Name: TABLE audit_log_entries; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON TABLE auth.audit_log_entries IS 'Auth: Audit trail for user actions.';


--
-- Name: flow_state; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE auth.flow_state (
    id uuid NOT NULL,
    user_id uuid,
    auth_code text,
    code_challenge_method auth.code_challenge_method,
    code_challenge text,
    provider_type text NOT NULL,
    provider_access_token text,
    provider_refresh_token text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    authentication_method text NOT NULL,
    auth_code_issued_at timestamp with time zone,
    invite_token text,
    referrer text,
    oauth_client_state_id uuid,
    linking_target_id uuid,
    email_optional boolean DEFAULT false NOT NULL
);


--
-- Name: TABLE flow_state; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON TABLE auth.flow_state IS 'Stores metadata for all OAuth/SSO login flows';


--
-- Name: identities; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE auth.identities (
    provider_id text NOT NULL,
    user_id uuid NOT NULL,
    identity_data jsonb NOT NULL,
    provider text NOT NULL,
    last_sign_in_at timestamp with time zone,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    email text GENERATED ALWAYS AS (lower((identity_data ->> 'email'::text))) STORED,
    id uuid DEFAULT gen_random_uuid() NOT NULL
);


--
-- Name: TABLE identities; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON TABLE auth.identities IS 'Auth: Stores identities associated to a user.';


--
-- Name: COLUMN identities.email; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON COLUMN auth.identities.email IS 'Auth: Email is a generated column that references the optional email property in the identity_data';


--
-- Name: instances; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE auth.instances (
    id uuid NOT NULL,
    uuid uuid,
    raw_base_config text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


--
-- Name: TABLE instances; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON TABLE auth.instances IS 'Auth: Manages users across multiple sites.';


--
-- Name: mfa_amr_claims; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE auth.mfa_amr_claims (
    session_id uuid NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    authentication_method text NOT NULL,
    id uuid NOT NULL
);


--
-- Name: TABLE mfa_amr_claims; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON TABLE auth.mfa_amr_claims IS 'auth: stores authenticator method reference claims for multi factor authentication';


--
-- Name: mfa_challenges; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE auth.mfa_challenges (
    id uuid NOT NULL,
    factor_id uuid NOT NULL,
    created_at timestamp with time zone NOT NULL,
    verified_at timestamp with time zone,
    ip_address inet NOT NULL,
    otp_code text,
    web_authn_session_data jsonb
);


--
-- Name: TABLE mfa_challenges; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON TABLE auth.mfa_challenges IS 'auth: stores metadata about challenge requests made';


--
-- Name: mfa_factors; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE auth.mfa_factors (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    friendly_name text,
    factor_type auth.factor_type NOT NULL,
    status auth.factor_status NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    secret text,
    phone text,
    last_challenged_at timestamp with time zone,
    web_authn_credential jsonb,
    web_authn_aaguid uuid,
    last_webauthn_challenge_data jsonb
);


--
-- Name: TABLE mfa_factors; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON TABLE auth.mfa_factors IS 'auth: stores metadata about factors';


--
-- Name: COLUMN mfa_factors.last_webauthn_challenge_data; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON COLUMN auth.mfa_factors.last_webauthn_challenge_data IS 'Stores the latest WebAuthn challenge data including attestation/assertion for customer verification';


--
-- Name: oauth_authorizations; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE auth.oauth_authorizations (
    id uuid NOT NULL,
    authorization_id text NOT NULL,
    client_id uuid NOT NULL,
    user_id uuid,
    redirect_uri text NOT NULL,
    scope text NOT NULL,
    state text,
    resource text,
    code_challenge text,
    code_challenge_method auth.code_challenge_method,
    response_type auth.oauth_response_type DEFAULT 'code'::auth.oauth_response_type NOT NULL,
    status auth.oauth_authorization_status DEFAULT 'pending'::auth.oauth_authorization_status NOT NULL,
    authorization_code text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    expires_at timestamp with time zone DEFAULT (now() + '00:03:00'::interval) NOT NULL,
    approved_at timestamp with time zone,
    nonce text,
    CONSTRAINT oauth_authorizations_authorization_code_length CHECK ((char_length(authorization_code) <= 255)),
    CONSTRAINT oauth_authorizations_code_challenge_length CHECK ((char_length(code_challenge) <= 128)),
    CONSTRAINT oauth_authorizations_expires_at_future CHECK ((expires_at > created_at)),
    CONSTRAINT oauth_authorizations_nonce_length CHECK ((char_length(nonce) <= 255)),
    CONSTRAINT oauth_authorizations_redirect_uri_length CHECK ((char_length(redirect_uri) <= 2048)),
    CONSTRAINT oauth_authorizations_resource_length CHECK ((char_length(resource) <= 2048)),
    CONSTRAINT oauth_authorizations_scope_length CHECK ((char_length(scope) <= 4096)),
    CONSTRAINT oauth_authorizations_state_length CHECK ((char_length(state) <= 4096))
);


--
-- Name: oauth_client_states; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE auth.oauth_client_states (
    id uuid NOT NULL,
    provider_type text NOT NULL,
    code_verifier text,
    created_at timestamp with time zone NOT NULL
);


--
-- Name: TABLE oauth_client_states; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON TABLE auth.oauth_client_states IS 'Stores OAuth states for third-party provider authentication flows where Supabase acts as the OAuth client.';


--
-- Name: oauth_clients; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE auth.oauth_clients (
    id uuid NOT NULL,
    client_secret_hash text,
    registration_type auth.oauth_registration_type NOT NULL,
    redirect_uris text NOT NULL,
    grant_types text NOT NULL,
    client_name text,
    client_uri text,
    logo_uri text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    client_type auth.oauth_client_type DEFAULT 'confidential'::auth.oauth_client_type NOT NULL,
    token_endpoint_auth_method text NOT NULL,
    CONSTRAINT oauth_clients_client_name_length CHECK ((char_length(client_name) <= 1024)),
    CONSTRAINT oauth_clients_client_uri_length CHECK ((char_length(client_uri) <= 2048)),
    CONSTRAINT oauth_clients_logo_uri_length CHECK ((char_length(logo_uri) <= 2048)),
    CONSTRAINT oauth_clients_token_endpoint_auth_method_check CHECK ((token_endpoint_auth_method = ANY (ARRAY['client_secret_basic'::text, 'client_secret_post'::text, 'none'::text])))
);


--
-- Name: oauth_consents; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE auth.oauth_consents (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    client_id uuid NOT NULL,
    scopes text NOT NULL,
    granted_at timestamp with time zone DEFAULT now() NOT NULL,
    revoked_at timestamp with time zone,
    CONSTRAINT oauth_consents_revoked_after_granted CHECK (((revoked_at IS NULL) OR (revoked_at >= granted_at))),
    CONSTRAINT oauth_consents_scopes_length CHECK ((char_length(scopes) <= 2048)),
    CONSTRAINT oauth_consents_scopes_not_empty CHECK ((char_length(TRIM(BOTH FROM scopes)) > 0))
);


--
-- Name: one_time_tokens; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE auth.one_time_tokens (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    token_type auth.one_time_token_type NOT NULL,
    token_hash text NOT NULL,
    relates_to text NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    CONSTRAINT one_time_tokens_token_hash_check CHECK ((char_length(token_hash) > 0))
);


--
-- Name: refresh_tokens; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE auth.refresh_tokens (
    instance_id uuid,
    id bigint NOT NULL,
    token character varying(255),
    user_id character varying(255),
    revoked boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    parent character varying(255),
    session_id uuid
);


--
-- Name: TABLE refresh_tokens; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON TABLE auth.refresh_tokens IS 'Auth: Store of tokens used to refresh JWT tokens once they expire.';


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE; Schema: auth; Owner: -
--

CREATE SEQUENCE auth.refresh_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: auth; Owner: -
--

ALTER SEQUENCE auth.refresh_tokens_id_seq OWNED BY auth.refresh_tokens.id;


--
-- Name: saml_providers; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE auth.saml_providers (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    entity_id text NOT NULL,
    metadata_xml text NOT NULL,
    metadata_url text,
    attribute_mapping jsonb,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    name_id_format text,
    CONSTRAINT "entity_id not empty" CHECK ((char_length(entity_id) > 0)),
    CONSTRAINT "metadata_url not empty" CHECK (((metadata_url = NULL::text) OR (char_length(metadata_url) > 0))),
    CONSTRAINT "metadata_xml not empty" CHECK ((char_length(metadata_xml) > 0))
);


--
-- Name: TABLE saml_providers; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON TABLE auth.saml_providers IS 'Auth: Manages SAML Identity Provider connections.';


--
-- Name: saml_relay_states; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE auth.saml_relay_states (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    request_id text NOT NULL,
    for_email text,
    redirect_to text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    flow_state_id uuid,
    CONSTRAINT "request_id not empty" CHECK ((char_length(request_id) > 0))
);


--
-- Name: TABLE saml_relay_states; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON TABLE auth.saml_relay_states IS 'Auth: Contains SAML Relay State information for each Service Provider initiated login.';


--
-- Name: schema_migrations; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE auth.schema_migrations (
    version character varying(255) NOT NULL
);


--
-- Name: TABLE schema_migrations; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON TABLE auth.schema_migrations IS 'Auth: Manages updates to the auth system.';


--
-- Name: sessions; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE auth.sessions (
    id uuid NOT NULL,
    user_id uuid NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    factor_id uuid,
    aal auth.aal_level,
    not_after timestamp with time zone,
    refreshed_at timestamp without time zone,
    user_agent text,
    ip inet,
    tag text,
    oauth_client_id uuid,
    refresh_token_hmac_key text,
    refresh_token_counter bigint,
    scopes text,
    CONSTRAINT sessions_scopes_length CHECK ((char_length(scopes) <= 4096))
);


--
-- Name: TABLE sessions; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON TABLE auth.sessions IS 'Auth: Stores session data associated to a user.';


--
-- Name: COLUMN sessions.not_after; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON COLUMN auth.sessions.not_after IS 'Auth: Not after is a nullable column that contains a timestamp after which the session should be regarded as expired.';


--
-- Name: COLUMN sessions.refresh_token_hmac_key; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON COLUMN auth.sessions.refresh_token_hmac_key IS 'Holds a HMAC-SHA256 key used to sign refresh tokens for this session.';


--
-- Name: COLUMN sessions.refresh_token_counter; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON COLUMN auth.sessions.refresh_token_counter IS 'Holds the ID (counter) of the last issued refresh token.';


--
-- Name: sso_domains; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE auth.sso_domains (
    id uuid NOT NULL,
    sso_provider_id uuid NOT NULL,
    domain text NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    CONSTRAINT "domain not empty" CHECK ((char_length(domain) > 0))
);


--
-- Name: TABLE sso_domains; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON TABLE auth.sso_domains IS 'Auth: Manages SSO email address domain mapping to an SSO Identity Provider.';


--
-- Name: sso_providers; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE auth.sso_providers (
    id uuid NOT NULL,
    resource_id text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    disabled boolean,
    CONSTRAINT "resource_id not empty" CHECK (((resource_id = NULL::text) OR (char_length(resource_id) > 0)))
);


--
-- Name: TABLE sso_providers; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON TABLE auth.sso_providers IS 'Auth: Manages SSO identity provider information; see saml_providers for SAML.';


--
-- Name: COLUMN sso_providers.resource_id; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON COLUMN auth.sso_providers.resource_id IS 'Auth: Uniquely identifies a SSO provider according to a user-chosen resource ID (case insensitive), useful in infrastructure as code.';


--
-- Name: users; Type: TABLE; Schema: auth; Owner: -
--

CREATE TABLE auth.users (
    instance_id uuid,
    id uuid NOT NULL,
    aud character varying(255),
    role character varying(255),
    email character varying(255),
    encrypted_password character varying(255),
    email_confirmed_at timestamp with time zone,
    invited_at timestamp with time zone,
    confirmation_token character varying(255),
    confirmation_sent_at timestamp with time zone,
    recovery_token character varying(255),
    recovery_sent_at timestamp with time zone,
    email_change_token_new character varying(255),
    email_change character varying(255),
    email_change_sent_at timestamp with time zone,
    last_sign_in_at timestamp with time zone,
    raw_app_meta_data jsonb,
    raw_user_meta_data jsonb,
    is_super_admin boolean,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    phone text DEFAULT NULL::character varying,
    phone_confirmed_at timestamp with time zone,
    phone_change text DEFAULT ''::character varying,
    phone_change_token character varying(255) DEFAULT ''::character varying,
    phone_change_sent_at timestamp with time zone,
    confirmed_at timestamp with time zone GENERATED ALWAYS AS (LEAST(email_confirmed_at, phone_confirmed_at)) STORED,
    email_change_token_current character varying(255) DEFAULT ''::character varying,
    email_change_confirm_status smallint DEFAULT 0,
    banned_until timestamp with time zone,
    reauthentication_token character varying(255) DEFAULT ''::character varying,
    reauthentication_sent_at timestamp with time zone,
    is_sso_user boolean DEFAULT false NOT NULL,
    deleted_at timestamp with time zone,
    is_anonymous boolean DEFAULT false NOT NULL,
    CONSTRAINT users_email_change_confirm_status_check CHECK (((email_change_confirm_status >= 0) AND (email_change_confirm_status <= 2)))
);


--
-- Name: TABLE users; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON TABLE auth.users IS 'Auth: Stores user login data within a secure schema.';


--
-- Name: COLUMN users.is_sso_user; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON COLUMN auth.users.is_sso_user IS 'Auth: Set this column to true when the account comes from SSO. These accounts can have duplicate emails.';


--
-- Name: crm_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.crm_settings (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    setting_key text NOT NULL,
    setting_value jsonb NOT NULL,
    description text,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now()
);


--
-- Name: TABLE crm_settings; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.crm_settings IS 'CRM settings and configurations';


--
-- Name: customer_activities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.customer_activities (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    customer_id uuid NOT NULL,
    activity_type text NOT NULL,
    description text,
    order_id uuid,
    follow_up_date date,
    created_by uuid,
    created_at timestamp with time zone DEFAULT now(),
    title text,
    is_completed boolean DEFAULT false,
    completed_at timestamp with time zone,
    updated_at timestamp with time zone DEFAULT now(),
    CONSTRAINT customer_activities_activity_type_check CHECK ((activity_type = ANY (ARRAY['call'::text, 'line'::text, 'meeting'::text, 'order'::text, 'follow_up'::text, 'note'::text])))
);


--
-- Name: customers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.customers (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    business_name text,
    contact_person text,
    phone text,
    email text,
    address text,
    district text,
    province text,
    postal_code text,
    type public.customer_type DEFAULT 'retail'::public.customer_type,
    status public.customer_status DEFAULT 'active'::public.customer_status,
    credit_limit numeric(10,2) DEFAULT 0,
    credit_days integer DEFAULT 0,
    price_level text DEFAULT 'standard'::text,
    line_user_id text,
    line_group_id text,
    churn_risk text DEFAULT 'low'::text,
    first_order_date date,
    last_order_date date,
    total_orders integer DEFAULT 0,
    total_sales numeric(10,2) DEFAULT 0,
    average_order_value numeric(10,2) DEFAULT 0,
    days_since_last_order integer DEFAULT 0,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    customer_code text NOT NULL,
    amphoe text,
    tax_id text,
    assigned_salesperson uuid,
    is_active boolean DEFAULT true,
    notes text,
    created_by uuid,
    payment_stats jsonb DEFAULT '{}'::jsonb,
    name text NOT NULL,
    customer_type_new text DEFAULT 'retail'::text,
    tax_company_name text,
    tax_branch text DEFAULT 'สำนักงานใหญ่'::text,
    CONSTRAINT customers_customer_type_new_check CHECK ((customer_type_new = ANY (ARRAY['retail'::text, 'wholesale'::text, 'distributor'::text])))
);


--
-- Name: COLUMN customers.tax_company_name; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.customers.tax_company_name IS 'Company name for tax invoice (ชื่อบริษัท/ชื่อผู้เสียภาษี)';


--
-- Name: COLUMN customers.tax_branch; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.customers.tax_branch IS 'Branch for tax invoice (สำนักงานใหญ่ or สาขาที่ XXX)';


--
-- Name: finished_goods; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.finished_goods (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    product_id uuid NOT NULL,
    bottle_type_id uuid NOT NULL,
    production_batch_id uuid NOT NULL,
    quantity integer NOT NULL,
    unit_cost numeric NOT NULL,
    total_cost numeric NOT NULL,
    manufactured_date timestamp with time zone NOT NULL,
    expiry_date timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT finished_goods_quantity_check CHECK ((quantity >= 0)),
    CONSTRAINT finished_goods_total_cost_check CHECK ((total_cost >= (0)::numeric)),
    CONSTRAINT finished_goods_unit_cost_check CHECK ((unit_cost >= (0)::numeric))
);


--
-- Name: TABLE finished_goods; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.finished_goods IS 'สินค้าสำเร็จพร้อมขาย (Finished Goods Inventory)';


--
-- Name: COLUMN finished_goods.unit_cost; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.finished_goods.unit_cost IS 'ต้นทุนต่อหน่วย (บาท/ขวด) จากการผลิต';


--
-- Name: COLUMN finished_goods.total_cost; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.finished_goods.total_cost IS 'ต้นทุนรวม = quantity * unit_cost';


--
-- Name: inventory_batches; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.inventory_batches (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    batch_number text NOT NULL,
    raw_material_id uuid,
    supplier_id uuid,
    quantity numeric(10,2) NOT NULL,
    remaining_quantity numeric(10,2) NOT NULL,
    price_per_unit numeric(10,2) NOT NULL,
    total_price numeric(10,2) NOT NULL,
    receipt_image text,
    purchase_date date NOT NULL,
    expiry_date date,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now()
);


--
-- Name: line_contacts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.line_contacts (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    line_user_id text NOT NULL,
    display_name text DEFAULT 'Unknown'::text NOT NULL,
    picture_url text,
    status text DEFAULT 'active'::text,
    customer_id uuid,
    unread_count integer DEFAULT 0,
    last_message_at timestamp with time zone,
    followed_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    CONSTRAINT line_contacts_status_check CHECK ((status = ANY (ARRAY['active'::text, 'blocked'::text])))
);


--
-- Name: line_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.line_groups (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    line_group_id text NOT NULL,
    group_name text,
    picture_url text,
    member_count integer DEFAULT 0,
    customer_id uuid,
    total_messages integer DEFAULT 0,
    total_orders integer DEFAULT 0,
    is_active boolean DEFAULT true,
    last_message_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    mapped_at timestamp with time zone,
    mapped_by uuid,
    member_ids jsonb DEFAULT '[]'::jsonb,
    last_order_at timestamp with time zone,
    left_at timestamp with time zone
);


--
-- Name: line_message_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.line_message_logs (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    target_type text NOT NULL,
    line_user_id text,
    line_group_id text,
    direction text NOT NULL,
    message_type text,
    message_content text,
    order_id uuid,
    template_id uuid,
    sent_at timestamp with time zone,
    delivered boolean,
    error_message text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT line_message_logs_direction_check CHECK ((direction = ANY (ARRAY['inbound'::text, 'outbound'::text]))),
    CONSTRAINT line_message_logs_target_type_check CHECK ((target_type = ANY (ARRAY['user'::text, 'group'::text])))
);


--
-- Name: line_message_templates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.line_message_templates (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    category text NOT NULL,
    message_type text DEFAULT 'text'::text NOT NULL,
    content text NOT NULL,
    flex_message jsonb,
    is_active boolean DEFAULT true,
    created_by uuid,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT line_message_templates_category_check CHECK ((category = ANY (ARRAY['order_confirm'::text, 'delivery'::text, 'follow_up'::text, 'promotion'::text, 'payment_reminder'::text]))),
    CONSTRAINT line_message_templates_message_type_check CHECK ((message_type = ANY (ARRAY['text'::text, 'flex'::text])))
);


--
-- Name: line_messages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.line_messages (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    line_contact_id uuid NOT NULL,
    line_message_id text,
    direction text NOT NULL,
    message_type text DEFAULT 'text'::text NOT NULL,
    content text NOT NULL,
    sent_by uuid,
    raw_message jsonb,
    received_at timestamp with time zone,
    sent_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now(),
    sender_user_id text,
    sender_name text,
    sender_picture_url text,
    CONSTRAINT line_messages_direction_check CHECK ((direction = ANY (ARRAY['incoming'::text, 'outgoing'::text])))
);


--
-- Name: line_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.line_users (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    line_user_id text NOT NULL,
    display_name text,
    picture_url text,
    customer_id uuid,
    total_messages integer DEFAULT 0,
    last_message_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    status_message text,
    mapped_at timestamp with time zone,
    mapped_by uuid,
    is_blocked boolean DEFAULT false,
    is_active boolean DEFAULT true
);


--
-- Name: order_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_items (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    order_id uuid NOT NULL,
    quantity integer NOT NULL,
    unit_price numeric(12,2) NOT NULL,
    discount_percent numeric(5,2) DEFAULT 0,
    discount_amount numeric(12,2) DEFAULT 0,
    subtotal numeric(12,2) NOT NULL,
    total numeric(12,2) NOT NULL,
    notes text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    variation_id uuid,
    product_id uuid,
    product_code text,
    product_name text,
    bottle_size text,
    discount_type text DEFAULT 'percent'::text,
    CONSTRAINT order_items_discount_percent_check CHECK (((discount_percent >= (0)::numeric) AND (discount_percent <= (100)::numeric))),
    CONSTRAINT order_items_discount_type_check CHECK ((discount_type = ANY (ARRAY['percent'::text, 'amount'::text]))),
    CONSTRAINT order_items_quantity_check CHECK ((quantity > 0)),
    CONSTRAINT order_items_unit_price_check CHECK ((unit_price >= (0)::numeric))
);


--
-- Name: order_shipments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_shipments (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    order_item_id uuid NOT NULL,
    shipping_address_id uuid NOT NULL,
    quantity integer NOT NULL,
    delivery_status text DEFAULT 'pending'::text NOT NULL,
    delivery_date timestamp with time zone,
    received_date timestamp with time zone,
    delivery_notes text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    shipping_fee numeric DEFAULT 0,
    CONSTRAINT order_shipments_quantity_check CHECK ((quantity > 0))
);


--
-- Name: order_summary; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.order_summary AS
SELECT
    NULL::uuid AS id,
    NULL::text AS order_number,
    NULL::date AS order_date,
    NULL::date AS delivery_date,
    NULL::numeric(12,2) AS total_amount,
    NULL::text AS payment_status,
    NULL::text AS order_status,
    NULL::uuid AS customer_id,
    NULL::text AS customer_code,
    NULL::text AS customer_name,
    NULL::text AS contact_person,
    NULL::text AS customer_phone,
    NULL::bigint AS item_count,
    NULL::bigint AS branch_count;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.orders (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    order_number text NOT NULL,
    customer_id uuid NOT NULL,
    order_date date DEFAULT CURRENT_DATE NOT NULL,
    delivery_date date,
    subtotal numeric(12,2) DEFAULT 0 NOT NULL,
    discount_amount numeric(12,2) DEFAULT 0,
    total_amount numeric(12,2) DEFAULT 0 NOT NULL,
    payment_method text,
    payment_status text DEFAULT 'pending'::text NOT NULL,
    notes text,
    internal_notes text,
    cancellation_reason text,
    created_by uuid,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    order_status text DEFAULT 'draft'::text NOT NULL,
    vat_amount numeric(15,2) DEFAULT 0 NOT NULL,
    shipping_fee numeric DEFAULT 0,
    order_discount_type text DEFAULT 'amount'::text,
    CONSTRAINT orders_order_discount_type_check CHECK ((order_discount_type = ANY (ARRAY['percent'::text, 'amount'::text]))),
    CONSTRAINT orders_order_status_check CHECK ((order_status = ANY (ARRAY['new'::text, 'shipping'::text, 'completed'::text, 'cancelled'::text]))),
    CONSTRAINT orders_payment_method_check CHECK ((payment_method = ANY (ARRAY['cash'::text, 'transfer'::text, 'credit'::text, 'cheque'::text]))),
    CONSTRAINT orders_payment_status_check CHECK ((payment_status = ANY (ARRAY['pending'::text, 'verifying'::text, 'paid'::text, 'cancelled'::text])))
);


--
-- Name: payment_channels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payment_channels (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    channel_group text DEFAULT 'bill_online'::text NOT NULL,
    type text NOT NULL,
    name text NOT NULL,
    is_active boolean DEFAULT true,
    sort_order integer DEFAULT 0,
    config jsonb DEFAULT '{}'::jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    CONSTRAINT payment_channels_channel_group_check CHECK ((channel_group = ANY (ARRAY['bill_online'::text, 'pos'::text]))),
    CONSTRAINT payment_channels_type_check CHECK ((type = ANY (ARRAY['cash'::text, 'bank_transfer'::text, 'payment_gateway'::text, 'card_terminal'::text])))
);


--
-- Name: payment_records; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payment_records (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    order_id uuid NOT NULL,
    payment_method character varying(50) NOT NULL,
    payment_date timestamp with time zone DEFAULT now() NOT NULL,
    amount numeric(15,2) NOT NULL,
    collected_by character varying(255),
    transfer_date date,
    transfer_time time without time zone,
    notes text,
    created_at timestamp with time zone DEFAULT now(),
    created_by uuid,
    slip_image_url text,
    status text DEFAULT 'verified'::text,
    gateway_provider text,
    gateway_payment_link_id text,
    gateway_charge_id text,
    gateway_status text,
    gateway_raw_response jsonb,
    CONSTRAINT valid_payment_method CHECK (((payment_method)::text = ANY ((ARRAY['cash'::character varying, 'transfer'::character varying, 'credit'::character varying, 'cheque'::character varying])::text[])))
);


--
-- Name: payments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.payments (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    order_id uuid NOT NULL,
    payment_date date DEFAULT CURRENT_DATE NOT NULL,
    amount numeric(12,2) NOT NULL,
    payment_method text NOT NULL,
    reference_number text,
    bank_name text,
    receipt_number text,
    receipt_image_url text,
    notes text,
    received_by uuid,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT payments_amount_check CHECK ((amount > (0)::numeric)),
    CONSTRAINT payments_payment_method_check CHECK ((payment_method = ANY (ARRAY['cash'::text, 'transfer'::text, 'credit'::text, 'cheque'::text])))
);


--
-- Name: price_lists; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.price_lists (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    product_id uuid NOT NULL,
    bottle_id uuid,
    standard_price numeric(12,2) DEFAULT 0 NOT NULL,
    wholesale_price numeric(12,2) DEFAULT 0 NOT NULL,
    special_price numeric(12,2) DEFAULT 0 NOT NULL,
    min_qty_standard integer DEFAULT 1,
    min_qty_wholesale integer DEFAULT 50,
    min_qty_special integer DEFAULT 100,
    is_active boolean DEFAULT true,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: product_images; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.product_images (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    product_id uuid,
    variation_id uuid,
    image_url text NOT NULL,
    storage_path text NOT NULL,
    sort_order integer DEFAULT 0 NOT NULL,
    created_at timestamp with time zone DEFAULT now(),
    CONSTRAINT product_images_owner_check CHECK (((product_id IS NOT NULL) OR (variation_id IS NOT NULL)))
);


--
-- Name: product_variations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.product_variations (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    product_id uuid NOT NULL,
    default_price numeric(15,2) DEFAULT 0 NOT NULL,
    discount_price numeric(15,2) DEFAULT 0,
    stock integer DEFAULT 0,
    min_stock integer DEFAULT 0,
    is_active boolean DEFAULT true,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    bottle_size text,
    attributes jsonb,
    sku text,
    barcode text
);


--
-- Name: TABLE product_variations; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.product_variations IS 'Variations ของสินค้าพร้อมขาย - แต่ละ variation คือขนาดขวดที่ต่างกัน';


--
-- Name: COLUMN product_variations.product_id; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.product_variations.product_id IS 'สินค้าพร้อมขาย';


--
-- Name: products; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.products (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    code text NOT NULL,
    name text NOT NULL,
    description text,
    is_active boolean DEFAULT true,
    image text,
    created_by uuid,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    bottle_size text,
    selected_variation_types uuid[]
);


--
-- Name: TABLE products; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.products IS 'สินค้าพร้อมขาย (Sellable Products) - ผสมผสานระหว่างสินค้าผลิต + ขนาดขวด + ราคา';


--
-- Name: COLUMN products.code; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.products.code IS 'รหัสสินค้าพร้อมขาย';


--
-- Name: products_view; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.products_view AS
 SELECT id,
    code,
    name,
    description,
    image,
    bottle_size,
    selected_variation_types,
    is_active,
    created_at,
    updated_at
   FROM public.products p;


--
-- Name: products_with_variations; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.products_with_variations AS
 SELECT p.id AS product_id,
    p.code,
    p.name,
    p.description,
    p.image,
    p.is_active,
    p.created_at,
    p.updated_at,
    p.selected_variation_types,
        CASE
            WHEN (p.bottle_size IS NOT NULL) THEN 'simple'::text
            ELSE 'variation'::text
        END AS product_type,
    p.bottle_size AS simple_bottle_size,
    sv_simple.default_price AS simple_default_price,
    sv_simple.discount_price AS simple_discount_price,
    sv_simple.stock AS simple_stock,
    sv_simple.min_stock AS simple_min_stock,
    pv.id AS variation_id,
    pv.bottle_size,
    pv.sku,
    pv.barcode,
    pv.attributes,
    pv.default_price,
    pv.discount_price,
    pv.stock,
    pv.min_stock,
    pv.is_active AS variation_is_active
   FROM ((public.products p
     LEFT JOIN public.product_variations pv ON ((pv.product_id = p.id)))
     LEFT JOIN public.product_variations sv_simple ON (((sv_simple.product_id = p.id) AND (p.bottle_size IS NOT NULL) AND (sv_simple.bottle_size = p.bottle_size))));


--
-- Name: quality_tests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.quality_tests (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    batch_id uuid,
    test_type text,
    brix_value numeric(5,2),
    brix_image text,
    acidity_value numeric(5,2),
    acidity_image text,
    product_image text,
    notes text,
    tested_by uuid,
    tested_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    CONSTRAINT quality_tests_test_type_check CHECK ((test_type = ANY (ARRAY['before_mixing'::text, 'after_mixing'::text])))
);


--
-- Name: sales_order_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sales_order_items (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    order_id uuid,
    product_id uuid,
    bottle_type_id uuid,
    quantity integer NOT NULL,
    price_per_unit numeric(10,2) NOT NULL,
    total numeric(10,2) NOT NULL
);


--
-- Name: sales_orders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sales_orders (
    id uuid DEFAULT extensions.uuid_generate_v4() NOT NULL,
    order_number text NOT NULL,
    customer_id uuid,
    line_source text,
    line_source_id text,
    order_date date NOT NULL,
    delivery_date date NOT NULL,
    status public.order_status DEFAULT 'draft'::public.order_status,
    subtotal numeric(10,2) NOT NULL,
    discount numeric(10,2) DEFAULT 0,
    discount_type text DEFAULT 'amount'::text,
    delivery_fee numeric(10,2) DEFAULT 0,
    total numeric(10,2) NOT NULL,
    payment_method public.payment_method NOT NULL,
    payment_status public.payment_status DEFAULT 'pending'::public.payment_status,
    paid_amount numeric(10,2) DEFAULT 0,
    due_date date,
    paid_date date,
    delivery_type text DEFAULT 'pickup'::text,
    delivery_address text,
    notes text,
    created_by uuid,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now()
);


--
-- Name: shipping_addresses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.shipping_addresses (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    customer_id uuid NOT NULL,
    address_name text NOT NULL,
    contact_person text,
    phone text,
    address_line1 text NOT NULL,
    address_line2 text,
    district text,
    amphoe text,
    province text NOT NULL,
    postal_code text,
    google_maps_link text,
    latitude numeric(10,8),
    longitude numeric(11,8),
    delivery_notes text,
    is_default boolean DEFAULT false,
    is_active boolean DEFAULT true,
    created_by uuid,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: stock_lot_usages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.stock_lot_usages (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    stock_lot_id uuid NOT NULL,
    stock_transaction_id uuid,
    production_batch_id uuid,
    quantity_used numeric NOT NULL,
    unit_cost numeric NOT NULL,
    total_cost numeric NOT NULL,
    usage_date timestamp with time zone DEFAULT now() NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT stock_lot_usages_quantity_used_check CHECK ((quantity_used > (0)::numeric))
);


--
-- Name: TABLE stock_lot_usages; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.stock_lot_usages IS 'การใช้งานของแต่ละ lot (FIFO)';


--
-- Name: COLUMN stock_lot_usages.total_cost; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.stock_lot_usages.total_cost IS 'ต้นทุนรวมที่ใช้ไปจาก lot นี้';


--
-- Name: stock_lots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.stock_lots (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    raw_material_id uuid NOT NULL,
    stock_transaction_id uuid,
    lot_number text,
    quantity_remaining numeric NOT NULL,
    unit_price numeric NOT NULL,
    purchase_date timestamp with time zone DEFAULT now() NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    CONSTRAINT stock_lots_quantity_remaining_check CHECK ((quantity_remaining >= (0)::numeric)),
    CONSTRAINT stock_lots_unit_price_check CHECK ((unit_price >= (0)::numeric))
);


--
-- Name: TABLE stock_lots; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON TABLE public.stock_lots IS 'Stock lots for FIFO costing - tracks each purchase batch';


--
-- Name: COLUMN stock_lots.quantity_remaining; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.stock_lots.quantity_remaining IS 'จำนวนที่เหลือใน lot นี้';


--
-- Name: COLUMN stock_lots.unit_price; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.stock_lots.unit_price IS 'ราคาต่อหน่วยของ lot นี้';


--
-- Name: COLUMN stock_lots.purchase_date; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.stock_lots.purchase_date IS 'วันที่ซื้อเข้า - ใช้สำหรับ FIFO (lot เก่าออกก่อน)';


--
-- Name: supplier_materials; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.supplier_materials (
    supplier_id uuid NOT NULL,
    raw_material_id uuid NOT NULL,
    price_per_unit numeric(10,2)
);


--
-- Name: user_profiles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_profiles (
    id uuid NOT NULL,
    email text NOT NULL,
    name text NOT NULL,
    role public.user_role DEFAULT 'operation'::public.user_role NOT NULL,
    line_user_id text,
    phone text,
    avatar text,
    is_active boolean DEFAULT true,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now()
);


--
-- Name: variation_types; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.variation_types (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    sort_order integer DEFAULT 0,
    is_active boolean DEFAULT true,
    created_at timestamp with time zone DEFAULT now()
);


--
-- Name: messages; Type: TABLE; Schema: realtime; Owner: -
--

CREATE TABLE realtime.messages (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL
)
PARTITION BY RANGE (inserted_at);


--
-- Name: messages_2026_02_10; Type: TABLE; Schema: realtime; Owner: -
--

CREATE TABLE realtime.messages_2026_02_10 (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL
);


--
-- Name: messages_2026_02_11; Type: TABLE; Schema: realtime; Owner: -
--

CREATE TABLE realtime.messages_2026_02_11 (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL
);


--
-- Name: messages_2026_02_12; Type: TABLE; Schema: realtime; Owner: -
--

CREATE TABLE realtime.messages_2026_02_12 (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL
);


--
-- Name: messages_2026_02_13; Type: TABLE; Schema: realtime; Owner: -
--

CREATE TABLE realtime.messages_2026_02_13 (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL
);


--
-- Name: messages_2026_02_14; Type: TABLE; Schema: realtime; Owner: -
--

CREATE TABLE realtime.messages_2026_02_14 (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL
);


--
-- Name: messages_2026_02_15; Type: TABLE; Schema: realtime; Owner: -
--

CREATE TABLE realtime.messages_2026_02_15 (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL
);


--
-- Name: messages_2026_02_16; Type: TABLE; Schema: realtime; Owner: -
--

CREATE TABLE realtime.messages_2026_02_16 (
    topic text NOT NULL,
    extension text NOT NULL,
    payload jsonb,
    event text,
    private boolean DEFAULT false,
    updated_at timestamp without time zone DEFAULT now() NOT NULL,
    inserted_at timestamp without time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL
);


--
-- Name: schema_migrations; Type: TABLE; Schema: realtime; Owner: -
--

CREATE TABLE realtime.schema_migrations (
    version bigint NOT NULL,
    inserted_at timestamp(0) without time zone
);


--
-- Name: subscription; Type: TABLE; Schema: realtime; Owner: -
--

CREATE TABLE realtime.subscription (
    id bigint NOT NULL,
    subscription_id uuid NOT NULL,
    entity regclass NOT NULL,
    filters realtime.user_defined_filter[] DEFAULT '{}'::realtime.user_defined_filter[] NOT NULL,
    claims jsonb NOT NULL,
    claims_role regrole GENERATED ALWAYS AS (realtime.to_regrole((claims ->> 'role'::text))) STORED NOT NULL,
    created_at timestamp without time zone DEFAULT timezone('utc'::text, now()) NOT NULL,
    action_filter text DEFAULT '*'::text,
    CONSTRAINT subscription_action_filter_check CHECK ((action_filter = ANY (ARRAY['*'::text, 'INSERT'::text, 'UPDATE'::text, 'DELETE'::text])))
);


--
-- Name: subscription_id_seq; Type: SEQUENCE; Schema: realtime; Owner: -
--

ALTER TABLE realtime.subscription ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME realtime.subscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: buckets; Type: TABLE; Schema: storage; Owner: -
--

CREATE TABLE storage.buckets (
    id text NOT NULL,
    name text NOT NULL,
    owner uuid,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    public boolean DEFAULT false,
    avif_autodetection boolean DEFAULT false,
    file_size_limit bigint,
    allowed_mime_types text[],
    owner_id text,
    type storage.buckettype DEFAULT 'STANDARD'::storage.buckettype NOT NULL
);


--
-- Name: COLUMN buckets.owner; Type: COMMENT; Schema: storage; Owner: -
--

COMMENT ON COLUMN storage.buckets.owner IS 'Field is deprecated, use owner_id instead';


--
-- Name: buckets_analytics; Type: TABLE; Schema: storage; Owner: -
--

CREATE TABLE storage.buckets_analytics (
    name text NOT NULL,
    type storage.buckettype DEFAULT 'ANALYTICS'::storage.buckettype NOT NULL,
    format text DEFAULT 'ICEBERG'::text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    deleted_at timestamp with time zone
);


--
-- Name: buckets_vectors; Type: TABLE; Schema: storage; Owner: -
--

CREATE TABLE storage.buckets_vectors (
    id text NOT NULL,
    type storage.buckettype DEFAULT 'VECTOR'::storage.buckettype NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: migrations; Type: TABLE; Schema: storage; Owner: -
--

CREATE TABLE storage.migrations (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    hash character varying(40) NOT NULL,
    executed_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: objects; Type: TABLE; Schema: storage; Owner: -
--

CREATE TABLE storage.objects (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    bucket_id text,
    name text,
    owner uuid,
    created_at timestamp with time zone DEFAULT now(),
    updated_at timestamp with time zone DEFAULT now(),
    last_accessed_at timestamp with time zone DEFAULT now(),
    metadata jsonb,
    path_tokens text[] GENERATED ALWAYS AS (string_to_array(name, '/'::text)) STORED,
    version text,
    owner_id text,
    user_metadata jsonb
);


--
-- Name: COLUMN objects.owner; Type: COMMENT; Schema: storage; Owner: -
--

COMMENT ON COLUMN storage.objects.owner IS 'Field is deprecated, use owner_id instead';


--
-- Name: s3_multipart_uploads; Type: TABLE; Schema: storage; Owner: -
--

CREATE TABLE storage.s3_multipart_uploads (
    id text NOT NULL,
    in_progress_size bigint DEFAULT 0 NOT NULL,
    upload_signature text NOT NULL,
    bucket_id text NOT NULL,
    key text NOT NULL COLLATE pg_catalog."C",
    version text NOT NULL,
    owner_id text,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    user_metadata jsonb
);


--
-- Name: s3_multipart_uploads_parts; Type: TABLE; Schema: storage; Owner: -
--

CREATE TABLE storage.s3_multipart_uploads_parts (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    upload_id text NOT NULL,
    size bigint DEFAULT 0 NOT NULL,
    part_number integer NOT NULL,
    bucket_id text NOT NULL,
    key text NOT NULL COLLATE pg_catalog."C",
    etag text NOT NULL,
    owner_id text,
    version text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: vector_indexes; Type: TABLE; Schema: storage; Owner: -
--

CREATE TABLE storage.vector_indexes (
    id text DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL COLLATE pg_catalog."C",
    bucket_id text NOT NULL,
    data_type text NOT NULL,
    dimension integer NOT NULL,
    distance_metric text NOT NULL,
    metadata_configuration jsonb,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: messages_2026_02_10; Type: TABLE ATTACH; Schema: realtime; Owner: -
--

ALTER TABLE ONLY realtime.messages ATTACH PARTITION realtime.messages_2026_02_10 FOR VALUES FROM ('2026-02-10 00:00:00') TO ('2026-02-11 00:00:00');


--
-- Name: messages_2026_02_11; Type: TABLE ATTACH; Schema: realtime; Owner: -
--

ALTER TABLE ONLY realtime.messages ATTACH PARTITION realtime.messages_2026_02_11 FOR VALUES FROM ('2026-02-11 00:00:00') TO ('2026-02-12 00:00:00');


--
-- Name: messages_2026_02_12; Type: TABLE ATTACH; Schema: realtime; Owner: -
--

ALTER TABLE ONLY realtime.messages ATTACH PARTITION realtime.messages_2026_02_12 FOR VALUES FROM ('2026-02-12 00:00:00') TO ('2026-02-13 00:00:00');


--
-- Name: messages_2026_02_13; Type: TABLE ATTACH; Schema: realtime; Owner: -
--

ALTER TABLE ONLY realtime.messages ATTACH PARTITION realtime.messages_2026_02_13 FOR VALUES FROM ('2026-02-13 00:00:00') TO ('2026-02-14 00:00:00');


--
-- Name: messages_2026_02_14; Type: TABLE ATTACH; Schema: realtime; Owner: -
--

ALTER TABLE ONLY realtime.messages ATTACH PARTITION realtime.messages_2026_02_14 FOR VALUES FROM ('2026-02-14 00:00:00') TO ('2026-02-15 00:00:00');


--
-- Name: messages_2026_02_15; Type: TABLE ATTACH; Schema: realtime; Owner: -
--

ALTER TABLE ONLY realtime.messages ATTACH PARTITION realtime.messages_2026_02_15 FOR VALUES FROM ('2026-02-15 00:00:00') TO ('2026-02-16 00:00:00');


--
-- Name: messages_2026_02_16; Type: TABLE ATTACH; Schema: realtime; Owner: -
--

ALTER TABLE ONLY realtime.messages ATTACH PARTITION realtime.messages_2026_02_16 FOR VALUES FROM ('2026-02-16 00:00:00') TO ('2026-02-17 00:00:00');


--
-- Name: refresh_tokens id; Type: DEFAULT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.refresh_tokens ALTER COLUMN id SET DEFAULT nextval('auth.refresh_tokens_id_seq'::regclass);


--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: -
--

COPY auth.audit_log_entries (instance_id, id, payload, created_at, ip_address) FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: -
--

COPY auth.flow_state (id, user_id, auth_code, code_challenge_method, code_challenge, provider_type, provider_access_token, provider_refresh_token, created_at, updated_at, authentication_method, auth_code_issued_at, invite_token, referrer, oauth_client_state_id, linking_target_id, email_optional) FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: -
--

COPY auth.identities (provider_id, user_id, identity_data, provider, last_sign_in_at, created_at, updated_at, id) FROM stdin;
0d86f21f-20e4-474e-bb56-8e9ffd941a4e	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	{"sub": "0d86f21f-20e4-474e-bb56-8e9ffd941a4e", "email": "kwamkid@gmail.com", "email_verified": false, "phone_verified": false}	email	2025-11-12 06:48:06.297226+00	2025-11-12 06:48:06.297282+00	2025-11-12 06:48:06.297282+00	7f4c055f-7a4e-421d-9027-e80d0044a770
634da19d-716f-4b48-8c44-0706303d0840	634da19d-716f-4b48-8c44-0706303d0840	{"sub": "634da19d-716f-4b48-8c44-0706303d0840", "email": "nutprawee@gmail.com", "email_verified": false, "phone_verified": false}	email	2025-11-28 06:11:51.321256+00	2025-11-28 06:11:51.321314+00	2025-11-28 06:11:51.321314+00	ebed3ea0-b6ea-415b-8c94-35deb012ad11
24015529-2657-4091-a2e4-d100799f3d90	24015529-2657-4091-a2e4-d100799f3d90	{"sub": "24015529-2657-4091-a2e4-d100799f3d90", "email": "mimimi@gmail.com", "email_verified": false, "phone_verified": false}	email	2025-12-01 04:15:12.409482+00	2025-12-01 04:15:12.409536+00	2025-12-01 04:15:12.409536+00	5b9c03dc-bafe-4415-b336-c217110a5bf1
0d90fb2c-dfb6-4ebd-9b81-38909b601854	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{"sub": "0d90fb2c-dfb6-4ebd-9b81-38909b601854", "email": "kwankwan@gmail.com", "email_verified": false, "phone_verified": false}	email	2025-12-09 05:35:59.562958+00	2025-12-09 05:35:59.563025+00	2025-12-09 05:35:59.563025+00	2901c7c6-0154-4fa7-b4e7-d2e0c5adf251
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: -
--

COPY auth.instances (id, uuid, raw_base_config, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: -
--

COPY auth.mfa_amr_claims (session_id, created_at, updated_at, authentication_method, id) FROM stdin;
b9465d42-7700-48d3-a138-c4766453ab0d	2026-01-16 10:15:55.133039+00	2026-01-16 10:15:55.133039+00	password	1d8d9fb3-b713-4921-a7f9-865cef14b4ca
79bb698d-c04d-4cda-9553-d4cb9c2f4675	2026-01-23 05:05:01.225275+00	2026-01-23 05:05:01.225275+00	password	4bfe60b2-24b5-43c2-b9bc-84d4086ff02a
82b97831-f64d-48eb-ac47-46359c865a55	2026-01-23 05:19:57.757197+00	2026-01-23 05:19:57.757197+00	password	4854ffcb-407e-4a29-9aad-abdf536850c0
1dca2909-50b1-4f98-8c1c-3cdb92c4b84f	2026-02-10 13:25:19.813726+00	2026-02-10 13:25:19.813726+00	password	cce5638c-88ae-4835-9f07-5514b492a5b8
350ace3a-14f2-474d-8968-e213e3b83a32	2026-02-13 06:13:36.155355+00	2026-02-13 06:13:36.155355+00	password	e58e856a-cf2d-411b-9345-2d2698bb1cfc
d0960137-3e5d-4ba6-92bc-4b712fe58029	2026-02-13 07:41:11.311707+00	2026-02-13 07:41:11.311707+00	password	1762ad3e-f7bc-41ae-9666-47c5406c252d
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: -
--

COPY auth.mfa_challenges (id, factor_id, created_at, verified_at, ip_address, otp_code, web_authn_session_data) FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: -
--

COPY auth.mfa_factors (id, user_id, friendly_name, factor_type, status, created_at, updated_at, secret, phone, last_challenged_at, web_authn_credential, web_authn_aaguid, last_webauthn_challenge_data) FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: -
--

COPY auth.oauth_authorizations (id, authorization_id, client_id, user_id, redirect_uri, scope, state, resource, code_challenge, code_challenge_method, response_type, status, authorization_code, created_at, expires_at, approved_at, nonce) FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: -
--

COPY auth.oauth_client_states (id, provider_type, code_verifier, created_at) FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: -
--

COPY auth.oauth_clients (id, client_secret_hash, registration_type, redirect_uris, grant_types, client_name, client_uri, logo_uri, created_at, updated_at, deleted_at, client_type, token_endpoint_auth_method) FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: -
--

COPY auth.oauth_consents (id, user_id, client_id, scopes, granted_at, revoked_at) FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: -
--

COPY auth.one_time_tokens (id, user_id, token_type, token_hash, relates_to, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: -
--

COPY auth.refresh_tokens (instance_id, id, token, user_id, revoked, created_at, updated_at, parent, session_id) FROM stdin;
00000000-0000-0000-0000-000000000000	426	2ikpp35zfwb5	634da19d-716f-4b48-8c44-0706303d0840	f	2026-02-13 03:11:21.496008+00	2026-02-13 03:11:21.496008+00	u3f4jlg6hjpd	82b97831-f64d-48eb-ac47-46359c865a55
00000000-0000-0000-0000-000000000000	430	2d52j643ypoq	0d90fb2c-dfb6-4ebd-9b81-38909b601854	f	2026-02-13 06:13:36.120794+00	2026-02-13 06:13:36.120794+00	\N	350ace3a-14f2-474d-8968-e213e3b83a32
00000000-0000-0000-0000-000000000000	209	3idiekdid2k6	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-19 10:36:04.751313+00	2026-01-21 05:08:49.094304+00	q23fkoi53rlh	b9465d42-7700-48d3-a138-c4766453ab0d
00000000-0000-0000-0000-000000000000	434	sbazyyarai5r	0d90fb2c-dfb6-4ebd-9b81-38909b601854	f	2026-02-13 11:06:37.511378+00	2026-02-13 11:06:37.511378+00	wzf5vcocwocy	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	219	4xlu7g5b3cd5	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-21 07:33:27.870772+00	2026-01-21 09:01:50.956666+00	xhzympbwp3xe	b9465d42-7700-48d3-a138-c4766453ab0d
00000000-0000-0000-0000-000000000000	260	rokvjdaelsst	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-04 10:31:42.247288+00	2026-02-06 06:46:38.222154+00	pz7tdr4pktwn	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	221	6enicmd56p4f	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-21 11:06:31.148644+00	2026-01-22 05:05:07.23814+00	ini6upqspmk7	b9465d42-7700-48d3-a138-c4766453ab0d
00000000-0000-0000-0000-000000000000	223	ktwnlyvq3v22	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-22 06:03:51.821564+00	2026-01-22 09:49:22.91978+00	gwokvwi5siav	b9465d42-7700-48d3-a138-c4766453ab0d
00000000-0000-0000-0000-000000000000	271	la23zjzizds5	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-06 06:46:38.236143+00	2026-02-10 01:23:43.840448+00	rokvjdaelsst	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	234	wzfcf3gjsztj	634da19d-716f-4b48-8c44-0706303d0840	t	2026-01-23 05:19:57.733808+00	2026-01-23 09:13:21.357948+00	\N	82b97831-f64d-48eb-ac47-46359c865a55
00000000-0000-0000-0000-000000000000	231	l4o6aplsnc3b	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-23 05:05:01.191218+00	2026-01-23 09:16:36.081881+00	\N	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	236	brbfwo4t36zw	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-23 09:16:36.083841+00	2026-01-23 10:35:24.364066+00	l4o6aplsnc3b	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	238	qdhrjvijko7p	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-23 10:35:24.391678+00	2026-01-24 06:51:45.308301+00	brbfwo4t36zw	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	240	urp6vuexxsqa	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-24 09:04:41.551047+00	2026-01-25 01:25:50.767905+00	tc2z5g53cnbw	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	242	sxdmy7wtialu	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-25 02:56:02.088004+00	2026-01-25 07:08:01.139454+00	3boihryobdrn	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	244	qpcxzf657ovy	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-25 09:10:00.032747+00	2026-01-26 00:21:57.729551+00	37txt6nw3lpt	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	246	y4dpx7uo6dvv	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-26 03:22:27.636479+00	2026-01-26 04:33:16.66856+00	ib4n2q6am7cu	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	248	rest3h4gnjqu	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-26 06:29:11.717998+00	2026-01-26 08:39:12.449327+00	wpybg3yg67rc	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	250	johee6akofnm	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-26 10:03:14.860766+00	2026-01-27 02:41:48.869111+00	qd3tsfviiayg	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	252	nt2gsfsxf3rm	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-27 07:57:06.467419+00	2026-01-27 10:38:15.485814+00	sfsj5z2lusnd	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	254	funcgvrguuwe	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-28 10:29:51.391875+00	2026-01-29 08:00:06.387519+00	m4ux7khgcq3k	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	256	u7dpsaqq6vmg	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-29 10:23:35.99761+00	2026-01-30 09:55:17.093914+00	4uidcmaumvon	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	258	tqm7pgy6cdio	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-02 09:55:36.826864+00	2026-02-03 10:34:03.633198+00	lhsmdwtzhxlp	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	207	tgzt7j2bbjrk	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-16 10:15:55.117339+00	2026-01-18 09:53:52.524546+00	\N	b9465d42-7700-48d3-a138-c4766453ab0d
00000000-0000-0000-0000-000000000000	235	u3f4jlg6hjpd	634da19d-716f-4b48-8c44-0706303d0840	t	2026-01-23 09:13:21.38756+00	2026-02-13 03:11:21.481402+00	wzfcf3gjsztj	82b97831-f64d-48eb-ac47-46359c865a55
00000000-0000-0000-0000-000000000000	217	xhzympbwp3xe	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-21 05:08:49.110461+00	2026-01-21 07:33:27.841486+00	3idiekdid2k6	b9465d42-7700-48d3-a138-c4766453ab0d
00000000-0000-0000-0000-000000000000	427	zxayvcrqlppq	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-13 03:17:22.644521+00	2026-02-13 04:16:39.848895+00	3nk4iyeq6iwy	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	220	ini6upqspmk7	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-21 09:01:50.990797+00	2026-01-21 11:06:31.129999+00	4xlu7g5b3cd5	b9465d42-7700-48d3-a138-c4766453ab0d
00000000-0000-0000-0000-000000000000	222	gwokvwi5siav	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-22 05:05:07.267092+00	2026-01-22 06:03:51.807702+00	6enicmd56p4f	b9465d42-7700-48d3-a138-c4766453ab0d
00000000-0000-0000-0000-000000000000	431	ejitutk3frw4	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-13 06:34:15.547068+00	2026-02-13 10:07:03.855886+00	ygnu5eph5jmk	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	224	xkvzb6ajx4j7	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-22 09:49:22.95402+00	2026-01-23 00:31:06.255143+00	ktwnlyvq3v22	b9465d42-7700-48d3-a138-c4766453ab0d
00000000-0000-0000-0000-000000000000	226	j4o4a63xi544	0d90fb2c-dfb6-4ebd-9b81-38909b601854	f	2026-01-23 00:31:06.288368+00	2026-01-23 00:31:06.288368+00	xkvzb6ajx4j7	b9465d42-7700-48d3-a138-c4766453ab0d
00000000-0000-0000-0000-000000000000	239	tc2z5g53cnbw	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-24 06:51:45.346341+00	2026-01-24 09:04:41.520791+00	qdhrjvijko7p	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	241	3boihryobdrn	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-25 01:25:50.803428+00	2026-01-25 02:56:02.065912+00	urp6vuexxsqa	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	243	37txt6nw3lpt	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-25 07:08:01.158997+00	2026-01-25 09:09:59.997474+00	sxdmy7wtialu	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	245	ib4n2q6am7cu	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-26 00:21:57.763765+00	2026-01-26 03:22:27.617022+00	qpcxzf657ovy	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	247	wpybg3yg67rc	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-26 04:33:16.697256+00	2026-01-26 06:29:11.686608+00	y4dpx7uo6dvv	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	249	qd3tsfviiayg	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-26 08:39:12.486705+00	2026-01-26 10:03:14.829043+00	rest3h4gnjqu	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	251	sfsj5z2lusnd	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-27 02:41:48.900301+00	2026-01-27 07:57:06.443752+00	johee6akofnm	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	253	m4ux7khgcq3k	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-27 10:38:15.520147+00	2026-01-28 10:29:51.355201+00	nt2gsfsxf3rm	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	255	4uidcmaumvon	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-29 08:00:06.417639+00	2026-01-29 10:23:35.966601+00	funcgvrguuwe	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	257	lhsmdwtzhxlp	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-30 09:55:17.1205+00	2026-02-02 09:55:36.795017+00	u7dpsaqq6vmg	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	259	pz7tdr4pktwn	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-03 10:34:03.66245+00	2026-02-04 10:31:42.212503+00	tqm7pgy6cdio	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	208	q23fkoi53rlh	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-01-18 09:53:52.555468+00	2026-01-19 10:36:04.719786+00	tgzt7j2bbjrk	b9465d42-7700-48d3-a138-c4766453ab0d
00000000-0000-0000-0000-000000000000	428	dgginhfk5pzr	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-13 04:16:39.86635+00	2026-02-13 05:27:23.504135+00	zxayvcrqlppq	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	432	ox3t5zlej2du	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	f	2026-02-13 07:41:11.280554+00	2026-02-13 07:41:11.280554+00	\N	d0960137-3e5d-4ba6-92bc-4b712fe58029
00000000-0000-0000-0000-000000000000	365	omdrtskysuvz	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-10 01:23:43.852653+00	2026-02-10 02:23:04.165598+00	la23zjzizds5	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	366	gtlfl6etgxhe	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-10 02:23:04.181721+00	2026-02-10 03:23:13.267443+00	omdrtskysuvz	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	368	hztcoy7wasbc	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-10 03:23:13.282374+00	2026-02-10 04:23:25.259818+00	gtlfl6etgxhe	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	370	fharwkilnh3m	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-10 04:23:25.278501+00	2026-02-10 06:10:24.617747+00	hztcoy7wasbc	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	372	nqewr3jwhezv	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-10 06:10:24.641275+00	2026-02-10 07:10:13.494304+00	fharwkilnh3m	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	374	pbr2x4b34hrs	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-10 07:10:13.514469+00	2026-02-10 08:10:13.287212+00	nqewr3jwhezv	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	424	3nk4iyeq6iwy	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-13 02:01:29.443492+00	2026-02-13 03:17:22.620112+00	72jutuzg6sva	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	377	srjyk56saabe	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-10 08:10:13.310081+00	2026-02-10 09:09:31.572129+00	pbr2x4b34hrs	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	429	ygnu5eph5jmk	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-13 05:27:23.528282+00	2026-02-13 06:34:15.519406+00	dgginhfk5pzr	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	433	wzf5vcocwocy	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-13 10:07:03.889182+00	2026-02-13 11:06:37.493084+00	ejitutk3frw4	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	382	wpdyxa3jgg3t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-10 13:25:19.764929+00	2026-02-11 12:39:13.229316+00	\N	1dca2909-50b1-4f98-8c1c-3cdb92c4b84f
00000000-0000-0000-0000-000000000000	378	f7zblzl7pxjz	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-10 09:09:31.587382+00	2026-02-12 01:13:24.309205+00	srjyk56saabe	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	397	4edqmf7oh377	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-12 01:13:24.329188+00	2026-02-12 02:16:36.217935+00	f7zblzl7pxjz	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	401	y455b6gz372d	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-12 02:16:36.219564+00	2026-02-12 04:41:13.063417+00	4edqmf7oh377	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	406	7rv6a6o2nvpo	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-12 04:41:13.065659+00	2026-02-12 06:28:44.906202+00	y455b6gz372d	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	408	wwciwhdrivuo	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-12 06:28:44.93074+00	2026-02-12 07:28:17.090079+00	7rv6a6o2nvpo	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	411	2buoascuqhyh	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-12 07:28:17.09163+00	2026-02-12 08:27:37.475008+00	wwciwhdrivuo	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	412	h4trmf7x3cnf	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-12 08:27:37.491392+00	2026-02-12 09:26:44.313127+00	2buoascuqhyh	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	415	slh5hhhs6sae	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-12 09:26:44.330387+00	2026-02-12 10:31:59.798063+00	h4trmf7x3cnf	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	395	nzibvc2eu7qw	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-11 12:39:13.248009+00	2026-02-12 12:21:26.330643+00	wpdyxa3jgg3t	1dca2909-50b1-4f98-8c1c-3cdb92c4b84f
00000000-0000-0000-0000-000000000000	420	mkv6jqkknfpk	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-12 12:21:26.354432+00	2026-02-12 13:34:38.118919+00	nzibvc2eu7qw	1dca2909-50b1-4f98-8c1c-3cdb92c4b84f
00000000-0000-0000-0000-000000000000	422	n7penjpkorqb	0d90fb2c-dfb6-4ebd-9b81-38909b601854	f	2026-02-12 13:34:38.144327+00	2026-02-12 13:34:38.144327+00	mkv6jqkknfpk	1dca2909-50b1-4f98-8c1c-3cdb92c4b84f
00000000-0000-0000-0000-000000000000	418	g4vmlsjksfz4	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-12 10:31:59.826733+00	2026-02-13 00:22:58.996339+00	slh5hhhs6sae	79bb698d-c04d-4cda-9553-d4cb9c2f4675
00000000-0000-0000-0000-000000000000	423	72jutuzg6sva	0d90fb2c-dfb6-4ebd-9b81-38909b601854	t	2026-02-13 00:22:59.025415+00	2026-02-13 02:01:29.417754+00	g4vmlsjksfz4	79bb698d-c04d-4cda-9553-d4cb9c2f4675
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: -
--

COPY auth.saml_providers (id, sso_provider_id, entity_id, metadata_xml, metadata_url, attribute_mapping, created_at, updated_at, name_id_format) FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: -
--

COPY auth.saml_relay_states (id, sso_provider_id, request_id, for_email, redirect_to, created_at, updated_at, flow_state_id) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: auth; Owner: -
--

COPY auth.schema_migrations (version) FROM stdin;
20171026211738
20171026211808
20171026211834
20180103212743
20180108183307
20180119214651
20180125194653
00
20210710035447
20210722035447
20210730183235
20210909172000
20210927181326
20211122151130
20211124214934
20211202183645
20220114185221
20220114185340
20220224000811
20220323170000
20220429102000
20220531120530
20220614074223
20220811173540
20221003041349
20221003041400
20221011041400
20221020193600
20221021073300
20221021082433
20221027105023
20221114143122
20221114143410
20221125140132
20221208132122
20221215195500
20221215195800
20221215195900
20230116124310
20230116124412
20230131181311
20230322519590
20230402418590
20230411005111
20230508135423
20230523124323
20230818113222
20230914180801
20231027141322
20231114161723
20231117164230
20240115144230
20240214120130
20240306115329
20240314092811
20240427152123
20240612123726
20240729123726
20240802193726
20240806073726
20241009103726
20250717082212
20250731150234
20250804100000
20250901200500
20250903112500
20250904133000
20250925093508
20251007112900
20251104100000
20251111201300
20251201000000
20260115000000
20260121000000
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: -
--

COPY auth.sessions (id, user_id, created_at, updated_at, factor_id, aal, not_after, refreshed_at, user_agent, ip, tag, oauth_client_id, refresh_token_hmac_key, refresh_token_counter, scopes) FROM stdin;
b9465d42-7700-48d3-a138-c4766453ab0d	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-16 10:15:55.09787+00	2026-01-23 00:31:06.326063+00	\N	aal1	\N	2026-01-23 00:31:06.324724	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36	101.108.150.188	\N	\N	\N	\N	\N
1dca2909-50b1-4f98-8c1c-3cdb92c4b84f	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-10 13:25:19.723329+00	2026-02-12 13:34:38.172324+00	\N	aal1	\N	2026-02-12 13:34:38.172197	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0	171.7.37.177	\N	\N	\N	\N	\N
82b97831-f64d-48eb-ac47-46359c865a55	634da19d-716f-4b48-8c44-0706303d0840	2026-01-23 05:19:57.690492+00	2026-02-13 03:11:21.523963+00	\N	aal1	\N	2026-02-13 03:11:21.523267	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36	184.22.17.182	\N	\N	\N	\N	\N
350ace3a-14f2-474d-8968-e213e3b83a32	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-13 06:13:36.082758+00	2026-02-13 06:13:36.082758+00	\N	aal1	\N	\N	Mozilla/5.0 (iPhone; CPU iPhone OS 26_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/23C71 [FBAN/FBPageAdmin;FBAV/475.0.0.30.108;FBBV/875810096;FBDV/iPhone15,4;FBMD/iPhone;FBSN/iOS;FBSV/26.2.1;FBSS/3;FBID/phone;FBLC/th_TH;FBOP/5;FBDI/6C37B308-CE86-46B4-B985-0D725FC984F3;FBRV/0;IABMV/1]	101.108.144.4	\N	\N	\N	\N	\N
d0960137-3e5d-4ba6-92bc-4b712fe58029	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-13 07:41:11.230603+00	2026-02-13 07:41:11.230603+00	\N	aal1	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36	49.229.179.230	\N	\N	\N	\N	\N
79bb698d-c04d-4cda-9553-d4cb9c2f4675	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-23 05:05:01.157555+00	2026-02-13 11:06:37.551106+00	\N	aal1	\N	2026-02-13 11:06:37.551004	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36	101.108.144.4	\N	\N	\N	\N	\N
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: -
--

COPY auth.sso_domains (id, sso_provider_id, domain, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: -
--

COPY auth.sso_providers (id, resource_id, created_at, updated_at, disabled) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: -
--

COPY auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous) FROM stdin;
00000000-0000-0000-0000-000000000000	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	authenticated	authenticated	kwamkid@gmail.com	$2a$10$0/Ed3FSQ9AVMR8xYMsSL9OFnVwWX6i18bV.iJXmerdVC21IuFdYcO	2025-11-12 06:48:06.306451+00	\N		\N		\N			\N	2026-02-13 07:41:11.229899+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2025-11-12 06:48:06.27569+00	2026-02-13 07:41:11.301297+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	0d90fb2c-dfb6-4ebd-9b81-38909b601854	authenticated	authenticated	kwankwan@gmail.com	$2a$10$kbGfECMZMgki24cpxRUMDeYgzpCukaQ0nCscD13G0kx1nZoxMRBsG	2025-12-09 05:35:59.571652+00	\N		\N		\N			\N	2026-02-13 06:13:36.082056+00	{"provider": "email", "providers": ["email"]}	{"name": "Kwan", "role": "sales", "phone": "", "email_verified": true}	\N	2025-12-09 05:35:59.519514+00	2026-02-13 11:06:37.529381+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	634da19d-716f-4b48-8c44-0706303d0840	authenticated	authenticated	nutprawee@gmail.com	$2a$10$kGB4DwGKTRPmrS1C9kT3CuNSFqzb.E2Sqc6dkCbcqfvMbIckpWn2e	2025-11-28 06:11:51.324826+00	\N		\N		\N			\N	2026-01-23 05:19:57.688053+00	{"provider": "email", "providers": ["email"]}	{"name": "Nut", "role": "manager", "phone": "", "email_verified": true}	\N	2025-11-28 06:11:51.302701+00	2026-02-13 03:11:21.515475+00	\N	\N			\N		0	\N		\N	f	\N	f
00000000-0000-0000-0000-000000000000	24015529-2657-4091-a2e4-d100799f3d90	authenticated	authenticated	mimimi@gmail.com	$2a$10$41ssZO.SBmtrpG5KtUehoeTeWxmrKC8qWOrciIzPJDNO20AEUwI9q	2025-12-01 04:15:12.411815+00	\N		\N		\N			\N	2025-12-11 06:16:21.65224+00	{"provider": "email", "providers": ["email"]}	{"name": "Mi", "role": "operation", "phone": "", "email_verified": true}	\N	2025-12-01 04:15:12.4051+00	2025-12-17 06:52:24.058585+00	\N	\N			\N		0	\N		\N	f	\N	f
\.


--
-- Data for Name: crm_settings; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.crm_settings (id, setting_key, setting_value, description, created_at, updated_at) FROM stdin;
4409c126-d4cb-4370-9ff9-5ffd11bf48e7	follow_up_day_ranges	[{"color": "green", "label": "2-4 วัน", "maxDays": 4, "minDays": 2}, {"color": "yellow", "label": "5-7 วัน", "maxDays": 7, "minDays": 5}, {"color": "orange", "label": "8-14 วัน", "maxDays": 14, "minDays": 8}, {"color": "red", "label": "15+ วัน", "maxDays": null, "minDays": 15}]	ช่วงวันที่สำหรับติดตามลูกค้า (หน้า CRM และ LINE Chat)	2026-02-07 12:25:43.953675+00	2026-02-07 12:25:47.024+00
\.


--
-- Data for Name: customer_activities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.customer_activities (id, customer_id, activity_type, description, order_id, follow_up_date, created_by, created_at, title, is_completed, completed_at, updated_at) FROM stdin;
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.customers (id, business_name, contact_person, phone, email, address, district, province, postal_code, type, status, credit_limit, credit_days, price_level, line_user_id, line_group_id, churn_risk, first_order_date, last_order_date, total_orders, total_sales, average_order_value, days_since_last_order, created_at, updated_at, customer_code, amphoe, tax_id, assigned_salesperson, is_active, notes, created_by, payment_stats, name, customer_type_new, tax_company_name, tax_branch) FROM stdin;
d10954b1-94b3-4366-ba22-567ac872b6f8	\N	ลุงแดง	0814296956		ร้านราดหน้าผัดไทลุงแดง 5 ซอย สายไหม 1 แขวง	สายไหม 	กรุงเทพมหานคร 	10220 	retail	active	0.00	0	standard	\N	\N	low	2025-12-15	2025-12-15	1	0.00	0.00	0	2025-12-09 05:12:32.754+00	2025-12-15 16:49:05.553698+00	CUST-0006	สายไหม 		\N	t		634da19d-716f-4b48-8c44-0706303d0840	{}	ร้านราดหน้าผัดไทลุงแดง	wholesale	\N	สำนักงานใหญ่
8cf56ef9-2786-4db8-b930-b7a834885c8b	\N	\N	0806296546	\N	99/10 ถ.ยะรัง เมืองปัตตานี จะบังติกอ ปัตตานี 94000	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	\N	\N	0	0.00	0.00	0	2025-12-11 04:59:57.594+00	2025-12-11 04:59:57.594+00	CUST-0011	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	คุณวิทยา ปิ่นทอง	wholesale	\N	สำนักงานใหญ่
ccad00d9-5f2c-425f-b40d-6f1e2550e3d6	\N	คุณ พงศธร ยิ้มพราย	0991615225		 49 9, ตำบล บางรักพัฒนา อำเภอบางบัวทอง นนทบุรี 11000				retail	active	0.00	0	standard	\N	\N	low	\N	\N	0	0.00	0.00	0	2025-12-11 05:00:38.656+00	2025-12-11 05:00:51.393718+00	CUST-0012			\N	t		0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	ร้าน Zotthi Coffee	wholesale	\N	สำนักงานใหญ่
55a26af3-78ee-43cc-b6a4-c05d68c0ac84	\N				 20, 2 Lat Krabang Rd, Lat Krabang, Bangkok 10520	ลาดกระบัง	สมุทรปราการ	10520	retail	active	0.00	0	standard	\N	\N	low	2025-12-15	2026-02-04	15	0.00	0.00	0	2025-12-09 05:13:29.184+00	2026-02-04 10:33:55.381575+00	CUST-0009	ลาดกระบัง		\N	t	เครดิต ลังต่อ 1 ลัง	634da19d-716f-4b48-8c44-0706303d0840	{}	โจ๊กสามย่าน คุณฝน	wholesale	\N	สำนักงานใหญ่
f0156726-7aea-460f-8c02-1b819dbb3b90	\N	\N	\N	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	\N	\N	0	0.00	0.00	0	2025-12-09 05:11:17.105+00	2025-12-09 05:11:17.105+00	CUST-0003	\N	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	ร้านกาแฟภูชี้ฟ้า 	retail	\N	สำนักงานใหญ่
ab4b6e97-072a-4609-a874-a31bb6f6ebbe	\N	\N	\N	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	\N	\N	0	0.00	0.00	0	2025-12-09 05:11:25.06+00	2025-12-09 05:11:25.06+00	CUST-0004	\N	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	โจ๊กสามย่านฟู้ดดี้ 	retail	\N	สำนักงานใหญ่
16229d34-0291-4d76-aaca-86c60615adce	\N	\N	\N	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	\N	\N	0	0.00	0.00	0	2025-12-09 05:12:03.78+00	2025-12-09 05:12:03.78+00	CUST-0005	\N	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	บ้านน้องคาร์เวียร์ 	retail	\N	สำนักงานใหญ่
335d07e5-4bae-4f09-bf78-f7ea8f0fd994	\N	\N	0991611080	\N	ก๋วยเตี๋ยวเนื้อตุ๋นบ้านจันทร์สุวรรณ 8/4 ถนน คสล 	ออเงิน	กรุงเทพมหานคร	10220	retail	active	0.00	0	standard	\N	\N	low	2025-12-15	2025-12-15	1	0.00	0.00	0	2025-12-15 16:57:45.211+00	2025-12-15 17:06:27.564076+00	CUST-0015	สายใหม	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	ก๋วยเตี๋ยวเนื้อตุ๋นบ้านจันทร์สุวรรณ	wholesale	\N	สำนักงานใหญ่
8115a585-61a7-4823-95ec-535a1c93c1c5	\N	\N	0891169988	\N	1431 ซอย เจริญนคร 29  	บางลำภูล่าง	กรุงเทพมหานคร	10600	retail	active	0.00	0	standard	\N	\N	low	2026-01-03	2026-02-03	3	0.00	0.00	0	2026-01-03 05:26:06.983+00	2026-02-03 10:37:08.60162+00	CUST-0039	คลองสาน	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	คุณเบนซ์	wholesale	\N	สำนักงานใหญ่
ec0a5eaf-cf59-48a4-b9e2-c76f8c3162f1	\N	\N	023542660	\N	แบล็คแคนยอน ร.พ. รามา โรงพยาบาลรามาธิบดี ทุ่งพญาไท ราชเทวี อาคารสมเด็จพระเทพรัตน์ ชั้น4 คณะแพทยศาสตร์ 	ทุ่งพญาไท	กรุงเทพมหานคร	10400	retail	active	0.00	0	standard	\N	\N	low	2025-12-15	2025-12-15	1	0.00	0.00	0	2025-12-15 16:55:45.806+00	2025-12-15 17:03:25.456762+00	CUST-0014	ราชเทวี	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	แบล็คแคนยอน ร.พ. รามา	wholesale	\N	สำนักงานใหญ่
f0e39ea2-a9dc-4492-9994-bc6893d2838e	\N	\N	0852224088	\N	ร้านสิงห์กาแฟ ร้านกระจกสีดำ ประชาอุทิศ 131	ทุ่งครุ	กรุงเทพมหานคร	0852224088	retail	active	0.00	0	standard	\N	\N	low	2026-01-05	2026-02-02	4	0.00	0.00	0	2026-01-05 06:24:09.338+00	2026-02-02 10:10:33.691932+00	CUST-0040	ทุ่งครุ	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	คุณต้อ	wholesale	\N	สำนักงานใหญ่
747bb1a4-9d5a-4167-a2d1-092ff55bbb24	\N	\N	0855561245	\N	Iconicnok RKdstn 108/82 ตึก 5 ไอริสอะแวนิวคอนโด เขตลาดกระบัง แขวงลาดกระบัง กทม	ลาดกระบัง 	กรุงเทพมหานคร	10520	retail	active	0.00	0	standard	\N	\N	low	2025-12-15	2025-12-15	1	0.00	0.00	0	2025-12-15 17:02:11.648+00	2025-12-15 17:21:48.607717+00	CUST-0017	ลาดกระบัง	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	Iconicnok RKdstn คุณนก	wholesale	\N	สำนักงานใหญ่
3eb26f74-1ab2-407c-89ae-843749750baa	\N	คุณโม	0909090909		ตลาดสามย่าน	ตำบลทดสอบ	จังหวัดทดสอบ		retail	active	0.00	0	standard	\N	\N	low	2026-01-05	2026-02-12	5	0.00	0.00	0	2025-11-29 10:37:45.898+00	2026-02-13 06:35:09.886885+00	CUST-0001	เขตทดสอบ		\N	t		634da19d-716f-4b48-8c44-0706303d0840	{}	โจ๊กสามย่านคุณโม	retail	\N	สำนักงานใหญ่
77e46928-7b1c-44d1-9c0e-6cb9122043e0	\N	คุณแพรวตา	0819004433		77 ม.ธารารมณ์ ซ.รามคำแหง43/1 ถ.รามคำแหง 	วังทองหลาง 	กรุงเทพมหานคร	10310	retail	active	0.00	0	standard	\N	\N	low	2026-01-03	2026-01-19	2	0.00	0.00	0	2025-12-09 05:13:21.72+00	2026-01-19 10:40:51.547869+00	CUST-0008	พลับพลา 		\N	t		634da19d-716f-4b48-8c44-0706303d0840	{}	คุณแพรวตา	wholesale	\N	สำนักงานใหญ่
1a36dbb0-3be1-4d4d-98b3-4101237037ab	\N	\N	0993692840	\N	Snooze Coffee House Restaurant 170 4 ถนน สามเสน 	สามเสน	กรุงเทพมหานคร	10200	retail	active	0.00	0	standard	\N	\N	low	2025-12-15	2026-02-13	8	0.00	0.00	0	2025-12-15 16:59:44.341+00	2026-02-13 04:26:55.55552+00	CUST-0016	พระนคร	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	Snooze Coffee House	wholesale	\N	สำนักงานใหญ่
e9d078d2-04d6-415f-a5fe-3fe33b414d40	\N	\N	08732626256 	\N	218 ศศกรณ์ เรสซิเดนท์ ซอย 14 ถนน เจริญนคร	คลองสาน 	กรุงเทพมหานคร 	10600	retail	active	0.00	0	standard	\N	\N	low	2026-01-05	2026-01-05	1	0.00	0.00	0	2026-01-05 06:56:25.737+00	2026-01-05 06:58:54.454952+00	CUST-0041	คลองต้นไทร	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	คุณพอลลี่	wholesale	\N	สำนักงานใหญ่
c3f38f6b-7517-4d47-a866-b3233eabb648	\N	\N	0944649645	\N	581 ลาดพร้าว 130	คลองจั่น 	กรุงเทพมหานคร 	10240	retail	active	0.00	0	standard	\N	\N	low	2026-01-05	2026-01-05	1	0.00	0.00	0	2026-01-05 06:59:37.851+00	2026-01-05 07:00:34.050165+00	CUST-0042	บางกะปิ 	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	คุณจณัญญา โชตะมังสะ	wholesale	\N	สำนักงานใหญ่
c0968a19-758d-42f5-a4b1-6228a7569e09	\N	\N	\N	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-01-23	2026-02-02	3	0.00	0.00	0	2025-12-09 05:11:05.553+00	2026-02-02 10:24:29.439093+00	CUST-0002	\N	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	F.I.X Sarasin 	wholesale	\N	สำนักงานใหญ่
da7f1ad2-e025-4d9d-a9e4-a9e1636d50a6	\N	\N	06-5774-0840 / 0808299383	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2025-12-21	2026-02-12	4	0.00	0.00	0	2025-12-21 04:31:25.732+00	2026-02-13 06:36:30.022991+00	CUST-0030	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	Numtip Witchukiengkai	retail	\N	สำนักงานใหญ่
6b6a0eac-17b7-4b3f-8ac5-89f8801ddb01	\N	คุณนัท 	0864496492	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2025-12-17	2025-12-17	1	0.00	0.00	0	2025-12-17 10:09:29.104+00	2025-12-17 10:22:50.625546+00	CUST-0025	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	Nut Prapan	retail	\N	สำนักงานใหญ่
40c274cb-1474-474d-9364-e2615c5c0694	\N	คุณหวาน	0816430493	\N	Harborland เมกาบางนา หมู่ที่ 6, 3 Fl.อาคาร 38/1-3 , 39, ทางคู่ขนาน ถนนบางนา-ตราด	บางพลี 	สมุทรปราการ	10540	retail	active	30.00	30	standard	\N	\N	low	2026-01-03	2026-01-03	1	0.00	0.00	0	2026-01-03 04:28:14.296+00	2026-01-03 04:29:16.397708+00	CUST-0031	บางแก้ว	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	Harborland x Joolz ขวดแบนเท่านั้น!	wholesale	\N	สำนักงานใหญ่
23d2cddc-7783-4f7a-b30d-68f455f48f5a	\N	\N	\N	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-01-29	2026-01-29	1	0.00	0.00	0	2026-01-29 08:06:47.182+00	2026-02-13 06:36:04.623944+00	CUST-0077	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	คุณภัชฎาภรณ์ เพ็ญสมบูรณ์	retail	\N	สำนักงานใหญ่
01bca52c-7aed-433c-be24-f32ae448e717	\N	คุณกฤษฐยา ติยะพิบูลย์ไชยา	 0879879133	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2025-12-17	2025-12-17	1	0.00	0.00	0	2025-12-17 10:12:54.543+00	2025-12-17 10:26:17.887998+00	CUST-0028	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	Pom and Ganh 👩🏻👦🏻🫶🏻	retail	\N	สำนักงานใหญ่
f7581fec-a8c9-4109-b18e-d362d92ca94d	\N	\N	0894915549	\N	โจ๊กสามย่าน เมืองทอง 58/164,166 ถนนนเเจ้งวัฒนะ ปากเกร็ด 	 ปากเกร็ด	นนทบุรี 	11120	retail	active	0.00	0	standard	\N	\N	low	2026-01-03	2026-02-12	8	0.00	0.00	0	2026-01-03 04:35:22.489+00	2026-02-13 06:36:08.499257+00	CUST-0032	 ปากเกร็ด	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	คุณเม โจ๊กสามย่าน 2 สาขา	wholesale	\N	สำนักงานใหญ่
b6c3ed11-10ad-40cc-b634-a2bff38f95ef	\N	คุณนัท 	0864496492	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2025-12-17	2026-02-12	2	0.00	0.00	0	2025-12-17 10:10:15.343+00	2026-02-13 06:36:22.556279+00	CUST-0026	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	Aey Aey	retail	\N	สำนักงานใหญ่
2739c5e6-1384-4ded-81ef-26f31524ca99	\N	\N	0806296546	\N	99/10 ถ.ยะรัง เมืองปัตตานี	เมืองปัตตานี	ปัตตานี 	94000	retail	active	0.00	0	standard	\N	\N	low	2026-01-03	2026-02-04	3	0.00	0.00	0	2026-01-03 04:39:56.961+00	2026-02-04 10:34:49.977489+00	CUST-0033	จะบังติกอ	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	คุณวิทยา ปิ่นทอง	wholesale	\N	สำนักงานใหญ่
bedbb98e-fb28-4153-85e1-e311630d3326	\N	คุณสัจจพงษ์ จินดาพล 	0844335433	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2025-12-17	2025-12-17	1	0.00	0.00	0	2025-12-17 10:11:13.379+00	2025-12-17 10:17:41.10572+00	CUST-0027	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	Sajjapong Jindapol	retail	\N	สำนักงานใหญ่
494a6b5c-7b0a-4ea5-80cc-ab9d956464f5	\N	คุณเม 	0894915549.	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2025-12-16	2025-12-17	2	0.00	0.00	0	2025-12-16 10:22:11.813+00	2025-12-17 10:19:29.294203+00	CUST-0023	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	joolz Mt	retail	\N	สำนักงานใหญ่
b10cb1c3-cc14-4001-ab0b-d0854399c1a8	\N	\N	0802857653	\N	สนามบินดอนเมือง อาคาร 1 ชั้น 3 ประตู 7	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2025-12-16	2026-02-12	13	0.00	0.00	0	2025-12-16 09:48:22.891+00	2026-02-13 06:35:59.172465+00	CUST-0019	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	คุณอารยา	retail	\N	สำนักงานใหญ่
5762e90f-8931-4535-a74a-b418615037c8	\N	คุณเอิ๊ต	0962810763	\N	ริน แอท เรนทรี   276 Soi Rama IX 17	 Bang Kapi	Bangkok 	10310	retail	active	0.00	0	standard	\N	\N	low	2026-01-03	2026-01-03	1	0.00	0.00	0	2026-01-03 04:43:09.055+00	2026-01-03 04:48:03.460172+00	CUST-0035	Huai Khwang	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	คุณเอิ๊ต Line/Earthy	wholesale	\N	สำนักงานใหญ่
4e9ef205-7a2d-4d7d-b2ca-0bb81423a168	\N	\N	0918068405​	\N	1​/36 หมู่บ้าน​ธนิน​ทร ซอย​วิภาวดี​35	สนามบิน	กรุงเทพมหานคร 	10210 	retail	active	0.00	0	standard	\N	\N	low	2026-01-03	2026-01-03	1	0.00	0.00	0	2026-01-03 05:21:19.648+00	2026-01-03 05:22:00.004572+00	CUST-0037	ดอนเมือง	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	คุณ กลิ่น​สุคนธ์ \t FB/E Pa Ju	wholesale	\N	สำนักงานใหญ่
c1bfa50b-145f-4844-bed4-7f781edb2346	\N	\N	091460 5055	\N	70 ซ. ลาดปลาเค้า 24 	จรเข้บัว	กรุงเทพมหานคร 	10230 	retail	active	0.00	0	standard	\N	\N	low	2026-01-03	2026-01-03	1	0.00	0.00	0	2026-01-03 04:40:51.543+00	2026-01-03 04:46:52.679956+00	CUST-0034	ลาดพร้าว 	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	คุณดิน	wholesale	\N	สำนักงานใหญ่
74061c15-e609-48b4-aa6e-2f934af4e4e6	\N	\N	0841127342	\N	บริษัท สุภัทรา ริเวอร์ เฮ้าส์ จำกัด 266 ซอยวัดระฆัง ถนนอรุณอมรินทร์	ศิริราช 	กรุงเทพมหานคร 	10400	retail	active	0.00	0	standard	\N	\N	low	2026-01-03	2026-01-05	2	0.00	0.00	0	2026-01-03 05:12:24.039+00	2026-01-05 07:30:32.118821+00	CUST-0036	บางกอกใหญ่	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	คุณก้อย จัดซื้อ	wholesale	\N	สำนักงานใหญ่
caf88ba6-28a7-47d6-b007-5bc794f32a98	\N	คุณเก่ง 	0618869986.	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2025-12-16	2026-02-06	7	0.00	0.00	0	2025-12-16 10:17:45.077+00	2026-02-06 07:03:23.528618+00	CUST-0022	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	Keng	retail	\N	สำนักงานใหญ่
7d8b38b7-425b-43d9-8f6b-46d211327856	\N	\N	0962252255	\N	433/3 ถนนสวนพลู 	สาทร 	กรุงเทพมหานคร 	10120	retail	active	0.00	0	standard	\N	\N	low	2026-01-03	2026-01-03	1	0.00	0.00	0	2026-01-03 05:22:49.973+00	2026-01-03 05:23:51.519939+00	CUST-0038	ทุ่งมหาเมฆ 	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	บริษัทคีช มี จำกัด	wholesale	\N	สำนักงานใหญ่
3f068301-ec61-4f65-b563-992da0f806e8	\N		0962810763 / 0955291864		ริน แอท เรนทรี				retail	active	0.00	0	standard	\N	\N	low	2025-12-16	2026-02-12	4	0.00	0.00	0	2025-12-16 09:52:17.904+00	2026-02-13 06:36:34.851033+00	CUST-0021			\N	t		0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	คุณเอิ๊ต / คุณปาย / คุณชมพู่	retail	\N	สำนักงานใหญ่
c947e4a7-5f11-47dd-addf-e32451250a02	\N	All Day Fine 	0812553896	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2025-12-16	2026-01-30	2	0.00	0.00	0	2025-12-16 10:24:06.816+00	2026-01-30 10:37:32.822251+00	CUST-0024	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	All day fine x joolz วิภาวดี	retail	\N	สำนักงานใหญ่
b87dfcd8-4001-4de7-8c95-504874ff2627	\N	F.I.X Sarasin & The Lazy Bunch 	0970321794	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2025-12-17	2026-02-13	6	0.00	0.00	0	2025-12-17 10:13:48.904+00	2026-02-13 10:07:39.773736+00	CUST-0029	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	Joolz x F.I.X.	retail	\N	สำนักงานใหญ่
101dbc58-c138-4e52-b312-cf9f47b11344	\N	\N	0891169988	\N	641 4 Itsaraphap 	Wat Tha Phra	Bangkok 	10600	retail	active	0.00	0	standard	\N	\N	low	2026-01-05	2026-02-13	10	0.00	0.00	0	2026-01-05 07:25:23.601+00	2026-02-13 06:35:53.947308+00	CUST-0046	Bangkok Yai	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	คุณเก่ง " โจ๊กสามย่าน" 	wholesale	\N	สำนักงานใหญ่
51bf4d96-d372-4893-8fee-6e29702c4297	\N		0642263515		ร้าน Smootheory ที่ Decathlon Bangna 19/501 หมู่ 13 ถนนบางนา-ตราด	บางพลี 	สมุทรปราการ 	10540	retail	active	0.00	0	standard	\N	\N	low	2026-01-05	2026-01-05	1	0.00	0.00	0	2026-01-05 07:15:32.111+00	2026-01-05 07:17:18.71303+00	CUST-0043	บางแก้ว 		\N	t		634da19d-716f-4b48-8c44-0706303d0840	{}	คุณแอน ร้าน Smootheory ที่ Decathlon Bangna	wholesale	\N	สำนักงานใหญ่
ea0842ce-6cfd-48a1-85d4-034fe4725889	\N	\N	0613649963	\N	99/293 หมู่บ้านมัณฑนาแจ้งวัฒนะ-ราชพฤกษ์ ถนนชัยพฤกษ์	ปากเกร็ด 	นนทบุรี 	11120	retail	active	0.00	0	standard	\N	\N	low	2026-01-05	2026-02-03	4	0.00	0.00	0	2026-01-05 07:40:21.986+00	2026-02-03 10:37:34.837984+00	CUST-0048	บางพลับ 	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	คุณวรุฬยุพา สุขอนันต์	wholesale	\N	สำนักงานใหญ่
c1ce919c-6998-4dd4-ab5d-8a0a956ab3bc	\N	\N	0870452282	\N	ร้าน ABC สาขาเมกาบางนา	บางพลี 	สมุทรปราการ 	10540	retail	active	0.00	0	standard	\N	\N	low	2026-01-05	2026-01-05	1	0.00	0.00	0	2026-01-05 07:35:20.1+00	2026-01-05 07:36:05.205615+00	CUST-0047	บางแก้ว 	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	พี่อ้อม ABC THE BABY	wholesale	\N	สำนักงานใหญ่
f616a0cc-8a7d-4897-987c-81d0404e24c0	\N	\N	0876898928	\N	ตลาดมารวย หทัยราษฎร์ 54 ร้านแม่เมืองมะพร้าวสด ล็อค D54-55 ตรงข้ามร้านอาบน้ำหมา และร้านทำเล็บ	ลำลูกกา 	ปทุมธานี 	12150	retail	active	0.00	0	standard	\N	\N	low	2026-01-05	2026-02-13	3	0.00	0.00	0	2026-01-05 07:20:48.355+00	2026-02-13 03:42:09.394012+00	CUST-0045	บึงคำพร้อย	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	คุณพิทักษ์พงษ์	wholesale	\N	สำนักงานใหญ่
9c980499-65d3-4d8d-9edf-ac790c5ace33	\N	\N	0629622469	\N	ศูนย์บริการสาธารณสุข 39 ราษฎร์บูรณะ	ราษฎร์บูรณะ 	กรุงเทพมหานคร 	10140	retail	active	0.00	0	standard	\N	\N	low	2026-01-05	2026-01-05	1	0.00	0.00	0	2026-01-05 08:07:07.014+00	2026-01-05 08:07:32.88982+00	CUST-0051	ราษฎร์บูรณะ 	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	คุณณัฐกานต์ เนตรชะม้าย	wholesale	\N	สำนักงานใหญ่
d75f6899-d5b5-4855-8614-a6ad5993ce25	\N	\N	0950045544	\N	Tiwanon Rd Pak Kret District Nonthaburi	ปากเกล็ด 	กรุงเทพมหานคร	11120	retail	active	0.00	0	standard	\N	\N	low	2026-01-05	2026-01-27	2	0.00	0.00	0	2026-01-05 08:05:11.12+00	2026-01-27 02:53:35.02511+00	CUST-0050	บางพูด	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	ร้าาน สุขอุทัย 	wholesale	\N	สำนักงานใหญ่
03c433d2-b412-4155-9696-2f1088f245fd	\N		0895084022		48/5 หมู่ 3 Bangsrimuang Rd	Mueang Nonthaburi	Nonthaburi	11000	retail	active	0.00	0	standard	\N	\N	low	2026-01-05	2026-02-03	13	0.00	0.00	0	2026-01-05 08:20:03.567+00	2026-02-11 01:51:30.907113+00	CUST-0054	Mueang Nonthaburi		\N	t		634da19d-716f-4b48-8c44-0706303d0840	{}	 โจ๊กสามย่าน : คุณไฮ้	wholesale		
a791d4f2-bfed-45d9-b532-5c18c49f98af	\N	\N	0894159428	\N	50 473 ถ. เอกชัย	บางบอน	กรุงเทพมหานคร	10150 	retail	active	0.00	0	standard	\N	\N	low	2026-01-05	2026-01-29	2	0.00	0.00	0	2026-01-05 08:03:32.209+00	2026-01-29 08:02:48.241618+00	CUST-0049	บางบอน	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	ครัวท่าเรือเมือง กาญจ บางบอน3	wholesale	\N	สำนักงานใหญ่
46652f57-9bd5-4133-8d35-ddae7de97b32	\N	\N	0857647458	\N	ร้านแซ่พุ้น ซอยช่างทอง บ้านเลขที่ 14  ถนนตะนาว พระนคร 	 เสาชิงช้า	กรุงเทพมหานคร 	10200	retail	active	0.00	0	standard	\N	\N	low	2026-01-05	2026-02-02	2	0.00	0.00	0	2026-01-05 08:17:40.494+00	2026-02-02 10:12:36.884959+00	CUST-0053	 เสาชิงช้า	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	ร้านแซ่พุ้น ซอยช่างทอง บ้านเลขที่ 14	wholesale	\N	สำนักงานใหญ่
7d4a2c7c-9a44-4d94-a3cc-0a6c8446b591	\N	\N	0804565539	\N	222/19 มบ. Golden Town บางนา-สวนหลวง	ดอกไม้ 	กรุงเทพมหานคร 	10250	retail	active	0.00	0	standard	\N	\N	low	2026-01-05	2026-01-05	1	0.00	0.00	0	2026-01-05 08:13:49.421+00	2026-01-05 08:14:22.125893+00	CUST-0052	ประเวศ 	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	คุณ วิชรัตน์	retail	\N	สำนักงานใหญ่
fb0e8cff-4b7a-482d-87fc-ec7ff3f69b48	\N	บริษัทคีช มี จำกัด 	0962252255	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-01-14	2026-02-02	2	0.00	0.00	0	2026-01-14 10:24:43.128+00	2026-02-02 10:23:23.576717+00	CUST-0056	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	Jamai Zippy	retail	\N	สำนักงานใหญ่
86020312-8c63-401b-bfc6-a4a63dff6f26	\N	คุณอิ๊บ ผจก.ร้าน	0969925216		วันเดอร์วูดส์	สวนหลวง 	กรุงเทพมหานคร 	10250	retail	active	0.00	0	standard	\N	\N	low	2026-01-03	2026-02-02	6	0.00	0.00	0	2025-12-09 05:12:44.606+00	2026-02-02 10:24:03.578128+00	CUST-0007	สวนหลวง 		\N	t		634da19d-716f-4b48-8c44-0706303d0840	{}	Wonderwood	wholesale	\N	สำนักงานใหญ่
3ba38459-588c-4d94-80b9-ab1dc178dba8	\N	คุณแอน	0642263515	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-01-14	2026-02-02	3	0.00	0.00	0	2026-01-14 10:22:39.823+00	2026-02-02 10:14:07.540472+00	CUST-0055	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	Smootheoryth Bangna	retail	\N	สำนักงานใหญ่
04f65103-1a92-4248-9fda-eae284c5ce07	\N	คุณภัทรพันธุ์ นิจโภค	 0974545694	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-01-14	2026-01-14	1	0.00	0.00	0	2026-01-14 10:26:40.785+00	2026-01-14 10:27:58.802974+00	CUST-0057	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	Oh Nichapoke	retail	\N	สำนักงานใหญ่
56a792d5-e6b2-4096-8792-cf270c7d7566	\N		0822830594		69/60  ถ.พญาไท 	ราชเทวี 	กรุงเทพมหานคร 	10400	retail	active	0.00	0	standard	\N	\N	low	2026-01-05	2026-01-19	2	0.00	0.00	0	2026-01-05 07:18:47.622+00	2026-01-19 10:43:46.487472+00	CUST-0044	พญาไท 		\N	t		634da19d-716f-4b48-8c44-0706303d0840	{}	Pac Cafe pac cafe	wholesale	\N	สำนักงานใหญ่
3f5de013-3fa1-412e-a726-31d01ec6cd2b	\N	คุณเอ๊ะ/คุณปุ๊ก	0982627465 / 0858001555		เลขที่ 1010/17 บางรัก สีลม กรุงเทพมหานคร 10500				retail	active	0.00	0	standard	\N	\N	low	2025-12-16	2026-02-12	10	0.00	0.00	0	2025-12-11 04:58:39.463+00	2026-02-13 06:36:13.345941+00	CUST-0010			\N	t		0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	ร้าน Captain Squid 	wholesale	\N	สำนักงานใหญ่
bf03f5ae-ea55-41f1-b603-0108f0d0b524	\N	\N	\N	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-01-24	2026-02-02	2	0.00	0.00	0	2026-01-24 09:05:19.797+00	2026-02-02 09:56:28.665988+00	CUST-0068	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	บริษัท เพิร์ค โฮลดิ้ง จำกัด	retail	\N	สำนักงานใหญ่
7df382dd-eba6-4498-ba34-97232404c8c1	\N	\N	0628264936	\N	26 14 หมู่ 7 ทางคู่ขนาน ถนนบางนา-ตราด	บางพลี	สมุทรปราการ 	10540	retail	active	0.00	0	standard	\N	\N	low	2026-01-14	2026-01-26	2	0.00	0.00	0	2026-01-14 10:28:41.319+00	2026-01-26 06:30:06.213065+00	CUST-0058	บางแก้ว	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	คุณเบนซ์  ร้านกาแฟภูชี้ฟ้า	wholesale	\N	สำนักงานใหญ่
9d9ce6db-dba1-4aac-a405-125b53688bdb	\N	คุณ เม 	096-7593838	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-01-19	2026-01-19	1	0.00	0.00	0	2026-01-19 10:38:01.316+00	2026-01-19 10:40:24.487707+00	CUST-0064	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	🫟ME🫟	retail	\N	สำนักงานใหญ่
ad07f63f-f28f-4aa3-96d1-ca49f26ab3e9	\N	\N	0816437966	\N	775 ร้าน มะ ยอดผัก ราดหน้า ราชวัตร	ดุสิต	กรุงเทพมหานคร	10300	retail	active	0.00	0	standard	\N	\N	low	2025-12-15	2026-01-14	3	0.00	0.00	0	2025-12-15 16:52:47.298+00	2026-01-14 11:10:38.875834+00	CUST-0013	ดุสิต	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	Molk ร้าน มะ ยอดผัก ราดหน้า ราชวัตร	wholesale	\N	สำนักงานใหญ่
a2f94086-703f-472b-b152-ae94ed950036	\N	\N	023542660	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-01-18	2026-02-12	4	0.00	0.00	0	2026-01-18 09:59:11.561+00	2026-02-13 06:36:26.289296+00	CUST-0062	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	Black Canyon รามาธิบดี 	retail	\N	สำนักงานใหญ่
fc3f1c3e-727e-4dd6-bd43-6df1ea5b9979	\N	\N	\N	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-01-27	2026-01-27	1	0.00	0.00	0	2026-01-27 02:54:16.824+00	2026-01-27 02:55:10.794788+00	CUST-0072	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	คุณเกียรติศักดิ์ 	retail	\N	สำนักงานใหญ่
3c495c93-d33d-4d36-b8af-1e52c77cc09a	\N	บริษัท เพิร์ค โฮลดิ้ง จำกัด 	0648016106						retail	active	0.00	0	standard	\N	\N	low	2026-01-18	2026-01-18	1	0.00	0.00	0	2026-01-18 09:54:35.666+00	2026-01-18 09:56:35.5126+00	CUST-0060			\N	t		0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	KiRiN KiNA	retail	\N	สำนักงานใหญ่
8b41abd9-cfd2-4895-8ccd-b0b430811ff8	\N	\N	\N	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-01-27	2026-02-03	2	0.00	0.00	0	2026-01-27 02:57:51.233+00	2026-02-03 10:38:07.61546+00	CUST-0073	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	บริษัท สุภัทรา ริเวอร์ เฮ้าส์ จำกัด 	retail	\N	สำนักงานใหญ่
3ae90b99-cdcc-4310-9d78-1aaca6a51d5a	\N	\N	\N	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-01-28	2026-01-28	1	0.00	0.00	0	2026-01-28 10:31:15.68+00	2026-01-28 10:35:19.829824+00	CUST-0076	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	K.June	retail	\N	สำนักงานใหญ่
2c4ac07f-3a6d-4e89-a133-be7fdfce19a5	\N	\N	\N	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-02-06	2026-02-06	1	0.00	0.00	0	2026-02-06 06:49:34.308+00	2026-02-06 06:52:02.204034+00	CUST-0080	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	คุณภูมิ	retail	\N	สำนักงานใหญ่
0d229b2d-8b28-4393-bd73-83279c3f26d8	\N	คุณเม 	0894915549.	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	\N	\N	0	0.00	0.00	0	2026-01-18 10:00:48.255+00	2026-01-18 10:00:48.255+00	CUST-0063	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	น้ำส้มคั้น joolz Mt	retail	\N	สำนักงานใหญ่
c25ec1ed-3f58-436d-a6b7-0d84c65041bc	\N	\N	\N	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-01-24	2026-01-24	1	0.00	0.00	0	2026-01-24 09:07:42.571+00	2026-01-24 09:08:46.055745+00	CUST-0069	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	คุณสาม	retail	\N	สำนักงานใหญ่
ee12bcd1-73ac-443f-97af-8f08ac6af0cb	\N	\N	\N	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-01-28	2026-01-28	1	0.00	0.00	0	2026-01-28 10:30:07.683+00	2026-01-28 10:33:37.221766+00	CUST-0074	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	คุณณัฐชยา ขำโนนเพิ่ม	retail	\N	สำนักงานใหญ่
51cf5288-f182-40b8-a6ec-15fee05407cc	\N	\N	0941622365	\N	14/3 หมู่1	เกาะกูด 	ตราด 	23000 	retail	active	0.00	0	standard	\N	\N	low	2026-01-14	2026-02-02	2	0.00	0.00	0	2026-01-14 10:29:54.788+00	2026-02-02 10:15:03.247106+00	CUST-0059	เกาะกูด 	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	Kung Kung ร้านกาแฟสวนย่า	wholesale	\N	สำนักงานใหญ่
f01c0d58-b2c5-49e5-8394-ec1b89e262de	\N	บริษัท มิกุชา (เคพี) จำกัด 	0926514253.	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-01-19	2026-01-26	2	0.00	0.00	0	2026-01-19 10:41:36.022+00	2026-01-26 06:32:19.206532+00	CUST-0065	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	Pee Samui	retail	\N	สำนักงานใหญ่
3150b512-00be-4097-84e6-9d8d03aec50e	\N	\N	\N	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-01-23	2026-01-23	1	0.00	0.00	0	2026-01-23 10:38:24.919+00	2026-01-23 10:40:18.100676+00	CUST-0067	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	Papavee Vitchupreecha	retail	\N	สำนักงานใหญ่
d83f9e00-b451-419d-a041-4f311f5c8028	\N	\N	\N	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-02-06	2026-02-06	1	0.00	0.00	0	2026-02-06 07:05:51.536+00	2026-02-06 07:07:28.092197+00	CUST-0082	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	คุณพิม	retail	\N	สำนักงานใหญ่
08645abb-26d8-4411-b686-bfca6d08d1c6	\N	\N	\N	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-01-25	2026-01-25	1	0.00	0.00	0	2026-01-25 07:50:07.143+00	2026-01-25 07:51:29.515946+00	CUST-0070	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	Paik	retail	\N	สำนักงานใหญ่
8e599a70-e9dd-411b-8da8-f750a7b8b4aa	\N	\N	0966989996	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-01-19	2026-01-30	3	0.00	0.00	0	2026-01-19 10:47:40.281+00	2026-01-30 10:03:00.639715+00	CUST-0066	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	บริษัท เฝอหม้อไฟ จำกัด	retail	\N	สำนักงานใหญ่
10e16ee6-db10-4292-a367-97b478f93873	\N	\N	\N	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-01-28	2026-01-28	1	0.00	0.00	0	2026-01-28 10:30:41.963+00	2026-01-28 10:34:06.054242+00	CUST-0075	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	คุณรมณีย์ เกรียงชัยพฤกษ์	retail	\N	สำนักงานใหญ่
6ef9f94a-6872-49b4-978d-4687294acc08	\N	\N	\N	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-01-30	2026-01-30	1	0.00	0.00	0	2026-01-30 10:04:26.96+00	2026-01-30 10:07:00.308411+00	CUST-0078	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	คุณเบญจพร คัมภิรานนท์	retail	\N	สำนักงานใหญ่
fdba0761-4123-4b05-ac68-c642b3c3ba6d	\N	คุณปุ๋ม 	0814166553	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-01-18	2026-02-02	2	0.00	0.00	0	2026-01-18 09:57:01.857+00	2026-02-02 10:09:38.821922+00	CUST-0061	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	อายตานิคbyปุ๋ม	retail	\N	สำนักงานใหญ่
0158a63d-29bd-4ed1-96ee-e9be6e97efcf	\N	\N	\N	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-02-02	2026-02-04	2	0.00	0.00	0	2026-02-02 10:16:49.528+00	2026-02-04 11:06:19.403279+00	CUST-0079	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	คุณจอนนี่	retail	\N	สำนักงานใหญ่
2155c7d2-2847-4658-9c2a-021d8d957715	\N	\N	\N	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-02-06	2026-02-06	1	0.00	0.00	0	2026-02-06 07:04:22.495+00	2026-02-06 07:05:38.170746+00	CUST-0081	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	ก๋วยเตี๋ยวเรือศรีอยุธยา สาขาบางขุนนนท์	retail	\N	สำนักงานใหญ่
ab52c29d-a0c0-440c-8cd7-a5a71cd77b92	\N	แอมแปมนะจ๊ะ	0891111111	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-02-10	2026-02-12	11	0.00	0.00	0	2026-02-07 22:45:09.867+00	2026-02-12 04:46:41.14955+00	CUST-0083	\N	\N	\N	t	\N	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	{}	ทดสอบแอมแปม	retail	\N	สำนักงานใหญ่
fc574bea-4e14-45c2-aae2-bc9a9229e2ce	\N	\N	\N	\N	\N	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2026-01-26	2026-02-13	2	0.00	0.00	0	2026-01-26 10:03:48.275+00	2026-02-13 05:28:01.292027+00	CUST-0071	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	คุณสิริแข ณ ระนอง	retail	\N	สำนักงานใหญ่
6c4e86da-2dd1-45c1-829c-f4ebf6a40a0c	\N	\N	\N	\N	ชั้น 1 ห้อง 1C, อาคารวังเด็ก 1, 21, 7 ถนน วิภาวดีรังสิต 	แขวงจอมพล 	กรุงเทพมหานคร	10900	retail	active	0.00	0	standard	\N	\N	low	\N	\N	0	0.00	0.00	0	2026-02-13 04:17:59.065+00	2026-02-13 04:39:30.03308+00	CUST-0085	จตุจักร	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	คุณวี	retail	\N	\N
33650f06-de75-493c-b503-bbee8cce3166	\N	\N	0969515979	\N	โชว์รูม Zeekr สาขารามอินทรา บริษัท เอจีอี ออโต้ แกลเลอรี่ จำกัด เลขที่ 599 ถ.รามอินทรา แขวงคันนายาว เขตคันนายาว	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	2025-12-16	2026-02-12	9	0.00	0.00	0	2025-12-16 09:49:15.714+00	2026-02-13 06:35:15.09256+00	CUST-0020	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	คุณส้ม 	retail	\N	สำนักงานใหญ่
7aea9b3f-cf61-40db-92e4-bfc187a581a6	\N	\N	0965595945	\N	ก๋วยเตี๋ยวเรือ ศรีอยุธยา ก๋วยเตี๋ยวเรือ ศรีอยุธยา สาขาอารีย์ พญาไท สามเสนใน กรุงเทพมหานคร 10400	พญาไท	กรุงเทพมหานคร	10400	retail	active	0.00	0	standard	\N	\N	low	2025-12-15	2026-02-13	6	0.00	0.00	0	2025-12-15 17:09:23.143+00	2026-02-13 10:36:19.197376+00	CUST-0018	สามเสนใน	\N	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	{}	ก๋วยเตี๋ยวเรือ ศรีอยุธยา คุณท็อป	wholesale	\N	สำนักงานใหญ่
9f71b9d6-493c-4146-b2e2-ebdad196c938	\N	\N	\N	\N	TRSC\nบริษัท ศูนย์รักษาสายตา จำกัด\n968 อาคารอื้อจือเหลียง ชั้น 6 ถนนพระรามที่ 4 สีลม บางรัก กรุงเทพฯ 10500	\N	\N	\N	retail	active	0.00	0	standard	\N	\N	low	\N	\N	0	0.00	0.00	0	2026-02-13 03:42:56.027+00	2026-02-13 03:42:56.027+00	CUST-0084	\N	\N	\N	t	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	{}	kate.xox🎪HR	retail	\N	\N
\.


--
-- Data for Name: finished_goods; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.finished_goods (id, product_id, bottle_type_id, production_batch_id, quantity, unit_cost, total_cost, manufactured_date, expiry_date, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: inventory_batches; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.inventory_batches (id, batch_number, raw_material_id, supplier_id, quantity, remaining_quantity, price_per_unit, total_price, receipt_image, purchase_date, expiry_date, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: line_contacts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.line_contacts (id, line_user_id, display_name, picture_url, status, customer_id, unread_count, last_message_at, followed_at, created_at, updated_at) FROM stdin;
016665ef-4285-4a5f-9a0e-03b622fd8408	C91e02b2f5e5d5107235b0a83dcce5927	ร้านกาแฟภูชี้ฟ้า คุณเบ้น	https://sprofile.line-scdn.net/0hSyXLWc2uDFZ1NR86q4ZyKQVlDzxWU1VSCVEQZ0IxAmVJARsADlJDZUJhUmVNBExSWVRBM0c1UWR5Jnswa2PwYnIFUWdJDUoHX1pHtQ	active	7df382dd-eba6-4498-ba34-97232404c8c1	2	2026-02-12 10:18:53.359+00	\N	2026-02-07 09:55:22.961+00	2026-02-12 10:18:54.954+00
c2c73a33-8fc0-41cd-92ed-952bb315612f	Cb8ce702837eb84cf9487066602434d03	คุณ Hi โจ๊กสามย่าน ท่าน้ำนนท์	https://sprofile.line-scdn.net/0hk_K4fbQsNHBmTSHQC39KDxYdNxpFK210Sy8vHwNOaENdKnQmTyx-QgZEakVafnBxHS4sEFAaPUhqXkMWeBvIRGF9aUFadXIhTCJ_kw	active	03c433d2-b412-4155-9696-2f1088f245fd	0	2026-02-12 14:02:09.704+00	\N	2026-02-08 03:29:35.377+00	2026-02-12 14:02:12.858+00
78e64a06-8a43-4a53-b72f-a5473b7116dc	U53924dec2e8b776ac99d7d7de6f04be9	PHUM "Peace of Mind"	https://sprofile.line-scdn.net/0hPWVGtOQ0D3h7PhAb6utxRgtuDBJYT1ZqVwsXSxo8Vx1EWU19V11GHBw_AU5BBx1-XgtEGEttUxxZVVRUVTA1Rk06TQwkfBBGJRkEVk5cCAwFakBmAQIZRChOVB09ZzFWDVkIHS94CTZDUjhRJSpGAhhKOg0FTT1xAGljLn4MYfsUPHgtVllIH0k4WEzD	active	\N	0	2026-02-06 11:33:04.651+00	\N	2026-02-06 11:17:35.333+00	2026-02-06 11:33:07.259+00
adf0bacb-8ab5-4df8-bda7-1390c9283a9f	Ud3a03bac016cb2b4f74ee3616a2d39f6	🐳Jitpadee🐳(ตุ๊ก)6395	https://sprofile.line-scdn.net/0h58JBCWRKahdnO3reGyQUaBdraX1ESjMFGVogc1JvYyReCn1FQ1pyJFAyPSBeAi9HT1wkJQE5NS9rKB1xeW2WI2ALNyZbAyxGTVQh9A	active	\N	13	2026-02-07 05:17:29.315+00	\N	2026-02-07 04:32:13.691+00	2026-02-07 05:17:31.173+00
f1a37b5a-ca06-4294-9cf6-105652dbc4c9	Ca4a9cc72d54c4ed15cac20eb75b21721	Joolz x โจ๊กสามย่าน เจริญนคร	https://sprofile.line-scdn.net/0hSA9sAZRrDG4UCh5J-9dyEWRaDwQ3bFVqamoXD3VZVQopbR46MDkRWCZYV118bhlramsWDHNdVA0YGXsIClzwWhM6UV8oMko_PmVHjQ	active	\N	2	2026-02-08 06:51:55.646+00	\N	2026-02-08 06:51:44.718+00	2026-02-08 06:51:57.081+00
43fd6048-c134-454d-b8ab-c6d3c8d61cd7	Cd88d23df4e04ed6dda6b3bd645e2154f	น้ำส้มคั้น joolz Mt	https://sprofile.line-scdn.net/0hd2g_Py9UOx1KJil6RupFYjp2OHdpQGIZYUJ0KS8kNywiF39LZRR8KX90bSQnE3gYMUh2fC0vMi5GNUx7VHDHKU0WZix2Hn1MYElw_g	active	f7581fec-a8c9-4109-b18e-d362d92ca94d	0	2026-02-11 15:54:08.805+00	\N	2026-02-08 04:58:55.433+00	2026-02-12 01:50:19.083+00
0440dee7-1926-4810-bb67-6bd159a4829c	Ue55197333340e6a4c9cc114f22f3599e	♡ ʕ•́ᴥ•̀ʔ ♡	https://sprofile.line-scdn.net/0hf1Te1C09OR55HCYVq1tHIAlMOnRabWAMVX0kLEkcZyxDJH0fVXNzLRsbZylNJCpAAn0keUwYNyhbew4fVHIBPw93H3cDeSIhByw-HEhYHG87cyUwMnILBidCH3YqTwwfLioyfzR9B0UtXH48JycXLRJMEigcfiUeFUtVSHwuV50WHk5LVHt-eUsabirB	active	\N	4	2026-02-10 04:32:07.691+00	\N	2026-02-08 03:07:05.354+00	2026-02-10 04:32:09.766+00
8db9db9f-2128-4d92-827c-23f97b74d9b2	C659b42ab7483900fd5d7b1ef9c5302ec	Joolz top	https://sprofile.line-scdn.net/0hHmmfWAQPF0JAHwRuwDtpPTBPFChjeU5GaXAKIyceQXt0fQRAaywLLCEcTid0eFkWaXlYcXwYGSJMDGAkXknrdkcvSnN8J1ETanBcoQ	active	7aea9b3f-cf61-40db-92e4-bfc187a581a6	0	2026-02-13 02:53:35.366+00	\N	2026-02-08 08:48:50.146+00	2026-02-13 10:35:19.732+00
d8f01bb1-59eb-4337-a399-9dc95d0ce066	Udd8509f64470983b40e8e3775774b7b9	แอมแปมนะจ๊ะ	https://sprofile.line-scdn.net/0hkvwtlGJ5NFlaDSA0k_hKJipdNzN5fG1Lf2goamoNbGs1OScPfj8uOWwEOGtvNSYNdmp_OGwLbjtWHkM_RFvIbV09aWhmNXIIcGJ_ug	active	ab52c29d-a0c0-440c-8cd7-a5a71cd77b92	0	2026-02-12 04:46:44.85+00	\N	2026-02-06 10:41:13.836+00	2026-02-12 04:46:44.85+00
423984ab-7c00-4775-b576-b6da4d104d72	Ce345097232eeeab1a42028eb6d7cb3c3	รามาธิบดี - ราชวิถี - คุณกอล์ฟ บจก.อัลฟ่า เฟรช น้ำส้มสด 100%	https://sprofile.line-scdn.net/0hBMqL3qcZHWJcNQ5O2v5jHSxlHgh_U0RmdFZUADxhQgEzAFpjJVIFBDw0R1sxUlxkJVoHDWoyFwdQJmoEQmPhVlsFQFNgDVszdlpWgQ	active	a2f94086-703f-472b-b152-ae94ed950036	0	2026-02-12 04:44:08.167+00	\N	2026-02-09 03:41:40.649+00	2026-02-12 06:29:33.116+00
56d20bf2-70a7-4e7e-915c-ddf7cc35e0be	Uac69d8d081945838f166cee748c6a835	Smootheoryth Bangna	https://sprofile.line-scdn.net/0hc5rVdqE-PBpfLxcxdWxCZS9_P3B8XmUIcE0ndTgran02GXJPJk53dW94MSxlGXxKckt3fj4tayJTPEt8QXnALlgfYStjF3pLdUB3-Q	active	\N	2	2026-02-09 10:43:26.593+00	\N	2026-02-09 09:05:35.129+00	2026-02-09 10:43:29.961+00
c93fc254-fefc-4907-ac08-7e07ac4d125e	U84e915396204cf1aeba61ef70303f2c8	𝗖𝗛𝗜𝗡 𝗝𝗜	https://sprofile.line-scdn.net/0hA6ypQrJ_HhlUCQFJXztgJyRZHXN3eEcLKm4CKGZaQStpPgxLKm8CdjUBF3w-PAkaf2lRe2kJEix2WDodMyoQJWlVGi0LcBoPM25XeCUIHEk8USBPeDsxdzJNRyk0QQwdLxIZLQpUOGgsPjwNICkMPQAKSVsISSAxOV5yT1E7cJo7C2lMeW5ZfmYPSS3s	active	\N	0	\N	2026-02-09 17:45:15.433+00	2026-02-09 17:45:16.356819+00	2026-02-09 17:45:15.433+00
48534315-d9d6-4c70-aaac-8ee83b2dec28	U4c9f641c52186e21acf066b5c97ff4df	-toey	https://sprofile.line-scdn.net/0h6DDhAhq5aWtpEXfaHWkXVRlBagFKYDB5QHYiXVkQNwwEJiY5RXUkCFgVZwtRcnw9ECQnCQgXMV1LKGs1MXcveQBYVjw1cVE7NwkhSgBKSzJVIytYJy9IdAJxMzlTIic0ATxwdQoRUgsoRituQC1GZDRqQlkpXyY_TEYFPWwjB-gGEx4-RHYuDFsXPl_R	active	\N	0	2026-02-09 13:13:00.259+00	\N	2026-02-07 01:03:32.756+00	2026-02-09 13:13:02.867+00
432ade27-a9da-42af-8a49-eb93c65bc743	U1eda11f48df8a243dbe61a7177148d81	Yui Praewta	https://sprofile.line-scdn.net/0h5dN72hWfaktjTnyOJfAUNBMeaSFAPzNZSS0iKFcbZHsJLn4aTiB2LwQdYH9aKyROSntwfQZMNChvXR0tfRiWf2R-N3pfdiwaSSEhqA	active	\N	0	2026-02-10 00:49:42.272+00	\N	2026-02-09 14:20:41.252+00	2026-02-10 00:49:44.813+00
ee97f88a-8b2f-4e3d-8006-d6267221505b	C638f45806317e44d125d7ef168d93889	Joolz x wonderwood	https://sprofile.line-scdn.net/0hn0lprk39MR9BCSUadqdPYDFZMnVib2gbPWd7LH0IbCh4PSZOODh8fXEAbn98OXFMbGd4fSBZOHhNGkZ5X1_NK0Y5bC59MXdOa2Z6_A	active	86020312-8c63-401b-bfc6-a4a63dff6f26	0	2026-02-06 10:47:46.606+00	\N	2026-02-06 10:47:48.078+00	2026-02-06 12:32:36.088+00
d018401e-70b8-4beb-a37e-521da9f16a86	R8f7325205a9b4db09d53f4419183d0d1	กลุ่มลูกค้า	\N	active	3eb26f74-1ab2-407c-89ae-843749750baa	0	2026-02-12 16:17:31.211+00	\N	2026-02-09 02:10:05.434+00	2026-02-12 16:17:35.609+00
b54775bf-8849-4fe2-a5bb-a532ffbfc7c3	Ceb098d00a2443ab46717ed99b0877d9c	น้ำส้มคั้นสด	https://sprofile.line-scdn.net/0hybBl9mZTJk1vFTYh9EFYMh9FJSdMc39JFHVteQ9GKHhQLWUYSnpqfl1Fei9TITJIRXRsLVgSeS5jBlErcUPaeWgle3xTLWAcRXptrg	active	3f5de013-3fa1-412e-a726-31d01ec6cd2b	2	2026-02-13 06:19:43.598+00	\N	2026-02-08 05:04:49.291+00	2026-02-13 06:19:44.667+00
3dd97414-b1a7-4c2c-8130-47c58799df01	C252d07d5b9ecd8788e90f1f8755dff28	น้ำส้มคั้น	https://sprofile.line-scdn.net/0hWFSRdqh1CGl-Kx2we-d2Fg57CwNdTVFtAkUUCU8qXloWTh8-UUVPC095Bl9HE0prAkoSWxkiAVxyOH8PYH30XXkbVVhCE044VERDig	active	55a26af3-78ee-43cc-b6a4-c05d68c0ac84	2	2026-02-12 12:03:35.942+00	\N	2026-02-06 11:48:55.155+00	2026-02-12 12:03:38.347+00
9f3368af-a40a-4aa2-8591-b6081e95a6b9	C3701c83acd92fe99f1594e6c81de144d	Joolz x F.I.X.	https://sprofile.line-scdn.net/0hy8Flzt0rJhdrFTfijYJYaBtFJX1Ic38TRXQ9dF4VKCRRIzMRTnNsJgoWLyZSLGIRQ3BqdlwVeCJnBlFxdUPaI2wleyZXLWBGQXpt9A	active	b87dfcd8-4001-4de7-8c95-504874ff2627	0	2026-02-13 09:46:21.525+00	\N	2026-02-08 04:07:14.867+00	2026-02-13 09:46:24.058+00
51a820e7-c8e4-40d8-a349-7a39a54aa70b	C47ef83bb1e80b042588478c5b38ad3f2	Joolz x สุขอุทัย	https://sprofile.line-scdn.net/0h9iB548JxZkZvTHHgN2kYOR8cZSxMKj9CES98dF5LOCYFfyZHQCh8IFMZO3FVeCFFRn16cltPbCJjXxEgcRqacmh8O3dTdCAXRSMtpQ	active	d75f6899-d5b5-4855-8614-a6ad5993ce25	0	2026-02-11 08:48:13.637+00	\N	2026-02-09 03:06:12.194+00	2026-02-12 06:30:54.247+00
667a0882-d61b-498b-b278-e6f7220b9890	C43023d2cdbd4e9ffafa60bc69549b2d7	ร้าน joolz johnny	https://sprofile.line-scdn.net/0hXEDfvjbpB2ppHxWPyVx5FRlPBABKeV5uTCxBCVQdCllRfBRoEnwdWwxMX11TLRQ1RXEdWAxLDg9lDHAMd0n7Xm4vWltVJ0E7Q3BMiQ	active	0158a63d-29bd-4ed1-96ee-e9be6e97efcf	1	2026-02-13 05:46:03.959+00	\N	2026-02-08 04:42:28.523+00	2026-02-13 05:46:06.265+00
48e01de5-9ebb-4482-a48a-44b39bf0f4e6	C85cc05be982f00350379df08df7ccb20	น้ำส้มโจ๊กสามย่าน คุณเก่ง	https://sprofile.line-scdn.net/0hm38pneJ7MhwVCSJ1V2VMY2VZMXY2b2sYbG8qeSJcOSgqa3JPPTp9fSAKP3h8a3JKOGkuKSYLbXwZGkV6C1_OKBI5by0pMXRNP2Z5_w	active	101dbc58-c138-4e52-b312-cf9f47b11344	0	2026-02-13 06:38:58.164+00	\N	2026-02-07 04:24:49.893+00	2026-02-13 06:38:59.909+00
9f92d0a4-f897-4626-907c-94c2691f4952	Uc1d672a46901399e0608900d89e3e3f3	Paik	https://sprofile.line-scdn.net/0hY_jeZjXQBnBHHBlDlA94TjdMBRpkbV9iPygZFnIeDBQuLBMgY30aEyIfWRd9LUNxP3pBRSBJXRVldyUlKnsqeCIcORdzRxpGDnkoQRBDWwF8fCFZbDEMbCF3XS4ycAlnFHMZSDdJL0UEUBF2bgEdRCJ8OUAEZUR8Y0tqJkIuaPMoHnElantBF3UaUUT_	active	\N	0	2026-02-11 02:42:20.884+00	\N	2026-02-08 05:38:19.076+00	2026-02-11 02:42:23.884+00
e4c8aa99-cedc-4aea-a0cb-2e24954ec3a2	C14a85439383bd036756790804a1c3f37	Joolz อัลฟ่าเฟรช-HBL21000029	https://sprofile.line-scdn.net/0hXcA310SRB0xsShRg7c55MxwaBCZPLF5IFysdIlAeXikGe0gYEnxJLg1DWnlQc0QcEipNKQpLDSlgWXAqchz7eGt6Wn1QckEdRiVMrw	active	\N	11	2026-02-12 10:16:21.389+00	\N	2026-02-12 10:00:18.554+00	2026-02-12 10:16:22.96+00
7a900da4-303e-437f-99bc-7037c99f8079	U75d19e7475a25e32c630e02ef1f3ede9	somjan	https://sprofile.line-scdn.net/0hzWkDK5ynJXhGPQxDbBRbBzZtJhJlTHxqP1k6G3doKRhyCDEvY1tiTCA0K08sD2cnaQs9G3o8fx1KLlIeWGvZTEENeEl6BWMpbFJumw	active	\N	0	\N	2026-02-11 12:28:45.087+00	2026-02-11 12:28:45.346954+00	2026-02-11 12:28:45.087+00
609ec8fb-5f0c-4c0c-89d1-110b54b23ea6	C36dbe7abfc004b1626b8d73100be6475	ก๊วยเตี๋ยว โกดัง 47 ราชพฤษค่ะ	https://sprofile.line-scdn.net/0hEkdSRyb9GkRJKgVT-AFkOzl6GS5qTENAbEwGJn8pR3xxGVwQYB8HJHgtQnRxTwoTMk1cISkvFyFFOW0iV3zmcE4aR3V1ElwVY0VRpw	active	\N	0	2026-02-10 03:21:34.799+00	\N	2026-02-10 03:21:36.469+00	2026-02-10 03:21:36.88+00
d92f5769-9418-4c0a-9003-ec224f0af4ef	U415741e9d2ce465ec3c88c97a3a7ac81	...jay green jay...	https://sprofile.line-scdn.net/0h8BWbxmzVZ216G3hSE8AZUwpLZAdZaj5_VX16DRwYbQgSKSA_Bih_DxgZOFwTeCI_AnV7WUcbbFRYfkJaNRVACDwSOikvcU5ZKSRBXk5IQyBCe048En5tCwYYMB4OK3lbJH1qCjtpQ1w5cV5bBTxOUQZ7UAEpaXNyUkwLO38pCe4VGRA4V3wgCkgdMFnC	active	\N	0	2026-02-10 02:09:42.607+00	\N	2026-02-10 01:39:00.996+00	2026-02-10 02:09:44.332+00
dc5a9830-b03b-40d1-b104-66826714da5c	U4eb51d2a1e2a21e1fdbb93a5f7fca197	Big2	https://sprofile.line-scdn.net/0hWZvX63hNCHVbISBKsht2CitxCx94UFFndUdDG2wiUUJlRk0nJxBGR2p0XkxvGBtzJBJFRzopXxBXMn8TRXf0QVwRVURnGU4kcU5Dlg	active	\N	0	\N	2026-02-11 14:00:44.091+00	2026-02-11 14:00:44.962279+00	2026-02-11 14:00:44.091+00
453afd84-f120-4295-b069-09740a2bbb99	U195dd07ebd3e2e30eaab1038c09c83f5	kate.xox🎪HR	https://sprofile.line-scdn.net/0hc_R2jpb4PHB_SyNAkC5CTg8bPxpcOmViASwkEh0eYBJGK3kuUCt3E0wZahIXen4jAy0mEU0eZUldBRVQLkM0TyMdPhVKfiskB18wVCQ3KVwXDhtUMWwMVBMTZS4dIC59A2t2cTUMCjsSHCZvLHRvdhQ8FBklGBAgKRxQJnp5UvMQSUslUix7F01Na0TH	active	9f71b9d6-493c-4146-b2e2-ebdad196c938	3	2026-02-13 04:48:55.45+00	2026-02-13 02:46:26.281+00	2026-02-13 02:46:26.746598+00	2026-02-13 04:48:56.322+00
adcd0754-b048-4f25-b02a-370e5528eb03	U687f079b14e8b44f2e8177195b28ab0f	Benyapha	https://sprofile.line-scdn.net/0hU7cphS1rChhOCRrb0r50Zz5ZCXJteFMKajtGKn5bBi11PkgcMThGfXMIXSpwOR0eMmgXLi4OViFCGn1-UF_2LEk5VylyMUxJZGZB-w	active	f616a0cc-8a7d-4897-987c-81d0404e24c0	1	2026-02-13 05:11:30.188+00	\N	2026-02-12 04:39:13.09+00	2026-02-13 05:11:32.933+00
fc6f556b-c2db-491f-9372-d177f988a7e8	U4023b404fcc803c2cd8f1839043ad9e5	chompoo:)	https://sprofile.line-scdn.net/0hDsDD_3S0G1xpPQrWShBlYhltGDZKTEJORV9WaV5oFT8EXw5aF1kDb15uQThdDl8NF11dOV1uQGlLVF9oFSA9ahtaEmwfRjdrGggwbg5tDW0kVlRjQllUXjpGPhIuT15NGl06Whx-GmQHexsMIVwtYllnEm4PeARZPmp3CmwPdd8GP2wJRFpcO1s7TGjR	active	3f068301-ec61-4f65-b563-992da0f806e8	0	2026-02-12 02:40:45.616+00	\N	2026-02-10 03:47:08.622+00	2026-02-12 06:29:56.354+00
8d1b1d5e-9bd0-4342-9843-88d77b683c16	Uf4fd968f79513421c4a77cbbabd59e36	w💕	https://sprofile.line-scdn.net/0hKV4UUdJPFHkZLAuSk35qR2l8FxM6XU1rYh9bTS1-TUonS1V6ZkNeHXt-T0AkT1MmMkJcHCx4TUg7TDFyThUbdlxoFU84fFNHdQgFFm4oSkBxTCRuMgMuflEwC1VaAFFpMBYnZVhtMhBhdwlRdiggQHUwLiJWQz1wUXt4Lxweevp2LmMsNEtTHisqQ02h	active	\N	9	2026-02-12 12:43:02.783+00	2026-02-12 10:08:55.433+00	2026-02-12 10:08:55.645441+00	2026-02-12 12:43:03.586+00
2917bad7-417e-40ab-b4eb-10ae1ce80aa9	U943d39b92c702f2d20bf6c82bcf79cc6	JennySupichaya🎄	https://sprofile.line-scdn.net/0h-HfmM9m2cmdLFG2AN74MWTtEcQ1oZSt1YSJpBC4Xf15_czw5M3U_BH9AKlZ1LTM0Z3A0BX1GLVVpVn1jPQBtQn1fVRMhIzJ5JnVLRiNVUgIxdGcyYHBBUytRe1UkY28zG3prVglWVDkjXnZ4YBBiZy1JVl81Sn5IPkMeMU4mHOQkFgUyZnM1AHkSJVPz	active	b10cb1c3-cc14-4001-ab0b-d0854399c1a8	6	2026-02-12 08:12:59.794+00	\N	2026-02-10 13:56:55.134+00	2026-02-12 08:13:00.981+00
3128f0e1-31dc-4cec-a4b0-b9e37491690c	U676fb27d2e18a0c59936f908365fc1c7	Molk	https://sprofile.line-scdn.net/0hCV47su-HHHkZTjNg829iBmkeHxM6P0VrZSlTSnwdEUEgfFooMiFVTHhPRxlxew8vZilRFilLQk0VXWsfBxjgTR5-QUgldlooMyFXmg	active	\N	0	2026-02-11 04:01:19.092+00	\N	2026-02-10 13:31:01.084+00	2026-02-11 04:01:20.474+00
8bbe47d3-2782-4386-9337-2422bcc11795	Cf676aa14041af7d9de93d67cdd4a34c0	ก๋วยเตี๋ยวเนื้อตุ๋นบ้านจันทร์สุวรรณ x Joolz	https://sprofile.line-scdn.net/0hONhsYd6QEGFFCg8aSvJuHjVaEwtmbEllPT9cBiUJTVkvaVc3YG8KV3BZSlF-PlY-OT5dD3lfSgJJGWcHW1zsVUI6TVB5MlYwb2Vbgg	active	\N	0	2026-02-13 09:15:29.431+00	\N	2026-02-13 09:08:51.383+00	2026-02-13 09:15:32.128+00
\.


--
-- Data for Name: line_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.line_groups (id, line_group_id, group_name, picture_url, member_count, customer_id, total_messages, total_orders, is_active, last_message_at, created_at, updated_at, mapped_at, mapped_by, member_ids, last_order_at, left_at) FROM stdin;
\.


--
-- Data for Name: line_message_logs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.line_message_logs (id, target_type, line_user_id, line_group_id, direction, message_type, message_content, order_id, template_id, sent_at, delivered, error_message, created_at) FROM stdin;
\.


--
-- Data for Name: line_message_templates; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.line_message_templates (id, name, category, message_type, content, flex_message, is_active, created_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: line_messages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.line_messages (id, line_contact_id, line_message_id, direction, message_type, content, sent_by, raw_message, received_at, sent_at, created_at, sender_user_id, sender_name, sender_picture_url) FROM stdin;
5713eee9-0cef-4097-8867-7dd819d489f1	d8f01bb1-59eb-4337-a399-9dc95d0ce066	599857896221573347	incoming	text	ส่ง	\N	{"id": "599857896221573347", "text": "ส่ง", "type": "text", "quoteToken": "COTDnMDitl-F8zrSvXK4tOnSXN0HjsOpc7rshQSa7qrrC0gqYHV7oeOuQ0-Jt58ClrnaIfh1JSOLt7Og4lvNZeKX1x_Q_hA-PRK3w6ABrW9biwYMMaFz-aKytHd-ehSmHwAZ8nVP-Bf2togrpibRhQ", "markAsReadToken": "JMvKOn4Nzo4PiV3bAerXjAusMpA0dU5wGqz3x5lWSospuVI5Uf7WvRSCnn0ZuC8oepLSh5O1OqaNZEDYhHJHYdXEOc8nJtFZDApIJjmxA8nOs1IR_l_LwGYqodRuXaJ2a8EtrBV-5f29Ck3NcO-JX8igXjbFLrN1wExf_4JF6nSHSJABMNA3eh3OJKWi_guUEqy3kflP08alD1wZyNXFaA"}	2026-02-06 10:41:12.375+00	\N	2026-02-06 10:41:13.901+00	\N	\N	\N
e5077552-bfdb-40a2-89b6-38c499dbef9c	d8f01bb1-59eb-4337-a399-9dc95d0ce066	599857898537353576	incoming	text	ดสอบ่	\N	{"id": "599857898537353576", "text": "ดสอบ่", "type": "text", "quoteToken": "no0rPStR6PV0gu9UEEK1-V23yM8Y1kCc-sRDKmmHr7qo6Cx_-8vjlRDZ5pP8GmIC82vmEZJA4yp6kkt2zjfNFGnfX5dLiH3rZe3N_KPqgT-zmHp4Jj2eWtOXmWZDB0VhmWzqySAeLcbbH4az7xWsCQ", "markAsReadToken": "n9RpPXvYPDofY4JPrQz9FbVCXDZQUfcTjXawoRHBr0LYG3JXnEA7Qm-UQ3J9DVWZtzShsU3Z0I3MrCOSNX42M4p7DS8ChPFqvHT67zw_e17D-k5plclbNsQN8yyHFaV34BVSRCwBTUyYm8zuPZZ4NmxNIhyqxypWaUZccN10KvO9nSCgN9f1mj9znX0ppK6mFNS79X36vI2ueCAU_XU_gQ"}	2026-02-06 10:41:13.67+00	\N	2026-02-06 10:41:14.465+00	\N	\N	\N
4a51e273-5e97-4804-8421-251639e6f0b9	d8f01bb1-59eb-4337-a399-9dc95d0ce066	599857945160974456	incoming	text	hello	\N	{"id": "599857945160974456", "text": "hello", "type": "text", "quoteToken": "ROjcvD2xdpJipEnV6DvFieX8yKMn6f_m4QGe1vXSNG7e4VibL_Z8IO5PEQpBnXHkKL2gj_3098m8Ixs-0bvEbC5L9hOoIxXQBZqU4YKfVWr2o83EIE8nmnPDd8gVDb5HsjqedqjsFpdNxe4W-RUgXQ", "markAsReadToken": "np_NfmVTsqxXutik0MktlbJGwSnk01nZaG-DD2KPUHIJng5_Y456pUS_gh-_1-H27yLVCl-dSeNXT8fudX--H13LTRDxl42xXB5nwla8PA67NDE9R3GbpATEa6DRW_vKsQerL3L0y6jOXnpIGsNAdWj2Z-acip6q_IxXvtLDC10XYBpd2dXmsTZGnJwjuP-dq1fghVrtJFqNA7jii8T1TQ"}	2026-02-06 10:41:41.38+00	\N	2026-02-06 10:41:42.18+00	\N	\N	\N
8e58d8d8-e3cf-4f5d-90ed-51eb3feb00b6	ee97f88a-8b2f-4e3d-8006-d6267221505b	599858557831610525	incoming	sticker	[สติกเกอร์]	\N	{"id": "599858557831610525", "type": "sticker", "keywords": ["ohyeah", "line", ":o", "Celebrate", "amaze", "Yay", "astonish", "yeah", "jolt", "Shock", "!!", "Surprised", "OMG", "brown", "bewildered"], "packageId": "11537", "stickerId": "52002734", "quoteToken": "3gwNM4xWxzo9BVu2n6JqQdEatE4ET_5CfDJYObgD99UVuWnx7P3i1GxEDK7WIaSjZ9zZXuFHKWz5SbJqmLQ7AwcFrnjMnjSHpnazsWC8JmMmqb4w-1Uv53ejiYMwG31yxtl6rKVzc5sI6yM7mbfgCg", "markAsReadToken": "jDODh9UReQtE8cJ4ktbEpTvvcpIehyUBw3B0jLEuubCgy9ogzIg-oO_ZCXDaNMN4DSmA7aSZeZHwqniVbcJfkqVTJ3SBrg9sWX3SzZ4-VsiQWMJRdACFr3Ol7DaGfdBP8XdeNZ3w96jgtm39F1Ls4Z04upeKu4sPfqX_wptvEksM3mpoen6fQTuL6Xq_5GKpTbwVNMW0HPp3ySxD-TfdBg", "stickerResourceType": "ANIMATION"}	2026-02-06 10:47:46.606+00	\N	2026-02-06 10:47:48.209+00	\N	\N	\N
da765103-0b3d-4572-bcae-bafb96d27937	78e64a06-8a43-4a53-b72f-a5473b7116dc	599861555064209579	incoming	text	พรุ่งนี้น่าจะถึงกี่โมงฮัฟ	\N	{"id": "599861555064209579", "text": "พรุ่งนี้น่าจะถึงกี่โมงฮัฟ", "type": "text", "quoteToken": "RNagVY9zagGZzg7zcLzNBhE-Kx5dJTwWtK-YhkKSs3yuB3l_vxOu6diBrYhhfo6cCAKbaLgxoZxMhLG8j3WAL7qmq7xP2GxHXSwKl9JtR3USzBSf-lxL_LGkjD3yY7ri3b2aIcwhW2py3QDlaATx4w", "markAsReadToken": "D_v54hrlrM7TAgVE_69qaN8GCWPGukjvfGcydSeTKgjGJjBkhRn3ELuKHKVDwpR0HNraUxNc1WrKBp0hFEcKO2MsqjBFWKZIp7gJmcX47oSYwVbL3pQR15cNk9y9jYjPrJdNO7Tb0RVH9KRLKy4wJduUtnmoSXFZkSRFaaqtHrXNJjWeDZE8LvA2baaBdWcqNsq5mFtejx4xlQysXkAGOA"}	2026-02-06 11:17:33.051+00	\N	2026-02-06 11:17:35.421+00	\N	\N	\N
c2a8c632-5289-4f0a-b04e-a03f618b02ed	78e64a06-8a43-4a53-b72f-a5473b7116dc	599861567848448009	incoming	text	พี่จะได้บอกน้องที่บ้านไว้	\N	{"id": "599861567848448009", "text": "พี่จะได้บอกน้องที่บ้านไว้", "type": "text", "quoteToken": "3Hau98kIxNDMjdQDO-Ag_rHDWtaly9wy4I8oU6yGWMbG1Ug61bXMFK4-fuy_uUXCQtovP9Ofy-f3dGO6BXyCTXHF39NsgsqGuI4kxtogKxf5PCfcC9YDqSXmsb42uSl3DH0vldyfOuuMhihVMhsxtQ", "markAsReadToken": "sV4I3xcroQAKMmmvU3t1_43cuoPe5xXpIfpYZFid4U5h-H8fQTcOT8cZJtKLlIvA5MfFAIv0t5zN_NiSGoFN7gAJRQqWKJxk0-XNPIvhxpZ0rw-uuSM8P0lQkXcFA_Cc9nh1eEUcTnPr_RHMTNZg6-eQYbR6GtwD3SXcfA3-K8I3u2oMQERrhq4aNXRblEgncqrL1SvwBm4-d2QlihOApg"}	2026-02-06 11:17:40.839+00	\N	2026-02-06 11:17:41.877+00	\N	\N	\N
40b552a9-7d5a-4600-bba6-95a3f63990d6	78e64a06-8a43-4a53-b72f-a5473b7116dc	599863117996622540	incoming	text	จร้า	\N	{"id": "599863117996622540", "text": "จร้า", "type": "text", "quoteToken": "Gv_8hqi8sL8bcn9QG_-q0MwOVHA3OTkDIR7SmTddWw4CawdUxlt9ACmSfLcihAf5wyWXBtqQYrWEG_f5Xv_kriPmdG5NnCu0uslh-hAz8UsYwWbfU4gKPZii910QnFN75raGzqzBGhZjITg-zBkveQ", "markAsReadToken": "0PyIVURyeXHN7o4PJYy4fmaRQUhkfGOmxQum2syMyFpZXhmdMOQvZ4oAAL8WTRHg0D0fiHXbmYTTVgIGPqvvW9vOa4_Kz4YN3l2NVaV9Ol2Qa0QNF6PsfNzVeKjRM6TZhRnRrBUpX_G4keeaU75C7bsG5fqoXmNvVQ6VBw5-BTu7T3Fg0nXIwnf3waPTXuZQMzm98oVAoU3nWoELTFGLVA"}	2026-02-06 11:33:04.651+00	\N	2026-02-06 11:33:07.137+00	\N	\N	\N
75b3471a-c038-4475-90b6-0a73a51e4536	3dd97414-b1a7-4c2c-8130-47c58799df01	599864708895343128	incoming	text	@Joolz น้ำส้มคั้นสด💯 6•2•69\nสาขาFoodie \n\nน้ำส้มมาส่ง 20ขวด \n\n\nหมดอายุ  11•2•69\n\n@Joolz น้ำส้มคั้นสด💯 	\N	{"id": "599864708895343128", "text": "@Joolz น้ำส้มคั้นสด💯 6•2•69\\nสาขาFoodie \\n\\nน้ำส้มมาส่ง 20ขวด \\n\\n\\nหมดอายุ  11•2•69\\n\\n@Joolz น้ำส้มคั้นสด💯 ", "type": "text", "quoteToken": "asAd5DL6d2ncx6jxTXlZwJvshD0zWrvTPt-TmhcqAvzE01aim5D67FbtoD6W6zVgVfTI4FxOXaPHJ1O7ZcaW7sGB8VsEYePe3TCcifpAJiZxDnnh9kJXa3hOtn-YpBPTfQfOeqG7tX9gTNBf10reoQ", "markAsReadToken": "ycEGcFZIT-GL0iOvcbI1tHE6crb3xWCcN0F8PLX7cDTk5VSDabTTiXAUFOCrhmuzo-CXogxRFowBaaM2YSZItMY5ISx2waUZ4yMQ7ULaFWzADWNGHj-KSDl1jf4GGwiUXWttia-r_VnHmhy7IhLKZAc6OMZdoEdvZ-VGzWdEqEbDceaHsKrQnbQTODmJKU9VW_FX1K1WWU1TYgBXUQzmiA"}	2026-02-06 11:48:52.888+00	\N	2026-02-06 11:48:55.298+00	\N	\N	\N
28b7a153-734d-4c85-a3e7-b50ec0f353cd	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	เปลี่ยนฝั่งเรา	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:24:14.055+00	2026-02-06 12:24:14.055+00	\N	\N	\N
99e2a89f-9e3f-426a-9768-7c68ce7dc68f	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	ไรอ่ะ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:24:34.477+00	2026-02-06 12:24:34.477+00	\N	\N	\N
7650da3a-ce43-425e-b19f-7312a1dfedc6	d8f01bb1-59eb-4337-a399-9dc95d0ce066	599868504019042442	incoming	text	ไรอ่ะ	\N	{"id": "599868504019042442", "text": "ไรอ่ะ", "type": "text", "quoteToken": "BcCvIsix1xcd88oUFIhS3SAFBXVAzAflaq9cpk6HTwOJ7x_CmB0K-BRHJs35Cwq3enxwQVhfER4_zqyef_8DKLT0yRgVaz6MmZP1pyQ1DpPh9r1l-y5J4Z1AwvGh0yUkiEKzHbt79DpSWExo4KAXQQ", "markAsReadToken": "J69oOW3C02Jl4t8WBMdhWEUqyl6s8w4JsORgdWZfxivNkTpZqnjEklOFlgrOV_EZkoMY_TdVz9-F8jY3VbA_kDaZr5XVL4RhMD4lsSGVqkgDe5_2C2_vqCX_j1FmnP4L3Saeu2Y_WP6SXThlDLrTMMK07ID06dozbkEFfk-UgdX9HwNNHLCXqAdYT0weu1Ukv9wILnPYexTu8adHxZkmOw"}	2026-02-06 12:26:35.032+00	\N	2026-02-06 12:26:36.114+00	\N	\N	\N
09f46d63-145b-44ad-ab9f-11955af0bd3b	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	ไรอ่ะ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:27:00.075+00	2026-02-06 12:27:00.075+00	\N	\N	\N
a8a6c698-196a-44d9-a237-f7efb46d4f7b	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	ได้ยัง	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:30:40.757+00	2026-02-06 12:30:40.757+00	\N	\N	\N
9e1ea020-17d3-4810-a74c-759f7b105ffd	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	โหลๆ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:34:48.022+00	2026-02-06 12:34:48.022+00	\N	\N	\N
98ce6205-e57d-46e9-8831-e5dba280fcde	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	ยังไ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:34:59.534+00	2026-02-06 12:34:59.534+00	\N	\N	\N
749b50be-930e-45c1-9e36-8be6b23a2b30	d8f01bb1-59eb-4337-a399-9dc95d0ce066	599869457199792461	incoming	text	อ่อ	\N	{"id": "599869457199792461", "text": "อ่อ", "type": "text", "quoteToken": "wcw62jaN10oIdRH-Cl0fVm3B6PvDFuENG3Uso-snA4HmELG2RfDOi5WEq9CCScwTlMpTQcKeNMrpDX6eFVcNJnbQweRSS-3G2_SjiVFn2rlsanvfYQxYNN4lbI-OpXfNd5fX-CzQD4_qLpNJ94RvAw", "markAsReadToken": "3qnfUq5-P6o3iMkr6GNQvHMyVSEVKciADEN9nW2LHgGjwkWeiFr-ozw1ec0cGRTH7aWbLOEdYrxnr_PGB7kos9nDo0-qSi6MGFHbAW3okUN44-mwkJp5GZ4qeShYixxBU7lIWsV3G3X6S5OSggIyUDB8ScIFjopsYP20mqHNh7uS_y41cgfi8JV8hco0Gj8LXq2E3cL8Uvsu7Ar8ZLu3OQ"}	2026-02-06 12:36:03.169+00	\N	2026-02-06 12:36:03.854+00	\N	\N	\N
1527e429-4c4f-433b-869e-029cafaf432a	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	จะจริงเร้อ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:36:15.602+00	2026-02-06 12:36:15.602+00	\N	\N	\N
0378ce35-e662-439e-9dda-373bc6e140a2	d8f01bb1-59eb-4337-a399-9dc95d0ce066	599869459180290645	incoming	text	แล้วไงอ่ะ	\N	{"id": "599869459180290645", "text": "แล้วไงอ่ะ", "type": "text", "quoteToken": "cbZMhwyPJyPTVsuWZCvOvpMEaA2V4gq6-8EUU-Qx9fChgkmC-_sqnRswlBmB9gT23cvLrkIFjf1fDmzjuLVEoEhrtW0zJQeGnYbPk9melTM3HusSiywhoYYCvBKW2WvtWkJr-YlUjC3xw8PZQ9TI-Q", "markAsReadToken": "-4zJZqpR8Cd2VRujy_UX6ZQtm8LiY7OAcaVAk1tCm4j_vutpfiiUfDmXviKj6p-2gGlwzIUvl6qOSrutBLrNxS8h5Jd_KMUktnRfORUpSbfPh1EVU1isHdhXDkfYidEE6fRPT6t-6AVOnKb6HVUOV6Uc14In8grRDVDF2FgHHI8dkAMjRk9GcPZc-GzqgGNpfBoNaKllIDoNH017dNZjKw"}	2026-02-06 12:36:04.344+00	\N	2026-02-06 12:36:04.986+00	\N	\N	\N
f62e0364-400f-471f-bccc-fd3153508fe2	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	เอาสิ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:37:03.327+00	2026-02-06 12:37:03.327+00	\N	\N	\N
e5ec03c3-20ea-4fe6-a532-cf11b45b0889	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	มึงจะเอาไรอยู่ได้นะ เอาไรวะ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:37:24.586+00	2026-02-06 12:37:24.586+00	\N	\N	\N
39a9c93e-0dd9-4af1-9304-0b828f2b42b7	d8f01bb1-59eb-4337-a399-9dc95d0ce066	599869605628346879	incoming	text	อ้าว ก็มึงพูดก่อนอ่ะ	\N	{"id": "599869605628346879", "text": "อ้าว ก็มึงพูดก่อนอ่ะ", "type": "text", "quoteToken": "M86bp6GCKWvoRvtF_LMhjFT8HSAdQO5D-Ux2QUcevGh0HnOwCRyR38Fu8hFg-z10-w7Atj6Fiq6_BDHAC7MPxPSMXLk--LkoCWLh1BeG6SHgo5juGva1O_k20WZAkcdmCx9y8CYUht63n1uxfP9_Kg", "markAsReadToken": "7klXiu2Il9HQ3PMPBkj6xF3EoPfsbZOsQBKlpLywbatmOpk1K2WOJ7nUgm4WZ5Y5qc1UeCwMjqLx2sEv3IqENhdX9DcXlTL4prV20407397HLQ0N1X1wnLJSrEJ7qp7n8xH9AsMYtgLUkCQjRW37xmpmFaxGDgDQzSaL6HjY8UihacFgyPEXQLhNfjapJhUtKv34w5ijT1CQQv6bQWwXBw"}	2026-02-06 12:37:31.562+00	\N	2026-02-06 12:37:32.274+00	\N	\N	\N
437454b9-6011-475e-9791-b1dbbd0ed16e	d8f01bb1-59eb-4337-a399-9dc95d0ce066	599869609889234997	incoming	text	มึงอ่ะแหละ	\N	{"id": "599869609889234997", "text": "มึงอ่ะแหละ", "type": "text", "quoteToken": "yyD10AkKc5nf5VWWyv-o5s8DciZ5KWUTFpQmBCdXXuieBZLiMbx6vEu8N7hYXWYHWExJLxCF2wwO69OKEwgoML5jXilQshXKjnwUQEb8SqJTTXznUssZvDN69GNiSRzgb1EcvkGlA2BqJr568A95RQ", "markAsReadToken": "tFDZ-EzGzXLi0h6g7Vm2u7EQydzqd8YK7q4Ab3THI-vcFW_PFRjmGaYnWsmOvk1YG7pV99ZPlpEmRMQJmzyG1N_5iS-nFm_PplVBEN1FdwR2v5YH-ZZ_iIiOYwrhjIqAHoEs47k-mhPgJfZVKal32up5BESQfkCWbvI0rB4bFEw-iJ_a-_au9z24Jz98BdIz17NfmDO-K52tC0AciHdZLg"}	2026-02-06 12:37:34.215+00	\N	2026-02-06 12:37:34.44+00	\N	\N	\N
7a17c983-3f8d-42f3-9e7b-a53c7cf592ac	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	เออ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:45:19.517+00	2026-02-06 12:45:19.517+00	\N	\N	\N
592d9b00-52ee-46b7-a698-782849acd8c7	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	ยังไงก็ไม่ได้อ่ะ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:46:04.155+00	2026-02-06 12:46:04.155+00	\N	\N	\N
06a088f5-9bb4-4875-ac9c-67419923cd32	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	ติ๊กๆ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:47:09.352+00	2026-02-06 12:47:09.352+00	\N	\N	\N
5dadfaf6-bbb1-4f35-9d9e-1fb5d7e90153	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	มีมั้ยครับ ทำได้ยัง เอาไงต่อกันดี นี่ใช้ข้อความไปเยอะแล้วนะ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:47:55.625+00	2026-02-06 12:47:55.625+00	\N	\N	\N
2c3c8fba-4171-4bd6-afd0-fb98ea81cffe	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	เออ ได้ซักที	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:48:00.383+00	2026-02-06 12:48:00.383+00	\N	\N	\N
c233e925-831b-4403-8cea-8caef4fdf28f	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	กว่าจะได้ แล้วทำไมมันมีดีเลย์อ่ะ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:48:07.823+00	2026-02-06 12:48:07.823+00	\N	\N	\N
cbf33f74-6ec8-4481-9a76-415765da12cf	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	จริงมั้ย	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:49:19.533+00	2026-02-06 12:49:19.533+00	\N	\N	\N
3ff30d52-783d-4073-8812-fa74350592f6	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	ได้ป่ะ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:49:20.527+00	2026-02-06 12:49:20.527+00	\N	\N	\N
9004a1f3-aa49-41c9-aaee-37cbe2cde9ca	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	ได้จริงดิ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:49:21.866+00	2026-02-06 12:49:21.866+00	\N	\N	\N
3c931066-8370-4c11-961d-6d774a2eb761	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	จริงๆ ดีนะ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:50:23.505+00	2026-02-06 12:50:23.505+00	\N	\N	\N
293c4d75-ce58-4fd3-a00e-be708ac658e4	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	แบบนี้แหละ พิมพ์ลื่นเลย	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:50:26.558+00	2026-02-06 12:50:26.558+00	\N	\N	\N
ba5c145d-95e5-440b-b341-dfc481581b64	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	เห็นมะ ยังไงก็พิมพ์ไม่ทัน	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:50:30.681+00	2026-02-06 12:50:30.681+00	\N	\N	\N
6c1dcfb7-4075-480e-9d97-d2abfa139a06	d8f01bb1-59eb-4337-a399-9dc95d0ce066	599870924098896090	incoming	text	คุณแอมพิมพ์ไวเกินอ่ะ	\N	{"id": "599870924098896090", "text": "คุณแอมพิมพ์ไวเกินอ่ะ", "type": "text", "quoteToken": "fUxrHgSEXGpC9J0PsiUxM1AS6bIACgSHRId751YcvwTg7lM70U0ekzdAgHQxo-tMDNhxwadODsEort3HW_gBVKbNIof5Nv-17gfVmaKID4JRF4xZWG3Tvn7LLlP4d4h8ndtO7dAmNCV86b5HTqa4Pw", "markAsReadToken": "kWN836UymhwLGiu-seG-Rw7XoOz7qls0J1YnAumE5JXiKU-t1lD2NmCSRVSWYLqbGkEz_fdr8ICWvtpp_F61_fu8uanAzyx62Qm0YagKXJ3rBAZRhvDBEHQMWoKLT3TUoOSbM871H05N6mAHOWd-I6u7JsxDUZRtkm2b2OOO07EdQ-1NyxYnIVeypce5TFgbB417jKn21n8wGjKu2W7MTw"}	2026-02-06 12:50:37.58+00	\N	2026-02-06 12:50:38.569+00	\N	\N	\N
7cd40899-2ed4-4c8a-bb09-41471aa93718	d8f01bb1-59eb-4337-a399-9dc95d0ce066	599870928495050838	incoming	text	ผมพิมพ์ไม่ทันเลย	\N	{"id": "599870928495050838", "text": "ผมพิมพ์ไม่ทันเลย", "type": "text", "quoteToken": "NzhZGP8s75ePZrKOVxMcTx0ZOV3UEcMgP3DnUrTuKC-N3SgAnVS5t7IMJfQfgTOcEDbpMbQJt19V1wjzlHczLqYwXRQuyvwEoEzi4qcsjZJHpuCoIUkdI1FnsEdFozdF7P5D9sbGbU1ZE65xtd1iCQ", "markAsReadToken": "pCcyMyEp5CqY8Ejpo9fcNnLAC1OS0nNHqBSfg51igQSLoLAxo0YKhulFAs5egqhEcKnhdql_le4DwUsCYuzPtR4NaspMeekXgxSsqqhe-sJi8fXVxaWftiy6QB5u7PqVTfqUaAfabCdpvZ9IHELjN9ZPFJlBrC3dRxLKgzxL2X7P6j6uJkTkfxoDpu6NREWeq-WOyCClOXcYp-wPBbDP8A"}	2026-02-06 12:50:40.047+00	\N	2026-02-06 12:50:40.502+00	\N	\N	\N
e7de8a66-e4f2-40e8-8b50-046c50990485	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	เอาจริงป่ะ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:51:06.615+00	2026-02-06 12:51:06.615+00	\N	\N	\N
f3d16cd3-a918-4393-b4a0-b1b6d50bac25	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	เอาจริงดิ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:51:08.367+00	2026-02-06 12:51:08.367+00	\N	\N	\N
a0a19836-d95b-47de-81dc-6bda04ef7e75	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	เฮ้ย	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:51:09.782+00	2026-02-06 12:51:09.782+00	\N	\N	\N
a6d3a22a-7354-409b-a255-47596ee72dc1	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	ไวไปป่าว	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:51:11.398+00	2026-02-06 12:51:11.398+00	\N	\N	\N
6ec476b5-9267-4376-ab5d-94d932a1095d	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	คุณพิมพ์ได้ไวขนาดนี้เชียวเหรอเนี่ย	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:51:16.445+00	2026-02-06 12:51:16.445+00	\N	\N	\N
6a32c819-4fd0-4893-8d4c-133c76bf3fd9	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	โห	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:51:17.472+00	2026-02-06 12:51:17.472+00	\N	\N	\N
5a60bc5a-512b-4aa6-87d4-18afd5dd49c0	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	ไร	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:51:18.375+00	2026-02-06 12:51:18.375+00	\N	\N	\N
d3530b81-01af-4a5a-8e0b-972766ff8a95	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	วะ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 12:51:18.866+00	2026-02-06 12:51:18.866+00	\N	\N	\N
1570610d-e598-4f6a-aae3-1f49835fe06e	d8f01bb1-59eb-4337-a399-9dc95d0ce066	599871172184113255	incoming	image	[รูปภาพ]	\N	{"id": "599871172184113255", "type": "image", "quoteToken": "AB3qQAguuazd-pmKNKVadXp_IOjKoWdkNhPlk8v5rVpFEq80JdO4026shVQBMdJP9czqGX5dVgfoDQ4moRBvIza-XiNQDWUy1DKkzPn7ZY3rF6z00gdqne0bU4E0RRMiitt5iI2fn13oGgZl-i_cVg", "contentProvider": {"type": "line"}, "markAsReadToken": "VmO0wQLE8K7YQfhrLohNAVRtv6tMCkKn_r524TVy4F3gNv4ZucxOE_M9sjFTMI4ZSiWmo5ZO-PDikFcrjrWh37xKgoYJUNG0qQmyw--dU0P9RMnw1Uj2mB5zCygt_VrQw7FSK-KsatCXPM_0iGo0aL3E9m6oTyDT52W9G-sddDQQlvkbaB_9-cJlmKddYWz5XuUi4YlodE4ys4OmluYL2Q"}	2026-02-06 12:53:05.449+00	\N	2026-02-06 12:53:06.405+00	\N	\N	\N
32c84c54-746a-404b-8325-084afc1e6105	d8f01bb1-59eb-4337-a399-9dc95d0ce066	599872357494161550	incoming	image	[รูปภาพ]	\N	{"id": "599872357494161550", "type": "image", "quoteToken": "EyMlenF0MHfHgJNgKHlR9vORyvTt3c3oPdsorjdAE4eUSfDRKdyNtkXDCEJdE2unQNO6myd589WZc24prSj4e4LcsAeh0z2NP5zMmZKbdyaZ1RbLXqW5-mrryiJ-oprEFpJPJv__TGMgwgN3-FtOqA", "contentProvider": {"type": "line"}, "markAsReadToken": "p7YqDD48wICvZwMBfHjsFyeNpU5ipeAUPivV8cRkI74NJFTLt9NowISoz_5LKVSy3wtZVc1rOgnGMhxKucKTMlJdxTPv1b8MmDuz7R9phiQF3Ts_jZn2qHVGVHPQzGMUbkUYbrch_Oo8dpDEyccmNYBOa0gy1vtSihxOBjrK35MZgMSGkor-IjS_IWV7Q7cnBBqbnKERuC9MX51NI8YB2g"}	2026-02-06 13:04:52.028+00	\N	2026-02-06 13:04:54.03+00	\N	\N	\N
94e9658b-4c5d-472d-bf38-957bb2d6be79	d8f01bb1-59eb-4337-a399-9dc95d0ce066	599872849653530802	incoming	image	[รูปภาพ]	\N	{"id": "599872849653530802", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/599872849653530802.jpg", "quoteToken": "bfwwrhh-rv7avdliodwEIJI_wybvzrYVoecqAviCsgmrqGOddzFIkgB8ZP4RbYbPY79Z0RMJ03M8XlVLEGwk2S46QP2MyD5UIeeDlcoY3OLXNiQsyfNIBPl1735bp0Y8z1NB9rZEdnpTxVMfXNcMiw", "contentProvider": {"type": "line"}, "markAsReadToken": "_QheJfnvWSGJx4bNLjjBoYqvelontFhYL9tYcMkonAZdtt2MTM8eLUzgbGrfbms2et1CbHaIPpYkR4H8bT4_1pHHaOklnwlh0gIqcEbHwYU3qyatRHJH1XYL_QuhnzaykaKvIpcWnp0oi-MTL2NeAKZaJie7FrTDs13eb9kWlCSlaEBkQhSgM9v8eyTXgRNH6E1VY6j3x_GHKwgByV7rWw"}	2026-02-06 13:09:46.252+00	\N	2026-02-06 13:09:49.207+00	Udd8509f64470983b40e8e3775774b7b9	แอมแปมนะจ๊ะ	https://sprofile.line-scdn.net/0hkvwtlGJ5NFlaDSA0k_hKJipdNzN5fG1Lf2goamoNbGs1OScPfj8uOWwEOGtvNSYNdmp_OGwLbjtWHkM_RFvIbV09aWhmNXIIcGJ_ug
97a808ea-d8a0-41c0-98c4-fb7732fb3f80	d8f01bb1-59eb-4337-a399-9dc95d0ce066	599872889315393963	incoming	text	noti	\N	{"id": "599872889315393963", "text": "noti", "type": "text", "quoteToken": "WA8k1KlCC4BMs4Tu6Ywlhu3tGaGRkk3_pcrSWLKUEKFs6OrKnhGyD1dZU_1KUroALnS4ACJBGEYd_tT3QNQRzpl36Np9cJD_T8E77cit6JVHHqeCW3wUjvINVQ7OF35cKzGW6xiifuPyXZIVqXkrgw", "markAsReadToken": "xP4ywVTN3FRd38AX7eOUjEeEgqP0UP_17w8XCIc8c6n6bwkYM5Gx-RsZk1bWsxYQ2YZYAt9PDaJIxLCFsC27Wrl2z24IX8czrA2VxXCk6oMp2qVBDI5fhPTFXP5SeTHUwqF95TxKOdkb8KxXbEVDx5e6mcjkJB0ubf93wkXDB4Fd_n1_IDzeudF8fcrzagrYSJze5L6bmPbrSE1lxUjJYw"}	2026-02-06 13:10:08.79+00	\N	2026-02-06 13:10:10.01+00	Udd8509f64470983b40e8e3775774b7b9	แอมแปมนะจ๊ะ	https://sprofile.line-scdn.net/0hkvwtlGJ5NFlaDSA0k_hKJipdNzN5fG1Lf2goamoNbGs1OScPfj8uOWwEOGtvNSYNdmp_OGwLbjtWHkM_RFvIbV09aWhmNXIIcGJ_ug
2ae52858-7ccd-484f-a400-afeb12b8609d	d8f01bb1-59eb-4337-a399-9dc95d0ce066	599872892217852415	incoming	text	มาแล้ว	\N	{"id": "599872892217852415", "text": "มาแล้ว", "type": "text", "quoteToken": "2CXbmFA1xbPuieczDYBK12nRlJKLQJy7VLHf9_JSFLMfZLI3qXkMYxP0lGvWPZc0JSQuMRSWTqT_VhBGT2OVB3Kl2OCn04L36-P2i1WHPPr-FxcpAbIYraeYEqS_orhQVBkK6J6Psrg6_Mtox3Q6-Q", "markAsReadToken": "n9wp7FWYu93J5TEbqI7KvHyagSvdJFHd3QQOLGhJSS6Xl9sS8IY6Xm8-fHWoYXQ4dZKJA2j1kGc7VDAGggTF8AKAYtFkdlWB44DJ6IaHvKqi7pkAl_QKUxREKV4mXEQa8euTpOGuRsJcfDDq1nosF32uMhMgU-9prQCrSk6UF7H6zxO8KDzFkceD0WSUJAMIcit01zk8UaIM61CzP-8sww"}	2026-02-06 13:10:10.524+00	\N	2026-02-06 13:10:11.559+00	Udd8509f64470983b40e8e3775774b7b9	แอมแปมนะจ๊ะ	https://sprofile.line-scdn.net/0hkvwtlGJ5NFlaDSA0k_hKJipdNzN5fG1Lf2goamoNbGs1OScPfj8uOWwEOGtvNSYNdmp_OGwLbjtWHkM_RFvIbV09aWhmNXIIcGJ_ug
9c3c7ba9-e7a5-40b1-b75f-ed911511a674	d8f01bb1-59eb-4337-a399-9dc95d0ce066	599872893845241993	incoming	text	สินะ	\N	{"id": "599872893845241993", "text": "สินะ", "type": "text", "quoteToken": "PHWRrr49WJ0f73omx1LG_YYdHF1Nce06GWaKnh068MGhnXId2g5MnTqIZr3d8Z7g-CvTMu_tgPwK8fWasnZXssOKkea2w_9C7xndHuNP_MNHGgAxBGW2O7f1fMV-rZDdKVJNii4fZM7thXLtXz9FFA", "markAsReadToken": "o-BDtlFM8Omh65Al88ajzAPhEj60VA33oJCw-7nLCYUXfaAaZQGhRyMVsY7qe9YJXuP-trLqvQuOYIqA2o2wwvnI_4tE8soW9pCrduV8K3FySOYS9AsHYGK5czwTTPJSmxdqkM9MvJNuWDAo4CTPuz1zbFJhZq1PjE61FWwrRTJwizyJeSG4oM05VUdnHuznYr78N1UjN43ZdJK93TzFow"}	2026-02-06 13:10:11.487+00	\N	2026-02-06 13:10:12.172+00	Udd8509f64470983b40e8e3775774b7b9	แอมแปมนะจ๊ะ	https://sprofile.line-scdn.net/0hkvwtlGJ5NFlaDSA0k_hKJipdNzN5fG1Lf2goamoNbGs1OScPfj8uOWwEOGtvNSYNdmp_OGwLbjtWHkM_RFvIbV09aWhmNXIIcGJ_ug
c5720572-f8b1-4e5f-b282-a13befc6844d	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	อ่านแล้ว	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 13:10:15.835+00	2026-02-06 13:10:15.835+00	\N	\N	\N
8fd28971-4bac-4094-b3c0-c4804ee5e1d7	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	อ่ะ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-06 13:10:16.475+00	2026-02-06 13:10:16.475+00	\N	\N	\N
e18ccf93-19c1-4f0a-b9f0-17de2c7c01d9	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	image	[รูปภาพ]	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	{"imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/admin-images/1770384368393-1.png"}	\N	2026-02-06 13:26:09.198+00	2026-02-06 13:26:09.198+00	\N	\N	\N
4daa3c56-c29f-4b60-97e6-74b9f3ca3cbb	3dd97414-b1a7-4c2c-8130-47c58799df01	599936224982991274	incoming	text	เช็คนัำส้มจูลซ์ สาขางามวงศ์วาน\n7/2/69\n50 ขวด\nหมดอายุ 13/2/69	\N	{"id": "599936224982991274", "text": "เช็คนัำส้มจูลซ์ สาขางามวงศ์วาน\\n7/2/69\\n50 ขวด\\nหมดอายุ 13/2/69", "type": "text", "quoteToken": "9pba2w6g6PFHj1i6uDCESVcY5ILKVX_Ggmm1i3sdM14ESGBGqS-MdB6qq4l_C3sbkWZTRPprfnozuH6xl8WeeFTt4yFdwJQHzdoMWea7kZcyJQkeohftevXIdiEYGmOXFhCYiAIzOG_3I5acJA9vOQ", "markAsReadToken": "6ymMpnftA4d_0zfKovuuYkUN3ca2Fw7JS-sngplqL921c36A3kKFWNFiqv_lOtwj4WFtqFrjNXin_2z-R43CVbKrNLpS3k6z7MtszlC5TYUHjO1bz853I1peV7gyv67BJulhV0k7n36U1PxxGs8TsBzP8UkbekCmBXRfbxKsGkV6DW99HOfKx8yEst5KMBiD21KYP1qdHN7nYL7vEAGyjQ"}	2026-02-06 23:39:19.797+00	\N	2026-02-06 23:39:21.697+00	U08fc30ee36a9fc6856fc37589c9e63f4	เพื่อนเรียกดีน่ากาบา	https://sprofile.line-scdn.net/0hPW-ayFFhD3gAGBGqZ4txRnBIDBIjaVZqfy5CGjAQWEk7eE15eX1DTGVMUBhqekF5JSkUHWIZAUsiVRpseCIoflJOFQ95bwFrcQxHYDUEAihKYwxGaSoiG0x2I0E9NE1sKBBBcFRHBhx7bQNOLXg7WCkEUE16WDxnTE9jLgUqYftvGngtLX9IHzIeWEy4
d0ae3e68-16d1-4ccf-9978-92fffbe38ac2	48534315-d9d6-4c70-aaac-8ee83b2dec28	599944700296429620	incoming	text	 สั่งน้ำส้ม 8 ขวดค่ะ	\N	{"id": "599944700296429620", "text": " สั่งน้ำส้ม 8 ขวดค่ะ", "type": "text", "quoteToken": "jF-t5Cij8zAqSYTY5R09np9j6irCg8d2ke4Oz81E-UbNkGqmD2DiVQEhxrfnFcQQLC0RXAUz1y7uDJm4bedOWggzvKgyyAxC5GlidNOtWmkFQw5_1YrIvhqlAQV0T4aZocwetIPQYhc76tEDv1VVvg", "markAsReadToken": "oiIHQab7CQuV1qUCN19kcCSc4Be3IJnpxETUeEXD0fSB3l0u0BjbXfh0f6R0vYpCNIe82RhRn-31ZvYlAkHyP7DV0ofIcsNSvuyXdrUfx2k5UmIPjqreVM0Fd0cTIwAaMT9rVFvtGxS_8hrek8R7CSMR3HF7026mDd8mXS-y56AHimVZGTjLzdJW4uFHE3VMGt4aZPJl7UK0jXTo-Mx8Sg"}	2026-02-07 01:03:31.468+00	\N	2026-02-07 01:03:32.95+00	U4c9f641c52186e21acf066b5c97ff4df	-toey	https://sprofile.line-scdn.net/0h6DDhAhq5aWtpEXfaHWkXVRlBagFKYDB5QHYiXVkQNwwEJiY5RXUkCFgVZwtRcnw9ECQnCQgXMV1LKGs1MXcveQBYVjw1cVE7NwkhSgBKSzJVIytYJy9IdAJxMzlTIic0ATxwdQoRUgsoRituQC1GZDRqQlkpXyY_TEYFPWwjB-gGEx4-RHYuDFsXPl_R
359bbaad-d5cd-48f0-9172-a0142bb23133	48534315-d9d6-4c70-aaac-8ee83b2dec28	599944762253901966	incoming	text	ส่งโกดัง v-festa ค่ะ	\N	{"id": "599944762253901966", "text": "ส่งโกดัง v-festa ค่ะ", "type": "text", "quoteToken": "0jYZiMF67CiMAgutzayjbpbZPJiQnM7n-h_ZNjQyBYr8T2guU6yV4HMIqDzSXYxQugPgjny4bIKw6Qfh9KdfCqXwK2RCOladPwryMwC8rHeY7UyyPCjqATMWRigxdBP7KscHHYbtro3gO5FWQnP-3Q", "markAsReadToken": "9bNnl8Vtup3R4NaQTHpEa_A4M0g6BNBxOkodtpRaz2Lc7odKFQzKMOsgvf4NQdrsgdO-HYVMc727kcHkz5FBrhd57dJ3Nll1ULOvJzAOQc7bqHixgbEYO-a7FVzu_8gjKS-ZRWxbE0ug3TU5kho0IHLcAsvBbR-x-Y-HTdzZVvEs-vsj88K5tHy7zTXealPMAVaR_2CRJU4BQ1TYNjnZzw"}	2026-02-07 01:04:08.462+00	\N	2026-02-07 01:04:09.712+00	U4c9f641c52186e21acf066b5c97ff4df	-toey	https://sprofile.line-scdn.net/0h6DDhAhq5aWtpEXfaHWkXVRlBagFKYDB5QHYiXVkQNwwEJiY5RXUkCFgVZwtRcnw9ECQnCQgXMV1LKGs1MXcveQBYVjw1cVE7NwkhSgBKSzJVIytYJy9IdAJxMzlTIic0ATxwdQoRUgsoRituQC1GZDRqQlkpXyY_TEYFPWwjB-gGEx4-RHYuDFsXPl_R
8ccfc193-7e5f-4848-806d-aabec33ac29b	48534315-d9d6-4c70-aaac-8ee83b2dec28	599956168177090703	incoming	text	เรียบร้อยค่ะ	\N	{"id": "599956168177090703", "text": "เรียบร้อยค่ะ", "type": "text", "quoteToken": "ESKjT3Eecwg_HDI_06Kp_5k9nUVN7miED2uHNskXyvOq1VGqco9eiz6H0JX0oMQOwa3r9iQ_fGdZM7A14jZUubDWqiUG-c7XE8mEC6p6E0-SOkLfE2t73yk_t95sq6vmd84sVjmSvedPKC-1p3Aeaw", "markAsReadToken": "WbfpVmsOVp9U0TmFHhx4dzdQhd5qw8rsS_heTLddkKL7Z1QYKETUMIFWRt-zWeItw5sQ417_zafNgX9jxTROo4qdweSgcdVhKoATkDDkg_8IrnVxlASD9rrL-h2RAK9jy3S1IrJFgbm_tQcAHuJKxn7WfNk_EDun1Y6PGV9c1uZ-Old_q0lTVHGEQ_5h3lypjhv4txCyqwm1mExM1af1bQ"}	2026-02-07 02:57:26.987+00	\N	2026-02-07 02:57:29.903+00	U4c9f641c52186e21acf066b5c97ff4df	-toey	https://sprofile.line-scdn.net/0h6DDhAhq5aWtpEXfaHWkXVRlBagFKYDB5QHYiXVkQNwwEJiY5RXUkCFgVZwtRcnw9ECQnCQgXMV1LKGs1MXcveQBYVjw1cVE7NwkhSgBKSzJVIytYJy9IdAJxMzlTIic0ATxwdQoRUgsoRituQC1GZDRqQlkpXyY_TEYFPWwjB-gGEx4-RHYuDFsXPl_R
54ce71e4-4da2-4088-9d76-37dd1d516e59	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	599964960328253820	incoming	text	น้ำส้มมาส่ง 10 ขวดค่ะ 	\N	{"id": "599964960328253820", "text": "น้ำส้มมาส่ง 10 ขวดค่ะ ", "type": "text", "quoteToken": "GM104OkrREK2HGc5IyVIHqT0G1DyXaz8joaSM1_xgk2NBHm9Uhnd-xyEzm3EZUJ_WHV9Mw6JhwCziEUIOf6bpIurI_nFhsrHXtW4TFGh17ll99VpVE5AoLlR1MZSu9zshWXbjWftCphiA3CnRyc1WA", "markAsReadToken": "fhn8XeNp5AomI7mol1xhw7RVuOQGMMZO0hmBz7e_tQtXl-VHZQDnK0gXny-swKR9y8ArjEpq7ZGhxqXRPI9XNzM04f-8QKRm9PHCSJbjsRWU_c5RrPFyRntVnxC_d60_kygDcsxtRCXX9TWXI74p1u2n_QEHKs_u2syHzIGNnZ3lmKquLFHX5P-lQvzvhLrn3pjgtyMoB4aKqjT6QoeZZw"}	2026-02-07 04:24:47.536+00	\N	2026-02-07 04:24:50.345+00	U4ddc32e139a6ed8679bd1b9920092889	โจ๊กสามย่าน คลองขวาง	https://sprofile.line-scdn.net/0h6V_tDd8haXlyDX7nvIcXBgJdahNRfDBrDmt2SEMKMUAdOCx_CWt1FhJaMRlIanovDjkjG08IMB1-Hh4fbFuVTXU9NEhONS8oWGIimg
0e88dcc0-02d3-46dc-b3d8-77ef6da8b586	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	599964969152282648	incoming	image	[รูปภาพ]	\N	{"id": "599964969152282648", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/599964969152282648.jpg", "quoteToken": "u9eSUbnhJJUzyApK8Rg0nlP25LFFkHO6uLu4_Dp5tjRxOglzqeuGMMNlRhyVh6VqKjFyhx2HRPtQ5Mhkv7k1yaHjCe50FBOo1HzRKNzx87OJ_ci_3FAOKJ0LsUX8XqBdoiwKU8wfieWz1lWTu9Ezyw", "contentProvider": {"type": "line"}, "markAsReadToken": "EQUwKMbJxN4cLEk1pLJz3f9jBImg_AIkcQxCIJZxtI2a26jeC2tIAkm1aeIcW7wFqK6KuLSzIw_cXFg1BEAGRiC1VFG4GuauyYCRXBXY6WTofebSLIlz0PW3eUCsiQCOp6Fo08ioC4PsLPKCXubRTFWhUy7nZdFxig_R7AdrTXArcDBuDBvFQ4nVr8WkyVDsi5cy1IE_dmk-NhN3NBFbAA"}	2026-02-07 04:24:53.026+00	\N	2026-02-07 04:24:55.159+00	U4ddc32e139a6ed8679bd1b9920092889	โจ๊กสามย่าน คลองขวาง	https://sprofile.line-scdn.net/0h6V_tDd8haXlyDX7nvIcXBgJdahNRfDBrDmt2SEMKMUAdOCx_CWt1FhJaMRlIanovDjkjG08IMB1-Hh4fbFuVTXU9NEhONS8oWGIimg
6170e8b4-1f76-4550-9ea0-f11ec272c4e3	adf0bacb-8ab5-4df8-bda7-1390c9283a9f	599965704984199445	incoming	text	สั่งน้ำส้มจ้า	\N	{"id": "599965704984199445", "text": "สั่งน้ำส้มจ้า", "type": "text", "quoteToken": "2-mpEdV3u9IlBLHlNxJNrMAMIXjj797djgpEgQyl5h2JdR8Ua5fZRszjHOBj8GGDgn5yinpLMSr9mjOwe_BUWSydnvZQG4m4U6mUhKKRtZbJl_aSCuo-WkuKuUvSIFKZhuAuP3sQElNfv3bzmhdWjQ", "markAsReadToken": "moT9pxq2LAlk47aSTZe1fv2qOEHfpfXteiZCnxMpiev2AWj9uRF-ySv04Rl_5PSrImktprI3WJCqLmSo1-irhr7apkax6AJKQd_nAystXXsXYYuDyigV5tWMgEz3bJ2HQ4eRiGHYNfOJeOZYCNfbtUmxKCbvRpKl1PKsWV6JDWqJSeAY5k3K5Fg5mB8B5915GIziOOKIvHnoCgjDTFV2wQ"}	2026-02-07 04:32:11.416+00	\N	2026-02-07 04:32:13.99+00	Ud3a03bac016cb2b4f74ee3616a2d39f6	🐳Jitpadee🐳(ตุ๊ก)6395	https://sprofile.line-scdn.net/0h58JBCWRKahdnO3reGyQUaBdraX1ESjMFGVogc1JvYyReCn1FQ1pyJFAyPSBeAi9HT1wkJQE5NS9rKB1xeW2WI2ALNyZbAyxGTVQh9A
c003fed7-a274-4b67-8f88-1d4218c61d08	adf0bacb-8ab5-4df8-bda7-1390c9283a9f	599966023332397110	incoming	text	มีแบบไหนบ้าง	\N	{"id": "599966023332397110", "text": "มีแบบไหนบ้าง", "type": "text", "quoteToken": "3LkP-a0qp_URjRbskVJzOkkOqyVh4KFUzR4y0kp6k4uOCPRHfGEBRIkjZfmrPB0sLsorNx0vTf6aCZcHTs35_67VvyM017mByVP_Liv4F9D0EYCvOUqbY09e8EQ8cROOwKit_gEHQNhFfwly4GYr6w", "markAsReadToken": "OVvmGan1tmKAFBayna26pqdgo_Ervhso600DHL066gxV3SS0W-6fwOKR3sGP-N_K6OWkuk6D9u2Qor9vQI9uO0mlX0_VEMqd76uQ0fsUMFx5EFRm9TJQwbdL3mg5dZ98ShjhmHVcSDGKJ6sKiyHkWwXC1WoEfxP6MIW0VTZll0qsMg-FyB2Cp5ExkS2Yl-7FOzjNm6DqaS9OgkZQQxlyOw"}	2026-02-07 04:35:21.036+00	\N	2026-02-07 04:35:22.271+00	Ud3a03bac016cb2b4f74ee3616a2d39f6	🐳Jitpadee🐳(ตุ๊ก)6395	https://sprofile.line-scdn.net/0h58JBCWRKahdnO3reGyQUaBdraX1ESjMFGVogc1JvYyReCn1FQ1pyJFAyPSBeAi9HT1wkJQE5NS9rKB1xeW2WI2ALNyZbAyxGTVQh9A
70efa45b-6761-47f5-ab2f-50d87d149a68	adf0bacb-8ab5-4df8-bda7-1390c9283a9f	599966083226534349	incoming	text	วันนั้นคุยกับน้องคนหนึ่งไปแล้ว แต่หาไม่เจอ	\N	{"id": "599966083226534349", "text": "วันนั้นคุยกับน้องคนหนึ่งไปแล้ว แต่หาไม่เจอ", "type": "text", "quoteToken": "O1YFNidr2RBo2WZFmuWsiryf-9K39r4rn4OyYCR86aaTJUvf-IctH4Wr2Vk2TTLNpnR_Gcb1s-A2FD5fa2uL2cAyASfGnx-2wihImadF7HNn5VsuTj6M498enDEuMOG-_vTaT-6FkfwjTPE3B6US2w", "markAsReadToken": "F6hXZpwI-fXLUI-3ml3ZhQXwLm-Sj5_qnH7ifj-AfZ_t-NGFBx7ypSNa0N-ygcGIWQo4ppLwyzw81Q2yOJF2J3nap3L6PAq6t7kCeV4ze15HsfflxfiLY9Gqq31c3PBjnLXMr3XWhm6VF-_RD7kSc8ZvhDxPYbd0ZOuROwN4TOUJoRLOK792-_ghRY49FSXnglxnSG59GQEDTYsqfoAB4w"}	2026-02-07 04:35:56.872+00	\N	2026-02-07 04:35:57.807+00	Ud3a03bac016cb2b4f74ee3616a2d39f6	🐳Jitpadee🐳(ตุ๊ก)6395	https://sprofile.line-scdn.net/0h58JBCWRKahdnO3reGyQUaBdraX1ESjMFGVogc1JvYyReCn1FQ1pyJFAyPSBeAi9HT1wkJQE5NS9rKB1xeW2WI2ALNyZbAyxGTVQh9A
7fb39e75-11ad-4869-8656-1fca68f48367	adf0bacb-8ab5-4df8-bda7-1390c9283a9f	599966366594498766	incoming	text	เล็ก 40 ใหญ่ 3 ได้ไหม	\N	{"id": "599966366594498766", "text": "เล็ก 40 ใหญ่ 3 ได้ไหม", "type": "text", "quoteToken": "BnBJt3S1-bZFYYRHYwjk8GkY-PXnqss_Li0g97b5iw3qqEHNNCzUsmSamifYBXAi4mB3tqBTOWe99c9OcRL7UKn8V8NF4dJYOc9qu5X8k7PA_dmIYzG_k9RMYl3X4keuBBSPEAuVQnKFjzEMsjfYBg", "markAsReadToken": "1bcLjuaflV7cMXn9goWGTuevssiwAVF_q9ATZafGJSZOsiUFuoaOj4NbIIeQBkaeBmPDQm-y7F92KnVGbiP2xXmT3-BOWCq1N2QY2vxj54jE660l9qxHbRLlYLw5ncLjjmKNJaFuvQVmRqArnbIb8ot1YLHirSgGd8x2niebf_lHae6gY1EAMG6d6_4YGfdl7a1NFjCUysflPo-uQCnUWQ"}	2026-02-07 04:38:45.593+00	\N	2026-02-07 04:38:46.803+00	Ud3a03bac016cb2b4f74ee3616a2d39f6	🐳Jitpadee🐳(ตุ๊ก)6395	https://sprofile.line-scdn.net/0h58JBCWRKahdnO3reGyQUaBdraX1ESjMFGVogc1JvYyReCn1FQ1pyJFAyPSBeAi9HT1wkJQE5NS9rKB1xeW2WI2ALNyZbAyxGTVQh9A
b7d13851-da98-405c-a72c-c4d8e83fd197	adf0bacb-8ab5-4df8-bda7-1390c9283a9f	599966892677136920	incoming	text	จันทบุรีค่ะ	\N	{"id": "599966892677136920", "text": "จันทบุรีค่ะ", "type": "text", "quoteToken": "KrXg-jSq478FuXaUYLOz2ByKLBWl5YmfRObVRVARHwxVvIRq8Ty4faLbOLScdPp1-mA40cVrR0rEQIw52dGOGiEpR_YlW98H-rnOyJPyIbyu-l0yrAQI0K9JcTdvWxb2efbu2FB4fmxQa8m7eCg-ig", "markAsReadToken": "_mXCe5CV3abySENpzm14X6xxnKvCNGpVh7r2gzvoG-PZwHlS5cc0MK_X5Ki2_OtrVuW-nOCDV0cUnnAoOxK4bOq3vpqvW_MfIoqT06cPjDWlGT6uT_NmSztFG3o24NDFVMT7nfKtF7bDakxwEUamy1YMw3WrAeesXjRzXcTeOEdh6mo2p-mA-ELDqJXfcvg5iB_xT7L9pcyXvzq53XZSkA"}	2026-02-07 04:43:59.36+00	\N	2026-02-07 04:44:01.854+00	Ud3a03bac016cb2b4f74ee3616a2d39f6	🐳Jitpadee🐳(ตุ๊ก)6395	https://sprofile.line-scdn.net/0h58JBCWRKahdnO3reGyQUaBdraX1ESjMFGVogc1JvYyReCn1FQ1pyJFAyPSBeAi9HT1wkJQE5NS9rKB1xeW2WI2ALNyZbAyxGTVQh9A
bb387232-be64-40bb-a1c2-eeb4310c7f50	adf0bacb-8ab5-4df8-bda7-1390c9283a9f	599967125327314950	incoming	text	ค่ะ	\N	{"id": "599967125327314950", "text": "ค่ะ", "type": "text", "quoteToken": "fzwQB8InLeeCho5t5DAriSTZPgZJst9KYdZkh6_-rfZrJwvaPtEH5cr4eAiNP1LXA9QtT1q-JUz3dLvKOsC0U7c4tCTPq_l0U_trziJSmJmeWJcL8Sx_RH2sEZ4FGHAM04E97XX8Kl02lJbS0CYlZQ", "markAsReadToken": "Qr-6Z1G_pytXcGFFVBhObdcU5Sjc1zilM_ldLJytKL5qRM_XObdjVX0VBXpEjgjP4On_gA27VeVt1on4YvSdCmYvDCdReknw1mZiBFP1YAfRuAgimA8GW9HcGhYPTKgEnWj6lHl73mST2nXeD1eGYEe3MyQGjCY9Xrz9o0s--TEZtVLlzktcQ_SJm8-5Dg2oN-Ebes7VoRqVdzCPzjDFMg"}	2026-02-07 04:46:18.013+00	\N	2026-02-07 04:46:19.261+00	Ud3a03bac016cb2b4f74ee3616a2d39f6	🐳Jitpadee🐳(ตุ๊ก)6395	https://sprofile.line-scdn.net/0h58JBCWRKahdnO3reGyQUaBdraX1ESjMFGVogc1JvYyReCn1FQ1pyJFAyPSBeAi9HT1wkJQE5NS9rKB1xeW2WI2ALNyZbAyxGTVQh9A
b604763b-50b2-48ef-84d6-766b375e45a8	adf0bacb-8ab5-4df8-bda7-1390c9283a9f	599967286119891421	incoming	text	จิตพดี ศิริโสภณ 39/38 หมู่ 7 ตำบลชากไทย อ.เขาคิชฌกูฏ จ.จันทบุรี 22210 โทร.0631496914	\N	{"id": "599967286119891421", "text": "จิตพดี ศิริโสภณ 39/38 หมู่ 7 ตำบลชากไทย อ.เขาคิชฌกูฏ จ.จันทบุรี 22210 โทร.0631496914", "type": "text", "quoteToken": "OJZXemydbS6FJT5x40NYU7Tx-2baEZgRQ2qOiIAfOWoxJujqxXT8GNXyuo-3VwoM5AF_tLqOZrNPAeWq2iLdOlNA_0NQYTkj5LabixeWSJkFDSfKmDOiNMbCMms6gnKbp4ahu1H9Xkj_S4qdQqPrKA", "markAsReadToken": "7EqwWwZIj10jKJHNtZMP07SvEMjlDXd2y9w_HmJVGhFfQ8ErZQFwKyMusF6lSaPnGW9SM_56rDgneNY2tHwYSGmrQHRXmnpvjzFylDLktd6HYaqQcvdeSr-YAM-sbiEzEco_zZQ2hbk47SRl6_QRpTj3MX9cFD3bHgY0waW9DIN8loNJ36qRn7D74TRDLyOhln9_qSaDnVfANSBbWKj0xA"}	2026-02-07 04:47:53.672+00	\N	2026-02-07 04:47:54.55+00	Ud3a03bac016cb2b4f74ee3616a2d39f6	🐳Jitpadee🐳(ตุ๊ก)6395	https://sprofile.line-scdn.net/0h58JBCWRKahdnO3reGyQUaBdraX1ESjMFGVogc1JvYyReCn1FQ1pyJFAyPSBeAi9HT1wkJQE5NS9rKB1xeW2WI2ALNyZbAyxGTVQh9A
16ae700b-b0dc-4e64-9568-bf39a313e571	adf0bacb-8ab5-4df8-bda7-1390c9283a9f	599967322341376225	incoming	text	มีป้ายโฆษณา มาด้วยข่ายไหมค่ะ	\N	{"id": "599967322341376225", "text": "มีป้ายโฆษณา มาด้วยข่ายไหมค่ะ", "type": "text", "quoteToken": "HflF9MMUUdxaiz19qLDA8l8natJYb7ZQL91iCqACXvMNH2Ksu66sI1Bb3QDSrRXdnNqFL-5w29rFJPs54Q4H1TsHord2CVfju9zacQX30NaKpSL6uyWcEKv9Ejyi0FOiYkTbBb3lQ214WBInjb7n8w", "markAsReadToken": "F8PaT1IyWkaFQVcSCS9Nik1aRAiFPbIvTvEP5UvcWp7Qit6Ch77TyAw7_ssMCbouNsJ9bk34N41nVZv3UODzaAhTmzp1P-EjYr_tXjoqmAVFP6kn00RLEByV7KfTULZWoX3NWwsJqMv_iWD5P9pu1GPEiCyvUYSmcsS9tcJHZj-nMnx9Jqi-4cuZknbfhs25ZPUofgrTYz_3TxRXK1HDHQ"}	2026-02-07 04:48:15.332+00	\N	2026-02-07 04:48:16.102+00	Ud3a03bac016cb2b4f74ee3616a2d39f6	🐳Jitpadee🐳(ตุ๊ก)6395	https://sprofile.line-scdn.net/0h58JBCWRKahdnO3reGyQUaBdraX1ESjMFGVogc1JvYyReCn1FQ1pyJFAyPSBeAi9HT1wkJQE5NS9rKB1xeW2WI2ALNyZbAyxGTVQh9A
23209549-a38b-4583-bfdc-8e91e5b8bd12	adf0bacb-8ab5-4df8-bda7-1390c9283a9f	599967350040559915	incoming	text	ส่งได้เลยค่ะ	\N	{"id": "599967350040559915", "text": "ส่งได้เลยค่ะ", "type": "text", "quoteToken": "uVzBsKdeSTP-TnlVzLfudiOCbzFQvuRqzTDF6pdioNNlCwhkn22aJjpQWpln5-QNKaTZk_sVzeI02l8kiihz4BdXMq5cwrzRKc3yVfFD0CO1O2LZJNNXgMFPHj6MBD5mfkvqMhSjWDBZtRcedvFGgA", "markAsReadToken": "f74_3Y58Cubc7JdWIklICzmeYrRS9xVEbIWTyYkXoxjItE8wnxoLJKCRrLEh4uEjEU9kwUmUSfJEflHEHjRfLQrEMjZdQ56f3s-ktAd06MCl3F7sTkFc9lNnOF2DAhPalMgy0ZJy96bii1krsHyRY5uGDNDOw9N6vw4ZmfCQgcAe2jEGaqSZ_Q-inJzPFNecZEWPl6B231kekjnUWHdeyA"}	2026-02-07 04:48:31.799+00	\N	2026-02-07 04:48:32.754+00	Ud3a03bac016cb2b4f74ee3616a2d39f6	🐳Jitpadee🐳(ตุ๊ก)6395	https://sprofile.line-scdn.net/0h58JBCWRKahdnO3reGyQUaBdraX1ESjMFGVogc1JvYyReCn1FQ1pyJFAyPSBeAi9HT1wkJQE5NS9rKB1xeW2WI2ALNyZbAyxGTVQh9A
9ae75550-c832-4804-a600-87b54745d716	adf0bacb-8ab5-4df8-bda7-1390c9283a9f	599967393662107874	incoming	text	หน้าร้านมีไหม	\N	{"id": "599967393662107874", "text": "หน้าร้านมีไหม", "type": "text", "quoteToken": "7abGvyBSN8Ua6dinvFX7y1tXgvcaxdj49osArZxqyhpSGHhuC6qVwXVwPbtbwlV6-B-4aQsQatlojI58yC92_CVKB9on73oCdTat-nqj3ilrteamhF-x_6mqqEvmxACmUX9LUEB1Yck8T_V-R1n8FA", "markAsReadToken": "vzMoI8roO7qTGkKOfWY8ISsI8xQ_upnRp3H6NqbOJXDv3crLDw_U663ApzatNqND3-tFqqZ8MaUTuu3nYujVuaSjufBgzp-J-x6DNEtpDwQ4VqDDYpopdu5thEfSNiM2RE98kJVixjtG4XMItpy_32aUm8o6QFCczyGdHwyq0cl404X43FLeJlZG2h4kfHC8zBMz2vSduOYjtG5mUSM0_A"}	2026-02-07 04:48:57.854+00	\N	2026-02-07 04:48:58.52+00	Ud3a03bac016cb2b4f74ee3616a2d39f6	🐳Jitpadee🐳(ตุ๊ก)6395	https://sprofile.line-scdn.net/0h58JBCWRKahdnO3reGyQUaBdraX1ESjMFGVogc1JvYyReCn1FQ1pyJFAyPSBeAi9HT1wkJQE5NS9rKB1xeW2WI2ALNyZbAyxGTVQh9A
720c52de-31e0-4010-aefe-1289e6415817	adf0bacb-8ab5-4df8-bda7-1390c9283a9f	599967861242331639	incoming	text	เล็ก 40 ได้ไหม ใหญ่ 3	\N	{"id": "599967861242331639", "text": "เล็ก 40 ได้ไหม ใหญ่ 3", "type": "text", "quoteToken": "E2LJ9x6obBZJcpZXEl189jMgYlZl47X_jHGk_-WGpKyEy68Tcp05xvXKPQDpZB9tXslB-nNER5N1xrTNkr7S1_6Bsurm_I2riy8E75fourUvje1UjXbNBmTDxiJrawjndBFH0HkpY_4NRIgHw4Aj3w", "markAsReadToken": "MMPxcDGu3smd1HCbHaNbk4yoIE4MRQUxQAtwyjuglj7ow1Vguf8wJHh6n7RwCSMDi6nADydNacAuZivi3mDe1lQYogYmEcL_MHR0Nx_MMtuOX-t4ysOmw5I5Gwios_4QtXZ0abe7zRynpzyra7dJfRu7xl5VyiCkH1TEDMKwz5YoQwK8tZWrXVALlLJcNvpwrMdH7y-u0J9MaLz9u4gYHA"}	2026-02-07 04:53:36.541+00	\N	2026-02-07 04:53:37.935+00	Ud3a03bac016cb2b4f74ee3616a2d39f6	🐳Jitpadee🐳(ตุ๊ก)6395	https://sprofile.line-scdn.net/0h58JBCWRKahdnO3reGyQUaBdraX1ESjMFGVogc1JvYyReCn1FQ1pyJFAyPSBeAi9HT1wkJQE5NS9rKB1xeW2WI2ALNyZbAyxGTVQh9A
087b261a-5de2-4b29-8448-f37b379835b5	adf0bacb-8ab5-4df8-bda7-1390c9283a9f	599967890082628066	incoming	text	กลัวขายไม่ทันค่ะ	\N	{"id": "599967890082628066", "text": "กลัวขายไม่ทันค่ะ", "type": "text", "quoteToken": "dGibSZVTpbmqs4HzN350-giq1DLvAbwNC_JpXafqNBltQbREfk135L_XKB44C9dg0EXaO7h6-BLJWVzuTcVkYOHUi-jfoJ5uwN-Kq3FEQiAlTkjd3V83xRHL2g_JRnUQlkBAou9kUsg5QxNCE1mfRw", "markAsReadToken": "rAEHaSuWyqJDFMY8myzxo2Dk4ybP-Zo4cjCJsck5lCCe61V-J4UiLBXwCDm8NPSJreQiYnyoGK6Vfs5_Wa_8iUxhEX-hSH_zPcW4fz6GQWcWmOJ91FswTdwoKf0bOvkJIrF-ar4tzNZBG0khcCs6AVs1t7zWFI5E_Yxbh1OjzO8V7Js_BDg1MDKZEO_lrIfWVOJbNJu7V3nwOKErRYsa1g"}	2026-02-07 04:53:53.693+00	\N	2026-02-07 04:53:54.582+00	Ud3a03bac016cb2b4f74ee3616a2d39f6	🐳Jitpadee🐳(ตุ๊ก)6395	https://sprofile.line-scdn.net/0h58JBCWRKahdnO3reGyQUaBdraX1ESjMFGVogc1JvYyReCn1FQ1pyJFAyPSBeAi9HT1wkJQE5NS9rKB1xeW2WI2ALNyZbAyxGTVQh9A
d6c5afd5-f7ed-46d6-b161-6a03a13b24bc	adf0bacb-8ab5-4df8-bda7-1390c9283a9f	599970264981176345	incoming	text	แยกราคาให้ดูหน่อยค่ะ	\N	{"id": "599970264981176345", "text": "แยกราคาให้ดูหน่อยค่ะ", "type": "text", "quoteToken": "RMuIyk43r49Bj_4TTkiqf8h4OhDm0R78Nvz5lCk_ShGiqjrhuHKp4SNZI3_9LXBhKiggAtw6P3lJYwqeuYEmHJHU6W4hyejsAwxEtfnYaFHgJrr667mZKQFJlDmGjNmyIMlY4s1i8JTA2yMVhJM_lg", "markAsReadToken": "Zsk-A3wGO0OkPeF5gtM563rlzDUL39UEyJqLAXq1b4R91r_bViO9yDsmNuynuTicE_mt63TxAzljeEdcrvBqh-kIq0S8xeLxsI5OZOHobabk8Em5aEClS6CB96Uy_cb5-aEdlA7jC0wYy0LT3Az6Ygr9HbmcVwoUy5lKPBawbyeyXR4ORNw4F2pI1j3gK09FPWNUsszrEWSIjN--bVS2cg"}	2026-02-07 05:17:29.315+00	\N	2026-02-07 05:17:31.068+00	Ud3a03bac016cb2b4f74ee3616a2d39f6	🐳Jitpadee🐳(ตุ๊ก)6395	https://sprofile.line-scdn.net/0h58JBCWRKahdnO3reGyQUaBdraX1ESjMFGVogc1JvYyReCn1FQ1pyJFAyPSBeAi9HT1wkJQE5NS9rKB1xeW2WI2ALNyZbAyxGTVQh9A
8f425c61-7e55-49ca-868e-423bac011866	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	599970797943521809	incoming	image	[รูปภาพ]	\N	{"id": "599970797943521809", "type": "image", "imageSet": {"id": "8D5F186B6FAB49B2D730592435E2DAADE955E3DDAB60A591C1EBD54B9895007E", "index": 1, "total": 2}, "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/599970797943521809.jpg", "quoteToken": "zxToGZZB1OFFcNosYmDy5zgxF_V3YEBH58lmafZOWYZE_MrHY32J2DyuTCkb0oxHXxwDohdk4OtkCgHNms7YiMLqSDk-_JICIgFJ_YL8W-rO9jWg9ZVvCpG32XQPvqUhT52tC3LXVsUDdHFZPkgc2w", "contentProvider": {"type": "line"}, "markAsReadToken": "ifWHtK5-TduUCaWFd9BeRdkK4RC_MZ2U6lMhW2VX-yRFtB4OWwq2uYUGf3CShG_ZrV5bvNIayey6EbV5WNtOyvTaw9Vmg_etYsgtCOzT3FQlBf5Ax-wPm9QAX4ANuLSkJoSKKnUnfFvoLA9tws9UvhrQ2bmsrx5FXyLbqiS9xvgPMLGyxQjZdR-wQfVZ6d8lDsSXvgZJVKAvQo7TRqpiQA"}	2026-02-07 05:22:47.239+00	\N	2026-02-07 05:22:49.386+00	U9d32ade207a3fc6e0aab919b19338a30	โจ๊กหมูสามย่าน	https://sprofile.line-scdn.net/0h9eDlci80ZkppFXU0HAMYNRlFZSBKZD9YRHQsK1gWOHJScXVIQXt-LwtHPSlRJnZORHt7e1oTbyhlBhEsd0Oafm4lO3tVLSAbQ3otqQ
d056a12b-e53c-42cc-a59b-6497c2fcdd0d	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	599970798698496359	incoming	image	[รูปภาพ]	\N	{"id": "599970798698496359", "type": "image", "imageSet": {"id": "8D5F186B6FAB49B2D730592435E2DAADE955E3DDAB60A591C1EBD54B9895007E", "index": 2, "total": 2}, "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/599970798698496359.jpg", "quoteToken": "ajGl39ibT4hpb21Hk3RLQVnQPtee6X3zajJz8o0Zj0EDpAOyxF7J6RFLdF7u-5IjoNPBGZ6_5G-UA5Y6gnnbp8hdSA_Sgl_TWEhN6LjThRyWHrhrHUEsGuCbL22WN9mTyJkVKqPPcquQ1v77ysxhAA", "contentProvider": {"type": "line"}, "markAsReadToken": "f7D1O8ADfzSOpo6h406AmzidefdbD7zD0_9HnCfOOxAJ-C6CdVuX8yG3_VJXvBnETaSdRspazdQgVEPCjLiew9kFBWU4mRmxYN7Ymi_2iW2rBUDOOuf2VqRwZgg25k3B99bDBwUQ4O9eKzppKk1_IrNmg1S0XAURBOMyGYzZSXbL1pCQp5K3SyHBfyxK4H1Vf0d8AjXj1wlQuSh0TFphMA"}	2026-02-07 05:22:47.647+00	\N	2026-02-07 05:22:50.435+00	U9d32ade207a3fc6e0aab919b19338a30	โจ๊กหมูสามย่าน	https://sprofile.line-scdn.net/0h9eDlci80ZkppFXU0HAMYNRlFZSBKZD9YRHQsK1gWOHJScXVIQXt-LwtHPSlRJnZORHt7e1oTbyhlBhEsd0Oafm4lO3tVLSAbQ3otqQ
52485a55-7f4e-4cc4-ba17-7ed4ad06ca15	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	599970830658830975	incoming	text	อิสรภาพน้ำส้มมาส่ง 15 ขวดค่ะไม่มีบิลค่ะ	\N	{"id": "599970830658830975", "text": "อิสรภาพน้ำส้มมาส่ง 15 ขวดค่ะไม่มีบิลค่ะ", "type": "text", "quoteToken": "UzSfjAItwOPPPWzC5n3vmD0P_zwirx1_r3daiPfpx4QBNPXOZ3_-DN_P7aPdCJCCQpvDk4_HQeyqeLme8At4abm5528ubYhmtmooufhNV1l9KehFjVhr-tEkNs4k37NGqt4BvEKq7n1WkbSdjP9AHw", "markAsReadToken": "l2BnHEopT96t7RQfKrcW1X8sXslKj1e12tHd5kETFZHuTFqovlBueNLxIVUGUE1xlzRpTS6k2OmQM-1xHSgs9i33EG-sOT3ETXVepYn_3B2iz63nf-eRv_jOCay9jlcU_HULfxRaayyEmxjJN9idwdRW6BAwz1XULsFYKbLQ2hWojZuJx7c_MNuoF8rfS2W2Qt3BTD0Z3TdTporZY0yayQ"}	2026-02-07 05:23:06.468+00	\N	2026-02-07 05:23:07.343+00	U9d32ade207a3fc6e0aab919b19338a30	โจ๊กหมูสามย่าน	https://sprofile.line-scdn.net/0h9eDlci80ZkppFXU0HAMYNRlFZSBKZD9YRHQsK1gWOHJScXVIQXt-LwtHPSlRJnZORHt7e1oTbyhlBhEsd0Oafm4lO3tVLSAbQ3otqQ
e8434a19-af3b-4745-ad62-e411d00a7564	3dd97414-b1a7-4c2c-8130-47c58799df01	599996161101136079	incoming	text	   เช็คน้าส้มสาขาลาดกระบัง\n7.2.69\n\nเหลือ  =23ขวด \n\nหมดอายุ 11.2.69  	\N	{"id": "599996161101136079", "text": "   เช็คน้าส้มสาขาลาดกระบัง\\n7.2.69\\n\\nเหลือ  =23ขวด \\n\\nหมดอายุ 11.2.69  ", "type": "text", "quoteToken": "0EWHO_AACJE56luAvz8Ui0YULunl57Up-SUFiTQwRHsH-09xet-Y75QuJQZnACNKKcBV5XAAQEMFuYe3hdFE6eDn6QTGjWQ0gnEUdCLM-8B62R74p8czvovKUrXb4A9rTCn4F3eAG8r9YBZIXQjKNg", "markAsReadToken": "B3d0CrcBnwNIc3wcWfJg7Vy5Sd18uX8XQGt89BLnE0LZySURaZ54yx8DcwHlU85JUqW62HttPT8_krO2QVWd9IBJkwyQKIRTAvYr8CUlwz6kpE9H_DWS1QtYa3dwWlF06C_kD2TI9r49JaxVxBVa7skAeKvaGd5g-jKssREjY3JaYaV8zgA-pjypLO7R1CiPJFC2_nDBTbdeC32Uedu2CQ"}	2026-02-07 09:34:44.558+00	\N	2026-02-07 09:34:47.086+00	Uf3ee4beb9ef1d32d770f392d4a592373	Sai Max	https://sprofile.line-scdn.net/0hk50aizcVNBodGCsMd-xKJG1IN3A-aW0IMy0sdS9Nbn11fydJNy5_eS5PYisnLHpOMip7f3wcOCk_KDEYQgUhPnZwHlF6fQooeiwmK3tPMH1JSjUTUg0LJTRiOHp5bjI1NHk_Jk5OOmt_bQ84cBU7LnRjaFROSRBEdE9YTBgqWplyGkNPMH9zfS8eYy6l
f9160de2-3dbf-42c3-b2c5-33e679aa5704	016665ef-4285-4a5f-9a0e-03b622fd8408	599998235553038466	incoming	sticker	[สติกเกอร์]	\N	{"id": "599998235553038466", "type": "sticker", "keywords": ["hey", "Hello", "hi", "cherrycoco"], "packageId": "3", "stickerId": "242", "quoteToken": "jDAkutDB39V6HlwyyYxwQg7IpQoStjXRUpG3sEnlH0cirSVS_r05sAL_bJN3jQahFIHOHklSd-FhHP7SukIsUqbaahIkrPPqGzR_RngUHPJKtTOVOuQm3zyqJ9LsEOAir5vO8LlflD2XgHaNOoAOcw", "markAsReadToken": "65ILkReyA_YvJYDu1vqzIxbjRLrmKDlFOW1e5zxDV_naMo2pasxqWS6B-9ih4pacWOm_IGTJTlYyARprsrALM5vWx7rxc0szsUmo2TlICj0I7cwYHj7l8rV1DK-FdVYszpONTxs88FqC_rxSDTDP0pZtf2g7II5WxgX629IMTtV6ndrHMZSDg7fv-5PSEdTC_cQw7vvF382T8SlxFbFomQ", "stickerResourceType": "STATIC"}	2026-02-07 09:55:21.152+00	\N	2026-02-07 09:55:23.27+00	Ua1f783498c221e8a0b2c3764f4da0fb0	Zar Zar Kyu	https://sprofile.line-scdn.net/0hC91ZX5NGHBYcIwrSksFiaWxzH3w_UkUEYBBTcyokQHEjQ1hIY0xQcikhQnQjGl9EY0ZaInsqSicQMGtwAnXgIhsTQScgG1pHNkxX9Q
8e0f1f7f-bcbe-44e0-bf85-bbeb605d22ac	016665ef-4285-4a5f-9a0e-03b622fd8408	599998252380586224	incoming	text	🍊40	\N	{"id": "599998252380586224", "text": "🍊40", "type": "text", "quoteToken": "kQmJSKDbIFPT9gjLB1KXD2b-S_Sy6aLCjwfuSXlsp5PLmOS-m6QRXPbihliDTp5Gk-aWx1ot6k4jibar2tC29a5FrLYDalq0rUlt5LNXIQeOq6F9EQkxce6v7xvL3SXVAV5fO9ePsSXhktlaV8DFZw", "markAsReadToken": "JWf-gM4CVVyrO9i8OO44lYn6iRcv1fzz454Jrtd66BxjtPqTUXzkIfXmExYOFL86wPHx7jPJXLvExxdXZMte7B6N6YGGarCtqkubedsM-hjcNUSkSPNYi4aIsn9o9p4f2D3AAhcfzxJGs0HeHUPBHCHEDyFFYDOpG2gQC9SCQ1_YQ2vX5ITsQEDvHhsT1SDshjAMZNhjYT9VrxFD-_AVCA"}	2026-02-07 09:55:31.044+00	\N	2026-02-07 09:55:31.744+00	Ua1f783498c221e8a0b2c3764f4da0fb0	Zar Zar Kyu	https://sprofile.line-scdn.net/0hC91ZX5NGHBYcIwrSksFiaWxzH3w_UkUEYBBTcyokQHEjQ1hIY0xQcikhQnQjGl9EY0ZaInsqSicQMGtwAnXgIhsTQScgG1pHNkxX9Q
3d9645a5-f3e5-499b-abab-05f28b752621	3dd97414-b1a7-4c2c-8130-47c58799df01	600017867194237224	incoming	text	@Joolz น้ำส้มคั้นสด💯 7•2•69\nสาขาFoodie \n\nน้ำส้มมาส่ง 18ขวด \n\n\nหมดอายุ  11•2•69\n\n@Joolz น้ำส้มคั้นสด💯 	\N	{"id": "600017867194237224", "text": "@Joolz น้ำส้มคั้นสด💯 7•2•69\\nสาขาFoodie \\n\\nน้ำส้มมาส่ง 18ขวด \\n\\n\\nหมดอายุ  11•2•69\\n\\n@Joolz น้ำส้มคั้นสด💯 ", "type": "text", "quoteToken": "W_T93DCgO5ShMuB9F7dA54nRCF9P3T3nxf8vzPSZI_lY3gqRXJ3nTWmeF5_Dal_dwdXzdZ7pYND5jDKsiMtN78K8oXn6YArgKiZFBlOZiJCzYaEGO4Eo4x8sAnPsZCH7K-mqeSlgMm0uSweBvh-SVg", "markAsReadToken": "CcaRM_sXjWvPNhkL1iutNAOEXgjIO5c_YtzkKK73EB1OZCXeIq2-rcULxikfMIT77aYXtY4TK9l0UOtokzSUtxv_lx8nHYwtQe3sk5F96pUddjer4OJvI0qxuezuQL4mqVgbzPbv20YBxNDYWREBGGSg7YgXaBXS-d9OTGXXqvkk8BL1a9Xx8t2w5k7k294mqx8bUzI3pZjdplth_RgAEA"}	2026-02-07 13:10:22.426+00	\N	2026-02-07 13:10:24.548+00	U2b41bd8c78b53430ccf4f6fc8bce249d	ขาว	https://sprofile.line-scdn.net/0hAQjKoZhJHn5HMgEQ4JVgATdiHRRkQ0dsOwZVGXphSUtyUF4ha1wDGXBiE0YuUV0hbAcCHXdiQRxLIWkYWWTiSkACQ097ClgvbV1VnQ
4e6a620a-a9d7-4770-b8d0-38e96894e990	3dd97414-b1a7-4c2c-8130-47c58799df01	600081663649382776	incoming	text	เช็คนัำส้มจูลซ์ สาขางามวงศ์วาน\n8/2/69\n47 ขวด\nหมดอายุ 13/2/69	\N	{"id": "600081663649382776", "text": "เช็คนัำส้มจูลซ์ สาขางามวงศ์วาน\\n8/2/69\\n47 ขวด\\nหมดอายุ 13/2/69", "type": "text", "quoteToken": "tpc2ajRcG2ndWAWHv8ptn9vUZRwujH00irSk42F2Un9Zx2uBiWGCZ7VD7qpYuZ2vWsTrFvcF9OEOpjXXiQISrReuc9Lj7JIleFaNcp4kV5RRyD_7OHXmvnRU1si8o7SpORwjx7ip5W47MoHjdDp7Fw", "markAsReadToken": "EhMD4PoZC1gu0u_huZnECsRpQ9dY6jt0IezCQ8Y60tG2SgEBzM0Q30dx9VRflcKLhQqaMWh95kyiRtRHttK1Q7qA3uhAgJmCqjXv8sKzqNtfgqw9QQb2ITkpkkDI_rKuRdDOr8gXs1_yfU_o5xKTgXcMQ8vTZucvKhg3FGeSbfjiMwvMfBZ95GcHt6q2javHCokTWCLpZ8xy3c8_EnPCYQ"}	2026-02-07 23:44:08.065+00	\N	2026-02-07 23:44:10.274+00	U08fc30ee36a9fc6856fc37589c9e63f4	เพื่อนเรียกดีน่ากาบา	https://sprofile.line-scdn.net/0hPW-ayFFhD3gAGBGqZ4txRnBIDBIjaVZqfy5CGjAQWEk7eE15eX1DTGVMUBhqekF5JSkUHWIZAUsiVRpseCIoflJOFQ95bwFrcQxHYDUEAihKYwxGaSoiG0x2I0E9NE1sKBBBcFRHBhx7bQNOLXg7WCkEUE16WDxnTE9jLgUqYftvGngtLX9IHzIeWEy4
f33a0e57-c529-42f1-8599-8a20299e8e6a	0440dee7-1926-4810-bb67-6bd159a4829c	600102089708274109	incoming	text	น้ำส้มขวด 	\N	{"id": "600102089708274109", "text": "น้ำส้มขวด ", "type": "text", "quoteToken": "2MZy4NjJpuFw8InF7uCIG0RKvhd3BXe8-hKWsj0EKU8axVmyn84xFVgtcUdyPgD3mmTLOH1NjOV_ojrnL0uaLP56c3KMAYwfpUma793tttl35ykw_AST3IvREwoP7D5gz4EjhwyL-xiipkjaOg7BYg", "markAsReadToken": "9phzbq2bAXJ4nfd8YjYNX-RIiV0W6Vc1ocTIt033Ej4onmGohEQ3-vw7hmlrO7rlUpx_7HYj4bmQUmRRotar2lI4yzwbg-l77zet-B_LK3edtzMrfxKBsmZbK1ViXaCykFyr2tjiNjSQyFJyMYWxHBlVCM1zrk-vaM-yevYV19lOnYn1noVjRk6gGvyn_Na0Ovc1aL14my2y8Kxst_9YDA"}	2026-02-08 03:07:02.889+00	\N	2026-02-08 03:07:05.652+00	Ue55197333340e6a4c9cc114f22f3599e	♡ ʕ•́ᴥ•̀ʔ ♡	https://sprofile.line-scdn.net/0hf1Te1C09OR55HCYVq1tHIAlMOnRabWAMVX0kLEkcZyxDJH0fVXNzLRsbZylNJCpAAn0keUwYNyhbew4fVHIBPw93H3cDeSIhByw-HEhYHG87cyUwMnILBidCH3YqTwwfLioyfzR9B0UtXH48JycXLRJMEigcfiUeFUtVSHwuV50WHk5LVHt-eUsabirB
6fed7f42-083c-4b75-84a8-2886f7e44f49	0440dee7-1926-4810-bb67-6bd159a4829c	600102121283256905	incoming	text	65ขวดวันที่10กพ ค่ะ 	\N	{"id": "600102121283256905", "text": "65ขวดวันที่10กพ ค่ะ ", "type": "text", "quoteToken": "QNRAqspQeaBRHAcTtxYYy5OgJTegah6NCPPnpEeQxMJd4_JsCQmyHjSDyG_-nr7bhOASWLRwtY2Ys3XT9uE717r8OLG099YsDGW5OJF9k1OE8lGEEHkyKx83-W_Ob_yHJgt9kVEM-GcGOlqetfJUvg", "markAsReadToken": "xiwQ_mFSD0pLSMFaWF9uEHbH1qO-KkvwOGJgRtpw7ljJzpLu6UsHc2kDBWCmwkc5UO3SfksC3B-r0otufwR6PWC6FDwHeS60txRCRnglaVdj3nxqo3M5_CQfpEFWQvVTyMlBTE1pZ4XoUg1SC1Og5_fbi_r5_oTe0Y2TqnqM1QKfLooN4B7Mm8_jtUcMeOJS5JyVPSjMtfR2_58zkev36g"}	2026-02-08 03:07:21.896+00	\N	2026-02-08 03:07:22.658+00	Ue55197333340e6a4c9cc114f22f3599e	♡ ʕ•́ᴥ•̀ʔ ♡	https://sprofile.line-scdn.net/0hf1Te1C09OR55HCYVq1tHIAlMOnRabWAMVX0kLEkcZyxDJH0fVXNzLRsbZylNJCpAAn0keUwYNyhbew4fVHIBPw93H3cDeSIhByw-HEhYHG87cyUwMnILBidCH3YqTwwfLioyfzR9B0UtXH48JycXLRJMEigcfiUeFUtVSHwuV50WHk5LVHt-eUsabirB
c03667e0-cbc8-4512-b7bb-ceb9fb50146c	c2c73a33-8fc0-41cd-92ed-952bb315612f	600104354464399499	incoming	text	 **สั่งน้ำส้ม 70ขวด  ลง 2 สาขา ตามนี้คับ (ถ้ามีน้ำส้มเก่าเหลือฝากเปลี่ยนขวดใหม่ให้ด้วยนะคับ)\n       -ท่าน้ำนนท์ 35\n       -บางกรวย 35 \n       \n      \n       \n\n**น้ำส้มเก่าเหลือ -ท่าน้ำนนท์ 13 \n                           -บางกรวย 16\n                           \n                           \n                           \n\n	\N	{"id": "600104354464399499", "text": " **สั่งน้ำส้ม 70ขวด  ลง 2 สาขา ตามนี้คับ (ถ้ามีน้ำส้มเก่าเหลือฝากเปลี่ยนขวดใหม่ให้ด้วยนะคับ)\\n       -ท่าน้ำนนท์ 35\\n       -บางกรวย 35 \\n       \\n      \\n       \\n\\n**น้ำส้มเก่าเหลือ -ท่าน้ำนนท์ 13 \\n                           -บางกรวย 16\\n                           \\n                           \\n                           \\n\\n", "type": "text", "quoteToken": "npUHP9rIJL9l7r5RTCkBK5jMQU7kX5taQGwxERiEUUfy8_o6DN7oslu6zWojHMnJK_qY_OEv1iFeJeoLJhbaewdbDrbQz7HVk6rCU1SgaizGkPqUdGAOG_7UQukStm-xiApwrY5BRn-EsbLG0E92Tw", "markAsReadToken": "uoLnijSpYCqowWRQmXj7mJUgdHYjZKGpiefkCa7Jns3WV1-4d8d-VDWYhNwQRHj0rriA3Hc_XxHL7IwiKxLV2ygFVNgLdB5scnBZDTRGxsxNPtcpidZM7VtTtBoPPXPm7iM2cYAwnsYlqCuHgjd8xROYL2uDOA0CpqUwWt5Z3h6Ek3lC_nFvt7ozXOSEd5OUm-D_a3pP-Rm0OXs5PkU1gA"}	2026-02-08 03:29:32.853+00	\N	2026-02-08 03:29:35.661+00	Ue195e0d6769e1e3bd64a79fcc79ad708	Hi	https://sprofile.line-scdn.net/0hR5dbzMBLDRpJGyBy__9zZTlLDnBqalQIZnUQdSwYB3l0IxgcZHhHe3tLBC13KkhFbHhBeysbACxFCHp8V03xLk4rUCt1I0tLY3RG-Q
ff55f44b-b28b-49e0-af01-6992a5c31aaa	0440dee7-1926-4810-bb67-6bd159a4829c	600104772033053103	incoming	text	ส่งฟรีเนาะ	\N	{"id": "600104772033053103", "text": "ส่งฟรีเนาะ", "type": "text", "quoteToken": "JkwKWljs68vgxoWpUOZe-cME9vn2TYNrfB62035k7IC2fXuIC38uuabNRXhgJ6-oaU5wm7EGnkVNb5HidNK6iPDxZINGWxaTPF3bp3EHzCD9rjbwX0G2Z0-g3fSxQGX_JA-D2nYy-RSBA7FzXe21QQ", "markAsReadToken": "AHP_rpVALmeralslHs_ZpBT2gsjoLvdWkNi5U3k_MMy437lFAbolA1Kjw-KCI42LSv2RrAGkG_lDT-GzqI5Ky4i8DkHW_cSlOiUjTozwd8vjEeFOrbc-0Ql3CIpS0iAt8_RXep9WeN8HKXy1iW31z2Q4ye7Yj0o_uLvVpuUPx_wkyxMyFPyRtau20RTgF2yNdRCIliL2ljk3TbPa56Aomg"}	2026-02-08 03:33:41.839+00	\N	2026-02-08 03:33:43.533+00	Ue55197333340e6a4c9cc114f22f3599e	♡ ʕ•́ᴥ•̀ʔ ♡	https://sprofile.line-scdn.net/0hf1Te1C09OR55HCYVq1tHIAlMOnRabWAMVX0kLEkcZyxDJH0fVXNzLRsbZylNJCpAAn0keUwYNyhbew4fVHIBPw93H3cDeSIhByw-HEhYHG87cyUwMnILBidCH3YqTwwfLioyfzR9B0UtXH48JycXLRJMEigcfiUeFUtVSHwuV50WHk5LVHt-eUsabirB
f352ed6d-997e-4f25-9462-e9e5dbe11c62	0440dee7-1926-4810-bb67-6bd159a4829c	600104782837580104	incoming	text	ส่ง10.00	\N	{"id": "600104782837580104", "text": "ส่ง10.00", "type": "text", "quoteToken": "vCdr0SDR8hfRsdxdMHFGEt854Ahiwr91XW0OoTHWPSp8ipS3EFX4Tqa2lS5d8jcXtZsDtQo3d0jEPcoLSU31UWNCFGpzpX8B1JrvDnUNr_y9Ayx7KUo8-l6kpmLTaeRGQCYBo0TRGByN4z5GaBupzw", "markAsReadToken": "wNcxSJWq_GX4sWzgvRdil2l6ntOFcwv0axpnG7uM6q7iA2U5BlGhH2zT0IKWOl7SN7lRfo2_vwSbF6ucqKKYyOcTXk7lMnDPt8jSMfy6IynLMrni0E8_xKbOOmW4TPX3frATldo8uel5k_WIQc4rSjUbzeP1z9ISXlhw4vAOGTfMBNEFclfjCNmOr6TCs9B6botP7TcRvxdWz4DmNfyD9A"}	2026-02-08 03:33:48.27+00	\N	2026-02-08 03:33:49.446+00	Ue55197333340e6a4c9cc114f22f3599e	♡ ʕ•́ᴥ•̀ʔ ♡	https://sprofile.line-scdn.net/0hf1Te1C09OR55HCYVq1tHIAlMOnRabWAMVX0kLEkcZyxDJH0fVXNzLRsbZylNJCpAAn0keUwYNyhbew4fVHIBPw93H3cDeSIhByw-HEhYHG87cyUwMnILBidCH3YqTwwfLioyfzR9B0UtXH48JycXLRJMEigcfiUeFUtVSHwuV50WHk5LVHt-eUsabirB
d995defd-56ac-4356-abfc-4b3fd25232f8	0440dee7-1926-4810-bb67-6bd159a4829c	600104868450927045	incoming	sticker	[สติกเกอร์]	\N	{"id": "600104868450927045", "type": "sticker", "keywords": ["OK", "stitch", "Affirmative", "Yes", "Gotcha"], "packageId": "3524", "stickerId": "2713764", "quoteToken": "Qur1k_pawiQkLDXvlO3lQbrFCyKcnD9tT-2r5VVMfGRPsDpo_DkRn0Wr8bamSwqCkJDO4g56CcU35Z43LlBmIWmoRf68XzWO9vQVD4QRA-vuZrlOv2wUCLkDlQ4ujM_-xQHvcctaEJ6i3o8cvMkWSw", "markAsReadToken": "YAxhsgvbOlhoJI0cfyl2M-3hQKOyUrA26fYb2gNCsy08dqWmleJ5tE-oYFZs0lhq8dPaqbD93bbb6oxbFGYrp3mmmjxKoGaS88w7Txhu5tbkvmWlWodN-lgzMa18_2dmHGAkxhL0-oxSPKQ2Bk9D7NFm_s7aDSSABUkFqGmcaVKRQ8r7AE5g0uxxDyG3uMIjT8zD67SetdRHh8y_gkeU4g", "stickerResourceType": "ANIMATION"}	2026-02-08 03:34:39.217+00	\N	2026-02-08 03:34:40.419+00	Ue55197333340e6a4c9cc114f22f3599e	♡ ʕ•́ᴥ•̀ʔ ♡	https://sprofile.line-scdn.net/0hf1Te1C09OR55HCYVq1tHIAlMOnRabWAMVX0kLEkcZyxDJH0fVXNzLRsbZylNJCpAAn0keUwYNyhbew4fVHIBPw93H3cDeSIhByw-HEhYHG87cyUwMnILBidCH3YqTwwfLioyfzR9B0UtXH48JycXLRJMEigcfiUeFUtVSHwuV50WHk5LVHt-eUsabirB
eaf4946d-b682-4bf2-877e-20e3de330990	0440dee7-1926-4810-bb67-6bd159a4829c	600104929754874285	incoming	text	วันจันทร 	\N	{"id": "600104929754874285", "text": "วันจันทร ", "type": "text", "quoteToken": "wqGqYFR7rC9aiR0KKK86KJZ7ayb3F56BSjmENtLZpLWa3P_I_oB7YcdDChDfmCgMvhl5kdasxMTwUDNXCFDmIYxb6mhdoAj2D6EcxDIB5x1jeEBSpj-tPtUqSrB0-qbnaRYwuWM12RYMU7VbXDGCPg", "markAsReadToken": "npcdhi_1mYvP0evegHX2uLTuGYJGHAYNi2I_0jV00r8OeHwDx86YYbgVedqmsphpOlOK2tMRg1ZIZxdVvZ9Nvcg4tr2AWcegEd2meuBgWl63kuxOrDm04B6VLf8nK96bE93O6USF8BcJgJ7_tnqT5fg1I6TlbxSL8xY00X5WydPO3ouEhbjr1DaUz3syGCZPJGln6gk-d0wx9QqBVgj2pg"}	2026-02-08 03:35:15.822+00	\N	2026-02-08 03:35:16.549+00	Ue55197333340e6a4c9cc114f22f3599e	♡ ʕ•́ᴥ•̀ʔ ♡	https://sprofile.line-scdn.net/0hf1Te1C09OR55HCYVq1tHIAlMOnRabWAMVX0kLEkcZyxDJH0fVXNzLRsbZylNJCpAAn0keUwYNyhbew4fVHIBPw93H3cDeSIhByw-HEhYHG87cyUwMnILBidCH3YqTwwfLioyfzR9B0UtXH48JycXLRJMEigcfiUeFUtVSHwuV50WHk5LVHt-eUsabirB
fe93b0a0-07da-4817-8344-e0ef9d7b84ad	0440dee7-1926-4810-bb67-6bd159a4829c	600104935224508758	incoming	text	โอนนะคะ	\N	{"id": "600104935224508758", "text": "โอนนะคะ", "type": "text", "quoteToken": "8ucHv8DdelUKIX_Kep6SWkzJ4JUf_cECiY_uvV7H_7xCOTT7gDavKPzgvfK2z7cM_N9TIYns0kxeugWl70VsHMJsbJOwMiJCWLBO7MjixZa3miHkTpPnRgdopcyHU-J_obyN3MP_h-JnpNNotkta5A", "markAsReadToken": "ufYCewuzXfvhFAYlGnXIGKbAcRUa6VmOsi3aLgwm7gi5EjISq0qTyj6TWVYZs2m30_4SRxHxd6sXKrRQvYWFZb9ckPb-8IicpJRdpjrLy1H-w0391W_edj95QkIIuUICwkvJacSiCH6eM7E_i3-gQbknyg6msLJK-jIs6ZwI12z-ybb3hX2B8J-GS41vbgZuFufyoAemtEJ368Yl3SopHg"}	2026-02-08 03:35:18.969+00	\N	2026-02-08 03:35:19.795+00	Ue55197333340e6a4c9cc114f22f3599e	♡ ʕ•́ᴥ•̀ʔ ♡	https://sprofile.line-scdn.net/0hf1Te1C09OR55HCYVq1tHIAlMOnRabWAMVX0kLEkcZyxDJH0fVXNzLRsbZylNJCpAAn0keUwYNyhbew4fVHIBPw93H3cDeSIhByw-HEhYHG87cyUwMnILBidCH3YqTwwfLioyfzR9B0UtXH48JycXLRJMEigcfiUeFUtVSHwuV50WHk5LVHt-eUsabirB
bf9a6763-60b4-4199-8552-ae67d3f15030	9f3368af-a40a-4aa2-8591-b6081e95a6b9	600108145594859849	incoming	image	[รูปภาพ]	\N	{"id": "600108145594859849", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600108145594859849.jpg", "quoteToken": "r_6w4xJ4XxACqtOlp_O0aL94XPGJjCjWCdB6WG-NZREgqFxg-B2qW5NWMuk4b_9LPKT71zl1QWjg2T8Maf7wfsqVC-tPVAgFKVQ-Ky4NYC5ovmXwDfT9wEvGxGplLMPMbzS181aucQdoZzAMycoJAA", "contentProvider": {"type": "line"}, "markAsReadToken": "nVhqUIIpVMmRk8QP04qEhosW6WfpadTWHJQQPIuI7lT1_xmYY7dvrbRjNprz1S7pUu4njcOeMsBoCxixnKA_Fx2GEbB_MQhQhYWkqZd2jMQC9YYtv8ulkMxuf6FMk2it4uG7nPDGp-8QgTbo2kqApIXRBeN8VTX1c_EzkKcUmplew5Cf3__Xc-hD2yTNNXFK84fjJck4chxg-IieKCcyaw"}	2026-02-08 04:07:12.839+00	\N	2026-02-08 04:07:16.017+00	Ub34fb98088d21f56571b13a3d46eb254	Pichaya	https://sprofile.line-scdn.net/0hYd5KefYOBksYMhLWWd54NGhiBSE7Q19ZMlNMJStnW3l1A0dKYAdLKSo1DS8iUkgUN1YbLygxCHgUIXEtBmT6fx8CW3okCkAaMl1NqA
b765f4fc-4baf-4067-b3cd-ed16776dbd7a	667a0882-d61b-498b-b278-e6f7220b9890	600111691728683521	incoming	image	[รูปภาพ]	\N	{"id": "600111691728683521", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600111691728683521.jpg", "quoteToken": "H3A1P0VNpm9MQ_DCujbkixKsHxtFRjcdwvJ4npXn5cF-p1d088M79183u11R7L3OmdH1HTlBs9HcB-5G7suXKSzsvyHgGbaPf08Zpt6WoDDlPcJCyaWI9wOEZf_Zto_HMpL0pGE5UDzsO0qJsAb_1w", "contentProvider": {"type": "line"}, "markAsReadToken": "woP6LjH74xKv5TOF3tzjPM8KUUQ_-JUacpI4MY3kL_8NAivM4J3dZ2TKhM_H4HWHxll_8mWoQVpQLukEXmq-BYFEM2M2PrhTfxwzKn2r7wUPariSzkzfuzuEiPIilVKs_1PfregN8hy6_EfX3LmZzKOC4ufXIDyjh3GSKyAWZ_19NpX0EAknDFxXMYV-X7rlrP2lslOLXHaFe0bFh-j9Jw"}	2026-02-08 04:42:26.374+00	\N	2026-02-08 04:42:29.706+00	Uae2ee67dc7c2f2676d0524ea95070512	Johnny	https://sprofile.line-scdn.net/0hYwnCjB8ZBlhDOhgCaKN4ZjNqBTJgS19KP1VKPXQ7Wm0uDkMJalhAbH9pXmF8CkYIb1kaPXc9DDthXwVZOl07eShkMRshTQNwPFlNfzQ6DxUAaB9HaiAOZCgzAjw_YhQIKVwSPS9cLxwCCiN-PVU0ODMzLTMhQxV3FG1qDkYIaNssOHENbl1BP3E8UWz7
8a17d19c-d5d1-4933-9cf6-dac56ba17525	667a0882-d61b-498b-b278-e6f7220b9890	600111697080091122	incoming	sticker	[สติกเกอร์]	\N	{"id": "600111697080091122", "type": "sticker", "keywords": ["Thanks", "Bowing", "Apologizing", "Please", "Happy", "Yay"], "packageId": "3212", "stickerId": "1477547", "quoteToken": "ANN4WQbJbs68VkwL6xUubrkyBqUIMeSxAKJlp5AMvs_2eIQpy3-uCxwE86pETMVJ9kQgE45UFoy6wOSzt3wpDLJh7tWFFumGaqYmD96G8BguxTWeMXFF8IyPEka3q3mbB4H2b1BJa8GKrqtdraA0Lw", "markAsReadToken": "MRrjjjY8WGrgidLYcFelVkcCtk3wmuz1FKSY1KR9l34oC3mtSoPMXn2MABgtBgRyr13rLEz-fIyTASahaaxTgFGilz7tqeoxqpBj6M89HtJW22zFtAyfHYX33r2aZkEJDLKzfYpIE2CqJXUSTcJxa8_q7Jjs7fMylPpgoFIPXlJ1SUEU0bPj1FMO1kPfXqAvDV14WMM0QnmNItHreaQFmA", "stickerResourceType": "STATIC"}	2026-02-08 04:42:29.516+00	\N	2026-02-08 04:42:30.182+00	Uae2ee67dc7c2f2676d0524ea95070512	Johnny	https://sprofile.line-scdn.net/0hYwnCjB8ZBlhDOhgCaKN4ZjNqBTJgS19KP1VKPXQ7Wm0uDkMJalhAbH9pXmF8CkYIb1kaPXc9DDthXwVZOl07eShkMRshTQNwPFlNfzQ6DxUAaB9HaiAOZCgzAjw_YhQIKVwSPS9cLxwCCiN-PVU0ODMzLTMhQxV3FG1qDkYIaNssOHENbl1BP3E8UWz7
64cc417a-041c-4070-af7f-502b58a4806a	43fd6048-c134-454d-b8ab-c6d3c8d61cd7	600113347488121071	incoming	image	[รูปภาพ]	\N	{"id": "600113347488121071", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600113347488121071.jpg", "quoteToken": "fLqpiHZa18AHeySjK55160eCfpkr2u5QPuExu7RxMspM8LGDU-zKiRPJ0L_546FwWJQzI5XdyiD62foIVb26t7s0F1B2pmAja_YgBAmdBFZAU4Pzby1BDGhd9HnWgzZCsHmfYGqysHJK4_gBlKgHEQ", "contentProvider": {"type": "line"}, "markAsReadToken": "QaIA1YaPVQR72llGv5OZE7EmAbo1LJjjV1Y1ucn8KSNtjwmkvwSsa4N5bBfekJaX3CEnO-DFKsNAqDi36lWN5IIN5VrwgplM9i28oPHiENhcrOD3r5AG9kLRJorSl8BKOXIT9VbZj1ufm0Xyf1LVwrqgLIYWC0m_TJXBWeM4qcl4nHG2J6Lw8roN5uULPmxEPNe9KnEsDzsTe2otEH7Rzw"}	2026-02-08 04:58:53.284+00	\N	2026-02-08 04:58:56.558+00	U74277658abb2158034cb8a9289035c15	MayS.	https://sprofile.line-scdn.net/0hLsZPHorsE1x3KQGGobFtIwd5EDZUWEpOD0ZfaUEpGDwfSlAKXxwLbkIrS24YTFAJXEhcPUp9GGR7OmQ6aX_vaHAZTm1LEVUNXUZYvw
08358db1-7df6-4b61-bc87-2c65a6af8652	43fd6048-c134-454d-b8ab-c6d3c8d61cd7	600113355340382690	incoming	text	เร่ยบร้อยค่ะ	\N	{"id": "600113355340382690", "text": "เร่ยบร้อยค่ะ", "type": "text", "quoteToken": "cPi7RVNYWQ6t8-S2nUcyp91FNK1gnxeDdX2PwhxescEyxkPiLlZq7gbo8dE1pfD5b1uwHU-n6SvHEOYPXAqhvT6hHDaO1_Fb_gcbRz-wFKmtDdhXRiGMJ87roPILXL-AJDOvJ7tpXyoWe-vp7HY7Bg", "markAsReadToken": "drVjUIfMPPzMVpswQxdqZGbus8TI9cXjYC1kHAwXyUTkfKMhRLAJGQlB1XPJ2cZTUuTF9ieq4v5nlkAvcIWxlEkXJlpBvCLYQnYhQKcXZkUmIN78V5yj2QQYOEqjNfOT_29-7CDMOpDE8KXu_Ar5oHY6FUMkDdBdGrnUH79lhWj9ueZZzW1ti8pEsk7iro8F7D65Ktk82KCotL6JirEjwQ", "quotedMessageId": "600106167561879587"}	2026-02-08 04:58:57.881+00	\N	2026-02-08 04:58:58.767+00	U74277658abb2158034cb8a9289035c15	MayS.	https://sprofile.line-scdn.net/0hLsZPHorsE1x3KQGGobFtIwd5EDZUWEpOD0ZfaUEpGDwfSlAKXxwLbkIrS24YTFAJXEhcPUp9GGR7OmQ6aX_vaHAZTm1LEVUNXUZYvw
4fd4faf7-08f0-4398-9a6c-265bd7a6b913	b54775bf-8849-4fe2-a5bb-a532ffbfc7c3	600113940630077552	incoming	image	[รูปภาพ]	\N	{"id": "600113940630077552", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600113940630077552.jpg", "quoteToken": "-LTfH5WJMR8Fw7j64aFEhkt-hRbHW3OTD58sYRb_wU_6PvZqF-HVLYg3mdigqr3LzpSSSwf7ZzVpB1j3fnOFhDRB0QWn-u2aYwMuZB7KNlvj_SbXOTJv110ENrYt5TqOpLuIYFKpMnzRDzFZBRYyKg", "contentProvider": {"type": "line"}, "markAsReadToken": "tcGQl84YE8KL9vUS-qvBuvb6rHo3Fb0x_amreSdWdd9PXfgDVKBDcGLTUa77jmuV0j7K0kjRz4qgSm4YYyCJPQA0orRRn_jWtg9tPE_R_rysjZOx0eDCEJci-iGgE7oQ8X3wwXNPuYOpj4Kiregb0JYIk7O7GgHiraYEefXMsg_UNVAE4DsIwYttdvEF44HwFDI4bNuQSa0OTfxxAF8c-g"}	2026-02-08 05:04:47.34+00	\N	2026-02-08 05:04:50.616+00	U8d1b22a569329d7e411e25bf799af7a8	dream🍭	https://sprofile.line-scdn.net/0hD8T_zyGaGxd5JgV4WRJlKQl2GH1aV0IFUUcDdEoiQXBNEAsWBkYHd00kQiFCEQ9CVkcBdB8kFiFbcVgZAQcoCBUvBWYTbV8lNkkIcAVENS89FTpALyQiDA94H3cebDU9HTAwdBRuNWEidDkdDjssNkxDBnMcdQMmB3F3QXwUdZQWJGxCVEFccEsgTCPB
7ff34f8d-dfee-4c1b-9ea7-99e26d4604dd	b54775bf-8849-4fe2-a5bb-a532ffbfc7c3	600114039129112715	incoming	image	[รูปภาพ]	\N	{"id": "600114039129112715", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600114039129112715.jpg", "quoteToken": "Q9AFLlLKWEHld8eMjCi3MGpceuuzWZBoN1XONPbiuXdO01FPCuQciSaYSZBdiWMw5q_f4wvBHWjVMUqDuHakwbZHXidq17UgUyL40qIXXTFSZ5-46rxiTh3JE1orX8CeH3-kKyN5g5PZNhZmgugVrQ", "contentProvider": {"type": "line"}, "markAsReadToken": "q98nrZQPvZ7IIveQLAw9F6Spr205nR_59Okns8E3d51ps4mYKohh90Im1SsouWGWWbzxd15jogobAZ3OQ2rcvxXnVYHPNiCbNRh5kz4p1UtTYcLVCcpKeFi7IGQpzo-GM-NsptdCPQhGvXEb8-I6Go2ExsnL_UUkF-unme4eI-I1VEn3ZzwoXND-ZahfFjE3oQiUSevjcN3NLdXRvg7T4g"}	2026-02-08 05:05:45.846+00	\N	2026-02-08 05:05:48.254+00	U8d1b22a569329d7e411e25bf799af7a8	dream🍭	https://sprofile.line-scdn.net/0hD8T_zyGaGxd5JgV4WRJlKQl2GH1aV0IFUUcDdEoiQXBNEAsWBkYHd00kQiFCEQ9CVkcBdB8kFiFbcVgZAQcoCBUvBWYTbV8lNkkIcAVENS89FTpALyQiDA94H3cebDU9HTAwdBRuNWEidDkdDjssNkxDBnMcdQMmB3F3QXwUdZQWJGxCVEFccEsgTCPB
38fc08a4-526e-4b0a-98c2-5473aedfe5a1	b54775bf-8849-4fe2-a5bb-a532ffbfc7c3	600114049027932349	incoming	text	@Joolz น้ำส้มคั้นสด💯 ☺️☺️	\N	{"id": "600114049027932349", "text": "@Joolz น้ำส้มคั้นสด💯 ☺️☺️", "type": "text", "mention": {"mentionees": [{"type": "user", "index": 0, "isSelf": true, "length": 21, "userId": "U3a5774da47800b13765e0f348596bf2a"}]}, "quoteToken": "Z3WOoaw1ODsh6KV3QFVpFE8h9bjUhRMjN-QrbQRNJCl0kgI_iuj9z9X06PweWJHj7zd_33rwPJnFP8Low2IsjANkRHYygWLhup9zv56CsWZjhHKGMyjEfmcmRN-T_43ipTHKwbEgsZ9v8cYAMZ-oiQ", "markAsReadToken": "OEI1eJtJq7aeCDiM31cMq--luCA2V5YvCS5vyM455KM7sxQjwWoMiyZPrh0JO3ZmsdpxYT6NTYTJe1K7eCKrzr9PxxRpNjqQ5JNPQ4ww8xIhfKMXSvmNdKs_Y-UzBzoyDZ0QZaBdBVF-dURbeUkxxrhWpOnVFqiOCZN2MD9F59NjaJb63K1uULAMQYedGJcZxuvYmVTXgVTbx5XfaV2jjA"}	2026-02-08 05:05:51.197+00	\N	2026-02-08 05:05:51.974+00	U8d1b22a569329d7e411e25bf799af7a8	dream🍭	https://sprofile.line-scdn.net/0hD8T_zyGaGxd5JgV4WRJlKQl2GH1aV0IFUUcDdEoiQXBNEAsWBkYHd00kQiFCEQ9CVkcBdB8kFiFbcVgZAQcoCBUvBWYTbV8lNkkIcAVENS89FTpALyQiDA94H3cebDU9HTAwdBRuNWEidDkdDjssNkxDBnMcdQMmB3F3QXwUdZQWJGxCVEFccEsgTCPB
6b31521d-f305-46b2-86a1-d32ecab022b1	9f92d0a4-f897-4626-907c-94c2691f4952	600117311793267046	incoming	text	ผมต้องการขวด1 ลิตร 2 ขวด หาซื้อไม่ได้เลยครับ มีแต่ขวดเล็ก	\N	{"id": "600117311793267046", "text": "ผมต้องการขวด1 ลิตร 2 ขวด หาซื้อไม่ได้เลยครับ มีแต่ขวดเล็ก", "type": "text", "quoteToken": "KVQhsUPQPSgvFcJ2ZEQLxaQTuoEnNmktLF8aLI1HNNG02Ta6-b-bBrto-RCSWoErKkWi-K_JEF7Wb4NAyF79aQ8L_2_zrfk6oinWcvPCj9dYxCHzVSZa51zwvZzFjD1nT-yVFEYK1DYjsERbYYQCaA", "markAsReadToken": "P82ulqL_lrhshPWMXPNXstxCJIpFybiUHbG6AzF7JDFE1RS1WLxYCW7Y9iyIpH6DMLtfYTwBj_K4DtReI_evaB_bNwUi2Xjhtff5B9t6y04hgoLo7wdq4LfWL_GDXh52c6ToYmW7wuq2DogwngHGYD3r7jpE11Zk4ayHD2-dQzsl1XNg8K_PUdhRPl26tZuWlmfS0FkGslLV2gh7NwfTEg"}	2026-02-08 05:38:15.945+00	\N	2026-02-08 05:38:19.392+00	Uc1d672a46901399e0608900d89e3e3f3	Paik	https://sprofile.line-scdn.net/0hY_jeZjXQBnBHHBlDlA94TjdMBRpkbV9iPygZFnIeDBQuLBMgY30aEyIfWRd9LUNxP3pBRSBJXRVldyUlKnsqeCIcORdzRxpGDnkoQRBDWwF8fCFZbDEMbCF3XS4ycAlnFHMZSDdJL0UEUBF2bgEdRCJ8OUAEZUR8Y0tqJkIuaPMoHnElantBF3UaUUT_
a7588ada-b8a9-4b58-a0fd-9265155be00e	9f92d0a4-f897-4626-907c-94c2691f4952	600123718408077764	incoming	text	จะรับวันพฤหัสดีกว่าครับ พอดีไป ตจว แล้ว จริงๆ จะเอาไปด้วย เสียดายเลย	\N	{"id": "600123718408077764", "text": "จะรับวันพฤหัสดีกว่าครับ พอดีไป ตจว แล้ว จริงๆ จะเอาไปด้วย เสียดายเลย", "type": "text", "quoteToken": "UPyriG0Oh-D9UFv5VmfpVfmE7JJRajHv842hN9H6ZQEiB4lUwT9qbrjr8XdRKKrPKKfw1nOr8lmLsloYmsaemFU-Epf6GwAcQK94sm04shfh5PcQDirr8uQp6BZ7xzmKhabqviLbGfwfp-9nFxavbw", "markAsReadToken": "tWN4Q_kFJGq-PLLzSMFyNNRnJuc6cWUy4WuzWJZJm4Nmr2KKc585yC7l1qt0DcDyWjYUKqbs2QyRU-ujANOGS6WCyVJksi7UmVZ_MF4b8nlMXmtQcujcifYiILzvH-hfc2feFERYergGNJnGumm_cHlutt9UZQRi23CIb5qbIw6BwqSKrW0xPXZHZ4a-C80UvaZHrPqcHvpLV5dZgeXrBQ"}	2026-02-08 06:41:54.635+00	\N	2026-02-08 06:41:57.147+00	Uc1d672a46901399e0608900d89e3e3f3	Paik	https://sprofile.line-scdn.net/0hY_jeZjXQBnBHHBlDlA94TjdMBRpkbV9iPygZFnIeDBQuLBMgY30aEyIfWRd9LUNxP3pBRSBJXRVldyUlKnsqeCIcORdzRxpGDnkoQRBDWwF8fCFZbDEMbCF3XS4ycAlnFHMZSDdJL0UEUBF2bgEdRCJ8OUAEZUR8Y0tqJkIuaPMoHnElantBF3UaUUT_
b9328c7b-f20f-4a9d-8535-d8872e7692b1	f1a37b5a-ca06-4294-9cf6-105652dbc4c9	600124704455655944	incoming	image	[รูปภาพ]	\N	{"id": "600124704455655944", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600124704455655944.jpg", "quoteToken": "SPsRpBnasxTYCw84VymU9H3BfEgCX0k4le9TFOLoLfQpDtYQau7mAYGrGGVo1VGGRFqH2uRXdXRVgpST_yY3ele8biB_DTBpOWf6fJXCvIYxv0e-9p1ZNjoJOYWxt7M4fsvHhMlM50yI5p1jgIgMEA", "contentProvider": {"type": "line"}, "markAsReadToken": "nlbNPCrIJcJII9_m7omZRkA1hBSR19WfcwlJKfCHjzvTMFAa0px87QTGZYMNP75Au6ug527aCf9P1JfMFbH04YzDuYi6ZdgrNmjejYvpyZfm3y1235XQ02mqekPvn6K78jaoITqDdbGSq0-zVBtfRm-Iu708WK-ZSc7TfU9uvtd0yBYEG0etyfQj_lx601UILxVqQYzUrNqfAt8xMVZcrQ"}	2026-02-08 06:51:42.595+00	\N	2026-02-08 06:51:46.418+00	U65e8d2415de8ffae157515d7fac84844	Mercedes	https://sprofile.line-scdn.net/0hsRSfl7wRLH1-HwBiHAVSAg5PLxddbnVvV3tnHhsfJhhKejksUC5jE05NIE8WfT9-VXxiEkodIU5yDFsbYEnQSXkvcUxCJ2osVHBnng
3ba1a681-7b30-4656-a4f1-41cbcdaeab68	f1a37b5a-ca06-4294-9cf6-105652dbc4c9	600124726786130312	incoming	text	เจริญนคร 40 / ศาลายา 30 	\N	{"id": "600124726786130312", "text": "เจริญนคร 40 / ศาลายา 30 ", "type": "text", "quoteToken": "89cHYGFEOGbsU7vPKbwVzMOeztXnlJZT_Qg4MjxXTgEqbUunb7_9z67V0D3JY_v_lYZoUpbMnDf6bM-BxNw3AkVx1b0UwM18SB8QkJcwXSx2oAXaG9a8cbQOzAW67tPhpQdc4pCja9Ty2eFxZ1rTFw", "markAsReadToken": "-_mHck5ZL-uy6LK6jmTHwJ-sN2GdY_P7iopM0AHjmQdtWeH-WacAmJG7mBAM4_d-hshE_6VRKzWarJe0wLC9W9VCNioMrDchY3j94MC6De_6E3WMrdEs-MxoL6Vp7wodMmo6fYxt23Er4arrX8aSEIqrgRiOcPYKl03s5AeeIEiJzwW_BTovThwRpds6GD3TBpjMTG1mjUam1vOOjc9OPw"}	2026-02-08 06:51:55.646+00	\N	2026-02-08 06:51:57.043+00	U65e8d2415de8ffae157515d7fac84844	Mercedes	https://sprofile.line-scdn.net/0hsRSfl7wRLH1-HwBiHAVSAg5PLxddbnVvV3tnHhsfJhhKejksUC5jE05NIE8WfT9-VXxiEkodIU5yDFsbYEnQSXkvcUxCJ2osVHBnng
b30f7565-6d75-481c-84c0-73d9aae65574	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600125873928798549	incoming	text	น้ำส้มหมู่บ้านเหลือ 4 ขวดค่ะ	\N	{"id": "600125873928798549", "text": "น้ำส้มหมู่บ้านเหลือ 4 ขวดค่ะ", "type": "text", "quoteToken": "nFkqOERVxSt_ajCpCymLWeisC4el6OdRMe5gRHD50mHmFmJrTFDb8gGoE9VZmzOPB3cSJP9toaWp_jNeSB8v0zXyYj9gb4bhnfgZvK9l27Qi78rc-4G1gZPl3wBqhYCb9OmtWWI-nfh_YU1qvChGHQ", "markAsReadToken": "dlKOBdYN4U5QMmkBmQ_ubtIv3Ya_7f33PCZ2FWpOzi7H6IHBAkIuqOFwev32Plv-Lp0ERY_JBl8Gf07ct4PYJtv0gEQW0Z6OdMveryiqHN_Y3baG8lEYK4D3mMGyIrtyGZC6-R6mau1PgwVWML2XKkjvDg_uctgVRcj1-pXjuVKxfehJeJjQQnNC2jkQTIDsjwXr31KEggZAXLQqqzkAdg"}	2026-02-08 07:03:19.375+00	\N	2026-02-08 07:03:21.399+00	Uffe6081377ac66e360cfc7656c02a058	โจ๊กสามย่านเศรษฐกิจ	\N
964d59cc-4c3a-40df-bac4-c4635bd963e8	3128f0e1-31dc-4cec-a4b0-b9e37491690c	600542417959256123	incoming	text	ลืมเลย 	\N	{"id": "600542417959256123", "text": "ลืมเลย ", "type": "text", "quoteToken": "wbCJJ1fdvx0--qNqjHOw4Sbi_2MMhgzBGfMHhRFqKmkY9cd1R49O_6P7Y1tmiJbi_4voIy2I_n8LA5ohDkYut7JQNlcbihGHVvmmU6U9jKcivsME69qOSfEener5E49t5dI9J_fq_S1OdQjjpYTPMg", "markAsReadToken": "3J2Rgjfk6nxJcrjVI_ey_9MELzjadPrMxr7gTYFjtG1O6uTAcpadSxqn_sSympf8HyHrwfvG9YvW5SDZOPr0ABPtnIFFz9v5pbM5jjqjddjEYPf1_rGY380ScMpl2L0rJ1VEYV5WVDjNu3QfSnccsEMJrmbKoeyrgKkytdZaum_32zNNb0Ejg0Zk9vvoecCTz_wSzUzl0GwMXNt1aXLWkA"}	2026-02-11 04:01:19.092+00	\N	2026-02-11 04:01:20.437+00	U676fb27d2e18a0c59936f908365fc1c7	Molk	https://sprofile.line-scdn.net/0hCV47su-HHHkZTjNg829iBmkeHxM6P0VrZSlTSnwdEUEgfFooMiFVTHhPRxlxew8vZilRFilLQk0VXWsfBxjgTR5-QUgldlooMyFXmg
d9fb33e2-378a-496e-af2b-7c76103ef0de	8db9db9f-2128-4d92-827c-23f97b74d9b2	600136490718069033	incoming	text	อารีย์สั่งน้ำส้มครับ	\N	{"id": "600136490718069033", "text": "อารีย์สั่งน้ำส้มครับ", "type": "text", "quoteToken": "fj9_x2P7AtwWocTXoTKqbCPZaBgWhgndlSAfolQyLeqhuVNjZ3O6vwr2bgty59NpZYJvgcDuxf1UhbRlUMuSnGV3Dt0zqpIlQPya08aPnbeylHCfX3fnP3X3NQdybL3VRajpQaEhtI0WSgisacljfw", "markAsReadToken": "HbxNyvTBeyVrvUfx-WXV4l1952Fm9Xw4P75nTsJ2cOKCxu8tHSi31rvk_SEaMx-WzehgWitFRwdXPlBeLkseBJOMMPcer-n5s0TqwZ2wvRbB0r8zaxwcqLGinojjhlS2igpu5klh0tqBB9-sOcPaAFpdHmCqkLnx2dKlsctJeFd0Syf2xILGXot_Zu6qvDPD7X1eEF9Zl0YpRvE16gyRvw"}	2026-02-08 08:48:47.647+00	\N	2026-02-08 08:48:50.471+00	U583cbda06f035b93dfa5c84378ff5b25	Top	https://sprofile.line-scdn.net/0hO-CY2mpsEAJuIATgeEVufR5wE2hNUUkQRUcMMV4gG2VRRFNRS0UKbAgkHTdUQlQEERYKMFJ0HGJiM2dkcHbsNmkQTTNSGFZTRE9b4Q
7df30e12-a573-4d94-85ca-c7742ec8dbf6	8db9db9f-2128-4d92-827c-23f97b74d9b2	600137249719844970	incoming	image	[รูปภาพ]	\N	{"id": "600137249719844970", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600137249719844970.jpg", "quoteToken": "SgnGrOJva2e1f53VSmZo7AKRllIUiTNS2g8_YN9CUy6lBV6Y3LvqlnQDqt5cafoLTZsOxrPJ5qMmyEoJaASYlVSIojINWPMTYwJQ5yqxdprYkY79WIptWcXro4GvEj3A-6N2yW5elWyC29gpCb7aNw", "contentProvider": {"type": "line"}, "markAsReadToken": "0gTOYrAA0TZWHX5oc4M1_EUjrg8SOFJ841qlY-I7y8DmJ6fj7LGuQ0g9z0jdPLcxOqbAnOhHHqto4tsLYK5dqC0EVMy9Ofigf9gNdt07cEH0rRyEJJOTOACsSkysTPyyRX_izaSuFOSsJgKKUjpKvOrvkF647EFQp7pW4yz7plLZApY6wTM7oXnkG76U9vXkHKH2KVZXoc3hpYvn8fUZSw"}	2026-02-08 08:56:20.691+00	\N	2026-02-08 08:56:23.786+00	U583cbda06f035b93dfa5c84378ff5b25	Top	https://sprofile.line-scdn.net/0hO-CY2mpsEAJuIATgeEVufR5wE2hNUUkQRUcMMV4gG2VRRFNRS0UKbAgkHTdUQlQEERYKMFJ0HGJiM2dkcHbsNmkQTTNSGFZTRE9b4Q
4dec4596-e876-4272-a2c0-f1f0c1795cce	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600142058623860771	incoming	text	6/2 \nพันท้าย 25\nบางขุนน 20\nสวนผัก 25\nคลองขวาง 10\nอิสรภาพ 15	\N	{"id": "600142058623860771", "text": "6/2 \\nพันท้าย 25\\nบางขุนน 20\\nสวนผัก 25\\nคลองขวาง 10\\nอิสรภาพ 15", "type": "text", "quoteToken": "1JhT6F4aJ1qF6fdE4sH5XMH_K56JkPf8X--xHpSmOcdx9EbwtHIHL_T2SgfVG3zVE8ESI-_Zs2AooenOUBBOrcmUDnxSqrmUNK8EL3GXNY9urAsYnnH19MUjHJE-Xn_LQCoYwWL6BOcbPRPzFVYhdg", "markAsReadToken": "ejGF14iheRkAXXHvVE559P8Hq75wCxleihiunrcbZIYpPMQY9RkOehnWiBMRXepzO1ePLhX0xzZob9BuSPnJ6xgdE3fn9Ex0zbTuFzhy130BSIucgPnxLSxO2axPPtKtSIgmabd-7PJiTsbPgwfNJCJtPqT-KA362bILk6ByNxixdXY6FWh7sIdZlTZsANVz1iuKyNeDMNdf17vpv38Pgw"}	2026-02-08 09:44:06.198+00	\N	2026-02-08 09:44:08.482+00	U979d0e4603bb832ac4cf72979d33da6a	Nuy Manunya	https://sprofile.line-scdn.net/0hOpdiNHBDEF9JEACd65FuIDlAEzVqYUlNZiQNMX9HG213JlQKZiFXMClASDwmcgULZSJYOS9CTzhFA2c5V0bsa04gTW51KFYOY39bvA
c7614e66-7ae7-44d5-80a3-4a09befb4613	b54775bf-8849-4fe2-a5bb-a532ffbfc7c3	600144319420563953	incoming	text	สั่งน้ำ\nรับวันที่9/2/69\n\nน้ำส้ม250ml\n=40ขวด\n\nฮันนี่เลมอน250ml\n=10ขวด\n\nเข้าสาขาศาลาแดง\nก่อน10.00น คะ	\N	{"id": "600144319420563953", "text": "สั่งน้ำ\\nรับวันที่9/2/69\\n\\nน้ำส้ม250ml\\n=40ขวด\\n\\nฮันนี่เลมอน250ml\\n=10ขวด\\n\\nเข้าสาขาศาลาแดง\\nก่อน10.00น คะ", "type": "text", "quoteToken": "qFi7ZMVtpdJCPuP4D2pfXHZEhdWKzAlYQHiHUcT51jKCBdzuzxtOkbgyqub1luOBpAPCu4CrKebsoMJrnCTZsigHtVKuLDH_3ZDx-UOwzUbfDr1avU1G_qKUYPNye9s-XAoUt2Urhkb3-ZoilH9MRg", "markAsReadToken": "N-8ug0Q-TM1cCDgECzIpHT2T2IKP2mRUeALAJc41XkrzCZw79rsCQ2cjz9jRkPgAfWvGc1JrQqKndGiExgXphliXfMTSUTotINhQ7OFvbERFWGWxjXle6Vi5WhWWY3R_7cI37sreh5ptRzypaE9LnSYE8SG-5MXueWUeJRXageSXfpEiMYs2KOjiMFTbHzjpQ_W2D8T0UPv-E0QvRFiHrA"}	2026-02-08 10:06:33.935+00	\N	2026-02-08 10:06:35.962+00	Ufe175fa5a9a26ab61711e1ed356f6b52	Captain official	https://sprofile.line-scdn.net/0htjejhELhK0VIEzmF0UtVOjhDKC9rYnJXNnwxI3wRcn18Kz5DMyBsKy0RJ3MiJGUWZ3IxdihEdidEAFwjVkXXcU8jdnR0K20UYnxgpg
88da1b8b-8a7e-4d1a-a44f-788c8966e989	c2c73a33-8fc0-41cd-92ed-952bb315612f	600145122495562137	incoming	image	[รูปภาพ]	\N	{"id": "600145122495562137", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600145122495562137.jpg", "quoteToken": "5JkvkI3dgUvWjYsRovyXxNC33K4kam6psBDvIIvZU8BIkM2AAIFDv0EcxeAWJZ2o56NLSRkwsmXSFL4MyU6mjxDNJwQw24fBlgQm9SnskBgqinmRPZ882sSPISg1EMlJNIugYIXZzjDXFxsCJqs24A", "contentProvider": {"type": "line"}, "markAsReadToken": "g7bjk_DcZKrVyq64I4YOtNOiY5owGDycH500PGede-aZ7RReb5sKORLEGYqOXzEzPWnhqQJkMi7hdfthjiyFaDUASCLskkETUmd4WBG8HNtBJdHZUAxMVSo8Q3zru3IzKmC0PIkGkkKrMxccgI7CeOws1cT8Twe_g4usW6CunplAE3TRaPIrmvnZVK3AKOI4KINaG5eMt0-RVJVYBZH3vw"}	2026-02-08 10:14:32.739+00	\N	2026-02-08 10:14:35.785+00	U3ec9d16844fc7d722fae0245a98629b9	อุ๋นอุ๋น	https://sprofile.line-scdn.net/0h3-rDQ-8DbAJfPXg9FsQSfS9tb2h8TDUQc19wbG5qZWFlBHkBcQsqZWg9MjBqBCsDJ1wiYms9MzBTLhtkQWuQNlgNMTNjBSpTdVIn4Q
b0183148-d0fb-4638-a8c7-206fa7b21559	c2c73a33-8fc0-41cd-92ed-952bb315612f	600145212589474306	incoming	sticker	[สติกเกอร์]	\N	{"id": "600145212589474306", "type": "sticker", "keywords": ["Please", "Bowing", "Thanks", "brown", "thanksforeverything", "grateful", "Pleading", "line", "appreciate", "thankful"], "packageId": "11537", "stickerId": "52002739", "quoteToken": "JKRHTq3eIfHbSx10DSpqJsahCmWpg3a7adWzSKuIb1QGgSnG8T9zzCpz92o8DMcNVPVsxZAxFAH0QYOwZr-j3jmcYmIfj_1TXMGY4iq890aMY6TTPFCSBswcNWVVlorhqrAG3K5W3AWMVvATnsucaw", "markAsReadToken": "jm2fCtfqQw9riIQAV1Ozfi_98xN4AOw4z843qmXiBhEZW3p123mxl9N_GjI5COzrUoPnT-QjoFk09QHOHAz3T2jgK0doblz32TBmC5wAIi83GUcHLayvXNA5hsblWmB6AVE-wHmdpt5CBBFG8ip00fKjyJkpHbO9EQXxd-sp0BoVTQc9tQKsf_Nw5GiRAHihKGZqn_2_zJrXsIfkDVc9tw", "stickerResourceType": "ANIMATION"}	2026-02-08 10:15:26.129+00	\N	2026-02-08 10:15:26.997+00	U3ec9d16844fc7d722fae0245a98629b9	อุ๋นอุ๋น	https://sprofile.line-scdn.net/0h3-rDQ-8DbAJfPXg9FsQSfS9tb2h8TDUQc19wbG5qZWFlBHkBcQsqZWg9MjBqBCsDJ1wiYms9MzBTLhtkQWuQNlgNMTNjBSpTdVIn4Q
6e4a90e8-6830-4d57-9e37-263b254338a8	3dd97414-b1a7-4c2c-8130-47c58799df01	600158386713526393	incoming	text	@Joolz น้ำส้มคั้นสด💯 8•2•69\nสาขาFoodie \n\nน้ำส้มมาส่ง 15ขวด \n\n\nหมดอายุ  11•2•69\n\n@Joolz น้ำส้มคั้นสด💯 	\N	{"id": "600158386713526393", "text": "@Joolz น้ำส้มคั้นสด💯 8•2•69\\nสาขาFoodie \\n\\nน้ำส้มมาส่ง 15ขวด \\n\\n\\nหมดอายุ  11•2•69\\n\\n@Joolz น้ำส้มคั้นสด💯 ", "type": "text", "quoteToken": "OKyKcgC7WcVE3DddzQZ0siWWkTodirNhOQtthEE75SYKtQi4KHJH8UWgRQ7xuXNtCEchLW3Prhy0zOFJeex-Av5EChyuiLgVSrhcx1lXsbIo4jjFJH5UvvP5t7t5R0C1XZ0S60gjyf4kdK5LUQboDw", "markAsReadToken": "ONJcw3pUyHOQWhlCDgoJ6AppUpKYdvT1wZ6I0knUS-w4Db54oc3dO1u6cscbrZR9MVGHGIwjk8d0kPxIcOrUHkuifr61Bbw9iKTROG-riKY7LdidjNgar2sPY2PsXvFifzgOF-iVg34NUE2MoLqbny9oCphzbGUXjcwLJ04CxSho1OQPYJS886YPb17o2QhEVElnJQHnDWisqnoZl6N9kw"}	2026-02-08 12:26:18.621+00	\N	2026-02-08 12:26:21.247+00	U3065b08d77070d6cdd734f0d47f35c69	Nan Dar 	https://sprofile.line-scdn.net/0h1emVhAECbkpAL3FkRDEQdDB_bSBjXjdYb0EpL3AsMn4oGHkbOEAlLn0pM3p4HnoZPx12K3AsYnJiTHd7H0BeSDJSNnMoRUgeDk5PUBZ3dTgmHFZ0Gw1kSnwqdhR5eXxnPk1FdnFzMjEOVCF9JxlzR2loQCN4dkBuG3gCHEUdAMkvLRkfbUgpLXIpOX74
6a08f006-9c9e-41d9-b083-5112a642fad3	3dd97414-b1a7-4c2c-8130-47c58799df01	600158830067974475	incoming	text	   เช็คน้าส้มสาขาลาดกระบัง\n8.2.69\n\nเหลือ  =13ขวด \n\nหมดอายุ 11.2.69  	\N	{"id": "600158830067974475", "text": "   เช็คน้าส้มสาขาลาดกระบัง\\n8.2.69\\n\\nเหลือ  =13ขวด \\n\\nหมดอายุ 11.2.69  ", "type": "text", "quoteToken": "XzQupPdblo6qVR5WaUE2vmEcAv4bYhW5r54tX-Xg6BF57JvnOCTTi9-kvZZ0u9TNQrUl9GRlt9uZi3vY2tefLRYyKtVF7MtzcM9mngzzgUAAZik9WX7hnjPEjeYoULMNoQI7Bpi_BD6u2Qrk8KhdBg", "markAsReadToken": "hfDHSRoKwAn78R2poi_4NmcvZlqDoDlSxY846DZaDHgFdITujzQ5Z1XmtsqNfzxeyQzZ8PeHXlL6cZ_kKQ3DgsfrBhsdAU0gzj6R28dwUH_MIBTuLDz3XlqZdprB5HtQJqWcC4OhAYnMSNVLZqk9YXGwWO6WhZVLOiXisYDlruA8-OjAZE4K5nfRiNCSt8P_QMX9rqUM7fr8EtxgsMw58g"}	2026-02-08 12:30:42.813+00	\N	2026-02-08 12:30:43.811+00	Uc8265ddbfeaa2db475bb998c2b0cb63f	โม	https://sprofile.line-scdn.net/0hYo6-1w8gBkAbVBdIjYd4P2sEBSo4JV9SMWBNJyZdWXkmN0BDYjFPJ3pdDSdzYEEUNjoZdipcUSQXR3EmBQL6dBxkW3EnbEARMTtNow
ea9f02d3-8aec-4ad4-8288-492f4bb06904	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600188368672522309	incoming	text	น้ำส้มคั้นสดเหลือ 5 ขวดค่ะ	\N	{"id": "600188368672522309", "text": "น้ำส้มคั้นสดเหลือ 5 ขวดค่ะ", "type": "text", "quoteToken": "QcNeAHmVUpMCkxNW9ksaS_eRRY7F3_jpUj2GQ0yVwzSRH9KAy0M3HQJNJA3fvN8y2uh6oqsyjOGV0hcUibpBhZVQgWnxX_0tiwMAJh8ev-e-PpaZAGVemRFa270B7Y6U7m_bKr1TcVAFcyP5SW6EOg", "markAsReadToken": "fsAo7YhNSaKPkKdBJpo2NXKJ-8dF0BVC8a3C_8xG4QoF07ZtoQxBELgF-Uth1fj5kKDrxiyqxyVImlaGqGSP0TuVW0wwD1MyZrbwiaklEWbBNwKXRlaVgcPcqL0jpxFypnrrwA2nhM0SYYGMRxWBBaeIEGcb49Y64ZY34zhWvzGwMBnmBKzL3nYyQ6c8KK3b0Whydm8ITKKnZLjIV5U2TQ"}	2026-02-08 17:24:09.141+00	\N	2026-02-08 17:24:11.709+00	Ufab50bc276a166ce7ab1c7cf740ec5ab	โจ๊กสามย่าน พันท้าย	https://sprofile.line-scdn.net/0h5GW-O0iiamh6VH-H52QUFwoEaQJZJTN6AjcjDh1dNF4TYCs_BmchCBwENQhFbCo7VTUjB09SNQ92Rx0OZAKWXH1kN1lGbCw5UDshiw
b0d82e65-2827-4954-ac21-126c29608ae7	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600224573250339072	incoming	text	สั่งเพิ่ม 25 ขวดค่ะ	\N	{"id": "600224573250339072", "text": "สั่งเพิ่ม 25 ขวดค่ะ", "type": "text", "quoteToken": "yYLEo7EG_9vMzhEe13l04fXsOKoIDk5ODskP68983tHiSZEDMQ_RlSRjrkxFYj8L8s5EYlGPZo0xI1sfdfdqWmzVZIQMukE9sqtTyBP6WlneGHSCwbrEhfullsAbrRQFHACfVRvY2iTOwCdM6SQqqA", "markAsReadToken": "KM-EBqipx4JbWHAi0cA8db22SS4Xn9j3NNo_ojjkLXbLxBSdYMAQ90lQN4LJt4NYjYUckFi43hQDI4LtHpyyxNM0M4B3Y7m05AtmZfFzwR9rgiS8nCx4mJ89ECfN80uhT0Ktc-v7frKbC6UXa7EQ7Yc6vNdVbU7bu8e5zv9IM_cZiM3vCV6bq4mrZ2qKRPZk8SISiOWWkv3pu0YWZbUtUQ"}	2026-02-08 23:23:48.753+00	\N	2026-02-08 23:23:51.306+00	Ufab50bc276a166ce7ab1c7cf740ec5ab	โจ๊กสามย่าน พันท้าย	https://sprofile.line-scdn.net/0h5GW-O0iiamh6VH-H52QUFwoEaQJZJTN6AjcjDh1dNF4TYCs_BmchCBwENQhFbCo7VTUjB09SNQ92Rx0OZAKWXH1kN1lGbCw5UDshiw
1439e8fc-b2d1-448d-bdb8-dc4598065505	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600233247758876845	incoming	text	สั่งน้ำส้ม 10 ขวดค่ะ\nอันเก่าเหลือ 2 ขวดค่ะ	\N	{"id": "600233247758876845", "text": "สั่งน้ำส้ม 10 ขวดค่ะ\\nอันเก่าเหลือ 2 ขวดค่ะ", "type": "text", "quoteToken": "bsceNZMBJ3psJ4HNYsW-0KRLY5lC3dvlQUvpkfez4ny5GgLZGsi-fXOhvuCNOCNhiohmtKLCs7O3ARimET1qlZto8FQe0SBcKwBv_FJJTUs_g-U9qHBaLvTRYdORBf60BeHK3g4FsMLotV_BUf4BXQ", "markAsReadToken": "KMIR82e5ddhb-57nNnFCJJclsXGj8S1J5q_BSpJlzJ_MNRWUE-Xqqj5fbwLCHQdOIRc4XfGAPgFvNHoDikjNOSbjwrnegC5Jv0tuGb4W_FxkDYdeOX1kpteGylUluA7lc50CDp_IRpikceKXcO1DXpIAVFFE_rNrjOoEjkqwYG0OQSCFw3i1scgaAgYUu1Tg2mwV5f3F8OQit9G38EvM6Q"}	2026-02-09 00:49:59.196+00	\N	2026-02-09 00:50:01.773+00	U4ddc32e139a6ed8679bd1b9920092889	โจ๊กสามย่าน คลองขวาง	https://sprofile.line-scdn.net/0h6V_tDd8haXlyDX7nvIcXBgJdahNRfDBrDmt2SEMKMUAdOCx_CWt1FhJaMRlIanovDjkjG08IMB1-Hh4fbFuVTXU9NEhONS8oWGIimg
6a41797d-d9fe-4243-8518-725974aa4b6d	0440dee7-1926-4810-bb67-6bd159a4829c	600238799876260117	incoming	text	เลขโอนด้วยนะคะ 	\N	{"id": "600238799876260117", "text": "เลขโอนด้วยนะคะ ", "type": "text", "quoteToken": "Q0Ib4vd7SkYd9iqiwJwGE0mrw391klEcPDuuOiBoOgaUKJugMm4FU8gD6ccgFP8OTpdqJoERED0TDxXqL3q6GsBn8kQjr7Ot4EORn0AvyPnqoYKDZRBS_3kooWVMu3cnsgm0N2P7Dc2ia1dFHTsadg", "markAsReadToken": "hXMqKXl_cTzKJ5hiorfOhrgpUtAhyX-apft5Wka7z-MPxbpDqBGgcAu8TvxO5ewye_RV504bQe0heQ0SZo8NfZec30jx3R4PuUo0XRKT4r-IvHKRpCg329lNy1mhHtFlYZIUk5hv693jq7B416VV5EjFHOrrJhWJd9pYcKqbeyMe-sebiEax048o8qldJhtN9x6m5MqOiYGEZqTQfgK1yA"}	2026-02-09 01:45:08.625+00	\N	2026-02-09 01:45:10.69+00	Ue55197333340e6a4c9cc114f22f3599e	♡ ʕ•́ᴥ•̀ʔ ♡	https://sprofile.line-scdn.net/0hf1Te1C09OR55HCYVq1tHIAlMOnRabWAMVX0kLEkcZyxDJH0fVXNzLRsbZylNJCpAAn0keUwYNyhbew4fVHIBPw93H3cDeSIhByw-HEhYHG87cyUwMnILBidCH3YqTwwfLioyfzR9B0UtXH48JycXLRJMEigcfiUeFUtVSHwuV50WHk5LVHt-eUsabirB
947a3cad-9a80-4c0f-8314-4d16b161ccfc	d018401e-70b8-4beb-a37e-521da9f16a86	600241307684176553	incoming	text	รับเป็นวันพุธ นะคะ 	\N	{"id": "600241307684176553", "text": "รับเป็นวันพุธ นะคะ ", "type": "text", "quoteToken": "K4__QmYxaxkXcNm6k6ZCcK8m1lHwaDAMU5VbPfc-limkbBxZIgyr6ZIEt7yP783bzM7D4ab6eAlaNYueA8OehBFIElTa7h_753392hPySWdnb4ztWpKR8RldoyJB-KduE6UfiIWgGqfZY2oHh-P6eQ", "markAsReadToken": "iNO5BBGF-jOjHKiFLJ1HgbWZ0u9MDRb-8tQ70AwD5oJ2l8WdLFv1Gw9f_Wr2PVz_NdFEe3SVeniNPBXyAhdMGCOty04XJ-8wFqvAV2JbnELBHC6osk_eGJ69D8yHXXSbBQrI4YBsl8W8v6dwLkkFP31OEuLkISYimg2PtJSjvhvltsM8yE5OJfAXrOpR61XDB0h9yoUMfpwHFHa2WIMq3w"}	2026-02-09 02:10:03.254+00	\N	2026-02-09 02:10:05.677+00	U0fde09872afa50bc61694226e41dd72d	Movii.👑✨	https://sprofile.line-scdn.net/0hk8LAATrVNBdhOCqPI75KKRFoN31CSW0FT197eVBrPXNdAHFHH1orJVw8OiAICnpGRFZ-IlY-PydDajUzGR55cidKLn88TBIpHRsDLg5sDlsrDhESKC4zcw5LOWYfUxBFNTooBlZoLmEVXCQUEh0zdzBENFoLbwQVCG9YQWQKWpQOOkNCTF9zcFM-YyPZ
3b54f999-1033-4e57-b243-3ed5b6781528	0440dee7-1926-4810-bb67-6bd159a4829c	600245006690680854	incoming	image	[รูปภาพ]	\N	{"id": "600245006690680854", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600245006690680854.jpg", "quoteToken": "I3JTx5Ql53Pyk4sWqaranelBzvAPT6WDjsTT7aNnplBt1khzCA3v_nN3HmwwBhLEYWU9ZD5fJMPxQULGgIzocpeRZX1xjTeXYWA4w1FgysUxO9vzcGyUsCxNop6F6-0YaSNi1XOXZ6IBewhIKtB8Xg", "contentProvider": {"type": "line"}, "markAsReadToken": "CsM8TSSwwIHV8oEDyBir2TMu7xriXVO3z5lj-fynxn7owCY8GatnjeQcIxrpKPSzSEfs0ZO7ivXFsMHa5NQTcrQRrEl0iXZUA1aqohAUptPnlXCBtehb6wwn_RdmrkZnK2AjLAc1DVt1vg_yAPba07hi2wXOnJWmENYkHoUgWQ-5dXoqd_ZJXam2K_cbJCi5TRZXZQH8LHuwdSq52E1nhQ"}	2026-02-09 02:46:48.227+00	\N	2026-02-09 02:46:51.791+00	Ue55197333340e6a4c9cc114f22f3599e	♡ ʕ•́ᴥ•̀ʔ ♡	https://sprofile.line-scdn.net/0hf1Te1C09OR55HCYVq1tHIAlMOnRabWAMVX0kLEkcZyxDJH0fVXNzLRsbZylNJCpAAn0keUwYNyhbew4fVHIBPw93H3cDeSIhByw-HEhYHG87cyUwMnILBidCH3YqTwwfLioyfzR9B0UtXH48JycXLRJMEigcfiUeFUtVSHwuV50WHk5LVHt-eUsabirB
3cb0b566-9a97-4819-b7c5-c8f04e872e8a	0440dee7-1926-4810-bb67-6bd159a4829c	600245014576759009	incoming	text	.75	\N	{"id": "600245014576759009", "text": ".75", "type": "text", "quoteToken": "6qKWMgiJAGwIHlr_qNv5bNEA_WCmXz1LbriJzzO8Z8TJ9RM2KgIVgjKhO2bI9hWtojQvdorHOT8aGFU2O7-bEVfuClN1ryrKbWtqnm5K0TFDw9GGGpVrU-ZLPpT0TFkSQgFnqs9aom7VZE6dqfUGTQ", "markAsReadToken": "0WT7e3z8MfeZI4CbiR-xA9hQA31wO1v6wGvPNiQ1coeWPqNugiu5aWzFR5T8SMDJZNZIQm6yOAZXCIYnViJQLiCXvzRF0YYYX8WQWub2yXWl4TMk66N985F_OsJUrvu16X2AeGYDxyRppo4zk1wUwRu1CS7FXQyhiL1ysWr2Cnzsfl68bgJtxpcigjVnMDA7DR4D3lOoXlNCKpzV41Id9w"}	2026-02-09 02:46:52.79+00	\N	2026-02-09 02:46:53.589+00	Ue55197333340e6a4c9cc114f22f3599e	♡ ʕ•́ᴥ•̀ʔ ♡	https://sprofile.line-scdn.net/0hf1Te1C09OR55HCYVq1tHIAlMOnRabWAMVX0kLEkcZyxDJH0fVXNzLRsbZylNJCpAAn0keUwYNyhbew4fVHIBPw93H3cDeSIhByw-HEhYHG87cyUwMnILBidCH3YqTwwfLioyfzR9B0UtXH48JycXLRJMEigcfiUeFUtVSHwuV50WHk5LVHt-eUsabirB
02636617-1aa1-4164-99bd-3fa8719b6a88	0440dee7-1926-4810-bb67-6bd159a4829c	600245054841291246	incoming	image	[รูปภาพ]	\N	{"id": "600245054841291246", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600245054841291246.jpg", "quoteToken": "8lj65IlFME9-z9dQdE2LldzHNQHBqzKNjzRXI_G29CYekkv21kqjFy1V80GCpNisUs_dzILKr2Zblick71oXmr4LUYHSd-9qQhhU9bW_o0Ikc0lHHHHXiaAQUnRYpw3TbekLjesNlZmaHxhNZU10fA", "contentProvider": {"type": "line"}, "markAsReadToken": "PiazPrsIxrKHuvhl3MRo3xTg0jafVGXUP1trrz8Ub_JDpAm263aXBLvD58ZmDYMD9b7u8RopLhGXYIAxcjNy_dRiWqx7e5IYWExjgOdnRdblhqwxYrPbQ62beb1g0gch2HgxFPHCzu4tgIjvbJLetFLejAg_VO_P4C1eG72zOcmJ0Eklae83W809zsQUl1Af1R5IQyYT_yUOgbJ4kvpn1w"}	2026-02-09 02:47:17.176+00	\N	2026-02-09 02:47:18.948+00	Ue55197333340e6a4c9cc114f22f3599e	♡ ʕ•́ᴥ•̀ʔ ♡	https://sprofile.line-scdn.net/0hf1Te1C09OR55HCYVq1tHIAlMOnRabWAMVX0kLEkcZyxDJH0fVXNzLRsbZylNJCpAAn0keUwYNyhbew4fVHIBPw93H3cDeSIhByw-HEhYHG87cyUwMnILBidCH3YqTwwfLioyfzR9B0UtXH48JycXLRJMEigcfiUeFUtVSHwuV50WHk5LVHt-eUsabirB
8a86b74e-0a09-42bb-9768-57640e36246e	51a820e7-c8e4-40d8-a349-7a39a54aa70b	600246956018630828	incoming	text	น้ำส้ม 1 ลัง \nน้ำส้มใหญ่ 3\nน้ำเลม่อน 2 \nค่ะ	\N	{"id": "600246956018630828", "text": "น้ำส้ม 1 ลัง \\nน้ำส้มใหญ่ 3\\nน้ำเลม่อน 2 \\nค่ะ", "type": "text", "quoteToken": "1iyNfkWZQ_q6Px3hTnsxxyUa-d__f3q542XBuoNhI-KERQCXv8k_LaY90wGDwvumdPAw3iFTrmNYovMIwANlaael6rZXIi1fycXV2K5flxk95DB-Y0Wsb96LXur8AgAjKJootyGAMUsNQ1svr6njAQ", "markAsReadToken": "3P3BP1aq589LC-7IiN82izNbckOEmdCTU9gIp0l1MkLF6uHhQq6xlLPMZWQT_JMt5OBD9rF5Iap5sEXvBYD0EGqz_q3AYFy1aBlfvLSHFo3NU1Q-QFtrON4r3MJ-0gY4emEbwyIgin44ORXl-O40Nn4jjunyHCEKcQBwwNhyTjSxRyuDxKy_KeUZWdu0Ojark8zSpLWELmgr_n90UmL1sw"}	2026-02-09 03:06:09.955+00	\N	2026-02-09 03:06:12.462+00	Ua39198e3657ca5b5f7861427689a8c1d	Tukk¥🌙💖🌸	https://sprofile.line-scdn.net/0hChUsPAjfHEd4CgLNYM1ieQhaHy1be0VVAW0AdUsJRnNNaFIUAzsGJ0hfECUWPg5GB21RJBhdSyJaZgAULW4LVB5YRy4kQARuAGskYSVeEQA1RTVPHwkTSSZeHi82czVNUxULICZOJxk2PwhkMWQXQyVfQgQEPVxHNl1wEX04csQXCGsSVW1bIEoMS3PA
2c3d3e74-e9fa-41f6-b417-b600d528990f	0440dee7-1926-4810-bb67-6bd159a4829c	600248901941330503	incoming	text	ส่งพรุ่งนี้	\N	{"id": "600248901941330503", "text": "ส่งพรุ่งนี้", "type": "text", "quoteToken": "ql4jOa0WBWoJzVwnDdsUg6qB_mXeF3TTxP2PCp-e-kgZ0j5rgjhvkqrbfavJAQ_e9rxYpzq0eHbl3YWTEQFFdd3UOiTcYnjpvrDNJ-RvWyFDaetU9p4KFF6Vd0aC3jmON3Y6wQLd0dSnitKU5JyWRw", "markAsReadToken": "8MoDmmSNIl1HRDJ3HpcG_PkAqxFvSLoUn7tobIO_60rR8ngyKXpjeCfSKPjwlk5ofkYu2R459jeBEITahum10YV_F4KXP-KOjI8BcYi2lOmrHefChNtoS3EIMXR8sshXClKIwl_vT2dm6ZH1XOw_DQ2yxwY0eYntc-WAqUFEBAIWsod3jGZAL6glpq3LvJnvwFhX5oDwpV8Muifkm2RK1Q"}	2026-02-09 03:25:29.886+00	\N	2026-02-09 03:25:32.161+00	Ue55197333340e6a4c9cc114f22f3599e	♡ ʕ•́ᴥ•̀ʔ ♡	https://sprofile.line-scdn.net/0hf1Te1C09OR55HCYVq1tHIAlMOnRabWAMVX0kLEkcZyxDJH0fVXNzLRsbZylNJCpAAn0keUwYNyhbew4fVHIBPw93H3cDeSIhByw-HEhYHG87cyUwMnILBidCH3YqTwwfLioyfzR9B0UtXH48JycXLRJMEigcfiUeFUtVSHwuV50WHk5LVHt-eUsabirB
0ead7249-f1af-4652-80e1-3769a198cafb	0440dee7-1926-4810-bb67-6bd159a4829c	600248904692269656	incoming	text	นะคะ	\N	{"id": "600248904692269656", "text": "นะคะ", "type": "text", "quoteToken": "aKhbc5ZcdrHkCFComiZKlf-RJQ5Vzx3MaI6zfSARsomq38vHU_1JeQBRqg0AwM1_LrXae9q2qXD0eh3w4vUJvlWKnl6r-JGIB8FpEFx1j_AOYUF8qphbnuWOF1FpHV7ZyQMuRTyfBX_l6xar5aBtFw", "markAsReadToken": "UNZge2l4bvtkHPnAAT6sNWBBRJsKpRMZ6umIaaivCVpD1hfN-v64E4iqxeVwp28ru2hL-VP2RREbRaabiZgh_jXO3Uw_A735Nc2kBiKPndKd2C_xfb5allUI1rLfOr1roWtJ2XuN66JaIcJqO5Br32pTnRxpan6XsYcidXkDTkaEf-kZ51x1pdecT3AJmQOjEH72qZxr7_VjGn5QTcGfDg"}	2026-02-09 03:25:31.427+00	\N	2026-02-09 03:25:32.873+00	Ue55197333340e6a4c9cc114f22f3599e	♡ ʕ•́ᴥ•̀ʔ ♡	https://sprofile.line-scdn.net/0hf1Te1C09OR55HCYVq1tHIAlMOnRabWAMVX0kLEkcZyxDJH0fVXNzLRsbZylNJCpAAn0keUwYNyhbew4fVHIBPw93H3cDeSIhByw-HEhYHG87cyUwMnILBidCH3YqTwwfLioyfzR9B0UtXH48JycXLRJMEigcfiUeFUtVSHwuV50WHk5LVHt-eUsabirB
e6cfdf8a-cb28-43dd-b09c-2245fa893a7a	0440dee7-1926-4810-bb67-6bd159a4829c	600248955527496147	incoming	sticker	[สติกเกอร์]	\N	{"id": "600248955527496147", "type": "sticker", "keywords": ["OK", "agree", "Gotcha", "Affirmative", "Yes"], "packageId": "35703", "stickerId": "785896883", "quoteToken": "fh01aEHVyWsnTOZG5IRXY-NHq7oZwLPQ7oAG4vsHSF8Nmwq6wx-BQsFqM-lD4TVio_sE_3q86IllEXzI0wWKzRZdcb0hqs1AXnhK7Z8EpzklAaWtsltRgafrdFY2gqwTPVwKLuOa2Tw3rbyzfMbhqQ", "markAsReadToken": "YTQ0fvkZXt5m-ZMBvoAA9frHmUIrGQPykOncfdoJcV-HpGawmmFhKfT1o3yV0QEoqFLttvoWSupKv8WKyWRfwSkwobxUHAGrjuNWgwwBA3dngYvd9lAdEN9mNf_RDar3R20FbAD6kmxoCKfmOBHv71QdJvPRuPCQit9-Dg_DcXrRiZPkhI7UOGYZeRKFO9msV8cc5U00w2vhtyUPNHkXUg", "stickerResourceType": "STATIC"}	2026-02-09 03:26:01.92+00	\N	2026-02-09 03:26:02.665+00	Ue55197333340e6a4c9cc114f22f3599e	♡ ʕ•́ᴥ•̀ʔ ♡	https://sprofile.line-scdn.net/0hf1Te1C09OR55HCYVq1tHIAlMOnRabWAMVX0kLEkcZyxDJH0fVXNzLRsbZylNJCpAAn0keUwYNyhbew4fVHIBPw93H3cDeSIhByw-HEhYHG87cyUwMnILBidCH3YqTwwfLioyfzR9B0UtXH48JycXLRJMEigcfiUeFUtVSHwuV50WHk5LVHt-eUsabirB
22749797-ba40-4bfb-9971-b2b6ef22d1b2	423984ab-7c00-4775-b576-b6da4d104d72	600250526361977125	incoming	image	[รูปภาพ]	\N	{"id": "600250526361977125", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600250526361977125.jpg", "quoteToken": "oXo90crtxtQ0CS_Kj-1KeCq47Alohsp2mvvsoU57MWmaNBU8G_3Vxl7crDEOzxX_N84Uf6M9wVhzUPFFyfo-rC7HMl1AUr5S9wT40t0_TdF8qul3kN5n2adyJzW_8YffUTVok_MKFEro9YdqcWPnyw", "contentProvider": {"type": "line"}, "markAsReadToken": "YcYoaxDfcbe3qxCoVgnVi5-MLSh8m9RWGYfykt1x_ytKTgytwKzLQsdPey1Wn_6-BsIvaMf8l-5XvGN5qGk1A6tPDsuNaag_5SVWuzWcoZk-rv86S5wz5aI79nu08qE7zmZfguJ0bKRvmCnsQDnU9R5JuuLO14MqxjqQED3gQEXf42NHhbA3BGhzX5K6HlCh6XWeVIokVQ0VIzmRA1jCCA"}	2026-02-09 03:41:38.482+00	\N	2026-02-09 03:41:41.847+00	U3d925223ea43241e19682e98fe866ad7	piano	https://sprofile.line-scdn.net/0haW4xzmUtPngZASjPlo9AB2lRPRI6cGdqNDR1Ti4HYhotNykoNWVwFngIMEwjYX15PDByFygGNE8VEkkeB1fCTB4xY0klOXgpM251mw
a16e5dbb-c8c9-4a93-945b-b33fe64594f7	423984ab-7c00-4775-b576-b6da4d104d72	600250540185878755	incoming	text	ออเดอร์คะ​ @Joolz น้ำส้มคั้นสด💯 	\N	{"id": "600250540185878755", "text": "ออเดอร์คะ​ @Joolz น้ำส้มคั้นสด💯 ", "type": "text", "mention": {"mentionees": [{"type": "user", "index": 11, "isSelf": true, "length": 21, "userId": "U3a5774da47800b13765e0f348596bf2a"}]}, "quoteToken": "QvidQTS7qOHOZOAeFngnEWBrzXJVABXbnOf31S5j57XzztRzmvfslKvpiSETAmN24s4JuuRp74EnLckutg_0sbl-1tgmcpgXRsx_bmqDce8r9RWHl9ZtZc-D6JYHXYQrFtjR7WTwqgOEFIJCIyAung", "markAsReadToken": "pEZH3QjNwM8zF1czlMNBvgn_2InAbMt9ythi9tGd1vEeuUalLB_ZLGpcGHSHqJPBbDegQpxXPS8Z5rytKtvZSKSbSJvN-hzP8TpktiqXhv0yIGno88Rs_MEk1FaW37DIqPMcxlJVwX93Io6bBdnSoDOXgyBjLegC1YmvdPgl05o41UaKcj76roda43D24Q9TqC0YPpMDt9YCIgAbOvxtkQ"}	2026-02-09 03:41:46.365+00	\N	2026-02-09 03:41:47.247+00	U3d925223ea43241e19682e98fe866ad7	piano	https://sprofile.line-scdn.net/0haW4xzmUtPngZASjPlo9AB2lRPRI6cGdqNDR1Ti4HYhotNykoNWVwFngIMEwjYX15PDByFygGNE8VEkkeB1fCTB4xY0klOXgpM251mw
20cd9019-8010-41c4-baae-24d2005c1526	423984ab-7c00-4775-b576-b6da4d104d72	600250575870755111	incoming	text	ออเดอร์\nสาขารพ.รามาธิบดี ค่ะ	\N	{"id": "600250575870755111", "text": "ออเดอร์\\nสาขารพ.รามาธิบดี ค่ะ", "type": "text", "quoteToken": "VLaJhOaDV-nv2Mb2MqLLtlxwRvJ25wHHNUSdF1M2cQ47C_4iiE42-hOYIqOASadxTFd2zbUnYERrMdcMNK1Gqf-czJmxoFQGyL89eZokryZe2XAGuyzAm1wumoXpFuS_1qFapur-n5FTPMNIaU7Xcg", "markAsReadToken": "SMSXNgQT4IVZHOY3ekGypq2tOjrZCKeQicOSyI_2M5fOHzHsXmG3tnGGAekIRXsfkJnEaolqjD_oCw86QEz8-SVkqFVjv1_2Rb53yWYzVr3PnpsAIzoVioNpHOQiInLAn60dVs9bqVOiS1cJCN-RfDlCw6Vv5vD3ZG7TRSt9ZMPKzXK2KFKHvSoxcNBBRL77ydnUd0WmjpdmwnWh2xywLQ"}	2026-02-09 03:42:07.647+00	\N	2026-02-09 03:42:08.543+00	U3d925223ea43241e19682e98fe866ad7	piano	https://sprofile.line-scdn.net/0haW4xzmUtPngZASjPlo9AB2lRPRI6cGdqNDR1Ti4HYhotNykoNWVwFngIMEwjYX15PDByFygGNE8VEkkeB1fCTB4xY0klOXgpM251mw
00f00213-7768-411e-9403-f2af5ffd02e4	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600250756025024565	incoming	text	สวนผักน้ำส้มเหลือ 7 ขวดค่ะ	\N	{"id": "600250756025024565", "text": "สวนผักน้ำส้มเหลือ 7 ขวดค่ะ", "type": "text", "quoteToken": "_yGnmmA16NFAOqgdVPMlyL7iZFxomcZ8Fpj1kwV_etEfhjmYDIeM8dqCgtJqxfpGY7xa5oMNjHI-7cVm07kmmTfDeYR2cM5vNVkh5nbPrjfpT-i4Wj3MdWLFOqqizobKO0XHh6jR7p7D7Xci_3iOUQ", "markAsReadToken": "3lpK3aqFvkfIL1sVWzde-B63VB_J_6JZdEBfX2vwWP2BoXC1q_7bdaAYVZKcGTtePmJXwgzakNr8w8sDob4SAH73VQhJw_cdBMvxRE2g0fRxINAoY4tI4WUgtvtA-bCOuSk0B7bM_e3IBLruqrW8D-f-oZBxG76L4y4kMMJdzOpcrVDyBq7WRyfC_6XXpt2zasPifmcy4p9LDnjCSLdJBg"}	2026-02-09 03:43:54.901+00	\N	2026-02-09 03:43:56.828+00	Ue7be0355c54433d563bba215996ec61b	โจ๊กสามย่าน สวนผัก	https://sprofile.line-scdn.net/0hw6K3eECuKBlmSgG4htVWZhYaK3NFO3ELSSk3d1tCJCgMf2kaHSlkfFtNcHtcKGYYHSo1fFMecCFqWV9_eBzULWF6dShacm5ITCVj-g
1a93a29b-e621-4fd5-ab05-e8915e9974ed	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600253453331595748	incoming	text	มีน้ำส้มมาส่ง 20 ขวดไม่มีบิลค่ะ	\N	{"id": "600253453331595748", "text": "มีน้ำส้มมาส่ง 20 ขวดไม่มีบิลค่ะ", "type": "text", "quoteToken": "lZ9svI2dIY07Kq8P9XNt65JCV6SvxAFWDu1fUdkH1aDHEQHdYqROzKrSrZo7QAqWJNJnE4XqPiKTVA3apW8M3kZ5P-NnzJyjQjb4yB4DK2Nk7RvEg0jGmUx6DHJkrRbBumV0YMYRiXQNVvrEBiAwzw", "markAsReadToken": "r-iSGR-81pThIZS_RMZLF1bzpBOgNxgnv-Umzv8RpI3u6AwaxfFbRvkL4vz22iymePqRZi_-0wAiUSqOuln0lAQiGhjb-zZR5r8qA_Im-yWoLCl4CvumbvBd7CUVKeKupnpUzXViv69FGFuA1LR9xiRjERGbrQ7D2CO_z1lQzmovJoTJ6HsHUBSHljFkiRUN6o1rQcL82XbPYJySzjx1RA"}	2026-02-09 04:10:42.781+00	\N	2026-02-09 04:10:45.015+00	Ufab50bc276a166ce7ab1c7cf740ec5ab	โจ๊กสามย่าน พันท้าย	https://sprofile.line-scdn.net/0h5GW-O0iiamh6VH-H52QUFwoEaQJZJTN6AjcjDh1dNF4TYCs_BmchCBwENQhFbCo7VTUjB09SNQ92Rx0OZAKWXH1kN1lGbCw5UDshiw
7b26cb42-a1f2-4238-a8ae-5805094ae6e4	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600253473128710707	incoming	image	[รูปภาพ]	\N	{"id": "600253473128710707", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600253473128710707.jpg", "quoteToken": "6bJnoUC9yc7K-JHk8k-bKIp6O8fTszFuLuc4P6rHE9TsQGavmIGTaykwOm0DZufiLPfIdhJ0k_kw6QCH7zfuFAcc-_HsSTBo0IHTM_2pyyCFMSNSAmKrDIptBJpCS4CTMYrinyoLa9wo-av-XcI4SQ", "contentProvider": {"type": "line"}, "markAsReadToken": "EvOz4Q2sdPGsmupMz4VUKhjZr-MEZXXVpzVuJQMAz3r2xNP_lJx8OUEkB1U2HROA_QFOIHfH_fssAEPexMD043Hz7Ub08N2bhFmW7OUYPWUtoYEHVqbQN1s3VYPfJFGI61NtEydH61eXnAMIDxS4UPeHqhDpw52f9iIcTxu-afoyqTy-D9swBOv5z0HYP6pid3PNmYaJPI0X9cl84Ts58g"}	2026-02-09 04:10:55.37+00	\N	2026-02-09 04:10:56.896+00	Ufab50bc276a166ce7ab1c7cf740ec5ab	โจ๊กสามย่าน พันท้าย	https://sprofile.line-scdn.net/0h5GW-O0iiamh6VH-H52QUFwoEaQJZJTN6AjcjDh1dNF4TYCs_BmchCBwENQhFbCo7VTUjB09SNQ92Rx0OZAKWXH1kN1lGbCw5UDshiw
22d567c8-0446-48c8-810d-7f574bb6ad36	9f92d0a4-f897-4626-907c-94c2691f4952	600256179662225563	incoming	text	ขอสั่ง ขวด1 ลิตร 2 ขวดครับ	\N	{"id": "600256179662225563", "text": "ขอสั่ง ขวด1 ลิตร 2 ขวดครับ", "type": "text", "quoteToken": "B6eTIAFE2wLppjOXNIBS4lM67uR-_mkxvksny3RCag6_Nv9NqJPIH_VmEXQN0Si3SHQ2SlRC7YgEc7Q1cmW4FGwI4iX7h3PL08upb8SGT_csJsP_N9adwiKqgBh1zJHUh9gDn_drGNjUmwOjJjMlzQ", "markAsReadToken": "sqHnMJNuz9fgFouBqozFmNlA1GnzIJlLnnN2Y9FYMT1-O3kZblqo3fpBpSkvGGP1Vs1VKQ1qokkbuiS_1Y7ZYMxsz9odt_V2cZK2imjcn_fmuXB0gZ24YDjo6U8BxKDd9Cl7oU1_Y3Gn9deOvITBi17zPCKirPy5xRxsKccvzTKwd36ecWsmCcuNX4BuG77U_aXUXn6B8itzpI3q6Tdwrg"}	2026-02-09 04:37:47.682+00	\N	2026-02-09 04:37:49.634+00	Uc1d672a46901399e0608900d89e3e3f3	Paik	https://sprofile.line-scdn.net/0hY_jeZjXQBnBHHBlDlA94TjdMBRpkbV9iPygZFnIeDBQuLBMgY30aEyIfWRd9LUNxP3pBRSBJXRVldyUlKnsqeCIcORdzRxpGDnkoQRBDWwF8fCFZbDEMbCF3XS4ycAlnFHMZSDdJL0UEUBF2bgEdRCJ8OUAEZUR8Y0tqJkIuaPMoHnElantBF3UaUUT_
3e4207b7-38bd-4e71-b422-e072fca6668b	9f92d0a4-f897-4626-907c-94c2691f4952	600256269252558902	incoming	text	จัดส่งที่อยู่\n18/2 ถนนเย็นอากาศ\nทุ่งมหาเมฆ สาทร\nกทม 10120 0648935166	\N	{"id": "600256269252558902", "text": "จัดส่งที่อยู่\\n18/2 ถนนเย็นอากาศ\\nทุ่งมหาเมฆ สาทร\\nกทม 10120 0648935166", "type": "text", "quoteToken": "gpnw8EmzCIxXQ5XMG-TKPuYhbLagU3f2JcVZYTTMwmfh3sIRanOjF5J2Yu97777Zm_nVhTKpUwG7OTec6ZOhtw1G3OvY9lAfvu9IcLNDgbjk_ucDqAU9UzNFx_4jqt0EUEDpcdR5vN0yFFyTe8_sWw", "markAsReadToken": "YENVE32n2D2nEAxX74BNMlQsUhDYgJyrrX43Qc_jyFlZcg5BI5YQgq5qzgRWJ0lu0s-epEhgePvXWUWniA2QKJthMVEgPniQVAF-3jfdA4OdUOs4FisR1fVrC9ZIJTAvQpirH_IKOQMkQyKaY--f_EOYZabMYtznSGVsd0YkgfF8dD5Wlka8Zm74ss7EgqpeDr1Zx1qNAhrkQCZaJi10Zw"}	2026-02-09 04:38:41.155+00	\N	2026-02-09 04:38:42.177+00	Uc1d672a46901399e0608900d89e3e3f3	Paik	https://sprofile.line-scdn.net/0hY_jeZjXQBnBHHBlDlA94TjdMBRpkbV9iPygZFnIeDBQuLBMgY30aEyIfWRd9LUNxP3pBRSBJXRVldyUlKnsqeCIcORdzRxpGDnkoQRBDWwF8fCFZbDEMbCF3XS4ycAlnFHMZSDdJL0UEUBF2bgEdRCJ8OUAEZUR8Y0tqJkIuaPMoHnElantBF3UaUUT_
06771941-aff4-4487-8983-d197a1c99ffb	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600256376006246471	incoming	image	[รูปภาพ]	\N	{"id": "600256376006246471", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600256376006246471.jpg", "quoteToken": "FTT_W3gw8AMRJ2X_x_SYCmrJ2k2WtngYFjeb6C6pqZ9Hn6q89gM6X7xdq7bWVwwgN-tATz5azcCH_jfNhwhWqnmhQCoo3lcDqfvHzms-4_QSdTaz-3PkzE5NAI9K40wYj9dgnzdsLjLxO68h29wdXw", "contentProvider": {"type": "line"}, "markAsReadToken": "f21RvfN1gNm7FLtJ6Ir6LiNid2ZowuDRWwgWOjHPjp2PB4ZQt2h-cZxynkvkYu36FvV6j1HK12Chw2eoXjc7fxG8FdgD45gufW2Eo-pCJ_Zte_T5NHCyi4q5PCAcPKSoyrkakX1TGaTYc6YjvWe81fx5XpVjwXmglmtJsPv1wFME12akv0rQMUxSN8kwndny8KKHDWUn1hV1wuoYoIr0tQ"}	2026-02-09 04:39:45.113+00	\N	2026-02-09 04:39:46.649+00	U4ddc32e139a6ed8679bd1b9920092889	โจ๊กสามย่าน คลองขวาง	https://sprofile.line-scdn.net/0h6V_tDd8haXlyDX7nvIcXBgJdahNRfDBrDmt2SEMKMUAdOCx_CWt1FhJaMRlIanovDjkjG08IMB1-Hh4fbFuVTXU9NEhONS8oWGIimg
90cecb94-426b-4f98-ba1f-ac13e558507b	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600256413705175092	incoming	text	น้ำส้มมาส่ง10ขวดค่ะ	\N	{"id": "600256413705175092", "text": "น้ำส้มมาส่ง10ขวดค่ะ", "type": "text", "quoteToken": "p-eQj_ayNuJRClsnGb8qd-IVB5maG09CqCrpJsUXcEUCBLjWdSOVDfwmLBl7SfuLVvo25keKkjgGDVSdrKxq17UrgzOk_DbwNjc-S4uqg6vno6hAWz83mjgplFvIM2YQGfx3wk92_NgxOwNduqm1mw", "markAsReadToken": "qO-eJXkH_stDawxt0GRbBNIId2UAenp9GJicwqA8pThTCuFxEHYaOWguPLyPXVpDxLWOP9A5R_E1fpkrO74GpZSMrL9x5ZUZz-kuTfMF1dC_Sd0uYE-qGK8UA64gVVai8rJntunE6ciLuC8rFbpWvypXvteyOs0gnHawpO5hM8lmQcRHu4jSREIkcZy-sj_PHirPk6OjQWku7pAakM6HQg"}	2026-02-09 04:40:07.139+00	\N	2026-02-09 04:40:07.893+00	U4ddc32e139a6ed8679bd1b9920092889	โจ๊กสามย่าน คลองขวาง	https://sprofile.line-scdn.net/0h6V_tDd8haXlyDX7nvIcXBgJdahNRfDBrDmt2SEMKMUAdOCx_CWt1FhJaMRlIanovDjkjG08IMB1-Hh4fbFuVTXU9NEhONS8oWGIimg
13e21b57-8ec9-4c6c-ac0b-64e01e42aa8e	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600256428200689963	incoming	text	อันเก่าเหลือ 1 ขวดค่ะ	\N	{"id": "600256428200689963", "text": "อันเก่าเหลือ 1 ขวดค่ะ", "type": "text", "quoteToken": "NbOJ2D77GYPzOyRIjNnG1SUverUFyNBoBg5wMXXZ8NVE-vYUICwXej0NGTCUCzYWIvfw6a2ut55VgEH-vVDOBE5B0IthG-6ZVjU8pHqo7SegIwxFg-1T0IEDv_IkqROcBdH4fzLX5Hz3FMSNakJqCQ", "markAsReadToken": "I5g_O1J34WRrrl_5hcMVJ7tvuRvz87BDq1HFd3PK5ozxZlQii50Zl9hhd2cbFdiQ6OAZ9EPTUBpU_2wZ8vU9Tr4GwjxtLZpNCS8puJo3ti13BkUXcYnE49wa0fqus3tWuG8z6hg-1XfPccAZjuy_3kXvpVEj1G5FgIBWwEH93P2acxL9BW-yTmIhBxHDto8ahYOq3qLpsmX76tagK8Z3jw"}	2026-02-09 04:40:15.958+00	\N	2026-02-09 04:40:16.498+00	U4ddc32e139a6ed8679bd1b9920092889	โจ๊กสามย่าน คลองขวาง	https://sprofile.line-scdn.net/0h6V_tDd8haXlyDX7nvIcXBgJdahNRfDBrDmt2SEMKMUAdOCx_CWt1FhJaMRlIanovDjkjG08IMB1-Hh4fbFuVTXU9NEhONS8oWGIimg
e874476a-1db5-4385-a507-9443690f2367	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600258934967632199	incoming	text	หมู่บ้านน้ำส้มมาส่ง 15 ขวดค่ะ	\N	{"id": "600258934967632199", "text": "หมู่บ้านน้ำส้มมาส่ง 15 ขวดค่ะ", "type": "text", "quoteToken": "QojqjkaW5SxQ2IvrnSeRa2cBvlC4Qo6xN1uDrCNhw8XkQZP8Ejcx_tsdpulbwlKvhZqpmmfKdocWDPxSBB5SFWrvM3h1l2exu8hNeZmzhdxId1lKqBDfaelUV2HFONo94tiEZPoK0OcSG0MVF9YNwQ", "markAsReadToken": "0XJnp7VPVBFp2J7RfdYGr78BnbWV-uF4ZA-lN-zInoVbwjTc6yZlmxPBQobKhFOL6ersjlsP1VKxeHLFO6Ox59iJ9iLQj_X2pyuSnh6JhwbKrkXbMZ95xVDC1BtllCfnf0wOk95OVJevmBMrw6zdDO1KHYDBoxNMwkj4AYjq0PtiQcDFW8EKT0ZLDwdSrf5dokfny1ZkhRIenHxM4c0NVQ"}	2026-02-09 05:05:10.13+00	\N	2026-02-09 05:05:12.43+00	Uffe6081377ac66e360cfc7656c02a058	โจ๊กสามย่านเศรษฐกิจ	\N
5391afeb-59de-433e-848f-355f6d61be91	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600258949212012971	incoming	image	[รูปภาพ]	\N	{"id": "600258949212012971", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600258949212012971.jpg", "quoteToken": "76-0furXKQ87A6q2dLZJtcRyu0SULD9J5lp5kBH94wgw-6pXjQuwHLOh_gm4J-G9y84SQkMWoMeTxfrHwBM48os2C5aOWxjzHPG8Ua7XaEjx7IjKa1ZCYEXvaBnbmqw4yuBmZpB42b9O7En4grNUsg", "contentProvider": {"type": "line"}, "markAsReadToken": "BbfqpE9p97VgoWT1ZQFh8NwOi40S6jiTl4fy_jazKrML9jO0t0LMqxevc0LI3tlWzdPTq3rTsDGBa-t98TFK8pqrWGsvCRrYnS7QqawbCkSvCXC2oQP3wObeTDtfilWvYfuF2aI__4P6nb_c9LpPbdB50YgLVF__x42m0dcLOGlhVudiNuzRZ0V2--1W7CKBTn-ns8pQlNDzawCYZ_bxkQ"}	2026-02-09 05:05:18.861+00	\N	2026-02-09 05:05:20.577+00	Uffe6081377ac66e360cfc7656c02a058	โจ๊กสามย่านเศรษฐกิจ	\N
64a8c613-01b1-478f-b067-37974942aa25	0440dee7-1926-4810-bb67-6bd159a4829c	600261920406372800	incoming	text	พรุ่งนี้ออกมาส่งแจ้งนะคะ จะให้แม่บ้านไปรับ	\N	{"id": "600261920406372800", "text": "พรุ่งนี้ออกมาส่งแจ้งนะคะ จะให้แม่บ้านไปรับ", "type": "text", "quoteToken": "MTPU5YqTQj1LyONS7qwIHa3kmj9jEscYnjpRTRMmA_mbdodq2ltijFlhKRGptxePADpeJ81SKY_7FSrlXS13d1Nd-9r4XEbMXIRVwYWlngpB94D-uvaiUgcixuPxRjrwrgurjhC-TszLWn0FQfbLlA", "markAsReadToken": "RwWliYN5tWfNEgT__RVkJGIUwd4RivRmKaxZO6fVUXK9zLP96hcwzuKUc_Id8FLH1t-2ygtqQr4kERZnXhVnaCixTlYYwavbV9K1mw8lCIl-DlFHob4Wds9YDIg2DrBFnFJXWEWyznlNFQt09qU_-Wcu7YxkV9JuBoPkIiugq5fjlaOh5N2RFBA-pGLlrIg1L4vzHPI7Vwc_jX2BMXIEKw"}	2026-02-09 05:34:49.56+00	\N	2026-02-09 05:34:51.607+00	Ue55197333340e6a4c9cc114f22f3599e	♡ ʕ•́ᴥ•̀ʔ ♡	https://sprofile.line-scdn.net/0hf1Te1C09OR55HCYVq1tHIAlMOnRabWAMVX0kLEkcZyxDJH0fVXNzLRsbZylNJCpAAn0keUwYNyhbew4fVHIBPw93H3cDeSIhByw-HEhYHG87cyUwMnILBidCH3YqTwwfLioyfzR9B0UtXH48JycXLRJMEigcfiUeFUtVSHwuV50WHk5LVHt-eUsabirB
121fa986-02ef-418d-976e-45c2919bc452	9f92d0a4-f897-4626-907c-94c2691f4952	600265336667242566	incoming	text	กินไม่ทันครับ	\N	{"id": "600265336667242566", "text": "กินไม่ทันครับ", "type": "text", "quoteToken": "BoTDELvyFbCaaTcxzBfEWMwpSaeTPsJDsafnk-LGP1gLQ2u865-pr7QT9isfXL3d4lOCDMCbk9QYTb2ZeGirfF1YnUzLJyYze0r0Y6KG-KRr0dIVgAG0mj4cru055YzSuZ_-Vxa88lJG7yDroMZL-Q", "markAsReadToken": "HbINZSx4-yadZciO5rd-04MWYGTDyyuxmBywXbihbuk3Y4iKsTmEoSrv9MjdbbEZZEJc9Wva8q6poFrSng5HVfRa5fJRyZpRjvQT9oZ7TEit6UTcBgY3I_UdwNZo8kQZEXQxRnAjqjg571Hv3hCDElLI3_oWwdHX4WLUogBelmKLOAKEeOgWoo0knNB5XbQJ86Z9BE7iLSwtQHR6KZ6L-w"}	2026-02-09 06:08:45.669+00	\N	2026-02-09 06:08:47.901+00	Uc1d672a46901399e0608900d89e3e3f3	Paik	https://sprofile.line-scdn.net/0hY_jeZjXQBnBHHBlDlA94TjdMBRpkbV9iPygZFnIeDBQuLBMgY30aEyIfWRd9LUNxP3pBRSBJXRVldyUlKnsqeCIcORdzRxpGDnkoQRBDWwF8fCFZbDEMbCF3XS4ycAlnFHMZSDdJL0UEUBF2bgEdRCJ8OUAEZUR8Y0tqJkIuaPMoHnElantBF3UaUUT_
8c115231-0235-4fd0-9df3-e3e31de66269	c2c73a33-8fc0-41cd-92ed-952bb315612f	600267099314848231	incoming	text	**ขาดเปลี่ยน 9/2/69 \n\n\nสาขา บางกรวย มาส่ง 34 ขวด ขาดไป 1 ขวด + ขาดเปลี่ยน 13 ขวด \n\nสาขา ท่าน้ำนนท์ 12 \n\n\n**รวมขาดเปลี่ยน  25ขวด+ ส่งขาด 1  ขวด(ที่สาขาบางกรวย) รวม= 26ขวด \n\n	\N	{"id": "600267099314848231", "text": "**ขาดเปลี่ยน 9/2/69 \\n\\n\\nสาขา บางกรวย มาส่ง 34 ขวด ขาดไป 1 ขวด + ขาดเปลี่ยน 13 ขวด \\n\\nสาขา ท่าน้ำนนท์ 12 \\n\\n\\n**รวมขาดเปลี่ยน  25ขวด+ ส่งขาด 1  ขวด(ที่สาขาบางกรวย) รวม= 26ขวด \\n\\n", "type": "text", "quoteToken": "sD_rJv8wpX6UHDdxiqOu_9mRhCtZxWZY4X_biQ5OWjA_tyObJt2cTk-koZN9_IXZbHIk_ipYBli-IzOLT_hCqyiymFh60-YVBKaQmMduQmYxGS9qZkvNnX6DKSGbUGjfXhAfoRFocyX1DbhGt5godw", "markAsReadToken": "3PHBdYBYFpsCXZbGwAOlGHEY8tPBGHa4Y-wj7yP47yw9NJyZvo26s4qonQVSTsFdtw3YwGJf907mEcWhdp-CHR_C6T-5TgT68WUEnm0335QcVs6BpPCsy5YeYZSaNXRUUgQ2_djbZvaGRgKI8Nh_Zp_LMA0ff2w9RsdGmIhzng5pvP9Bzr5iYJjnq2U-U-9CbHdJPmlTKcVMSqq8AEY_JQ"}	2026-02-09 06:26:16.27+00	\N	2026-02-09 06:26:18.176+00	Ue195e0d6769e1e3bd64a79fcc79ad708	Hi	https://sprofile.line-scdn.net/0hR5dbzMBLDRpJGyBy__9zZTlLDnBqalQIZnUQdSwYB3l0IxgcZHhHe3tLBC13KkhFbHhBeysbACxFCHp8V03xLk4rUCt1I0tLY3RG-Q
40014c88-eff9-40bc-b133-b2b0313ddbd6	48534315-d9d6-4c70-aaac-8ee83b2dec28	600270730692657414	incoming	text	ขอใบกำกับภาษีด้วยนะคะ	\N	{"id": "600270730692657414", "text": "ขอใบกำกับภาษีด้วยนะคะ", "type": "text", "quoteToken": "D3lcaokaNglr22omF5AQ_JmlzaDZj0PNJFrBKFv0EGPy8hR2y6hZSPKsrBZYJuMeBGgWe4POnJl6sQqwqxgy1u9b43WGy94EWWi4u6j_nxo4yNoyY_FrWHy5Zbykuruu9sih2e0Fwg1JH7cbsFZEPQ", "markAsReadToken": "VQBIZ-wWmmFhTeVcrG6AXuE3D5WFp7y5a5z3dsGLyG4xNExn9VFjMmfnWin_xmoajDfWoOxnisI-PUxI1F7mMf624MfmUJhJKmWGSepo-RnXqsnmzb1YwyfzkDdM0ODTD557me9kbcnB0hM7FAvET5W8knP_HHNt0OGNs-CWAIuOf5Veoj8EZAgPLg7W3VJ2Z8UxXobvD9gj6pCRnNnigw"}	2026-02-09 07:02:20.78+00	\N	2026-02-09 07:02:23.061+00	U4c9f641c52186e21acf066b5c97ff4df	-toey	https://sprofile.line-scdn.net/0h6DDhAhq5aWtpEXfaHWkXVRlBagFKYDB5QHYiXVkQNwwEJiY5RXUkCFgVZwtRcnw9ECQnCQgXMV1LKGs1MXcveQBYVjw1cVE7NwkhSgBKSzJVIytYJy9IdAJxMzlTIic0ATxwdQoRUgsoRituQC1GZDRqQlkpXyY_TEYFPWwjB-gGEx4-RHYuDFsXPl_R
6dce4ac9-4ccf-4f09-b5ac-03f631cb435f	56d20bf2-70a7-4e7e-915c-ddf7cc35e0be	600283131723121255	incoming	text	รับน้ำส้ม16ขวด ส่งวันอังคารค่ะ	\N	{"id": "600283131723121255", "text": "รับน้ำส้ม16ขวด ส่งวันอังคารค่ะ", "type": "text", "quoteToken": "Z6H9htHj7iXG9Wp4PLSqGnJVpC_DbuCvOGA3ngb10e81udlbixbAgZkIKArrwI8FzFel_rdDxJzrNwBmGnEwrjO73aMy_lIT1igIDBcE2PJBs5w4V-aYIknYMsbggXgPW4bBEuu6pPsfjJDwakgN1A", "markAsReadToken": "61rKjhqUCPKQIzR9APY3gkcdhVsWJuV6-4YNmqpIOMFZmnkkoCntjdrt22D6V3psa3pEfIDmuTnclC6L4x0ZyE_wSn1knTc78PoQAF2rwmprM2c6-9gmxCcKgwtWOTQqVhDB_vGyAK8IzfmPVlRKZg131figGMpSzSGPHErXS8i6ullaQGvq8a5dnY80ca_7np7t-Vr3eia9M59LJLZpEQ"}	2026-02-09 09:05:32.344+00	\N	2026-02-09 09:05:35.449+00	Uac69d8d081945838f166cee748c6a835	Smootheoryth Bangna	https://sprofile.line-scdn.net/0hc5rVdqE-PBpfLxcxdWxCZS9_P3B8XmUIcE0ndTgran02GXJPJk53dW94MSxlGXxKckt3fj4tayJTPEt8QXnALlgfYStjF3pLdUB3-Q
01e9e4d4-aaf5-4068-bc4c-43636c41dc48	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600837789923410113	incoming	image	[รูปภาพ]	\N	{"id": "600837789923410113", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600837789923410113.jpg", "quoteToken": "HjWgBJe1oiRK8pWUfaJVo7ISinntuhxE-26NCfmUpW4rC4Rhz-uUy5bAEeswEh3X-ia1Dxr4dSIpvZxbUk9D8v0q08yi2GWNxf4XSj54LsSY0XN1cUXWltHFWARCTIbd4C2a5WHp8ePzpVUCGmO8PQ", "contentProvider": {"type": "line"}, "markAsReadToken": "Tn4fgbox7O0-e1M3PDWfBM3tPzte-ebRwu86xWBisz7kfgLy2ohYwFZMSgAdB0NMF1Lh9QWO75qC9KJxbBwzGiEpVxfziTrcVdFznV4kT_GTnMW5c5bGx3-P0TFqsP0aEP6TlSxydDahbgmh-X1vrQTEFCKHkyoLmhJTwLjNJocUexSY_caCnJIO1HRi7McivqMHHkLJtne7LXFK8aSl6A"}	2026-02-13 04:55:34.602+00	\N	2026-02-13 04:55:37.518+00	Uffe6081377ac66e360cfc7656c02a058	โจ๊กสามย่านเศรษฐกิจ	\N
0340db64-a7c8-4f99-a5e7-d83a87aac12d	48534315-d9d6-4c70-aaac-8ee83b2dec28	600288195557195930	incoming	text	 พอจะได้ทันวันนี้มั้ยคะ	\N	{"id": "600288195557195930", "text": " พอจะได้ทันวันนี้มั้ยคะ", "type": "text", "quoteToken": "FFcHXU863bUyQOn1vWxAr1TZGa4gGENhxPnRdkI1a4ClIeingPHzJwa6M_qNnQAAPtiywdJQT-pYa9srlDYnV78HP5H9qcEMrBSq3Ke2ECGHDVW7t_AsTIzUYLoVconXPsyWy5r9t1d0IozICO3HTQ", "markAsReadToken": "JRIGN3qYDNqi_7-4SHEGVSh1gXyjvYdLrVsyZVW-KfkBlHH5KB6icJAOf-QwFzpQnUIFf7c5A6zzF_7FYaQosCaISNq9ICAUhmqizMkDXVOPAyXUX6D1BzmOifdo2DCmZpP0htbsGdZV3mXDAosEZF1aXFnjD2WQrFxKwhGkpZVFPnsiZBhn1n0yWU0HzJBNOKaIRpkIOupE8n14ilXE4w"}	2026-02-09 09:55:50.6+00	\N	2026-02-09 09:55:52.877+00	U4c9f641c52186e21acf066b5c97ff4df	-toey	https://sprofile.line-scdn.net/0h6DDhAhq5aWtpEXfaHWkXVRlBagFKYDB5QHYiXVkQNwwEJiY5RXUkCFgVZwtRcnw9ECQnCQgXMV1LKGs1MXcveQBYVjw1cVE7NwkhSgBKSzJVIytYJy9IdAJxMzlTIic0ATxwdQoRUgsoRituQC1GZDRqQlkpXyY_TEYFPWwjB-gGEx4-RHYuDFsXPl_R
5e3818dd-bb1b-42e1-97e6-a59d873776be	56d20bf2-70a7-4e7e-915c-ddf7cc35e0be	600292986123190801	incoming	image	[รูปภาพ]	\N	{"id": "600292986123190801", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600292986123190801.jpg", "quoteToken": "jSJ7yHrx7we9Vp8_lu_LLI4Lp9-qFhu0NbRw8HTdFGiha-ikjpT6zjBort6xJUMf_hrVVrzrthyc0ofA1zMZukeoNS_SdGiIM8FtMIORaaRs6UKfpaeuAsJIvmqQ_i0BhDZzPTqEwPJU7L7XAPrYlw", "contentProvider": {"type": "line"}, "markAsReadToken": "ajfaYJruYHP_oR9BiigEUZlFml4l-ySEg45qvOrWhd9LTIELLWfyWxo0XB5T8pN9GxxzA149R42DGquJVjOut1mTCL-sWazm9Kowcg_5Jd_s4BgXBGv_Zq1fEyVzU9SNKvihF8mRMO7Po1zryWWhO0usb6HFij2zy65mLwhUiPwdXW2H9UoRYl_uG-oWPLgnC0CLy5wlEGjjZWR6m63h2A"}	2026-02-09 10:43:26.593+00	\N	2026-02-09 10:43:29.79+00	Uac69d8d081945838f166cee748c6a835	Smootheoryth Bangna	https://sprofile.line-scdn.net/0hc5rVdqE-PBpfLxcxdWxCZS9_P3B8XmUIcE0ndTgran02GXJPJk53dW94MSxlGXxKckt3fj4tayJTPEt8QXnALlgfYStjF3pLdUB3-Q
14ae8f62-47de-4d73-88f3-eff69a85c4a8	3dd97414-b1a7-4c2c-8130-47c58799df01	600301578507255865	incoming	text	@Joolz น้ำส้มคั้นสด💯 9•2•69\nสาขาFoodie \n\nน้ำส้มมาส่ง 14ขวด \n\n\nหมดอายุ  11•2•69\n\n@Joolz น้ำส้มคั้นสด💯 	\N	{"id": "600301578507255865", "text": "@Joolz น้ำส้มคั้นสด💯 9•2•69\\nสาขาFoodie \\n\\nน้ำส้มมาส่ง 14ขวด \\n\\n\\nหมดอายุ  11•2•69\\n\\n@Joolz น้ำส้มคั้นสด💯 ", "type": "text", "quoteToken": "aB8R6n81UXd6whbGBAv0zJFj4gEqD0T5bBmRVmh5Q0k-GWFYBRatODMR5Tur1rOgGVu_raVru5XiRDmi6LIe1rg5rE4OXpR-LpXU-aVMqRfPO6_s56HTd3jhON92IpfrbHb34sSjsHFX4xh0piVCLw", "markAsReadToken": "V4p0FlcXrQbPlQtxPsg0tPF8qVqotWmoFsGdKqkz1yU4-C5ctMgQNPCuneXjKQ1RP473g9anWYdC_L1xqKVAJt4aLDtaibj9PO0wgFfZhTIZ9ErDz9BGGNW480uzYcAEsT5BNAxjwpRepP2tYTjT7MJQ5_q-KgemJswOECzksc49wq-za3ELr7xksylszmAIl8BRmrqnb6Yjl-jZRS7BVw"}	2026-02-09 12:08:47.519+00	\N	2026-02-09 12:08:50.1+00	U3065b08d77070d6cdd734f0d47f35c69	Nan Dar 	https://sprofile.line-scdn.net/0h1emVhAECbkpAL3FkRDEQdDB_bSBjXjdYb0EpL3AsMn4oGHkbOEAlLn0pM3p4HnoZPx12K3AsYnJiTHd7H0BeSDJSNnMoRUgeDk5PUBZ3dTgmHFZ0Gw1kSnwqdhR5eXxnPk1FdnFzMjEOVCF9JxlzR2loQCN4dkBuG3gCHEUdAMkvLRkfbUgpLXIpOX74
f9c128c5-e850-46de-a67a-99ad31ecd5e5	3dd97414-b1a7-4c2c-8130-47c58799df01	600301789933469766	incoming	text	   เช็คน้าส้มสาขาลาดกระบัง\n9.2.69\n\nเหลือ  =6ขวด \n\nหมดอายุ 11.2.69  	\N	{"id": "600301789933469766", "text": "   เช็คน้าส้มสาขาลาดกระบัง\\n9.2.69\\n\\nเหลือ  =6ขวด \\n\\nหมดอายุ 11.2.69  ", "type": "text", "quoteToken": "SgRqyvMg0CHAcSbEQGJ01uBubnWbFGQ7HsYeEqStN_DOtHg-3OX3J6tou7gER4IOx7iQq0GsS8-g8YXltjp-3Q8W0oljSWTIkoURFU1IoS4n8g1FXMs2AqfTbm-rhn1qBpi_8-cF7ZGvoD3_pljVsg", "markAsReadToken": "oNxFVz0m8Vo5UYo0U1IXTkYK-7WOIfyvO7WDN9wFpmvrPaTxT06od0zXgW83QW7EnHNuUIVMJCFPz-i_TrqVg50ZQxqkRHR0O4-hxLpJxabKcg4SLwEFaqSt7hkYXQCIWpeTHp9J34xFbC9WWyZJh_bclt-6uESZOTpBzyhBIlCKmAQiqvqCq3dXDMZtNGClgaTWbEcu1ooIHIOXkO7nCw"}	2026-02-09 12:10:53.501+00	\N	2026-02-09 12:10:54.875+00	Uc8265ddbfeaa2db475bb998c2b0cb63f	โม	https://sprofile.line-scdn.net/0hYo6-1w8gBkAbVBdIjYd4P2sEBSo4JV9SMWBNJyZdWXkmN0BDYjFPJ3pdDSdzYEEUNjoZdipcUSQXR3EmBQL6dBxkW3EnbEARMTtNow
8508779b-65d3-4c2f-9719-7c2e234005a0	48534315-d9d6-4c70-aaac-8ee83b2dec28	600308042214670929	incoming	text	ขอบคุณค่ะ	\N	{"id": "600308042214670929", "text": "ขอบคุณค่ะ", "type": "text", "quoteToken": "ELNdelhQdmnfZ09rsewG3OihF6yyHo4_wpTJXap4VzHxcqU8UCx5zbEa9Noig7tZsLdqR64EGYnTxsUg-UxihbPnoevUznjziMPwx1kY6fciEIIp98NrQJSGvVbyOHKXE0gLil7Yms6_XsvkGCZQ-A", "markAsReadToken": "d1RlE9yZPCa05iixOLWpXmjxwyroGzI3gY5a6MSQH6p3urG1zmprV1AHi5Ei7HwnsSUKAWfw4GkxYUM9C5OanTSYH_9iR6RKzz2svM1C224j6-OdGnZqbh4t98-N5uk3InW68VWZCylV6ndDk2BnCz4iZ3t3SVXDwPcv1Mwtk6e9WPQHIp3RY7SLX7ETM-YhwLoBlbIQGU1Q5ZK7RF0Bng"}	2026-02-09 13:13:00.259+00	\N	2026-02-09 13:13:02.656+00	U4c9f641c52186e21acf066b5c97ff4df	-toey	https://sprofile.line-scdn.net/0h6DDhAhq5aWtpEXfaHWkXVRlBagFKYDB5QHYiXVkQNwwEJiY5RXUkCFgVZwtRcnw9ECQnCQgXMV1LKGs1MXcveQBYVjw1cVE7NwkhSgBKSzJVIytYJy9IdAJxMzlTIic0ATxwdQoRUgsoRituQC1GZDRqQlkpXyY_TEYFPWwjB-gGEx4-RHYuDFsXPl_R
f38a5157-91e1-49c8-bb21-e710e1872bc5	432ade27-a9da-42af-8a49-eb93c65bc743	600314851935388133	incoming	text	สั่งน้ำส้ม 25 ขวดค่ะ	\N	{"id": "600314851935388133", "text": "สั่งน้ำส้ม 25 ขวดค่ะ", "type": "text", "quoteToken": "i3E7jorW6bwUqJKyDOlmMDOtMe1KFkNbpU8tKc2E-aw3kgK6Z47uoXLTiGnmDCaN3pPBcZIabHFwPlAL9DhpylTZqP7a_UIjIKatmfQUlAcWvChKWJ4jxmOSJnB8UEmNaLQI_9nC8fBzHU06QAp6-g", "markAsReadToken": "3xjcBCDFVq6oUuQ3l4hjbwrM_b_rRL0KNExOIrvI7aUcYZuXFBkdMWW5x9C2Z-mggO7DBZvl53mkmWiS_iyPxzgQ5aWQzm4Ww-wEczzmjQeMne31BIZEjB03sd7BsX1yLcX7BJkMFUok8ElbmxsU9I6TbcG2OOCeXteW5alEXGdKCAZmGVcdNrHdqp5uXZVjiuqn6cB7TweSLa3WjlA9Yg"}	2026-02-09 14:20:39.23+00	\N	2026-02-09 14:20:41.547+00	U1eda11f48df8a243dbe61a7177148d81	Yui Praewta	https://sprofile.line-scdn.net/0h5dN72hWfaktjTnyOJfAUNBMeaSFAPzNZSS0iKFcbZHsJLn4aTiB2LwQdYH9aKyROSntwfQZMNChvXR0tfRiWf2R-N3pfdiwaSSEhqA
6ae2351a-33b6-48d3-ad61-ebcb4fbf109c	432ade27-a9da-42af-8a49-eb93c65bc743	600314869216444724	incoming	text	ส่งพรุ่งนี้ยังทันไหมคะ	\N	{"id": "600314869216444724", "text": "ส่งพรุ่งนี้ยังทันไหมคะ", "type": "text", "quoteToken": "oU1mLPLRXUmYBeyc-3bv4LFp6FRD2Hfq5MmzQXN-tBvOyiwlF3GT7dMc0wF5i0zhOaqSY7Drhuq0BbhV2-_xdYoEIIiO1oY7syyH2hX3is7Roo61b9vUHJcBiBcGZFmjU7QbE__fwWaWieaqj9xbUw", "markAsReadToken": "H4g_vE4TbR3jN_ZqaXSawh5zLrJcv6TFne46Yr2px51WI6jT3u8zzYEwwcIqKhPiQVKItFBLVH6uylISyOaEHwPy8PB-7xGvStlECdvwoZ2IGeLihsyd0cvYKLZ_-RMbkxPdfXjJyvJbuf8ZB3Ow1yh9KWjhlQRtYnkrukx_euMi-yv7zM6GoKkvLFi7yhDXk8EmNYtIIcGeyog95KHQqg"}	2026-02-09 14:20:49.45+00	\N	2026-02-09 14:20:50.395+00	U1eda11f48df8a243dbe61a7177148d81	Yui Praewta	https://sprofile.line-scdn.net/0h5dN72hWfaktjTnyOJfAUNBMeaSFAPzNZSS0iKFcbZHsJLn4aTiB2LwQdYH9aKyROSntwfQZMNChvXR0tfRiWf2R-N3pfdiwaSSEhqA
55838e28-9e80-4c57-9707-8a6f6425e918	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600373633864696197	incoming	text	อิสรภาพสั่งน้ำส้มเพิ่ม 15 ขวดค่ะ	\N	{"id": "600373633864696197", "text": "อิสรภาพสั่งน้ำส้มเพิ่ม 15 ขวดค่ะ", "type": "text", "quoteToken": "WZKLW15v5N-HxbzvIYARUqQMd1PrtfB3_zXHl4pBqg4ZD5P9xfRNdFQZubVwtHdEiuJrcyFxQffL8HuiHS9RiRML1JvdeYpLxpvjqRaOqdDPpOt6whjZC8n-QXRggXZBGWWDVMvu3-1FnrOOa0zQsA", "markAsReadToken": "P00_NKwv9koJx-y2TUrO1iV24EXnSuOt9jtOyC1wlFH4WWVbaEAzSNjpeuMposbBdQaS5P5T_zXpsGC0hL_SC0ChdgTzzbZc3JyNwrptr-UB81_9KBy7YQ4dPcuFXKF59LFcEC1PVlc3M2uMXrPaiP2EmGMsM1kaM_S2Xz_m2TcDY35Bp0n2x3ZkdIR2FxmpUrlaGBXJCQwLrgTBk3mJBQ"}	2026-02-10 00:04:35.989+00	\N	2026-02-10 00:04:38.625+00	U9d32ade207a3fc6e0aab919b19338a30	โจ๊กหมูสามย่าน	https://sprofile.line-scdn.net/0h9eDlci80ZkppFXU0HAMYNRlFZSBKZD9YRHQsK1gWOHJScXVIQXt-LwtHPSlRJnZORHt7e1oTbyhlBhEsd0Oafm4lO3tVLSAbQ3otqQ
c6e14a27-27d3-4ea5-9fb2-0a3c892982fb	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600376598365733171	incoming	text	บางขุนนนท์สั่งน้ำส้ม 20 ขวดค่ะ	\N	{"id": "600376598365733171", "text": "บางขุนนนท์สั่งน้ำส้ม 20 ขวดค่ะ", "type": "text", "quoteToken": "xEmumsYcmlxfvggEFX-VL-vvD-kdXliKCeIDzEsd3D0SRVy8XHKvau9teJa7jkwoT_T4fw4WDiF5QwVYDH9GZmXmofg8FLMLThaJRqpaZDR6610TDpqEWiXpez13raGUDlxdX6q_2Tk3g_9dDaNJ9g", "markAsReadToken": "f611Y3Xsk6Ws-Jne9q2Gv6kL9k7V0-mtmdAYB4CyhUxoLtruwXyjaBhhZukf72qAtz0Fc7Whh0x-qBsseqDma9GwIv_x1WBMYMhKXEPDFu4F8npLunfV5VA9Wl5_0aeblF7_hyo_7a8GycYkMMU0ll1uyjRei66UkKfq5xFZSb4R6k4kKOQ0pFLz1uZMS0lyW1TQGSwaLMXSviuiqp1M4w"}	2026-02-10 00:34:02.784+00	\N	2026-02-10 00:34:05.141+00	U65a3931abc616559173b7aee523b58ec	โจ๊กสามย่าน บางขุนนน	https://sprofile.line-scdn.net/0hhqsJMqD-N15eMyAJCMRJIS5jNDR9Qm5MIlZ8bz87YGwwBHUIc1QvaG8xamowUHJfdlN9PW0ybW9SIEA4QGXLalkDam9iC3EPdFx8vQ
98a360cf-a4f5-49af-8e9a-67080c5dd238	432ade27-a9da-42af-8a49-eb93c65bc743	600377167566340406	incoming	sticker	[สติกเกอร์]	\N	{"id": "600377167566340406", "type": "sticker", "keywords": ["Hello", "helloeveryone", "heythere", "Peeking", "What's up?", "howdy", "hey", "wave", "peek", "hi", "cony", "line", "yo", "greetings", "sally"], "packageId": "11537", "stickerId": "52002738", "quoteToken": "plqIqcBDf5p5zAYv4270t8EDf9csS7JdhBn5-hkk8I1HAO6jS8v77wvKXSKgSD9xnip1krmG3eap_TJvuMbbtDeTaJtbaPK0BRLOuPzKEmYykuyo34b15wk7X7c0xsT_jA4wMquU7OHVYyMnbkKRdg", "markAsReadToken": "q1P0ywDLaOjXjtBjHaPwpugeQtuIvD61taBXLCBnkOlLCfJJeUbaEFDU6ARO4DleUYIFq-cTaCd5k5rcnWcACcmenRtxEg1yGNr3RLm_QghpVvU3ZdGEymmX3nKXZhQjtNdBeUkdioty50KGyNYgbywNNIx-bPoaUtLffmeNCWufMLerL2jwsH37q8lBHgOqs1iKFJHijqiBAUoEV-JIYw", "stickerResourceType": "ANIMATION"}	2026-02-10 00:39:42.17+00	\N	2026-02-10 00:39:43.286+00	U1eda11f48df8a243dbe61a7177148d81	Yui Praewta	https://sprofile.line-scdn.net/0h5dN72hWfaktjTnyOJfAUNBMeaSFAPzNZSS0iKFcbZHsJLn4aTiB2LwQdYH9aKyROSntwfQZMNChvXR0tfRiWf2R-N3pfdiwaSSEhqA
5c7db490-3bef-4880-95b4-e0572df96f2c	432ade27-a9da-42af-8a49-eb93c65bc743	600378174232068526	incoming	text	Ok ka	\N	{"id": "600378174232068526", "text": "Ok ka", "type": "text", "quoteToken": "aL5cn1JDLF2Glefh70bzkG_aHLmT7zfTYvl3O70QydFuwd2DSvcw9EtfojQ6uMGriWhtkwTFEjHR4LexZNb4tG62OvG_JeblEkAlEQv--sm0iAZ8q_oEY6_wcuCjl4tKujQcx49ntOKsOOqAt8Yvfg", "markAsReadToken": "L3vwU-RneTI2ZlL6B3AUvXkN1WIM8VeSiPyqskqZ-z5ma0KScMpT_iFyZG67jVQlhJrr2aw_p1a1-eoKdrdTYoHjP_nLOoP-cKEMrRf3Qf8AumYkBoWFmJC9c-b77qCcB96kvzOByCALJ1con7s0AJnm0SM_COP5CzLOvOpXF1ZOWpP0RkiR7m2NUNqjRt4bQUNIEXmBElLSePCm4xx-HQ"}	2026-02-10 00:49:42.272+00	\N	2026-02-10 00:49:44.757+00	U1eda11f48df8a243dbe61a7177148d81	Yui Praewta	https://sprofile.line-scdn.net/0h5dN72hWfaktjTnyOJfAUNBMeaSFAPzNZSS0iKFcbZHsJLn4aTiB2LwQdYH9aKyROSntwfQZMNChvXR0tfRiWf2R-N3pfdiwaSSEhqA
9a587909-ef65-487d-9b50-46f1eb0c106a	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	กาก	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-10 01:38:32.698+00	2026-02-10 01:38:32.698+00	\N	\N	\N
1832d59f-ecaa-4bff-81c3-4a2d4ed4b415	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	ไบ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-10 01:38:35.017+00	2026-02-10 01:38:35.017+00	\N	\N	\N
edfcc170-0cfb-4240-975f-42b2e1a89abf	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	ใบ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-10 01:38:36.017+00	2026-02-10 01:38:36.017+00	\N	\N	\N
28004835-2ae4-4a0d-9050-873ba1f2ac39	d92f5769-9418-4c0a-9003-ec224f0af4ef	600383136597017075	incoming	text	สวัสดีคะ	\N	{"id": "600383136597017075", "text": "สวัสดีคะ", "type": "text", "quoteToken": "glQ7yJnUxZRGdEI-u-jBIQmC53KDMl1McMaVsh0DAfs92cTHqfTMyiRjJVTBcTJF0T_EYqU_Zqjj_cgm-nSNqbNavClTl4KSWw9XhpGFBX9EVMBCLNX06Dt2fKp9LKELyeUlIK7w2Y80m45p8F1_xw", "markAsReadToken": "0aXeJpZ7-nFd6i12AU3JswUs7JCsd5PunkkW40nn9WLR5MlUMEI4weVJ-IxQ1FtvQCyY0X0BkiXITk89xwsCUgBuTxtJTFMSIieNs8cSKaBCea3ATk8DTmlyI7FR_WcYdJ0MqyWW9Gp9rGgSfHFCWDfFQQF3JcVBFXHSFr2MBUzbR8eIe8TfcvmjUdGP11dFz4WWkzqZ-KkoNyoqHtACCw"}	2026-02-10 01:38:59.907+00	\N	2026-02-10 01:39:01.203+00	U415741e9d2ce465ec3c88c97a3a7ac81	...jay green jay...	https://sprofile.line-scdn.net/0h8BWbxmzVZ216G3hSE8AZUwpLZAdZaj5_VX16DRwYbQgSKSA_Bih_DxgZOFwTeCI_AnV7WUcbbFRYfkJaNRVACDwSOikvcU5ZKSRBXk5IQyBCe048En5tCwYYMB4OK3lbJH1qCjtpQ1w5cV5bBTxOUQZ7UAEpaXNyUkwLO38pCe4VGRA4V3wgCkgdMFnC
9df8fe2b-9171-4a5f-889a-3eeb84c96781	d92f5769-9418-4c0a-9003-ec224f0af4ef	600383152183574683	incoming	text	สั่งน้ำส้มหน่อยคะ 30 ขวดนะ	\N	{"id": "600383152183574683", "text": "สั่งน้ำส้มหน่อยคะ 30 ขวดนะ", "type": "text", "quoteToken": "Ppb9iHoWVSBAiSQeAP1iYnRpwAmsPoqBd_O8D11a82Y9QomySvjj2GIPfin8jNEon_exyna1h6-dWVFKrXUAPlyBdcpIMXEjEG8-GRa8-jB_zGW7ALtuiyrP3brB-L3nY3T2JNKWsT1PKgNrnt8psA", "markAsReadToken": "erQcXg13roVVOCqE8dmuruk3E_GHVe3zFmnn2vG3SVXjuniTm02Zg9SOGYiSkAn2V7hoOTdmTkakbUFm45mlls4Ynow0BG3aJKW7hiBE6mf8UJ8Hpljzq3ZHS57P6O7EDf9MFYq5m90F3LV6s7T_DdiLGGx5yLYsiFuauMRLJLbYzeDmWJrCObIlHvIrPT-2BtZYuxfYcHaP40mQpnHyCg"}	2026-02-10 01:39:09.2+00	\N	2026-02-10 01:39:09.875+00	U415741e9d2ce465ec3c88c97a3a7ac81	...jay green jay...	https://sprofile.line-scdn.net/0h8BWbxmzVZ216G3hSE8AZUwpLZAdZaj5_VX16DRwYbQgSKSA_Bih_DxgZOFwTeCI_AnV7WUcbbFRYfkJaNRVACDwSOikvcU5ZKSRBXk5IQyBCe048En5tCwYYMB4OK3lbJH1qCjtpQ1w5cV5bBTxOUQZ7UAEpaXNyUkwLO38pCe4VGRA4V3wgCkgdMFnC
7be613ba-b21e-4c65-bb28-c9f80e299d07	d92f5769-9418-4c0a-9003-ec224f0af4ef	600383168122191908	incoming	text	แจ้งยอดเพื่อโอนให้คะ	\N	{"id": "600383168122191908", "text": "แจ้งยอดเพื่อโอนให้คะ", "type": "text", "quoteToken": "D-EidyFqSRlrRRjh6WqgE6il_DucIjomA1w37d7Z4Kz63VwY7yiOcJgDvNg0U08YB8TzbwEtBM0FceTrgxv70MXjz9H8FtYhCCT5HdJR-Qf9WOd4Rj7KOWRFPWfg1VW5Pcc-JIFPLAJcMcrKSojcDw", "markAsReadToken": "3FoFzI_dZS3mR8Hg94Glmso5fIrch-B5t2eTwb5wkIvuBlo-qdQ8PUyk4Ml-VrqnQSEYo7RpBOrAEqexk-kAhnqHUISUIAvJ_KFJtw-LMl44dwzH120EZbeWuDN8VNr-VuD1d9lhuD0rMX4bf5XZRXkDlS9wDEFEWwrBqSnY8qOLVuwfl_NDcOEwC35n-0I2_bd32J0q0rRwBA_jRv-KTw"}	2026-02-10 01:39:18.678+00	\N	2026-02-10 01:39:19.848+00	U415741e9d2ce465ec3c88c97a3a7ac81	...jay green jay...	https://sprofile.line-scdn.net/0h8BWbxmzVZ216G3hSE8AZUwpLZAdZaj5_VX16DRwYbQgSKSA_Bih_DxgZOFwTeCI_AnV7WUcbbFRYfkJaNRVACDwSOikvcU5ZKSRBXk5IQyBCe048En5tCwYYMB4OK3lbJH1qCjtpQ1w5cV5bBTxOUQZ7UAEpaXNyUkwLO38pCe4VGRA4V3wgCkgdMFnC
2dd3d3cd-fec6-4bc6-a8da-e46bdf1c95a1	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600383897763053740	incoming	text	9/2 \nพันท้าย 20\nคลองขวาว 10\nมบ 15	\N	{"id": "600383897763053740", "text": "9/2 \\nพันท้าย 20\\nคลองขวาว 10\\nมบ 15", "type": "text", "quoteToken": "TF52-zFLOXkvmI1EL45bGDEthgVAI0ouPs4kgjQ8dh2Tf9KAyrHYwdUswXaMKK1z_nHRNdlGmHNdLiDTKJnY_hqpOLZjj5pW7iLDCWIHRfxghZkJVynlnceLumKC07gBwdcmWQZaV3ejFn9vjn3hlQ", "markAsReadToken": "ISxVpP1ONzeID9_bOYAOlJuHrylERTkWh5cp0twJHdYz-NaCiayrNkGisvk0O560ETWEd1wEl26Ma_PnE5G9VbRFrL5UUX56Ldq_rT_Cg7uhH9r9qsF2IQWqh9zfvi2HKnD2WVzkEUW8yRT_oCHpLvJ9sVZex6nNDMd0ukpfKeFGjF1EpNeJL_-ym-5lxKc-vn4GoNJWRap3jc0i2FvAZw"}	2026-02-10 01:46:33.56+00	\N	2026-02-10 01:46:35.421+00	U979d0e4603bb832ac4cf72979d33da6a	Nuy Manunya	https://sprofile.line-scdn.net/0hOpdiNHBDEF9JEACd65FuIDlAEzVqYUlNZiQNMX9HG213JlQKZiFXMClASDwmcgULZSJYOS9CTzhFA2c5V0bsa04gTW51KFYOY39bvA
ceca7a12-ad05-456a-b1a8-f20a2d93779a	d92f5769-9418-4c0a-9003-ec224f0af4ef	600386109755359936	incoming	sticker	[สติกเกอร์]	\N	{"id": "600386109755359936", "type": "sticker", "keywords": ["Thanks"], "packageId": "21237338", "stickerId": "542612881", "quoteToken": "ZPj7FV0sE_8lJMr6fgI1QQbo5gL7AiS4N8ASQlELMIItvr3kKeScM3G3V9utrPRRlj-TJVmChZ0mM8evR9kEP8gEOCoxbp2msj9_LFk4CK2b-8FL5wHiJ3cymx-vx_y_T6Z26Djx7oXJveX4dTpvGw", "markAsReadToken": "ceCS7kEb2q2SCY8hCxKRzxatAmVGNeT4r1ALtoaoWyFXW86XoKkEOMJpWo5LoGv2mOPH-CMG8KpjC5dxtiXruEjgRGT6F3N6gzOC0A9MOL4H-1U6RYIxZDI5ZN_MtD0o8k4iWmGzePn25ZpRJzlfsPIddJeU6eDii0jlm7oWbnNlcxbPCizUCol9Dnw6h6tzY8qQWt93tJH7m_K39t7I9A", "stickerResourceType": "STATIC"}	2026-02-10 02:08:32.206+00	\N	2026-02-10 02:08:33.136+00	U415741e9d2ce465ec3c88c97a3a7ac81	...jay green jay...	https://sprofile.line-scdn.net/0h8BWbxmzVZ216G3hSE8AZUwpLZAdZaj5_VX16DRwYbQgSKSA_Bih_DxgZOFwTeCI_AnV7WUcbbFRYfkJaNRVACDwSOikvcU5ZKSRBXk5IQyBCe048En5tCwYYMB4OK3lbJH1qCjtpQ1w5cV5bBTxOUQZ7UAEpaXNyUkwLO38pCe4VGRA4V3wgCkgdMFnC
de779230-7db7-4978-b00d-379de590b7db	d018401e-70b8-4beb-a37e-521da9f16a86	600384541924262400	incoming	text	เมื่อวานน้ำส้มมาส่งค่ะ งั้นวันพุธขออนุญาตไม่รับนะคะ น้ำส้มเหลือเยอะมากค่ะ	\N	{"id": "600384541924262400", "text": "เมื่อวานน้ำส้มมาส่งค่ะ งั้นวันพุธขออนุญาตไม่รับนะคะ น้ำส้มเหลือเยอะมากค่ะ", "type": "text", "quoteToken": "QaYmWbsDEw_fUsA6ennJwRXpZZV2xfk55Om7OWIGUI9Fzi2ou21CJHtaHbZfkbiu01WuZUxDEAXJsLfAlxt5MtcJhbjpIe4-EjpbmBk5y_U5ytG8eIu1Uk1RzM_ifTNZPywqy1D5SIQjJ_2LtW1HEQ", "markAsReadToken": "aV8f-YM90QsepEaF89cqjJ3-N_JhsAkbe_hudPnJl-SluzI0qjTtGRPDdxUINTVy0UaSJ_Xqry-paMMUpLpzknSAsI2IHXNawbDeUqq3na43cRtK0P441_c8MJuYIuqsX-goJg0Ab2_HdSzKnSLEcqEQ9oSiyIKLRmn4LnPjHVgsIvQkx1xHzDHi57KbEzc_mfhJSyqpL2OcN_cS8wc78Q"}	2026-02-10 01:52:57.523+00	\N	2026-02-10 01:52:58.363+00	U0fde09872afa50bc61694226e41dd72d	Movii.👑✨	https://sprofile.line-scdn.net/0hk8LAATrVNBdhOCqPI75KKRFoN31CSW0FT197eVBrPXNdAHFHH1orJVw8OiAICnpGRFZ-IlY-PydDajUzGR55cidKLn88TBIpHRsDLg5sDlsrDhESKC4zcw5LOWYfUxBFNTooBlZoLmEVXCQUEh0zdzBENFoLbwQVCG9YQWQKWpQOOkNCTF9zcFM-YyPZ
266205de-70fc-4b3d-9559-28b97314a4b1	d92f5769-9418-4c0a-9003-ec224f0af4ef	600384768097648745	incoming	sticker	[สติกเกอร์]	\N	{"id": "600384768097648745", "type": "sticker", "keywords": ["appreciate", "grateful", "Thanks", "line", "Please", "thankful", "thanksforeverything", "Pleading", "Bowing", "brown"], "packageId": "11537", "stickerId": "52002739", "quoteToken": "QL7jRTIDiQ40HJrIoZmYp-1qybEa6JHJpkP8DtDQC8HiSR4ohozEGj1aFdbnawxEYPV4-ZtrTCWLN1m5qm8zB51fSH1P5UZCfStVWKMujb3TYgDkz0EivtDY1at2r3JtvnxuIa2dcL64mbs00HrpGQ", "markAsReadToken": "rMwznAVGkniJa908T6FTKrULi1Z9udJHOMjUdfRDg_Db-GIgdsszauq44JotS7HpYvMUutQ3BSv3jBqMjFNhXCcCrUynp72HSqJjse-DWPiS3Qlj2UbXaM4rHLTLHwIHH6EBscGQAzPPxFJC95N68Pt5rRykXaX38ISU7-1i52qk89te2fjHmMwtSBIzJlyzAjGM3qFhAUAh036jn2uN0w", "stickerResourceType": "ANIMATION"}	2026-02-10 01:55:12.412+00	\N	2026-02-10 01:55:13.751+00	U415741e9d2ce465ec3c88c97a3a7ac81	...jay green jay...	https://sprofile.line-scdn.net/0h8BWbxmzVZ216G3hSE8AZUwpLZAdZaj5_VX16DRwYbQgSKSA_Bih_DxgZOFwTeCI_AnV7WUcbbFRYfkJaNRVACDwSOikvcU5ZKSRBXk5IQyBCe048En5tCwYYMB4OK3lbJH1qCjtpQ1w5cV5bBTxOUQZ7UAEpaXNyUkwLO38pCe4VGRA4V3wgCkgdMFnC
edd27837-126d-462d-b00c-1a048bf52eef	0440dee7-1926-4810-bb67-6bd159a4829c	600385894016352394	incoming	text	ออกมาแล้วแจ้ง	\N	{"id": "600385894016352394", "text": "ออกมาแล้วแจ้ง", "type": "text", "quoteToken": "a1RKoMi48V9ru844lXCeMtq1jFwo1DW9P5GS2NgXDck_AAZYTIDr1JPxCgSgXfkmtICnv63CEdjv-cvW0QhlpmKlrpODtoG_YljqxX2IRGUg2RIgjLTHkX8OmLL159gZJ70ZA81agi1HtMZz6S24Ag", "markAsReadToken": "iYXc8cqw75ugsQWWxfvuIu_p-XteP7sJUms5ml0IDPosv-bWr8p9JUwJfF4i6yNcmKC0SVJzLHsgtzfcirrYIcGQcnB8TcerV509bj_k9ta6yKO2VsC4ZKbs7L-pI2zYM2M6Ab9GXp6vo92oyMllZctxkSnOO91uO2NgUuQoyFSEy6hTKYdci7bcBCc3KaVwR54-DAumzU1UiLCXVp_W2A"}	2026-02-10 02:06:23.421+00	\N	2026-02-10 02:06:24.912+00	Ue55197333340e6a4c9cc114f22f3599e	♡ ʕ•́ᴥ•̀ʔ ♡	https://sprofile.line-scdn.net/0hf1Te1C09OR55HCYVq1tHIAlMOnRabWAMVX0kLEkcZyxDJH0fVXNzLRsbZylNJCpAAn0keUwYNyhbew4fVHIBPw93H3cDeSIhByw-HEhYHG87cyUwMnILBidCH3YqTwwfLioyfzR9B0UtXH48JycXLRJMEigcfiUeFUtVSHwuV50WHk5LVHt-eUsabirB
591d6620-490f-46c3-9402-130bc1cb01cb	0440dee7-1926-4810-bb67-6bd159a4829c	600385898110779582	incoming	text	นะคะ	\N	{"id": "600385898110779582", "text": "นะคะ", "type": "text", "quoteToken": "uHomB1IrBV_PME3e_Bk0SJVzorhzqFlLS7fIdIlVju6VJFMz-NuQgJ_Sebap_1b5Y922FAhw0MUjwJL1qeLL1DgYC2EGGElrrYXsTLEgTO1efKcBRWm4Cwtu_to_H9OYIyzJrKNHzJE2v1O10ytIBw", "markAsReadToken": "GVtNT7tPTCacNajkiFZ91qxYxpTNaNCk06BLRBmJxfOr_iXpwNqsr4DAhY5MFzo9b_wKNnXVoCWKPsFMhyBByQ-etgoth_6981UxevcfJg6c_QfwufRj5tv7Y-JaXNjBZcevFy3peQ3s2QcR0m_DqPu8Dmwiw4Vr4Qbq7Za_uUni0hbaLxCMz2W_-J4vrXT80vPNg3iNQpX8daEKbpygOQ"}	2026-02-10 02:06:25.957+00	\N	2026-02-10 02:06:26.452+00	Ue55197333340e6a4c9cc114f22f3599e	♡ ʕ•́ᴥ•̀ʔ ♡	https://sprofile.line-scdn.net/0hf1Te1C09OR55HCYVq1tHIAlMOnRabWAMVX0kLEkcZyxDJH0fVXNzLRsbZylNJCpAAn0keUwYNyhbew4fVHIBPw93H3cDeSIhByw-HEhYHG87cyUwMnILBidCH3YqTwwfLioyfzR9B0UtXH48JycXLRJMEigcfiUeFUtVSHwuV50WHk5LVHt-eUsabirB
df0223fc-b89b-42ef-b4df-94e8098b7e24	d92f5769-9418-4c0a-9003-ec224f0af4ef	600385991089586654	incoming	image	[รูปภาพ]	\N	{"id": "600385991089586654", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600385991089586654.jpg", "quoteToken": "wwsvGbsT8bPHbs6NhFX6ZI0PvQlLGZZvQut-480yWCt2RzcOr5agr2pW7JtmSbDLhEckpjmS_AJtJzqkr83de_5j5QeMatQJzi_SoLixQ-L1HDUX0X0cg-RiGI3H0lp-cqs6ji-g7cfi5x32faB9OA", "contentProvider": {"type": "line"}, "markAsReadToken": "N3tOSiPFL3TxMvfZ8ANh7BbWtvtbAI53uKH1cHEkTASr0V2GOHMeRd3iPUIt4rqJyL-SkkwH8RjdZBAEQ6ZGfH4aS76Gw-GikndHVyKE60jrAOdx3gBLDmM3n5h9-rhbk-HAby2IbHlb22C1urupTZLbUxK4zOX5m0U_mjo0xS18Pf5XYFXglyMg-OIbt7HSHTKaLfsr_ctvmUf404cPnQ"}	2026-02-10 02:07:21.979+00	\N	2026-02-10 02:07:23.859+00	U415741e9d2ce465ec3c88c97a3a7ac81	...jay green jay...	https://sprofile.line-scdn.net/0h8BWbxmzVZ216G3hSE8AZUwpLZAdZaj5_VX16DRwYbQgSKSA_Bih_DxgZOFwTeCI_AnV7WUcbbFRYfkJaNRVACDwSOikvcU5ZKSRBXk5IQyBCe048En5tCwYYMB4OK3lbJH1qCjtpQ1w5cV5bBTxOUQZ7UAEpaXNyUkwLO38pCe4VGRA4V3wgCkgdMFnC
2ef7649c-9bee-4cc9-8056-25107414c1d9	d92f5769-9418-4c0a-9003-ec224f0af4ef	600386074253983796	incoming	sticker	[สติกเกอร์]	\N	{"id": "600386074253983796", "type": "sticker", "keywords": ["thankful", "brown", "thanksforeverything", "Bowing", "grateful", "Pleading", "Thanks", "Please", "line", "appreciate"], "packageId": "11537", "stickerId": "52002739", "quoteToken": "N4ja4U-4i-6rAmCzwUOolhFCRlFCuQgc_eRgb68jkQV5E-gBmzjk4lh3HZSC36j5Eq4V7dmlFcFrYQgtsBPzS9Rcfu6NdnCFi6eGnHRVNT0hKZcX1rxBkV9DaG9KuWrxjGjLe4EFRAt7QWnDo5xhFg", "markAsReadToken": "tK9P3tlTvNWgfrPb_JXUhDNZPv-mPdbeeXGUVNVHGsESneOzj_1HF_caXwRWU8hbT0MIFFhWjOnLS8zunCzjE_-0XJVDYZ8C5pcAl-cBMlPoMlF1AhfMFGVdp8LgwDv9Qg6FM0ZWYNoU2iRN2cngIBxqS-Jl5FmGkGdJmSFXGKQl1BpNdaKMB6gXpK2S0hEeWLPtwCDDX1TAHgLyY4IYhA", "stickerResourceType": "ANIMATION"}	2026-02-10 02:08:10.849+00	\N	2026-02-10 02:08:11.698+00	U415741e9d2ce465ec3c88c97a3a7ac81	...jay green jay...	https://sprofile.line-scdn.net/0h8BWbxmzVZ216G3hSE8AZUwpLZAdZaj5_VX16DRwYbQgSKSA_Bih_DxgZOFwTeCI_AnV7WUcbbFRYfkJaNRVACDwSOikvcU5ZKSRBXk5IQyBCe048En5tCwYYMB4OK3lbJH1qCjtpQ1w5cV5bBTxOUQZ7UAEpaXNyUkwLO38pCe4VGRA4V3wgCkgdMFnC
ea0447cb-f487-4258-8efc-cbe2615ecf85	d92f5769-9418-4c0a-9003-ec224f0af4ef	600386103010132292	incoming	text	ขอไฟร์ ใบเสร็จด้วยนะคะ	\N	{"id": "600386103010132292", "text": "ขอไฟร์ ใบเสร็จด้วยนะคะ", "type": "text", "quoteToken": "kTxcMNnpln4YKH7uPxi80F2njl1f9A7c97_8JX0iC2aYFnX7iY4HhpD140_33J1nDBag-rUrwp3gQ5znCZrOwxeOUrPepq1zjIw1P-_o1E5oBlsLBzx3bHBJQyLuHH50mrl_mI1XzuPbf51nzvxu_A", "markAsReadToken": "XM9Mcia2TkWPZ0g1Z-91JVQA_JS5Ood3VCBEhz9lTFgfUoDecmbHJvk35ziwXxcSVF486LXyPaWS2V8pw60-j6p2ek0d7t9vBoTRJl5FXPck6UJ61Tco_duTr6PIt1rH6ntAN_4V7-Z5eSRKDtmV8_cP7iZatZhK2epHLSCXV9XuHYLviS4tMCoauL7gWoiskhUzv84K7h4QDQiE_1iiyg"}	2026-02-10 02:08:27.993+00	\N	2026-02-10 02:08:28.642+00	U415741e9d2ce465ec3c88c97a3a7ac81	...jay green jay...	https://sprofile.line-scdn.net/0h8BWbxmzVZ216G3hSE8AZUwpLZAdZaj5_VX16DRwYbQgSKSA_Bih_DxgZOFwTeCI_AnV7WUcbbFRYfkJaNRVACDwSOikvcU5ZKSRBXk5IQyBCe048En5tCwYYMB4OK3lbJH1qCjtpQ1w5cV5bBTxOUQZ7UAEpaXNyUkwLO38pCe4VGRA4V3wgCkgdMFnC
8f22cd4c-505e-48bd-8a7d-6fa2b09b530a	d92f5769-9418-4c0a-9003-ec224f0af4ef	600386147234873774	incoming	sticker	[สติกเกอร์]	\N	{"id": "600386147234873774", "type": "sticker", "keywords": ["Thanks", "appreciate", "line", "thanksforeverything", "Bowing", "thankful", "grateful", "brown", "Please", "Pleading"], "packageId": "11537", "stickerId": "52002739", "quoteToken": "0QGUiCNbmNKWPMQDD8EkZ9fi4xdiQptoTMyHfI4e1hiJBpWACofrgVdTmcYxjprFGsehjnp12b43GMt1toRH_YxnsmCY4e9bX3LNwF4T-Kfdj1w8SHKg2iOhZXzS216Djy4DEXYO-cB8c6g3Na_Z-A", "markAsReadToken": "zxMfdp1wuvT5Y3hDtqxz_KV34ucha_n4syD3WKBgfZBobUeCjRrVN7rEwOiDNwtnBAt_OQKtroUz1JOwwX4Ehqri0-tuTalEJBlaV8h5gha_xGTNIDdxfEBMPHv-3GCe6e8I-TCL-FH6HUw4yN803cQjVxugXrvMQC6_f-lEDRFqq3_yv7di6TMolWGEVYQ_302rBf43cChGxOzqJbkP8Q", "stickerResourceType": "ANIMATION"}	2026-02-10 02:08:54.358+00	\N	2026-02-10 02:08:55.463+00	U415741e9d2ce465ec3c88c97a3a7ac81	...jay green jay...	https://sprofile.line-scdn.net/0h8BWbxmzVZ216G3hSE8AZUwpLZAdZaj5_VX16DRwYbQgSKSA_Bih_DxgZOFwTeCI_AnV7WUcbbFRYfkJaNRVACDwSOikvcU5ZKSRBXk5IQyBCe048En5tCwYYMB4OK3lbJH1qCjtpQ1w5cV5bBTxOUQZ7UAEpaXNyUkwLO38pCe4VGRA4V3wgCkgdMFnC
cd05a031-8e73-4216-a578-7eebad298e09	d92f5769-9418-4c0a-9003-ec224f0af4ef	600386227799851131	incoming	image	[รูปภาพ]	\N	{"id": "600386227799851131", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600386227799851131.jpg", "quoteToken": "Lm9ytKvOP4pptDV-_xzsRQ8qZXGyNkZAlLOMZG5d1kq7Q1tsr1l57lWOprskx3dSHcpEF9II2MB_1iUEJaOWfLFZ6wDhrNNegqDodRHPdndDQ0JANz4-f0h1Ngi_w5fBszfoDvaa4pl4WmnQxKMPvw", "contentProvider": {"type": "line"}, "markAsReadToken": "bLeDuntssrSEYZfYhd1VbwBo5WSArxM06tgulfGw8qc2hA2W7oljSxi5BvwvwYMvBX7_9MneW6CQvNLicRm4ifA4kU1EMVR85gjK9lgHT_Q9MtwO2hdT-38_ngHOp2bA88JYjhNf2fsMK3DpVN5A6aJl3fCagcv0UumFvPm5Q4B_7jmvjSEp54YrRKIokUTsSDbGH4NSLcRZiRw2F31QYw"}	2026-02-10 02:09:42.607+00	\N	2026-02-10 02:09:44.278+00	U415741e9d2ce465ec3c88c97a3a7ac81	...jay green jay...	https://sprofile.line-scdn.net/0h8BWbxmzVZ216G3hSE8AZUwpLZAdZaj5_VX16DRwYbQgSKSA_Bih_DxgZOFwTeCI_AnV7WUcbbFRYfkJaNRVACDwSOikvcU5ZKSRBXk5IQyBCe048En5tCwYYMB4OK3lbJH1qCjtpQ1w5cV5bBTxOUQZ7UAEpaXNyUkwLO38pCe4VGRA4V3wgCkgdMFnC
196de453-a68c-424a-938a-cd15abb6c58a	d018401e-70b8-4beb-a37e-521da9f16a86	600388295456981437	incoming	image	[รูปภาพ]	\N	{"id": "600388295456981437", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600388295456981437.jpg", "quoteToken": "-m4C4lJbYoz17bu_UEA9pFhDdaa52fSjOvE6H4Dp810hD8q4geW9gFDwv2dKmUqfew-GHpjFcxTqCPUahgTg767EkStIWNw9gO0Hi_w41DEhNsNgWO4kDO4pekVpcQTA6664oASxnP5xw9D4BoTIWQ", "contentProvider": {"type": "line"}, "markAsReadToken": "A1fYaC5JYaGKMxNIpU4H8L12nzWkd7HOcuWQtTQi9g8_hU9Je8pp6DrLTRReNvHSFRTJTaOCXzRONHk8D_7AiQmUJpTsW1QCEapf-Cq8kv88F4UkOpYQKNJOV-lKcB5hnMeOXI6rzJO6ESZDTdOtvPBLSkv6Q3YEaq1aZ3MhFVd23KQs_HLr5Nt9pCUSYV6sRERe5UqdlhBHdhCnQDg9uw"}	2026-02-10 02:30:15.516+00	\N	2026-02-10 02:30:17.697+00	U0fde09872afa50bc61694226e41dd72d	Movii.👑✨	https://sprofile.line-scdn.net/0hk8LAATrVNBdhOCqPI75KKRFoN31CSW0FT197eVBrPXNdAHFHH1orJVw8OiAICnpGRFZ-IlY-PydDajUzGR55cidKLn88TBIpHRsDLg5sDlsrDhESKC4zcw5LOWYfUxBFNTooBlZoLmEVXCQUEh0zdzBENFoLbwQVCG9YQWQKWpQOOkNCTF9zcFM-YyPZ
1d0a9e66-dc62-4224-b9c9-79af3c786158	609ec8fb-5f0c-4c0c-89d1-110b54b23ea6	600393462772662955	incoming	text	น้ำส้มเหลือ1น้ำผึ้งมะนาวเหลือ3คับ	\N	{"id": "600393462772662955", "text": "น้ำส้มเหลือ1น้ำผึ้งมะนาวเหลือ3คับ", "type": "text", "quoteToken": "H8_NoNcErA5TdhqDhuASIzGb_WQwHJ_Xgik2csXEFtp0Gz62krvBlR6yfsdbKoQL-X-hMn_GX4E4apEXnLc99s1I-erOUxs0jIH2sNEroSklw94qLuYewFo4YJYmBEy5D2y2E5JifBEIQkjr9fTLwQ", "markAsReadToken": "6v3tVTVKgziDI4uRcqAVQ_4-1fYF0HthJkK74GTGk5744JQpanZ4SpXL3XcEn9QnBiynnaVRnL2kOsvkDZtj_qrG2gO04i-8flhkyJf4X6D8_zkrCoE1roMMeZC63JRpTzNjZacwtFz3vFIpMtK3Xi2nhSIPLI15qEUt9FnUcwesHFeW4g87IQKZLPxNxuyMtXtMHpzhyeh_f2OA15s8Rg"}	2026-02-10 03:21:34.799+00	\N	2026-02-10 03:21:36.767+00	U3d11c5502a406836ead2d86cc246e94a	ล้ง	https://sprofile.line-scdn.net/0hag9laXGYPkgUFRYJl21AN2RFPSI3ZGdaaCN1KigcMnsgIC0abCQiLSASN3AqJ3wWanp0JylGNy8YBkkuCkPCfBMlY3koLXgZPnp1qw
95147a31-9899-4015-ba3b-aa151f4d16ed	fc6f556b-c2db-491f-9372-d177f988a7e8	600396033108738341	incoming	text	สอบถามค่า 	\N	{"id": "600396033108738341", "text": "สอบถามค่า ", "type": "text", "quoteToken": "dwLSrLhBh91qhOUWJ4hYClUxu3mkdP_coowbcp79_AsRJ6ki3A5JrKgfexo1f4VUSzx9eM2iDohR9-aXh6-JPw0xeX7l_O4zzsCrHAy79yh2CnVnPDWXhEhptaq30BQbeWlJ4Yu7PseI0kaLPJEARA", "markAsReadToken": "PzhZ_lwlATtxzMymnjSflyZ7gRbcMy2V2hVlqFHpeolV6sj1Nxa7SjwgoIeHTmDFdiBz0uWyRnZmWFvLUC8BJVgzCIfIfGmu26T9P4xxcdj_tRaBRVeevy535bhEdD8mwxV5TH0TwBBOPnBj81rsokG68JautIZnCcjvjmV4YeSemIdkmZxipoH8cp4nqmN8AcgmaBHGl5BabFk4R7YFuA"}	2026-02-10 03:47:06.915+00	\N	2026-02-10 03:47:08.95+00	U4023b404fcc803c2cd8f1839043ad9e5	chompoo:)	https://sprofile.line-scdn.net/0hDsDD_3S0G1xpPQrWShBlYhltGDZKTEJORV9WaV5oFT8EXw5aF1kDb15uQThdDl8NF11dOV1uQGlLVF9oFSA9ahtaEmwfRjdrGggwbg5tDW0kVlRjQllUXjpGPhIuT15NGl06Whx-GmQHexsMIVwtYllnEm4PeARZPmp3CmwPdd8GP2wJRFpcO1s7TGjR
9e5b8d4f-4c92-4fb6-b1d9-35dd091f7993	fc6f556b-c2db-491f-9372-d177f988a7e8	600396074649649684	incoming	text	เเช่เย็น อยู่ได้กี่วัน เเช่ฟีส อยู่ได้กี่วันหรอค่ะ 	\N	{"id": "600396074649649684", "text": "เเช่เย็น อยู่ได้กี่วัน เเช่ฟีส อยู่ได้กี่วันหรอค่ะ ", "type": "text", "quoteToken": "VsokhkB29q8tmJ7-M-2eLvDm5yd5q6EvkpyVacK40yveZuKELF59QA6mEtBPJKbzLSPMXa0cDkkdDGv41NwEjJEgsfageRMLkMA5e2yL-DCW5P0cMORhq1BNCJLre6q6GtBBT0aC-ODYkaathZFx7A", "markAsReadToken": "q1Hop5fVCxBk1yujR2phDiMO7YwvDK8oiU3WHQZ4bG6N9aewWwAEUMqRm9bPQ2FWNTuionlMlykF8ySbkkPEfeCjq91dUNDBrvn8Ekc-yVOxIEYyh1sklp7hUk36bDQxJl0UZipIEG76Vs0CDuI1u1h-U8Xd0GXJOlpiR5zRBRJt0oIj5Lc-5dhKoIVCWfk9m09Lj2v5PvTcLnBd8papOg"}	2026-02-10 03:47:31.674+00	\N	2026-02-10 03:47:32.85+00	U4023b404fcc803c2cd8f1839043ad9e5	chompoo:)	https://sprofile.line-scdn.net/0hDsDD_3S0G1xpPQrWShBlYhltGDZKTEJORV9WaV5oFT8EXw5aF1kDb15uQThdDl8NF11dOV1uQGlLVF9oFSA9ahtaEmwfRjdrGggwbg5tDW0kVlRjQllUXjpGPhIuT15NGl06Whx-GmQHexsMIVwtYllnEm4PeARZPmp3CmwPdd8GP2wJRFpcO1s7TGjR
7fb956e4-f79a-4915-802a-4594a3202b33	fc6f556b-c2db-491f-9372-d177f988a7e8	600396453126340797	incoming	text	จะให้ส่งให้วันที่ 13กพ. ออเดอร์  5 ขวดค่ะ (1ลิตร/ขวด)	\N	{"id": "600396453126340797", "text": "จะให้ส่งให้วันที่ 13กพ. ออเดอร์  5 ขวดค่ะ (1ลิตร/ขวด)", "type": "text", "quoteToken": "QkG4zIsRgJeAhCpZkXiWZkuK7OslL7cu6OVhs603Y3Lg6YPpl2tieFNIj58FIGGHKSMezB2Lo8bjAIpx_50HhggVUY5T_h13GuorgadZqIlRCR1sCqrMaxqBQW45qvS8_evx8AzePWbKaGMxNjWZhg", "markAsReadToken": "vh854vvRhbdZIEpUzAexxQkDvflAb38nCF5IIKJvWvCwKIPeIg-9WiIOgaXCCZpsIzVfJcYJ2kyOalLnPvwZCQLy52cyePxQNzE9GMH_XsrYf0YZRdO4vnUB-qPjNxPbeJLAihcsAsmHrWxboIRO71pBYciPcWl-52M5wApfXo4TY3dAS_X89a0iPFrRW3WBCGE7qL4haCfvwxSxAuuIUA"}	2026-02-10 03:51:17.142+00	\N	2026-02-10 03:51:18.072+00	U4023b404fcc803c2cd8f1839043ad9e5	chompoo:)	https://sprofile.line-scdn.net/0hDsDD_3S0G1xpPQrWShBlYhltGDZKTEJORV9WaV5oFT8EXw5aF1kDb15uQThdDl8NF11dOV1uQGlLVF9oFSA9ahtaEmwfRjdrGggwbg5tDW0kVlRjQllUXjpGPhIuT15NGl06Whx-GmQHexsMIVwtYllnEm4PeARZPmp3CmwPdd8GP2wJRFpcO1s7TGjR
ddf60455-781a-4bb8-8fde-c93de3ea0b4c	0440dee7-1926-4810-bb67-6bd159a4829c	600398248339309009	incoming	text	ขอใบกำกับภาษี	\N	{"id": "600398248339309009", "text": "ขอใบกำกับภาษี", "type": "text", "quoteToken": "KNGDSiRg7pJOpyw08tRCoqRBKITlWOoyqPQb4EqUGx0T0YFkVoVyIpjQd8wbiD8dX0YMSnDJcGeYvd4PtV9LNHdkhfv62rMiH4o2ksWzkV-bJpddKnwUu11jaLQ4GcC7JecxzD_nrtX8eznUpab5Xg", "markAsReadToken": "ag1URW02JP3kOXQJfVEwCxLxALFrEE3NY-xlckXno8DC_81FRBWjnzEUrMFJ2JeTAAyYqqT2nu4BTPod_yDuoZuwQLlPiJjzKJ6S4BRRXXLUEeive65n7SJtEOp9YG9yIdkXzhBR9DTFoZYqcWaFYOcg4zCyrLh1dHfFQlWxxTnBIKRYCP5FONih6LO1wGTJHzRpMUL67w7xfB5Ue2FVqg"}	2026-02-10 04:09:07.24+00	\N	2026-02-10 04:09:08.5+00	Ue55197333340e6a4c9cc114f22f3599e	♡ ʕ•́ᴥ•̀ʔ ♡	https://sprofile.line-scdn.net/0hf1Te1C09OR55HCYVq1tHIAlMOnRabWAMVX0kLEkcZyxDJH0fVXNzLRsbZylNJCpAAn0keUwYNyhbew4fVHIBPw93H3cDeSIhByw-HEhYHG87cyUwMnILBidCH3YqTwwfLioyfzR9B0UtXH48JycXLRJMEigcfiUeFUtVSHwuV50WHk5LVHt-eUsabirB
3b50966c-aa4b-4e40-b774-66244b4caa0d	0440dee7-1926-4810-bb67-6bd159a4829c	600398263287546302	incoming	text	ส่งไฟล์ ในนี้ให้ด้วย 	\N	{"id": "600398263287546302", "text": "ส่งไฟล์ ในนี้ให้ด้วย ", "type": "text", "quoteToken": "4hjK_p6-uK4vl315Drae9_wHnhxAYssmEsUIFmuTBZcUa6flE9uCwiGsK70wyf59LNz0rcFuXOofoE9gkXdiCwNIbpVXQZMZZ_D3gIkEOlT-PKZKcdudzFHdYwAJUP3LwtdhRpxkQjCLsVdiS3XeTw", "markAsReadToken": "F1gS_E8VWzUIAP9ehGnwCJCJbszoVydl_FrS8vFHZ3UNws7RUQl-XveuGB_WziM5dD8YqyqfOMF_nc_JAZn5qsPPs4M6ZBIKn_x2fWXQWW3rO7UEu5sEud_VNgywmzN_8pw4CeII7YBsGWsxUhncPywCRh60BAIiUssGNztHel4L0OGFrp4B6hmmBG7I_fQlfRBwg5VPKwMcMgLR8r8gDw"}	2026-02-10 04:09:16.279+00	\N	2026-02-10 04:09:17.224+00	Ue55197333340e6a4c9cc114f22f3599e	♡ ʕ•́ᴥ•̀ʔ ♡	https://sprofile.line-scdn.net/0hf1Te1C09OR55HCYVq1tHIAlMOnRabWAMVX0kLEkcZyxDJH0fVXNzLRsbZylNJCpAAn0keUwYNyhbew4fVHIBPw93H3cDeSIhByw-HEhYHG87cyUwMnILBidCH3YqTwwfLioyfzR9B0UtXH48JycXLRJMEigcfiUeFUtVSHwuV50WHk5LVHt-eUsabirB
2b47a8aa-14d8-4495-9a71-f3399fd4d1a5	0440dee7-1926-4810-bb67-6bd159a4829c	600400401459839067	incoming	text	ขอทางนี้ด้วยนะคะ 	\N	{"id": "600400401459839067", "text": "ขอทางนี้ด้วยนะคะ ", "type": "text", "quoteToken": "OG6-DiEPAGA7VXQ9u9rR2fH7Oq1bxuF6hKUUFWT9cswP2STjFbmNKkUTzX8GqbpTkALocaOvc1XaehQTmsv4ePPqVmGFZ2BIyLtN0lLxyktrsco542H3Ehi-DbC0dGYBZUIobGEKBLrbsZ38Amyo4g", "markAsReadToken": "dKEgsgbk5nOktlsm1aUMSe4Il_pqWqrxvaY0ubP_1cnyjT8QP3oxXg_JV5Sad_NiNI33cqyRa4teINVGvt7SN4SiuWeyZAIxTJwTMHS_5BpPiJesVstRD3I02qE1GlH9eQcdDGz9AbuZpR9DgTMkdgByn6fRsW5TwWwhIV6KltOse7GdfjVr9XoSazzdVDqYdCUWyLW5Ga24lgqV2Q4aWg"}	2026-02-10 04:30:30.654+00	\N	2026-02-10 04:30:33.087+00	Ue55197333340e6a4c9cc114f22f3599e	♡ ʕ•́ᴥ•̀ʔ ♡	https://sprofile.line-scdn.net/0hf1Te1C09OR55HCYVq1tHIAlMOnRabWAMVX0kLEkcZyxDJH0fVXNzLRsbZylNJCpAAn0keUwYNyhbew4fVHIBPw93H3cDeSIhByw-HEhYHG87cyUwMnILBidCH3YqTwwfLioyfzR9B0UtXH48JycXLRJMEigcfiUeFUtVSHwuV50WHk5LVHt-eUsabirB
2ff47364-a66a-4b27-b327-6b4af587e371	0440dee7-1926-4810-bb67-6bd159a4829c	600400564451017012	incoming	sticker	[สติกเกอร์]	\N	{"id": "600400564451017012", "type": "sticker", "packageId": "36453", "stickerId": "801186970", "quoteToken": "0vnjaXMzgOQu_TQB4Kw8qzLWhhNIo5_letvTYyKGHZRuyxiUodnkAWsp4lzFh96etKolvU5s4fPbOmjBIF8KXDO303JgbzyDPdwafvZr-hxKuTYSa-twYLjtRIuFgKyDb6A_kPGKtIuKZmCJOCqw1A", "markAsReadToken": "11g51B1-awKwilBEuhWTUiLaIm-yClHfpXmP_rZqsuINkdJqC5vmlFuSS_aserbLzAlWzVB1F__TtOEeH_g3vPqeVWGQOgaVxaYXBBtNazM-bOKUggCifkxLGSOeocNHQL7dybbWc1u69EOjTgjv1sjnknD6URFQ5WOtGXc8_4UFhjRZc8-EVc1dheVwu2JBOONA1K2zG8meRV41jyOn4A", "stickerResourceType": "STATIC"}	2026-02-10 04:32:07.691+00	\N	2026-02-10 04:32:09.597+00	Ue55197333340e6a4c9cc114f22f3599e	♡ ʕ•́ᴥ•̀ʔ ♡	https://sprofile.line-scdn.net/0hf1Te1C09OR55HCYVq1tHIAlMOnRabWAMVX0kLEkcZyxDJH0fVXNzLRsbZylNJCpAAn0keUwYNyhbew4fVHIBPw93H3cDeSIhByw-HEhYHG87cyUwMnILBidCH3YqTwwfLioyfzR9B0UtXH48JycXLRJMEigcfiUeFUtVSHwuV50WHk5LVHt-eUsabirB
16ca3ae7-54de-43e9-ab41-94eb41b1e34e	fc6f556b-c2db-491f-9372-d177f988a7e8	600400838187811280	incoming	text	ทำเรื่องโอนเงินให้นะคะ ขอบคุณมากค่าา 	\N	{"id": "600400838187811280", "text": "ทำเรื่องโอนเงินให้นะคะ ขอบคุณมากค่าา ", "type": "text", "quoteToken": "CHQ2OOV9zNMQ8reU7QOMZWtt6oBkv54OzH0L1Qx2bVq3CfDKOvTsXTo7Okcc96M0MQzmVS1rXS3Z6TxzOPTtNkscvZDdn1C2tYqzft4bH8zyh5O-WwzeSJtK2iSRNn1yBTaJIj3nOqIETMC1fawICg", "markAsReadToken": "tb9GS1xkD6U-ci9FXiyVV6n19OTD3SXwAC0vazVsVcPlv6XZ2BVQfP2sbYXxdxkGLH6xMc8KV44CdHBYw8d_9W6kH_Fk5hhfrEH4ZjS5UTk-YW3sFZOTRYSyJ6QLVrstShoBANW8KJSQJumYBb81Hj1gwSySyOAyM5kiau5SHYhGGv5_0yWNmBzhx2ZQIpu6ztqSJdnftRl5MIQ8kmd7Pw"}	2026-02-10 04:34:50.957+00	\N	2026-02-10 04:34:51.99+00	U4023b404fcc803c2cd8f1839043ad9e5	chompoo:)	https://sprofile.line-scdn.net/0hDsDD_3S0G1xpPQrWShBlYhltGDZKTEJORV9WaV5oFT8EXw5aF1kDb15uQThdDl8NF11dOV1uQGlLVF9oFSA9ahtaEmwfRjdrGggwbg5tDW0kVlRjQllUXjpGPhIuT15NGl06Whx-GmQHexsMIVwtYllnEm4PeARZPmp3CmwPdd8GP2wJRFpcO1s7TGjR
128ae1dd-a807-4748-8dca-f93cd4a3e819	9f92d0a4-f897-4626-907c-94c2691f4952	600410712333877455	incoming	text	ส่งวันนี้ไหมครับ	\N	{"id": "600410712333877455", "text": "ส่งวันนี้ไหมครับ", "type": "text", "quoteToken": "Bf9cpvXrLEcdVNW-NuTsuZXA-zRLNLeMz0sHV1i7UQpAckaQJM7WvHMnCffKwRCIsxs10nmEnNq0vDuIlkqZCuvNk0IYkkyp1z6q2kGtu2_J_9-ApA8sCaFTLc8QhD7d8E3KcjmrLmvrmOArlOzaTg", "markAsReadToken": "w0ie1tU2gRzCQIesopZO7SiDv33gplpSOXwHEeyZ0ipo_wTTX0USo0d2GwTBvLym_BzQEpvRw_uuyJKEoLPN3uEf7kFVnE5QzD0cyPuFv3nkZ32NX4B__7m3Q81WEz32KNn5iQbeY5EQvawrxh_ZNIvPRJahmFntE9IHjI_2pa0f1W-Picn8qmU9ssGPnA_iNTCG2-M9b1WIcU5duIaHbA"}	2026-02-10 06:12:56.445+00	\N	2026-02-10 06:12:57.824+00	Uc1d672a46901399e0608900d89e3e3f3	Paik	https://sprofile.line-scdn.net/0hY_jeZjXQBnBHHBlDlA94TjdMBRpkbV9iPygZFnIeDBQuLBMgY30aEyIfWRd9LUNxP3pBRSBJXRVldyUlKnsqeCIcORdzRxpGDnkoQRBDWwF8fCFZbDEMbCF3XS4ycAlnFHMZSDdJL0UEUBF2bgEdRCJ8OUAEZUR8Y0tqJkIuaPMoHnElantBF3UaUUT_
7598fc89-26e9-4d32-ad6c-272fec4bd462	c2c73a33-8fc0-41cd-92ed-952bb315612f	600418708405879127	incoming	text	 **สั่งน้ำส้ม 105 ขวด  ลง 3 สาขา ตามนี้คับ (ถ้ามีน้ำส้มเก่าเหลือฝากเปลี่ยนขวดใหม่ให้ด้วยนะคับ)\n       -วัดลาด 30\n       -ท่าอิฐ 50\n       -ปากเกร็ด 25 \n      \n       \n\n**น้ำส้มเก่าเหลือ -วัดลาด 18\n                           -ท่าอิฐ 12\n                           -ปากเกร็ด 14\n                           \n                           \n\n	\N	{"id": "600418708405879127", "text": " **สั่งน้ำส้ม 105 ขวด  ลง 3 สาขา ตามนี้คับ (ถ้ามีน้ำส้มเก่าเหลือฝากเปลี่ยนขวดใหม่ให้ด้วยนะคับ)\\n       -วัดลาด 30\\n       -ท่าอิฐ 50\\n       -ปากเกร็ด 25 \\n      \\n       \\n\\n**น้ำส้มเก่าเหลือ -วัดลาด 18\\n                           -ท่าอิฐ 12\\n                           -ปากเกร็ด 14\\n                           \\n                           \\n\\n", "type": "text", "quoteToken": "Ffr4cujdfOtHQOGHnbKYsjWGnA1MPrjuCcNTJSMcUYSzZeRrjp7w1TlE_7xsS1jU14QcSbzCztWhtU828HIuTjc1gEduSYtXvcZYbwlOYmLsepEqITheRG20TylmF6BLsfh8bQRRxcJJZPWA2XUu9Q", "markAsReadToken": "P7u8SXpD6dF45-6cwAC1NwqYp61_ZKbA69ggPw3dbqDyAt_edJVrejVxRXF62jT68iRCV9qPZpFPKeoBCdNhY6qegZHf8lIKDfnw-mjFgj1P2dtArSTUr_R-XXx5WnSzyHOsgQNRoG7cSqWlq7sqkgZGcvcR-IEWbuog_nerawhCJLUgvpLSXT5LOIivrMbVRc8D3ftSrZse3lyIRMwyGw"}	2026-02-10 07:32:22.321+00	\N	2026-02-10 07:32:24.11+00	Ue195e0d6769e1e3bd64a79fcc79ad708	Hi	https://sprofile.line-scdn.net/0hR5dbzMBLDRpJGyBy__9zZTlLDnBqalQIZnUQdSwYB3l0IxgcZHhHe3tLBC13KkhFbHhBeysbACxFCHp8V03xLk4rUCt1I0tLY3RG-Q
6b68818c-b17c-45ab-8ad1-31f4bf652a45	3dd97414-b1a7-4c2c-8130-47c58799df01	600422332469084315	incoming	text	 \nรับน้ำส้มลาดกระบัง                                                วันที่ 10/2/69\n\n30ขวดยังไม่ได้จ่าย\n\nหมดอายุ 16/2/69\n________________\nของ วันที่ 5/2/69 \n30ขวด 750บาทจ่ายแล้วครับ\n                     \n@Fon @Joolz น้ำส้มคั้นสด💯 	\N	{"id": "600422332469084315", "text": " \\nรับน้ำส้มลาดกระบัง                                                วันที่ 10/2/69\\n\\n30ขวดยังไม่ได้จ่าย\\n\\nหมดอายุ 16/2/69\\n________________\\nของ วันที่ 5/2/69 \\n30ขวด 750บาทจ่ายแล้วครับ\\n                     \\n@Fon @Joolz น้ำส้มคั้นสด💯 ", "type": "text", "mention": {"mentionees": [{"type": "user", "index": 203, "isSelf": false, "length": 4, "userId": "U13638f903c393389cc92c7d2525e5795"}, {"type": "user", "index": 208, "isSelf": true, "length": 21, "userId": "U3a5774da47800b13765e0f348596bf2a"}]}, "quoteToken": "_uaqDNVBO1dE6sjwFuf_XPrGT0DTgLs-twZKoeXUCjsaHzvHsopL-Mxg61qUZH_7tnR7ENwEpvifRpqQn35PXW_pzwgR6YSRYpxjyopwwx2JZdUG261k-FXcgFYRckr2RU2us6o7rXr2QNZ2nVxq8A", "markAsReadToken": "pHHv4R_IHg_k0YdPpwyzhxUqDcV1fByVurOFFeJsXsdfpikRvC9SPqYFvi4yGxFkFfU7Pi_aoh2oLC3MS0qxtfTFMmc1JqzayqXpg64wI5b3FR3e6_p2YgFunXkNGj71rZVhgtCaGnS_r-OV3XG6OUhvov4KsTlnI1Y8X1JWL24_VD2KIvxYNA-j8pQjvFY6QdukrpTnboCf8g6u7NJwXw"}	2026-02-10 08:08:22.49+00	\N	2026-02-10 08:08:24.342+00	Uf3ee4beb9ef1d32d770f392d4a592373	Sai Max	https://sprofile.line-scdn.net/0hk50aizcVNBodGCsMd-xKJG1IN3A-aW0IMy0sdS9Nbn11fydJNy5_eS5PYisnLHpOMip7f3wcOCk_KDEYQgUhPnZwHlF6fQooeiwmK3tPMH1JSjUTUg0LJTRiOHp5bjI1NHk_Jk5OOmt_bQ84cBU7LnRjaFROSRBEdE9YTBgqWplyGkNPMH9zfS8eYy6l
b750f891-4d5b-4a7f-8de1-dc3b9a65c8ac	3dd97414-b1a7-4c2c-8130-47c58799df01	600427698326077581	incoming	text	เช็คนัำส้มจูลซ์ สาขางามวงศ์วาน\n10/2/69\n31 ขวด\nหมดอายุ 13/2/69	\N	{"id": "600427698326077581", "text": "เช็คนัำส้มจูลซ์ สาขางามวงศ์วาน\\n10/2/69\\n31 ขวด\\nหมดอายุ 13/2/69", "type": "text", "quoteToken": "PSIZuVH-Ocaycm2fnuHaEu1VDMCMCXtrPN9NXYms3Iuj2zUAJrYfeWCznyzOUcwIUAZXrW9nsS_Z21svOfzsFbyPLJSD1pXeEtQtwF0eacn2v4AI-fbjhfAgLjIypHh6O6i_KOSSZ-VgE9mxZhp6JQ", "markAsReadToken": "9P3BYX5dB6oH6W-oxOLceyAPpm3E51-PnkgABmJt5v6wdFIoHJOl7xAqA0pfBDmw0pLPmwItYGzz8Fnv-sEIKsydrBojm9nfrYZ-R95pDpKto9jpewYUiOpUlxlAXwzM0I4oMAvxEcP6l4b79PYD5FYgHk2Z7lbzQLNXfbCs2rG9J_X-dHwtzjGRLSy9Gn4RH2p-jIWFhj0oPNH1NB-9gg"}	2026-02-10 09:01:40.8+00	\N	2026-02-10 09:01:43.495+00	U08fc30ee36a9fc6856fc37589c9e63f4	เพื่อนเรียกดีน่ากาบา	https://sprofile.line-scdn.net/0hPW-ayFFhD3gAGBGqZ4txRnBIDBIjaVZqfy5CGjAQWEk7eE15eX1DTGVMUBhqekF5JSkUHWIZAUsiVRpseCIoflJOFQ95bwFrcQxHYDUEAihKYwxGaSoiG0x2I0E9NE1sKBBBcFRHBhx7bQNOLXg7WCkEUE16WDxnTE9jLgUqYftvGngtLX9IHzIeWEy4
4ec10ad6-3c0e-4d84-861a-668b274b206c	3dd97414-b1a7-4c2c-8130-47c58799df01	600447182780236243	incoming	text	@Joolz น้ำส้มคั้นสด💯 10•2•69\nสาขาFoodie \n\nน้ำส้มมาส่ง 11ขวด \n\n\nหมดอายุ  11•2•69\n\n@Joolz น้ำส้มคั้นสด💯 	\N	{"id": "600447182780236243", "text": "@Joolz น้ำส้มคั้นสด💯 10•2•69\\nสาขาFoodie \\n\\nน้ำส้มมาส่ง 11ขวด \\n\\n\\nหมดอายุ  11•2•69\\n\\n@Joolz น้ำส้มคั้นสด💯 ", "type": "text", "quoteToken": "glq22iJtOBUsHyURQkJQ4V7qZSHcXgD--kxNrMrTZ-d1k0-97HFNyzTUo96wEhZ7OATEJMv88BmzMuC9BkOOdqXG5ALfEJfk1W4JVzFKT-xb6FwF21LRZ150gDznYVamPmBDTyzwF9EU9hUKvCoTRQ", "markAsReadToken": "O7bMUCRCDN5avlMO-b6ieVMrg_osbISm2ki83uyIF01bPvg2a0WsIrqR_z5vFXyArm8GbUDKCJzqPRLJHGag65IBIVxQO1kmwchWB09aO_FIvXk_LQ-YAAXaXnprjPu1qMTEAUHMyoCN_FZEieuF80D6digJW0XheDG4HMd0o6fbXQhU4uoaGuFykUWEt0QZBGfFUX79mrUmtxvP1wAJLA"}	2026-02-10 12:15:14.454+00	\N	2026-02-10 12:15:16.081+00	U3065b08d77070d6cdd734f0d47f35c69	Nan Dar 	https://sprofile.line-scdn.net/0h1emVhAECbkpAL3FkRDEQdDB_bSBjXjdYb0EpL3AsMn4oGHkbOEAlLn0pM3p4HnoZPx12K3AsYnJiTHd7H0BeSDJSNnMoRUgeDk5PUBZ3dTgmHFZ0Gw1kSnwqdhR5eXxnPk1FdnFzMjEOVCF9JxlzR2loQCN4dkBuG3gCHEUdAMkvLRkfbUgpLXIpOX74
51c082e7-bb13-486c-b930-748e9c32ca12	3dd97414-b1a7-4c2c-8130-47c58799df01	600452297365651730	incoming	text	   เช็คน้าส้มสาขาลาดกระบัง\n10.2.69\n\nเหลือ  =34ขวด \n\nหมดอายุ 16.2.69  	\N	{"id": "600452297365651730", "text": "   เช็คน้าส้มสาขาลาดกระบัง\\n10.2.69\\n\\nเหลือ  =34ขวด \\n\\nหมดอายุ 16.2.69  ", "type": "text", "quoteToken": "-0SQVIKfrNHaM8DPrcovIQnCO3t3HCBO3IVSk2KQPI994nc4cp-8XxRS0jWUtRSsDCwAGt4qtm_Job1vuZ0sFcIrMKpacSLJzQQesN95KLLzCujBUauGECNo77GYr7Zg-2XZIcKAz6qmsulxs6EQDQ", "markAsReadToken": "tMzyUGh06UK2nPoLog3aXQfMLM3OhVFBdRAsEEQl9Je5uc6I1wwYz36mxVkKsLXlSKuoEpWxtA5BAI8Rp0G1c14kBdqgZCw9wxTqGFm40cCG1nh0zQ0oExxaPZ_nb_awqJf36bLssfvNO2ni5Ky7EaUzkOtGopEOH3I_n4HczvvC0RJ4KTBfemVs4G9gQE87kQFH-IViNPA0F5plsmMOeg"}	2026-02-10 13:06:02.92+00	\N	2026-02-10 13:06:04.839+00	Uc8265ddbfeaa2db475bb998c2b0cb63f	โม	https://sprofile.line-scdn.net/0hYo6-1w8gBkAbVBdIjYd4P2sEBSo4JV9SMWBNJyZdWXkmN0BDYjFPJ3pdDSdzYEEUNjoZdipcUSQXR3EmBQL6dBxkW3EnbEARMTtNow
41ccb46c-354d-4ff8-bc9b-557ad5affc77	3128f0e1-31dc-4cec-a4b0-b9e37491690c	600454808411046473	incoming	text	รับ น้ำส้ม 1 ลัง ครับ	\N	{"id": "600454808411046473", "text": "รับ น้ำส้ม 1 ลัง ครับ", "type": "text", "quoteToken": "UhxbfcuIga2Hoke7nnwrZXPd-WVGP16WhQju_dvpcn5RgK5UuxXt1_SpzJYfDz9EhlooVI6hQSrbuhEgPxmQZAgl2br4QU2knxkYCbzk8uBHWoKvJPUOVwS5hv8_J-wxctlciEaSQoFnobsDALLqJg", "markAsReadToken": "utzNxLAsZp0NpUdIP7pzdxvnVCGZirgdwqvZxGTqOkuJ55WM0vnxmF9VExS_KgyqSOFlC-z4KA3qHW6_3yQ_0iRLKHfNCklWOqotTBdNzv4EsOtHrA3xRLt_B1libKikSO-JtAw9SFRUCe1frSHXCeQ3_M2xeFh21nXCjNDLpGNf9zsUKL4GHWqil0hhuyBZX_MP7_FbVHV2yCxi0NRUYg"}	2026-02-10 13:30:59.7+00	\N	2026-02-10 13:31:01.299+00	U676fb27d2e18a0c59936f908365fc1c7	Molk	https://sprofile.line-scdn.net/0hCV47su-HHHkZTjNg829iBmkeHxM6P0VrZSlTSnwdEUEgfFooMiFVTHhPRxlxew8vZilRFilLQk0VXWsfBxjgTR5-QUgldlooMyFXmg
f92234a8-e6c3-4ae3-897a-cdf772c13054	2917bad7-417e-40ab-b4eb-10ae1ce80aa9	600457414231982115	incoming	sticker	[สติกเกอร์]	\N	{"id": "600457414231982115", "type": "sticker", "keywords": ["Thanks", "Applause", "humble"], "packageId": "26458788", "stickerId": "671503234", "quoteToken": "pImNwNLBUoIqcgxmPNHGx1qvZtv-psZ0rtXuOZ9Jak0_MwtLjoEzu578FCKwdII9hIql5ckI15KNvjxwZo1NeO4db0H0VJq2ptfP390QjIIe3atZ9fWy2cZ1dpEqL-Q64H0fCecTNYk08Qv23IUsMQ", "markAsReadToken": "pMXMx1t7AZgKz-D15P8a6b9grw94yy5g8SUdw2WjEg5dqrV3CNP6IsRrjgwn0yo8zX78zSJN0b4YXSikNRTrmg5X2R7RJPjhexbu_aLL2wzvjdNugVBRHTZS7U1aWuL8a-xFTCvwFIgL80dtY6oioh5kbJLcokEuffbJGbbDQPgpf44hsHeQQH6YELYz4V8nHPwGnaaxdMqGwa39HDWxiQ", "stickerResourceType": "STATIC"}	2026-02-10 13:56:52.791+00	\N	2026-02-10 13:56:55.478+00	U943d39b92c702f2d20bf6c82bcf79cc6	JennySupichaya🎄	https://sprofile.line-scdn.net/0h-HfmM9m2cmdLFG2AN74MWTtEcQ1oZSt1YSJpBC4Xf15_czw5M3U_BH9AKlZ1LTM0Z3A0BX1GLVVpVn1jPQBtQn1fVRMhIzJ5JnVLRiNVUgIxdGcyYHBBUytRe1UkY28zG3prVglWVDkjXnZ4YBBiZy1JVl81Sn5IPkMeMU4mHOQkFgUyZnM1AHkSJVPz
94ed05c7-9507-4227-9d00-f76baca567bf	9f92d0a4-f897-4626-907c-94c2691f4952	600533510263931051	incoming	sticker	[สติกเกอร์]	\N	{"id": "600533510263931051", "type": "sticker", "keywords": ["OK", "Mickey Mouse", "good", "got it", "Affirmative", "alright", "No problem", "Yes"], "packageId": "1917", "stickerId": "37790", "quoteToken": "uGIb8qdi8cJyogZdtm6P_ZEp7wzOIfcaCnUeQ2KLNk_sf8guzLeANH9ToVlO7b7EvxdDadncMWgCQWa6o6lPHpbznSr9YDUtYVICC7GcJ6ZT3RMgM2c4vMHXv1fuXZVH-cblolhQye6hYlJFqa2Zig", "markAsReadToken": "Vea61ov-mC9giZdLdyVml10jQyzNL6vrpj6nPMFOq4-ODFBKGmq7gibpJ32c8n19rJ-R0K9oJpz0F1aIZESCyYZ2j5y2vXdmcV0qqhai6qeQlic7czVXeuWF_-l8g6JTLe9AmDPIqD7moxrfYDhEOZ4qyrO7qNcS28iG22TI2UXPjCRR7hJ2O7YKZoeNgx2VkYL9ivGkO0L7e4m-l_7n1A", "stickerResourceType": "STATIC"}	2026-02-11 02:32:49.562+00	\N	2026-02-11 02:32:51.542+00	Uc1d672a46901399e0608900d89e3e3f3	Paik	https://sprofile.line-scdn.net/0hY_jeZjXQBnBHHBlDlA94TjdMBRpkbV9iPygZFnIeDBQuLBMgY30aEyIfWRd9LUNxP3pBRSBJXRVldyUlKnsqeCIcORdzRxpGDnkoQRBDWwF8fCFZbDEMbCF3XS4ycAlnFHMZSDdJL0UEUBF2bgEdRCJ8OUAEZUR8Y0tqJkIuaPMoHnElantBF3UaUUT_
9f80cca6-2968-43a2-8b05-0ce5a463772b	9f92d0a4-f897-4626-907c-94c2691f4952	600533658910851146	incoming	text	ถ้าขวดเปิดแล้ว แข่ตู้เย็นอยู่ได้กี่วันครับ	\N	{"id": "600533658910851146", "text": "ถ้าขวดเปิดแล้ว แข่ตู้เย็นอยู่ได้กี่วันครับ", "type": "text", "quoteToken": "_wL1OkbNPzBE1quIM0HpXGPrNF9RzhTcgOqiomFKnk5KhFI5EHYWo-wamDhfBW3dyptrcWOKnJw2vEmD3T6_2nBHsbAj7i19W5uyLfvLNpmSmlsJj5dv-V84k4glTRYEFM0Ekmib2fjGov4aIwHImA", "markAsReadToken": "vBMz9-bXES1LJeItoMVk3OZKw6wAIJ-xCGxBHiXPhZ_tmKKhBmkXLZroZrKtrQSkw5cz90RU5cVpH6S4PDNbqMaKJq-VfxD-566-Q1WnatJfbbn-nTfNvS3eWDJMOMaFDaGWXegbVYyXQ_SFpD742KPA3PWfYhiTe3HvITSoFWqX2LtwbLsSKcoERpBV0Gf6Wb9Q8Fa8Gf1GE-9E6XU8xw"}	2026-02-11 02:34:18.249+00	\N	2026-02-11 02:34:19.128+00	Uc1d672a46901399e0608900d89e3e3f3	Paik	https://sprofile.line-scdn.net/0hY_jeZjXQBnBHHBlDlA94TjdMBRpkbV9iPygZFnIeDBQuLBMgY30aEyIfWRd9LUNxP3pBRSBJXRVldyUlKnsqeCIcORdzRxpGDnkoQRBDWwF8fCFZbDEMbCF3XS4ycAlnFHMZSDdJL0UEUBF2bgEdRCJ8OUAEZUR8Y0tqJkIuaPMoHnElantBF3UaUUT_
4ed63996-ba85-4a1c-b98e-dc864bafbfb9	9f92d0a4-f897-4626-907c-94c2691f4952	600534468612063472	incoming	sticker	[สติกเกอร์]	\N	{"id": "600534468612063472", "type": "sticker", "keywords": ["OK", "No problem", "good", "Yes", "alright", "Affirmative", "got it", "Mickey Mouse"], "packageId": "1917", "stickerId": "37790", "quoteToken": "5JUqFhYiG3BjZvmRPWLhI3l2LA-NPDeuZIXTxEobyVQPf4JfQ3-kdmDOwldcA3vcS4Dj99n9UdoSJUZ4-U5-Nk56uAhFPRJK7bMySN5FJsUGINIGReGLyEI3TLzy25WiZgw3ktr0cnGvCYVJCUYQqw", "markAsReadToken": "qC9oS0NNIfLetK1pwa_LPMXqPThWEwaGQjT-ATuws0Z5QVq6uJxBcWPvVa_9--M8Zht3fw8zHAT8Zvrtv5d--WOzK00Ym3ToqSAkPsJr_OGftKZjg8D4CDjSisxvL7z-eT6zT_8yhffyJ7zeVh5juqI3NSZbI0NABAvcYf3P2_LW0F7K-n-5eiW8AZvJIitemPj6goXf2_td6MyOggcw6Q", "stickerResourceType": "STATIC"}	2026-02-11 02:42:20.884+00	\N	2026-02-11 02:42:23.831+00	Uc1d672a46901399e0608900d89e3e3f3	Paik	https://sprofile.line-scdn.net/0hY_jeZjXQBnBHHBlDlA94TjdMBRpkbV9iPygZFnIeDBQuLBMgY30aEyIfWRd9LUNxP3pBRSBJXRVldyUlKnsqeCIcORdzRxpGDnkoQRBDWwF8fCFZbDEMbCF3XS4ycAlnFHMZSDdJL0UEUBF2bgEdRCJ8OUAEZUR8Y0tqJkIuaPMoHnElantBF3UaUUT_
a4709600-b5d0-4a94-9195-14ddb80791b8	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600538695816971027	incoming	text	อิสรภาพน้ำส้มมาส่ง 15 ขวดค่ะไม่มีบิลค่ะ	\N	{"id": "600538695816971027", "text": "อิสรภาพน้ำส้มมาส่ง 15 ขวดค่ะไม่มีบิลค่ะ", "type": "text", "quoteToken": "Qq9nqQGPCJbUOSEexIEqHO8dOi7F3a2L-bfBG5yuIg3cGc_HDLSuQYFo8oGj0ZP2GR7IIiPsOvt0V15yQxQP82Rgpz_wBoStiTLw7zxVa6YjHjgGeOiMUeohQAdci4d-R6zrZw9BTZHLShYoyGKFaw", "markAsReadToken": "El5zgNisLItsYdunYTNYBRsc6EnReM2aYfk2eZxUbN75fmeeki04m0lOqvRFqXRfSbC2xOnXsq0B-e4k9Hoz9HIpiLOGklSxoJpmlB9Z8U8i-1Le2SYiHRmGZbGbA5oVw-u9avyc8nLkarZilzaKpfAelHy4VpboAq99W2I8TniNaDtrjDj5b9zEeyAMoV5rFk7Oz6lriIwymUlhdplmkQ"}	2026-02-11 03:24:20.546+00	\N	2026-02-11 03:24:22.556+00	U9d32ade207a3fc6e0aab919b19338a30	โจ๊กหมูสามย่าน	https://sprofile.line-scdn.net/0h9eDlci80ZkppFXU0HAMYNRlFZSBKZD9YRHQsK1gWOHJScXVIQXt-LwtHPSlRJnZORHt7e1oTbyhlBhEsd0Oafm4lO3tVLSAbQ3otqQ
35bba1f6-3811-437d-93fa-2b83e65fa4b9	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600538706638012963	incoming	image	[รูปภาพ]	\N	{"id": "600538706638012963", "type": "image", "imageSet": {"id": "84D32DF0F221F953E37B78E0797F8E94735AA930A65ADD3546E66052C055C195", "index": 1, "total": 2}, "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600538706638012963.jpg", "quoteToken": "OrriZErlyZU_bPJMPgdaIXrmEP4_Q9O-uYYQJpid4pj1A2_9M_5ehLg6__6TvSoD5KGcZihHuyz_5mAu-fiLtcSj6BuZpur7FynsQEHR5OhzAQEya6Oup5I_YL9kYOFcsOPyddZLqVL2mBwPYdIqhA", "contentProvider": {"type": "line"}, "markAsReadToken": "AT_KYYBpwLhgvSZi5vhz_O1wSc32SqvPp1LqxeCktiJNan0-v1QAbT44TVgRyd_zEfvAqDzx8-qZL1jfxhuF3VibYaa-ym42U0BhjPFqgAWUU6uzx6O63bXfk6vyUxGUwjIW4g0WfE02AUI7OC8qtxD-FY2ycxybkYZqowGse-2ElySxmb8C6hE6JOy1m1JMnLnTeVpzWd4DtCVwZFmHGA"}	2026-02-11 03:24:27.582+00	\N	2026-02-11 03:24:29.554+00	U9d32ade207a3fc6e0aab919b19338a30	โจ๊กหมูสามย่าน	https://sprofile.line-scdn.net/0h9eDlci80ZkppFXU0HAMYNRlFZSBKZD9YRHQsK1gWOHJScXVIQXt-LwtHPSlRJnZORHt7e1oTbyhlBhEsd0Oafm4lO3tVLSAbQ3otqQ
c35a797b-c7c0-496b-885d-ad7f116c0a7d	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600538709624619519	incoming	image	[รูปภาพ]	\N	{"id": "600538709624619519", "type": "image", "imageSet": {"id": "84D32DF0F221F953E37B78E0797F8E94735AA930A65ADD3546E66052C055C195", "index": 2, "total": 2}, "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600538709624619519.jpg", "quoteToken": "ZXM3V-yLF2eWploxfA-gQkybMfd2Z_s7lw8JgrMKRFRRx3LRGI5oVzzhrmmqbisW_Eh3DEcRQZV9Km2GvUNEmOa08E70JuGkU_s80Xf5olniuhmrdXfwR94Nf-bQ5FjKjAQ5pBTQpa_NzkhtwotD2A", "contentProvider": {"type": "line"}, "markAsReadToken": "ewLLXYQG4WMmjU3Tk7TAZBm-3TwUl-YyVRPXwPSIfOSmYL8GmygkY-PgsWK_BV9lnMVG6UpnKASnDbMrUI-hfJTbpFiaHbibBYVf8607IeIdm5e9med2yqCBjnvQsU7FdX8mV1rfRQwz8PzgUoosTMjdlr_NS5qBwg4GLFQJhnRGUaiZs0BcYyKgd3umkeJzSuw5Io4xgcf5JR5B7SGlMg"}	2026-02-11 03:24:29.44+00	\N	2026-02-11 03:24:30.595+00	U9d32ade207a3fc6e0aab919b19338a30	โจ๊กหมูสามย่าน	https://sprofile.line-scdn.net/0h9eDlci80ZkppFXU0HAMYNRlFZSBKZD9YRHQsK1gWOHJScXVIQXt-LwtHPSlRJnZORHt7e1oTbyhlBhEsd0Oafm4lO3tVLSAbQ3otqQ
feb9cbab-7fc6-412d-8b63-ff0c76f2bda0	3128f0e1-31dc-4cec-a4b0-b9e37491690c	600542411802280194	incoming	image	[รูปภาพ]	\N	{"id": "600542411802280194", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600542411802280194.jpg", "quoteToken": "ENMTN8JEbcb7PREjsGQq9GIchlElQx5NZAPIYLvLDDJ-3-6OU3kO9aqgwnrO65RKjQdAfmQ4CyuLVYPY2y65rFvumuVvhbAijxATYkt5m0CWIUshAPlcSDX_B04hW0CdARkw_gQVq0SBFGkVG_x8-A", "contentProvider": {"type": "line"}, "markAsReadToken": "lK9FI70kgPHXHsaYR-FN7gIyHm4arC5vFcebT2vKYI_WlcBYjm2qxe2a7zjdCxOCSKBVTtSLeDhnqHV84KxJbb4KWqKq2F-kDzwWXs55WkAIIpOK7SW2qzvU66icvz9q2sb-BUZpFjPEKNEAxy8DT_7lByHo3NIAkjPs1YpjK2Ld-zRSxo3mxU7AEan-ddn-nDY3tpO3QWVUnkORN24HBA"}	2026-02-11 04:01:15.658+00	\N	2026-02-11 04:01:18.662+00	U676fb27d2e18a0c59936f908365fc1c7	Molk	https://sprofile.line-scdn.net/0hCV47su-HHHkZTjNg829iBmkeHxM6P0VrZSlTSnwdEUEgfFooMiFVTHhPRxlxew8vZilRFilLQk0VXWsfBxjgTR5-QUgldlooMyFXmg
085df894-47c8-4c8e-b9b0-4d98fb486403	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600545895389855984	incoming	image	[รูปภาพ]	\N	{"id": "600545895389855984", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600545895389855984.jpg", "quoteToken": "DTPX_244gsmA9Xsa1ii-NRPI4WDBEZmf2yRxeYVoMdB0SkQuOlPAaVH9mBuunKv4BNfhN8AiH2iyVAAi7OZjs1NEo8AhLbEJutfPJ4ykAXWsrvNc2PfEIe6yfQgobCtWkVoSjla-bnrGcSIdLe5o8Q", "contentProvider": {"type": "line"}, "markAsReadToken": "J6xhjk1W2kuTj08v8cJmGuUgeWpIBaKOq00NTpPCRlxol9x9hErRHkdyUZj0Kjen0YL6RCS-zj126TmmvU8_nJp6Qa7SPbpW9jXgk7lAMV2Zntn8pyB91d6wRfKv4ccVbmabHlJ2sLmADr7GYh3szmPAOOC8OZ420Erx98-jwUW26tJwRQ1cIxWBgC-USpJGdgg7UfWFuzjxHUPp7PWd1g"}	2026-02-11 04:35:51.868+00	\N	2026-02-11 04:35:54.721+00	U65a3931abc616559173b7aee523b58ec	โจ๊กสามย่าน บางขุนนน	https://sprofile.line-scdn.net/0hhqsJMqD-N15eMyAJCMRJIS5jNDR9Qm5MIlZ8bz87YGwwBHUIc1QvaG8xamowUHJfdlN9PW0ybW9SIEA4QGXLalkDam9iC3EPdFx8vQ
5251311b-812b-4188-8b6f-e7081f88e708	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600545913945457238	incoming	text	น้ำส้มคั้นมาส่ง 20 บาทค่ะ	\N	{"id": "600545913945457238", "text": "น้ำส้มคั้นมาส่ง 20 บาทค่ะ", "type": "text", "quoteToken": "_7IiQmZ3sxGB7gVxjSTkJMpBHEuLpLXYjZsT2_xhw9DpCVxo_NAoOYunT3aAE6ocfeJkJXWZ7nA2Vrq8Fy7GSDpSUf9m3xfD1eReMW3jh-nJS6TPleeaK1T5I9yBq9dH_gAJ0eC_NmmrvuzvNl3msQ", "markAsReadToken": "u2bz_5cTwujF7mYdC_xMlgCVAvqaaqdrt7ZG0TA2KwbqI4IqGp1JlSoM9iDL936lOTZ4vNh7_t8HhRzbCDuS_anJIg32I2e6n4z83SyDMsVStXEP4yXv50e_qgngdcBGiw_PBmzxNMzC-YdAuzGCB9UZiB8R6KauS1eqox7cJxQPm7Kczhm1FAC4JcPPTbBIVbsYpSW-7cji-w-Cm8KF7Q"}	2026-02-11 04:36:02.804+00	\N	2026-02-11 04:36:03.791+00	U65a3931abc616559173b7aee523b58ec	โจ๊กสามย่าน บางขุนนน	https://sprofile.line-scdn.net/0hhqsJMqD-N15eMyAJCMRJIS5jNDR9Qm5MIlZ8bz87YGwwBHUIc1QvaG8xamowUHJfdlN9PW0ybW9SIEA4QGXLalkDam9iC3EPdFx8vQ
1d76b3e9-139e-4db5-9955-817ee0e26dad	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600545934027522731	incoming	text	น้ำส้มคั้นมาส่ง 20 ขวดค่ะ	\N	{"id": "600545934027522731", "text": "น้ำส้มคั้นมาส่ง 20 ขวดค่ะ", "type": "text", "quoteToken": "4FbMxUh-eqMIMgex6pWhamAzckkBtBU20W0BewgNQ4a4VYuk0sHDdrfZDF0zVA9L7JhxgFntkTTVqhWw2CrAPT812Hsg9GUu1-MGWj_N1p9fmWEaWiqSjD5483anK8jeEsjCFKXl4MOcKcFFdLEQIw", "markAsReadToken": "A3ERxPwtT69UNSHp_tK7HcovwfPsFoIE6dOYjBtpHSupAYBxoUW9h8bxOVotqFp15kygayYvU4cH7hhE-PjCUQEFSH6X5mUy7dMjSbLnOkyyCCZ8lGgqVIBkfETLxu4p2wInio8D6iTIoWXQNaJujrET4cyTbxYF1IOZaQ0ybWH7ENBOj8U3GBCDWZhEeEQrWpWNhCznelhYLgxk-O-DAg"}	2026-02-11 04:36:14.817+00	\N	2026-02-11 04:36:15.736+00	U65a3931abc616559173b7aee523b58ec	โจ๊กสามย่าน บางขุนนน	https://sprofile.line-scdn.net/0hhqsJMqD-N15eMyAJCMRJIS5jNDR9Qm5MIlZ8bz87YGwwBHUIc1QvaG8xamowUHJfdlN9PW0ybW9SIEA4QGXLalkDam9iC3EPdFx8vQ
21575958-9732-46f0-89ee-cd13e904319c	667a0882-d61b-498b-b278-e6f7220b9890	600558470130827458	incoming	text	ส้ม25	\N	{"id": "600558470130827458", "text": "ส้ม25", "type": "text", "quoteToken": "9T2babuJjabAoTWwVcyHQ2dePJA9Dgo84eFqCZkb8M60Kx9w6bpuFMgqLyLYV7XyicSYrAN0lm7-Pt13sDeo6Va54L47MazqJB7BvVPvjUFsdpOUMh-WOUkn4IDyoy4tvKmYyJCup1J-66TcsQKS1g", "markAsReadToken": "-hYkyi8wwkpwRZ7oUfZ-T-e8KeoeOWXGrvOpafch7xObscy5GTGf8ja8ayGH9R0N9ksI3kW8lYKYvsOFTzv-Almw0oRK3KqJYuvOPQD9gqzXfmFbOz0LIp_9tUWcAe9qRO7oZSOsAxtuBgkXMd1lxJV3HWidVZS6oKE66L3BJduo7nU_1VRZdhDY91fEMJiC2jKaCiLcZ3MdHDXsDdthcg"}	2026-02-11 06:40:46.994+00	\N	2026-02-11 06:40:49.535+00	Uae2ee67dc7c2f2676d0524ea95070512	Johnny	https://sprofile.line-scdn.net/0hYwnCjB8ZBlhDOhgCaKN4ZjNqBTJgS19KP1VKPXQ7Wm0uDkMJalhAbH9pXmF8CkYIb1kaPXc9DDthXwVZOl07eShkMRshTQNwPFlNfzQ6DxUAaB9HaiAOZCgzAjw_YhQIKVwSPS9cLxwCCiN-PVU0ODMzLTMhQxV3FG1qDkYIaNssOHENbl1BP3E8UWz7
33755df8-b352-4442-a6da-dacbfe23045b	c2c73a33-8fc0-41cd-92ed-952bb315612f	600563250530091660	incoming	text	**ขาดเปลี่ยน 11/2/69\n\nสาขา ท่าอิฐ 6\nสาขา ปากเกร็ด 11 \nสาขา วัดลาด 8\n\n**รวมขาดเปลี่ยน  25 ขวด \n\n	\N	{"id": "600563250530091660", "text": "**ขาดเปลี่ยน 11/2/69\\n\\nสาขา ท่าอิฐ 6\\nสาขา ปากเกร็ด 11 \\nสาขา วัดลาด 8\\n\\n**รวมขาดเปลี่ยน  25 ขวด \\n\\n", "type": "text", "quoteToken": "hOB0Tyn-7kVmWxUl2NDeUzdz2Pt1G7QWWnU8eAYALyJywu0A-dtHQGDf7NigYNiHYByod-W14zndGDbM5S108KBZZ7aGxMktGqWY4bj-BxW3-WfloB5G81INwKBRSJBCVNrYVmu5xOwjNUBtSKy4zg", "markAsReadToken": "iLrsXnrqil8NlEtqF-uBoa-JjR5nnc8wpXeZ8y56F9T0dDX3E-4mrz9CwAuW1lQbYz2tPlaAcggk4GoVJEnc7Y5xwGN2WH8vpB1pYM3na9BIzQ6PJNpf5EEAOisOLfDZbtYlqopt3S8lj8aoP4W_COJGVUqFbcdhTT50ofOhufhinIs5CJus-9sJ5rypoIx23mYFoQzHNFiLi84veeytMA"}	2026-02-11 07:28:16.19+00	\N	2026-02-11 07:28:17.736+00	Ue195e0d6769e1e3bd64a79fcc79ad708	Hi	https://sprofile.line-scdn.net/0hR5dbzMBLDRpJGyBy__9zZTlLDnBqalQIZnUQdSwYB3l0IxgcZHhHe3tLBC13KkhFbHhBeysbACxFCHp8V03xLk4rUCt1I0tLY3RG-Q
146be2a3-835a-44cf-89a0-bdd75dddfc01	51a820e7-c8e4-40d8-a349-7a39a54aa70b	600571298527576423	incoming	image	[รูปภาพ]	\N	{"id": "600571298527576423", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600571298527576423.jpg", "quoteToken": "ibXKhIufwKZ92w6v0NinEmFQIM-i5mYfB3kIgaRg-oh8mmU0qfC2by_H9i3aKHfF9fRxaRLfQ6Pknp4D5PXJQuMhe_7V9ThzCd_-mflKu5m86fNWcG20QYQ4-_9dFC7yuLbhHR4DmCHNtMWsuPI-LA", "contentProvider": {"type": "line"}, "markAsReadToken": "jn80obXiEdUNQrfU1k9XMtBYrEsNaZub2kfDosrnN4xhXCVuhYwfIeaZGHdrbPUgrMpjHbwA8bN2k4NuDpfzrJzyo9XOpEaQJX0j9n_3x34fdEVaoJe8YTpBXMaPNXiy_6n56VeX_Rg1to8-cNPKz9ocZDHCYKbe2O7s9FFeUwfxd50dIWVDiYXh-lamYxnr2Z9KwpoRfS-kkYnyhMDUtQ"}	2026-02-11 08:48:13.637+00	\N	2026-02-11 08:48:17.258+00	Ua39198e3657ca5b5f7861427689a8c1d	Tukk¥🌙💖🌸	https://sprofile.line-scdn.net/0hChUsz9bMHEd4CgOpi8ZieQhaHy1be0VVAW0AdUsJRnNNaFIUAzsGJ0hfECUWPg5GB21RJBhdSyJaZgAULW4LVB5YRy4kQARuAGskYSVeEQA1RTVPHwkTSSZeHi82czVNUxULICZOJxk2PwhkMWQXQyVfQgQEPVxHNl1wEX04csQXCGsSVW1bIEoMS3PA
36100d8d-013c-4631-b3cf-fa844ddf09e9	9f3368af-a40a-4aa2-8591-b6081e95a6b9	600580518580847104	incoming	text	รบกวนขอใบกำกับภาษีด้วยนะคะ 	\N	{"id": "600580518580847104", "text": "รบกวนขอใบกำกับภาษีด้วยนะคะ ", "type": "text", "quoteToken": "GC4mm7eTst2DyReqyOS3dnRamfjUGhYwNhI7mjo4cTVld3rrAoogeWvBVsBMzCdTuEIkPycB6znJaSioQ8AB8fEA6ZCE3R9AtTL4y0NRsh3eaJs3ltf6hqIJ6KAp5WCmSqUF5olc2O0ZX90TB4_Mjw", "markAsReadToken": "5yEr5Tc4Upmx9chYM8IYeiRN3RFAaBpOCNHMH1j2sjoXqRU5ZanZvMxQU0CEFnKZ_hvSg_eU5OYch39UEeV3gyGJD7oZeB3FKNkEVHeUTshyqSRG3aj1BJG1hSAAzwZQCJVg4WgDKkjBpfHNh2wl4rkdVuYRuVOdS1_4izkkkWA4xTJ1VHf9J3iyLP6vHW2VcGO_2TGNP4DvkyMXm_foOw"}	2026-02-11 10:19:48.704+00	\N	2026-02-11 10:19:50.268+00	Ub34fb98088d21f56571b13a3d46eb254	Pichaya	https://sprofile.line-scdn.net/0hYd5KefYOBksYMhLWWd54NGhiBSE7Q19ZMlNMJStnW3l1A0dKYAdLKSo1DS8iUkgUN1YbLygxCHgUIXEtBmT6fx8CW3okCkAaMl1NqA
358239fd-acfd-4646-b18a-d041604959ad	3dd97414-b1a7-4c2c-8130-47c58799df01	600591677560455360	incoming	text	   เช็คน้าส้มสาขาลาดกระบัง\n11.2.69\n\nเหลือ  =26ขวด \n\nหมดอายุ 16.2.69  	\N	{"id": "600591677560455360", "text": "   เช็คน้าส้มสาขาลาดกระบัง\\n11.2.69\\n\\nเหลือ  =26ขวด \\n\\nหมดอายุ 16.2.69  ", "type": "text", "quoteToken": "cKKIQP85DXSZMDSHSKr_TyDlxzVr-MHuVgsgcESqEzrnKLTcTJW6Ulrg2IFZRuO7x2QSB-nxQeVQDhCfRWqRW0pSHWKXoPTh09zPQoY5FGoYPieyVfftpezPvUedI1PjslgrZltz8fCaEU8QDATTXA", "markAsReadToken": "fkMsrrpdQy6WuueYRRnFqm1gLorOZ9Y1w50-dgsXdZDrPQZKcI9A3TfA6jTFvTBihYgoByM3_P_DqUcjqR4_SfgM4obh647Zndxb-FByJjM9aXkLc57W9cihBp41iNKvuTsd5_HgYH5qJlz_h3f3JN43auF_6DRfhLIWZRJHDN8L1td0B2DZw4MnPFSQ8WaW7--5yhpsOdnd9CT-DrjaDg"}	2026-02-11 12:10:40.059+00	\N	2026-02-11 12:10:42.758+00	Uc8265ddbfeaa2db475bb998c2b0cb63f	โม	https://sprofile.line-scdn.net/0hYo6-1w8gBkAbVBdIjYd4P2sEBSo4JV9SMWBNJyZdWXkmN0BDYjFPJ3pdDSdzYEEUNjoZdipcUSQXR3EmBQL6dBxkW3EnbEARMTtNow
6d9b0a24-f177-41ce-a8b0-06f767168bf4	3dd97414-b1a7-4c2c-8130-47c58799df01	600592772994433513	incoming	text	@Joolz น้ำส้มคั้นสด💯 11•2•69\nสาขาFoodie \n\nน้ำส้มมาส่ง 6ขวด \n\n\nหมดอายุ  11•2•69\n\n@Joolz น้ำส้มคั้นสด💯 	\N	{"id": "600592772994433513", "text": "@Joolz น้ำส้มคั้นสด💯 11•2•69\\nสาขาFoodie \\n\\nน้ำส้มมาส่ง 6ขวด \\n\\n\\nหมดอายุ  11•2•69\\n\\n@Joolz น้ำส้มคั้นสด💯 ", "type": "text", "quoteToken": "_dGbv1i7Pu_apsUkdPdl_maE_O0FTn0L0cTCWCz7r0sPB9nsl7_YcYq6FXYH7DwwDMncmt1r9AT3ewFMgnIrmPO6LRW39tpXCQF2dycnQ3bzvR3lMaQrogINQcOobhWcE4bD-s_ugQgiaCSUZSTa4A", "markAsReadToken": "m3N6XUQQg70fM6e40QYGxkmWKwJUe1GSaIyJ5aOVMz-f1Qru1VGOHdmXlq8QDhl3ZrmXP4eqoO3v4YU5OlUGL2J1VYbqFH69d6F-UH7mf8WuXoFIaI-FfhWhJm4AvicHmyHUWhzJzJPAJWzGCVoJ8HCsxTsZOcE6QiZ8icP0erJzNXn6pGOXkQCqgl-XKfbvfGou18Hzg46lE2GTa35Lpw"}	2026-02-11 12:21:32.908+00	\N	2026-02-11 12:21:35.209+00	U2b41bd8c78b53430ccf4f6fc8bce249d	ขาว	https://sprofile.line-scdn.net/0hAQjKoZhJHn5HMgEQ4JVgATdiHRRkQ0dsOwZVGXphSUtyUF4ha1wDGXBiE0YuUV0hbAcCHXdiQRxLIWkYWWTiSkACQ097ClgvbV1VnQ
5662c6eb-fe8a-476f-840e-dc1863af5989	fc6f556b-c2db-491f-9372-d177f988a7e8	600594143256773036	incoming	image	[รูปภาพ]	\N	{"id": "600594143256773036", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600594143256773036.jpg", "quoteToken": "8reXAaGeFapO5RwHZVuskGnHg5rNSuIkAJ7oIH4vel6AW22krYd62niNA4wkz4eOKr8bWKcid6KzJlp5ZEmCP1vc_eZ5nzJs9bXGvMAWwtIuo2MtIwGe7QxBdaol8sznOZ-mTXaOIhfjhhbIGqsMnQ", "contentProvider": {"type": "line"}, "markAsReadToken": "6TL5S4-fAwI2_o19gpGojA-V3SkyMjfNgpeI9ELlDe0SqqZtdUsB3-6YEFzzul8h8NmBd3cYlRfkYB3RMzRzB2uw9uIgSskvDwHAEmGUW6ozUq1WgGyEI5qXCZpJK6fMj0s6BTIdZ3ubg3dRpIz3gRb-Ob3Lb1knCRSHtokB2ZbL_bPhGvLn1H_P_pZDezm4TjFYiYNKNQ8HhP8_Bxxdfg"}	2026-02-11 12:35:09.881+00	\N	2026-02-11 12:35:13.404+00	U4023b404fcc803c2cd8f1839043ad9e5	chompoo:)	https://sprofile.line-scdn.net/0hDsDD_3S0G1xpPQrWShBlYhltGDZKTEJORV9WaV5oFT8EXw5aF1kDb15uQThdDl8NF11dOV1uQGlLVF9oFSA9ahtaEmwfRjdrGggwbg5tDW0kVlRjQllUXjpGPhIuT15NGl06Whx-GmQHexsMIVwtYllnEm4PeARZPmp3CmwPdd8GP2wJRFpcO1s7TGjR
573363da-e998-473b-9b10-d67ea07d9fb1	fc6f556b-c2db-491f-9372-d177f988a7e8	600594213486723436	incoming	text	จัดส่งวันศุกร์นะคะก่อน15.00น	\N	{"id": "600594213486723436", "text": "จัดส่งวันศุกร์นะคะก่อน15.00น", "type": "text", "quoteToken": "5kDBxDBYOvKtTTDqQz3R-7QW85A973VFbTxmcPGc2aYiooFvMKNQ9T0GxuwtKUixQd315_Fql0tWLkySY7Yy3kT1_qis8G-HXBL551PPOdaaB_nYign_wZm3KMraEIYmrbYAhAin6WfVp3faqmjU8Q", "markAsReadToken": "fcGR-akAeJwJXTKShrarkI8OmI9le9mgPssKMtWDBDVNtJlpgPqq8djEbYXc3CGMgLh3XNXr7dHfrqVj96f1B5dCwf65Y7T-_b4iz5FpyDO2ddzTP5BEvbbDZtAygzmGAFI6zn05W5peJmf3y_AHNATwPyEbvadIWgPdZyAiZNhve2B0ixdwigcln67J2kDgVZ1Zaq-9GuFrWDK8D4IopQ"}	2026-02-11 12:35:51.682+00	\N	2026-02-11 12:35:52.578+00	U4023b404fcc803c2cd8f1839043ad9e5	chompoo:)	https://sprofile.line-scdn.net/0hDsDD_3S0G1xpPQrWShBlYhltGDZKTEJORV9WaV5oFT8EXw5aF1kDb15uQThdDl8NF11dOV1uQGlLVF9oFSA9ahtaEmwfRjdrGggwbg5tDW0kVlRjQllUXjpGPhIuT15NGl06Whx-GmQHexsMIVwtYllnEm4PeARZPmp3CmwPdd8GP2wJRFpcO1s7TGjR
7b536526-7bac-43fe-8e46-b0d199bc4c7c	43fd6048-c134-454d-b8ab-c6d3c8d61cd7	600614173675880489	incoming	text	เมืองทองน้ำส้ม  1 ลังค่ะ	\N	{"id": "600614173675880489", "text": "เมืองทองน้ำส้ม  1 ลังค่ะ", "type": "text", "quoteToken": "cce0-zvaLc2Z-xKRyMOr0nJGcYCK7wKaNha774-GwZGbjIfM037xIfZbS6IM3SXRNlzYKOuv-YJXY-BYGhtR1Fqw3sDZ6V5VxN67WWcxLG3y5MZmXkXeHlvN-X6AIGouZTIvhJbt5S9QyVdgJA-OvQ", "markAsReadToken": "cP1rPIG2e8M8lrgAG-kGQZ1iiKM1vVKaqiTgDOSUqWFehdAcslmzL8Yb19-RZ7nS-YBn9RonGwRYvze1KQunDVhhkyynBDRiBnryVr8xbC9_ByH-AmtRkAX46wviajQ_Lhdoom9pKQ5rI5r9ZddoULoZTh5XC1SzMXt56aG9VrkBX6i1h3et_8NfyP1iqE3dcpA9H2zE1l9sfTt06qSQaw"}	2026-02-11 15:54:08.805+00	\N	2026-02-11 15:54:11.707+00	U74277658abb2158034cb8a9289035c15	MayS.	https://sprofile.line-scdn.net/0hLsZPHorsE1x3KQGGobFtIwd5EDZUWEpOD0ZfaUEpGDwfSlAKXxwLbkIrS24YTFAJXEhcPUp9GGR7OmQ6aX_vaHAZTm1LEVUNXUZYvw
36b7123d-9f55-4345-afc2-28fe86cfe043	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600652641383219558	incoming	text	หมู่บ้านสั่งน้ำส้ม เพิ่ม15 ขวดค่ะ	\N	{"id": "600652641383219558", "text": "หมู่บ้านสั่งน้ำส้ม เพิ่ม15 ขวดค่ะ", "type": "text", "quoteToken": "e-CvqV-IjPHlG-6EnQKzAgF_xfc_a7xnU3mSgQP9uE46zbBe7yAWYdagqa3cX6OTfCo4j1fGybs-8QT9woI0uHaVsjEQDjgSlNLQ9mAMwdWE5Ofhz2kcTU37wf-puzUQD6YuFKNpXFuvsJHhVYkRdQ", "markAsReadToken": "t726grzcUaMYoxMwwBZ2-BHC98XF0JrYIkcr06MXYSdDjo_Qx_Cq6H7UnZ2JFxnc5i6mlg16rrZpPhtjlX8fn5twX2LQbPJWtgoYOOoENJjbiDQhIgH7OjrUXPxXC4IE19_zO6H2TyZJ3oRM6madrvRNmsdYYaCDxUtWVsVDQp_uoiIyvSM-70EVlLtGDEH5WjFGd-WDq9bkYdXAjndCPg"}	2026-02-11 22:16:17.247+00	\N	2026-02-11 22:16:20.028+00	Uffe6081377ac66e360cfc7656c02a058	โจ๊กสามย่านเศรษฐกิจ	\N
5a50a049-9661-4cee-b98a-ac948501ca61	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	สรุปคำสั่งซื้อ ORD-202602-0058\n\nดูรายละเอียดและชำระเงินได้ที่:\nhttp://localhost:3000/bills/fabfad6b-bab3-4c54-9bff-d61492e10a97	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-12 01:46:28.448+00	2026-02-12 01:46:28.448+00	\N	\N	\N
999eb793-0a80-4832-bca7-eedbffec3243	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	ไรวะ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-12 01:46:30.462+00	2026-02-12 01:46:30.462+00	\N	\N	\N
9cd84ae6-0b57-46f3-9c5e-031d04c46269	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	ทำไมมันส่งช้าล่ะ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-12 01:46:32.88+00	2026-02-12 01:46:32.88+00	\N	\N	\N
0f52f118-bc31-4252-8c42-c049c234a4ee	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	ปุ่มส่งบิลทำไมมันหมุนติ้วๆ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-12 01:46:41.845+00	2026-02-12 01:46:41.845+00	\N	\N	\N
e41a3854-4750-4e79-83b2-ad66196c9fed	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600675570032312460	incoming	text	11/2 \nอิวร 15 ขวด\nบางขุนน 20	\N	{"id": "600675570032312460", "text": "11/2 \\nอิวร 15 ขวด\\nบางขุนน 20", "type": "text", "quoteToken": "poaHSUZsfZLlQsmkB0b1zsZlVcOyT3cAi3qzKFL6kKnECBoOYZ60KUXMNcn3sgGRRbEQZab4ILtasVWDOcqxi0yo6L6YiJIX5gxCB3bKx_LC4CJBg3UYjVYzkVOv2aVPAFNfBzEKADXL8c_4pCjxsg", "markAsReadToken": "kFemgeoG1uj_qXaWwT27xzCgN-Pmc0DrgvzWBHw8Fp80OVKTt6JP_yy1GaL5RaohPmKAkfU35PJyB18K87zDsjWsYh63hzpr8N5Gy6yRb_w7MK81_5byA0jFSOLIVf8CzkI20zt0WXITvDhDw2cRCvCEnvQpDJNjjWihf0cZeW9oNbMZJiQ1YpKKax8wS-2-pKIXyv1CcrElgTEBd_OXFw"}	2026-02-12 02:04:03.876+00	\N	2026-02-12 02:04:04.955+00	U979d0e4603bb832ac4cf72979d33da6a	Nuy Manunya	https://sprofile.line-scdn.net/0hOpdiNHBDEF9JEACd65FuIDlAEzVqYUlNZiQNMX9HG213JlQKZiFXMClASDwmcgULZSJYOS9CTzhFA2c5V0bsa04gTW51KFYOY39bvA
4a40c308-d632-4320-b5c3-3169c7b3b44b	d8f01bb1-59eb-4337-a399-9dc95d0ce066	600676393507881064	incoming	text	จะรู้มั้ยล่ะ	\N	{"id": "600676393507881064", "text": "จะรู้มั้ยล่ะ", "type": "text", "quoteToken": "r66lEbMddyaPXffCYYoI0xEwEzOM70X77_CIErrpz9ePdz-ZEG5b7BdkZwcP9YLHVefcJ871VX8_tjANZCGkHEro5zk-p6xrawsKJKU2Y4Nhik624m_qCHPwKQ_XkWcriTVKRjsHGrWHxjYYznlz0A", "markAsReadToken": "yc7WYLC9yRj0F2a-6I0OwtKhoshPlmPqaDEwhAt7Ty7ZVpbvZ7_-4m6Njp7QQAdPdAgLSOto4i__tEe-6EE8-ff2gtaq_5ksOMLf4CzvU_CJz01vMSxgf1h2FMJgfg6Gi4aXnHN1mW2GmTA2XUcQTfsmEhaAturSPAnMFzhBGJDWcJm6p3AkFiDcIfv18Fw5yYZRvtuFUUekihN79fH1Xw"}	2026-02-12 02:12:14.614+00	\N	2026-02-12 02:12:16.273+00	Udd8509f64470983b40e8e3775774b7b9	แอมแปมนะจ๊ะ	https://sprofile.line-scdn.net/0hkvwtlGJ5NFlaDSA0k_hKJipdNzN5fG1Lf2goamoNbGs1OScPfj8uOWwEOGtvNSYNdmp_OGwLbjtWHkM_RFvIbV09aWhmNXIIcGJ_ug
e85706d8-a986-40f3-8247-a4b881921107	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	อ้าว คุณว่าผมนี่	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-12 02:12:38.461+00	2026-02-12 02:12:38.461+00	\N	\N	\N
e5a7c04c-804f-459c-86fd-0d2214811f4b	d8f01bb1-59eb-4337-a399-9dc95d0ce066	600676400689054003	incoming	text	ก็คุณทำแต่แบบนี้อ่ะ	\N	{"id": "600676400689054003", "text": "ก็คุณทำแต่แบบนี้อ่ะ", "type": "text", "quoteToken": "X7rXAbGQA_NXZZ6dYoPHk6jzV2kb2eYtWo5whRe6U0XBlbmAbMx4TTvRfYqq4_LkVk-ZYJ-Tj2VLoWLjWbJtU7cIy5Ohd8Z8HOAkl6EtRO6mMV8mgdkK4p5GfQ727o2_i5MRFtieIwgp4dJsBwjrzw", "markAsReadToken": "7Pr0VemkgAhqowTp9K83lKrDHuNkV8u9RjJyj8YY4WS19KNri0ZW1f3kDg72SSZluqRtgZjyIlh1hjAM22o7OMaJJ-99txtl23h94YwwwKLt7AerL26a3WuRU9EkjX2y0TP56UvhEli5RoV5ohs1rfr6fo2aMewYD9bb0n-8k-YKwEHPf5rWe-t0V7DLZzWWthte1kQkweiTvxwM7Bgf2Q"}	2026-02-12 02:12:18.889+00	\N	2026-02-12 02:12:19.717+00	Udd8509f64470983b40e8e3775774b7b9	แอมแปมนะจ๊ะ	https://sprofile.line-scdn.net/0hkvwtlGJ5NFlaDSA0k_hKJipdNzN5fG1Lf2goamoNbGs1OScPfj8uOWwEOGtvNSYNdmp_OGwLbjtWHkM_RFvIbV09aWhmNXIIcGJ_ug
7568137d-e37c-43d1-88fe-4a0f41d93de9	d8f01bb1-59eb-4337-a399-9dc95d0ce066	600676414614405548	incoming	text	ถึงได้เป็นแบบนี้ไง	\N	{"id": "600676414614405548", "text": "ถึงได้เป็นแบบนี้ไง", "type": "text", "quoteToken": "A7moEhtpz-9CFDmFqHZKJOEN97k1ClSS_YXIfr2XNEWgw-OZUhyq8J9cqBvNvK4ZnlVVxvtwG8dRw8tPIKa28iHrZbzK7uIaqD9jQcpQGPmeIj5UBtFiCmHzx3PQvoTTTlMCgUouWHsl2daXWcI0xg", "markAsReadToken": "H7fUADT5e3Fyk2Qz38U5_c1E64NU0H1oDNJCu_MFz_ltMreEcWHLnVtxlUWJZnjV5DtBzhk57mqRMGh7WCldeviMFo6oeI6ay4akZpIZ5wTZA_lO4sdvlc56_XGWd36JUF_fp3EA1ZauTHuCuo5b-8cuxEe_zMETMEt1sizaNyUljDW3EKdkX2DMmOz36NOVpwykG8HYkYxzU758XYtvNg"}	2026-02-12 02:12:27.382+00	\N	2026-02-12 02:12:28.419+00	Udd8509f64470983b40e8e3775774b7b9	แอมแปมนะจ๊ะ	https://sprofile.line-scdn.net/0hkvwtlGJ5NFlaDSA0k_hKJipdNzN5fG1Lf2goamoNbGs1OScPfj8uOWwEOGtvNSYNdmp_OGwLbjtWHkM_RFvIbV09aWhmNXIIcGJ_ug
b43747fc-c8bb-4da1-9009-acd1d12b2188	d8f01bb1-59eb-4337-a399-9dc95d0ce066	600676426273784083	incoming	text	ก็ใช่ไง	\N	{"id": "600676426273784083", "text": "ก็ใช่ไง", "type": "text", "quoteToken": "i4fOvgn7YDq4iC0_l4-UVMdfMOswfR0QcQgqSUgD1vWkE4CpHEJ2Bf1cH48_nYwWtTO4XKCwJyKANiraD5wEGiSRVMdr1O47D3ZIkiBoBgNMlEOTf-HQeVrMUMlBHdY0_w7PUAL1IMoU_d3oa1ehJw", "markAsReadToken": "WIXwMOwY3rOLqON0mnmWwLJnTHihb5PhzzH56q5ffKIWhyETa45-eMDEy9P2WbjccbajYzCJRwHANi-Vh5b9ucNzQ_lHyyD4k5-VTTLKPD9x7eXQHC9kGpi9q7qrvi1qUSFJ2a62Q_scWs63yAKziGaaPFVL0xgI07m4NEsXhrf8yZZqk1121G6fa-uORrFprMVkW_9phPfnu8C1TViaCg"}	2026-02-12 02:12:34.327+00	\N	2026-02-12 02:12:34.876+00	Udd8509f64470983b40e8e3775774b7b9	แอมแปมนะจ๊ะ	https://sprofile.line-scdn.net/0hkvwtlGJ5NFlaDSA0k_hKJipdNzN5fG1Lf2goamoNbGs1OScPfj8uOWwEOGtvNSYNdmp_OGwLbjtWHkM_RFvIbV09aWhmNXIIcGJ_ug
f2bc1159-7732-4cab-a8d4-03032eabed6d	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	คุณพิมพ์ช้าอ่ะ	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-12 02:12:44.793+00	2026-02-12 02:12:44.793+00	\N	\N	\N
0c7f0acc-22d4-4e3f-9a62-f89e5dc90eaf	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	มันเด้งช้า	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-12 02:12:47.505+00	2026-02-12 02:12:47.505+00	\N	\N	\N
6082fcea-e07b-42df-83c3-25f9f05a9a56	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	ไม่รู้ทำไม	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-12 02:12:51.831+00	2026-02-12 02:12:51.831+00	\N	\N	\N
3209e5af-85e2-4891-ab2c-3f46b105cfcb	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	เอาไง	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-12 02:13:00.891+00	2026-02-12 02:13:00.891+00	\N	\N	\N
008a9ddd-a643-4fe8-af80-42b500598cf0	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	ผมโหลดข้อมูลอยู่เนี่ย	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-12 02:13:04.824+00	2026-02-12 02:13:04.824+00	\N	\N	\N
5d0378ff-2711-43f2-9077-2bbd6a082533	d8f01bb1-59eb-4337-a399-9dc95d0ce066	600676461573832915	incoming	text	ผมจะรู้มั้ยล่ะ	\N	{"id": "600676461573832915", "text": "ผมจะรู้มั้ยล่ะ", "type": "text", "quoteToken": "LD2ZcuLpWriFmMkhSvL4LduKu2V-zORa5hOosTiq9NRy3aVCmve3i7FnKtzG14_s3zUqckEj2PDGSeR9WAwPDbroV8ssNBc_EX0BvKR1IpHl1aLc3mQ1eaqYR1_yCsggOtudXyjJJZcKVHekBWbgTQ", "markAsReadToken": "qqp-qqDjZ8B7gBJI_8BJa9zrxgTRx__x1iGZK00l9tg3YkRBMjrsEsE_Z52Zw7dbrMjJk8plkmVjSzRY2-eMhtxYlbfuDIiZNRTAEBxv1bbfEAI0573wbv7wfuhUOoPpjcQ-WFnDfn2CtHKt5kms2NnSF12qfkmRmtEgpOvZA_QzlLXS61m6OkE9Oi2-lyMlBfgYsjGhvEUB8ruqVjQ0Vw"}	2026-02-12 02:12:55.293+00	\N	2026-02-12 02:12:56.237+00	Udd8509f64470983b40e8e3775774b7b9	แอมแปมนะจ๊ะ	https://sprofile.line-scdn.net/0hkvwtlGJ5NFlaDSA0k_hKJipdNzN5fG1Lf2goamoNbGs1OScPfj8uOWwEOGtvNSYNdmp_OGwLbjtWHkM_RFvIbV09aWhmNXIIcGJ_ug
c0f32e94-fd41-4a0a-9f27-f7a39fbf0537	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	คือไง	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-12 02:12:58.301+00	2026-02-12 02:12:58.301+00	\N	\N	\N
586d96d6-1948-4c6f-84cc-4f575fd44b95	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	สรุปคำสั่งซื้อ ORD-202602-0061\n\nดูรายละเอียดและชำระเงินได้ที่:\nhttp://localhost:3000/bills/2b52affe-9341-453b-9b78-9b17b64dfdba	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-12 02:14:25.471+00	2026-02-12 02:14:25.471+00	\N	\N	\N
d9503e4c-aa7f-48c9-a751-86cf7ea1c022	fc6f556b-c2db-491f-9372-d177f988a7e8	600678196370735496	incoming	text	รบกวนขอบิลด้วยนะคะ (smile)	\N	{"id": "600678196370735496", "text": "รบกวนขอบิลด้วยนะคะ (smile)", "type": "text", "emojis": [{"index": 19, "length": 7, "emojiId": "077", "productId": "670e0cce840a8236ddd4ee4c"}], "quoteToken": "1bTaCK-zWYiNwNCeKKGq6hWc__3wrkBIV7JKNlpzQJ3uZXNIjr-ZgLxddJtL4TOJ7njztXDAvnbZ1uxLFfE4bZVXtKkf6aYAv2Ji2Jll_TGFeaWF-kekoA0EpNlqafxnQphRocGMNcVZMKStNauk8Q", "markAsReadToken": "ONxSDpKXIiahWy5dOTmhVi63NQAbJDc7O2reK93pZnlaaVhO3RfjF4_hIlNLt8F85mhFT9OEPnkpYKdipMX-tXmSxy8ijaB3mQtZQcRP5Q6cOQmh9jrmMKWzgJy16-ceepxPgbTRqBJmVl26TaDuJ9H6V23zkviFZq7s6M4jXjMsX5N4fD0fZes9s06sv7FqSQCskapBVQV_DwWq7XssWg"}	2026-02-12 02:30:09.203+00	\N	2026-02-12 02:30:10.717+00	U4023b404fcc803c2cd8f1839043ad9e5	chompoo:)	https://sprofile.line-scdn.net/0hDsDD_3S0G1xpPQrWShBlYhltGDZKTEJORV9WaV5oFT8EXw5aF1kDb15uQThdDl8NF11dOV1uQGlLVF9oFSA9ahtaEmwfRjdrGggwbg5tDW0kVlRjQllUXjpGPhIuT15NGl06Whx-GmQHexsMIVwtYllnEm4PeARZPmp3CmwPdd8GP2wJRFpcO1s7TGjR
8e7e2f29-a099-4a8f-8ebf-bcf3bfc3af41	fc6f556b-c2db-491f-9372-d177f988a7e8	600679264072761431	incoming	text	ขอบคุณค่าา	\N	{"id": "600679264072761431", "text": "ขอบคุณค่าา", "type": "text", "quoteToken": "fqww3rKYO55d6ZS5KuJfktF99v6RgZnGSQm88N06soZVDPNTAsyRtyoCWfOW2KCWeav04pFD5Rjcwwb5IKUAxYUXT1CbmtlBcWtx_JTmnAJRc9VqxsmXUYSZSjUxGDKyt_V7Xo-7yTwb3EsRHZktTw", "markAsReadToken": "agwIBwtyT7vWV37DDL4EwP9cdWz5icV8HNXxFjBBlfpZafKPyyr1Tn4Gdxuug88fElk-L29wAEl3Ff5s1PB64sSNyN5QqpuAJyqGh0rGPOa74Oaq4O_ksfro6PyNF0MxG8X0yLzyLcASyTMwmoM9LjZdDKyGFLOe-6O56DJKVQEZ7F6wpKQV5DAl-NnTgXhPuVWSHwnWXyQuZtKNbk8CUQ"}	2026-02-12 02:40:45.616+00	\N	2026-02-12 02:40:46.842+00	U4023b404fcc803c2cd8f1839043ad9e5	chompoo:)	https://sprofile.line-scdn.net/0hDsDD_3S0G1xpPQrWShBlYhltGDZKTEJORV9WaV5oFT8EXw5aF1kDb15uQThdDl8NF11dOV1uQGlLVF9oFSA9ahtaEmwfRjdrGggwbg5tDW0kVlRjQllUXjpGPhIuT15NGl06Whx-GmQHexsMIVwtYllnEm4PeARZPmp3CmwPdd8GP2wJRFpcO1s7TGjR
32d032d8-aed5-4cac-9558-85ce1bdce2e1	adcd0754-b048-4f25-b02a-370e5528eb03	600691183865299204	incoming	text	เล็ก = 1	\N	{"id": "600691183865299204", "text": "เล็ก = 1", "type": "text", "quoteToken": "QFbRiAQLMJwjfysRGMZ7T_RYjEwr5FepiK8APsdl-VVCWYA2Mv5_c6bGt6jBR0IUZ9kzxqgOBukkuZI0eH2oH8bLKW3SQmfWWai4IVgcF_BE9pI8RN7FSTlOMbO2qsfHcyzE47-xca_4hkH6vLEi0Q", "markAsReadToken": "g2JwJ7nHZBPxXXB_AIdhI4RJ_QBAImqMWovWCPLntW5ShG-p7dJc-iBtryetbgA5WcX8_wYyqJER6UNsa5KvaDEiftoCg9A9qveZmMdOTb5OVKVo0Y3YFmvTsfxclvk5qALRmuB8KOjaeq64SBbn89Fgwp2tii3_q4yi8vF3iB4-s35OFR4BuCSHryaaXqyKwyMd0jScf6RcrUD4jZ60gA"}	2026-02-12 04:39:10.504+00	\N	2026-02-12 04:39:13.416+00	U687f079b14e8b44f2e8177195b28ab0f	Benyapha	https://sprofile.line-scdn.net/0hU7cphS1rChhOCRrb0r50Zz5ZCXJteFMKajtGKn5bBi11PkgcMThGfXMIXSpwOR0eMmgXLi4OViFCGn1-UF_2LEk5VylyMUxJZGZB-w
4bfb2105-36b8-4f73-9798-2091ac8a7924	423984ab-7c00-4775-b576-b6da4d104d72	600691673290768572	incoming	image	[รูปภาพ]	\N	{"id": "600691673290768572", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600691673290768572.jpg", "quoteToken": "0nZ7fgSKNNcghd7Wfvx6CyJnrcvnaImd4D4eMobsI9PFByD_YA1YL24hnz8tlCcjwFwFqkHaK9qkPrBZr28_R7pf4ta46NZuzeFr1eIptT3Jn3hvIg-l7R9dxaJLJUGWWWiYyQF-TpfZ-7TuYwdXfA", "contentProvider": {"type": "line"}, "markAsReadToken": "Sc8tk1LQgiDyUsZd90tFDfcgt7rkzwlzYjLpZrcruCIZqi6CPjIY2_AYdzftPyv2NqqJnAVjUrPFF30zW5x6ioU7g1AGKnrJgMI_RrzosjDmclqnh7onglaxUkYG73RRDQL4BQim3AtV3ired2BPby_4nuEzNVjH5vIGYAlhu9uW1sOcMxiMIOYcDVHr5Cpu5NMWMDHdTTk_488gaCVpeg"}	2026-02-12 04:44:02.307+00	\N	2026-02-12 04:44:04.776+00	U989288436cd8f7c0d403078ae40d3a80	𝕂𝕙𝕒𝕟𝕚𝕥𝕥𝕙𝕒_𝕣𝕡𝕜	https://sprofile.line-scdn.net/0ho-17Sq09MAIcTi_k7i1OPGweM2g_P2kQNC0sYipNbjAndiABOHt_YSBPPDcieXNQZCt3ZilMazs-BAIIcUEUA1M9L0s9DDEsUWl-EWg8akVnBywgZV08IVALaUd7fhdQWXABHVEZHWZiCCMnSmEZLE49ETpoDTYEQxlcVBl8XoFzTEdXMSl3ZS5IZzak
c218f158-8494-4bf5-b15b-f55126f60fe8	423984ab-7c00-4775-b576-b6da4d104d72	600691683256696970	incoming	text	ออเดอร์\nสาขารพ.รามาธิบดี ค่ะ	\N	{"id": "600691683256696970", "text": "ออเดอร์\\nสาขารพ.รามาธิบดี ค่ะ", "type": "text", "quoteToken": "NUvQbj5D3R9BTL5Xpubvtg2_WDm4iZetmsT5bTCzuRKKOiytk6vHlwgRwq4rulUKuufBl84k4c_KEcvjj6FsfKKIuGT2XfgovN84REAI15weLdFs1TgKrxZ2p8s51vBKBebdZXC9p0IrD44eBNDx-w", "markAsReadToken": "8TQmABKsH5dHpdSjz86Rn7ywMx-vRyHEK5dl55XgUSa3tSD8jGNSQ9TY6rsW3N6KaoIWaaaw6vxDmRV9Jv-VVjnx9gMIHiUHjrjZ5i3YRBYgNz-GfJEcdH_KCAoePY6OcAG0TwSbZixEBV4qGg98-SgWohOdTQB4btLvM-gMz4GAff5U3o_6LbG-C3SPwSwC6yGzC9v6JopFaqALVm0muA"}	2026-02-12 04:44:08.167+00	\N	2026-02-12 04:44:09.269+00	U989288436cd8f7c0d403078ae40d3a80	𝕂𝕙𝕒𝕟𝕚𝕥𝕥𝕙𝕒_𝕣𝕡𝕜	https://sprofile.line-scdn.net/0ho-17Sq09MAIcTi_k7i1OPGweM2g_P2kQNC0sYipNbjAndiABOHt_YSBPPDcieXNQZCt3ZilMazs-BAIIcUEUA1M9L0s9DDEsUWl-EWg8akVnBywgZV08IVALaUd7fhdQWXABHVEZHWZiCCMnSmEZLE49ETpoDTYEQxlcVBl8XoFzTEdXMSl3ZS5IZzak
441be3d7-ad7c-434f-9a59-7faf3e7bdc6b	d8f01bb1-59eb-4337-a399-9dc95d0ce066	600691706140819699	incoming	text	กวย	\N	{"id": "600691706140819699", "text": "กวย", "type": "text", "quoteToken": "_YsqSRIDa7vptziB8LvIFOuq3fpg0lEtkhF3MqnzkoV2AI3iRftZ41B0DgNIz8gjZztFQsFscUsCseEGY41Fl0Ww4BeDPtp3Js_7MN4x-0Pe-pifFhshPxshRxrDrDNTyJj_0tsTam7eEeBazBpsSg", "markAsReadToken": "VHrMqvNYzPU5y-lo7ezGQ09vFfGCynlPLQ_Kk-CR1PTj-C_LK5SUblzKS51ROGkqBuyoZLEQ6XvaRCe6kZsMJawHeolW5qKs0kYH9HX0IuQf2ndcucvQTRQr7_EQ43RNp21ra4EmxA_HEqQ9QpoPU3QpgIFI-86ZW7E1xqN8AFyZrrgoahu6LhrsUT3fvt6QGQWD_of1CGpNpMswcubzqg"}	2026-02-12 04:44:21.791+00	\N	2026-02-12 04:44:22.602+00	Udd8509f64470983b40e8e3775774b7b9	แอมแปมนะจ๊ะ	https://sprofile.line-scdn.net/0hkvwtlGJ5NFlaDSA0k_hKJipdNzN5fG1Lf2goamoNbGs1OScPfj8uOWwEOGtvNSYNdmp_OGwLbjtWHkM_RFvIbV09aWhmNXIIcGJ_ug
cf7198d6-5c94-40e3-b334-45997953c536	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	ไรมึง	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-12 04:44:25.761+00	2026-02-12 04:44:25.761+00	\N	\N	\N
474fc376-6375-4cc2-a388-af2fddcd814c	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	สัด	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-12 04:44:26.58+00	2026-02-12 04:44:26.58+00	\N	\N	\N
5bfd1dee-bc5c-47dd-ba6f-d7b758772a2c	d8f01bb1-59eb-4337-a399-9dc95d0ce066	\N	outgoing	text	สรุปคำสั่งซื้อ ORD-202602-0062\n\nดูรายละเอียดและชำระเงินได้ที่:\nhttp://localhost:3000/bills/c0fa4431-cd0e-42fc-bc2f-8c38dae4246e	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	\N	2026-02-12 04:46:44.736+00	2026-02-12 04:46:44.737+00	\N	\N	\N
4f5e8fcd-22fc-4e0c-a898-692758b8d3ae	d018401e-70b8-4beb-a37e-521da9f16a86	600694410292232723	incoming	text	2 ลังค่ะ	\N	{"id": "600694410292232723", "text": "2 ลังค่ะ", "type": "text", "quoteToken": "q_UNJsJqPMhT2bDLWCellwN9YeIjBwfz6PnTo4AhoVkHIs52N54cY24HkQbe52KnagN2Lf0VSe6s8QY2aKqGT7UDm77ZTOvq7KItSh8ZKpdpGH7eKOnXb-wqY5RxZTYVKRJgsBjCFoawHv2m3B62ag", "markAsReadToken": "F11EGyRk5onP9UVmTbWj81xEfMYIs6auWQnFz4oXnX1_kj9ol_yrxMWIHxTTPkWxFNkUYPG5_mBUfNMoEjh6u17xESF8f9RZJesDo0cK7GX6JhXpDkOwEWi5FbjSBfHOdVq27-KXHDYXxsXZLC0DinD2mBJ4jK_ykXw2_jTl2NyGto3lZbfBT2f0BcvICfYc7-dxXXpCt9XhVw6ZV20NZw"}	2026-02-12 05:11:13.537+00	\N	2026-02-12 05:11:15.606+00	U0fde09872afa50bc61694226e41dd72d	Movii.👑✨	https://sprofile.line-scdn.net/0hk8LAATrVNBdhOCqPI75KKRFoN31CSW0FT197eVBrPXNdAHFHH1orJVw8OiAICnpGRFZ-IlY-PydDajUzGR55cidKLn88TBIpHRsDLg5sDlsrDhESKC4zcw5LOWYfUxBFNTooBlZoLmEVXCQUEh0zdzBENFoLbwQVCG9YQWQKWpQOOkNCTF9zcFM-YyPZ
c154a6da-22b6-4b6f-b2cd-ce9b1be8fa22	b54775bf-8849-4fe2-a5bb-a532ffbfc7c3	600698590385930326	incoming	text	สั่งน้ำ\nรับวันที่13/2/69\n\nน้ำส้ม250ml\n=50ขวด\n\nฮันนี่เลมอน250ml\n=15ขวด\n\nเข้าสาขาศาลาแดง\nก่อน9.30น คะ	\N	{"id": "600698590385930326", "text": "สั่งน้ำ\\nรับวันที่13/2/69\\n\\nน้ำส้ม250ml\\n=50ขวด\\n\\nฮันนี่เลมอน250ml\\n=15ขวด\\n\\nเข้าสาขาศาลาแดง\\nก่อน9.30น คะ", "type": "text", "quoteToken": "gkRxqLvUrt5cx2oYDuCVxqZY_6M7xJGGUcFA1XRpLViipz4527MfuDUO1Kzenm4XmfmJgR59hunpm3PwcMeU6auNy5cir1SIWWJgzwnBRsOe3Xplcugkv2-cUd9tA9ooxtppncAd6v7LtNagOZq3Nw", "markAsReadToken": "krpvaKFpb4MKvLrABFWFZkcpRbyLIRSHB0zkpWbxYXBo70iQLappMVKOLDcxx5EQWbIusCAlNwT0EOIBYG7z6CJY4OgKTLo2BpZZ3qEhnDohNsjGEvNVbNcZ7RGBhEmJYFyxd_IVe7BBZCJlZ_Yb3__4-jOT7t3_VpwLlxDfCRlCy_Px3UhThJClHRhVYbtlhMd8Vv5fyb0w232HgDLR1A"}	2026-02-12 05:52:44.978+00	\N	2026-02-12 05:52:47.215+00	Ufe175fa5a9a26ab61711e1ed356f6b52	Captain official	https://sprofile.line-scdn.net/0htjejhELhK0VIEzmF0UtVOjhDKC9rYnJXNnwxI3wRcn18Kz5DMyBsKy0RJ3MiJGUWZ3IxdihEdidEAFwjVkXXcU8jdnR0K20UYnxgpg
61720c28-74e7-4f91-bace-80cd30e5ad2d	2917bad7-417e-40ab-b4eb-10ae1ce80aa9	600712618453500302	incoming	image	[รูปภาพ]	\N	{"id": "600712618453500302", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600712618453500302.jpg", "quoteToken": "Rs769lZ-N5TSUJvprGRM9MdT16mk3wcVTB_QT1oR24RrQmetjbnNV9vc8k_36b7gC7vR3CRtOBx62UH_PQ3v_1bZ409EAM0o3mQI12K1hu5YzsA2SjC1S_rvC3BinY31gYfAUlapli3LBdEB1xYloQ", "contentProvider": {"type": "line"}, "markAsReadToken": "xuK1j6meIVqzBVaOdOL75nX_sqRmJaEmveJnd89E9RkHgVdsVk9jXoeOGHV740U-hjW4A4y5Mzx3T-bB6LgsYQSwnwi-WLtZsjPmDTIfgeat1Vy07nt3xKdQwZMMyfwdrUxrlqfkoR3OQhbCAuC0tcyYetAk73W5aKLT9DkYbYv1lfa-jB9T1bIMPVJxoPGqAsaoUOoXV_6QoGG2xTJZtQ"}	2026-02-12 08:12:06.682+00	\N	2026-02-12 08:12:08.924+00	U943d39b92c702f2d20bf6c82bcf79cc6	JennySupichaya🎄	https://sprofile.line-scdn.net/0h-HfmM9m2cmdLFG2AN74MWTtEcQ1oZSt1YSJpBC4Xf15_czw5M3U_BH9AKlZ1LTM0Z3A0BX1GLVVpVn1jPQBtQn1fVRMhIzJ5JnVLRiNVUgIxdGcyYHBBUytRe1UkY28zG3prVglWVDkjXnZ4YBBiZy1JVl81Sn5IPkMeMU4mHOQkFgUyZnM1AHkSJVPz
db353033-fead-4936-bb6a-7629bcdb2002	2917bad7-417e-40ab-b4eb-10ae1ce80aa9	600712623856288086	incoming	text	ส่งสลิปค่ะ 	\N	{"id": "600712623856288086", "text": "ส่งสลิปค่ะ ", "type": "text", "quoteToken": "tLYMWnaqfhJO05Q1RZATv0HU0V2vtB09SPiwSlXTu9DKTsTxqW77rYK6ROLuFTyDSqBeH3qEXT4JwOqn3TO0aa-lsp6pXL12FTkUhpuKqWQX11ipx72PEH4CFoOiSKQ3YLCRU4HWthWuiiwGtCUhBA", "markAsReadToken": "UiJ0yYzYgj9idVD8LdYyBFIhinDKVprBQ7Fqf97HIsfh-xnnqRjhkxeGqhLFfuyIowm4U3no3ksqrdGCihZRSTr_lQwPi-loYi1SBHxG-UlXiS1QNqESz8WYA1om-OL-H036k0iQrHuhy76Np4uqqHVXAGeYaL-fxhQHQ7RDp1VxOep21Oim69iqQfMXvRgfec_SG9iYQu0ZYPctj3cLUg"}	2026-02-12 08:12:09.582+00	\N	2026-02-12 08:12:10.568+00	U943d39b92c702f2d20bf6c82bcf79cc6	JennySupichaya🎄	https://sprofile.line-scdn.net/0h-HfmM9m2cmdLFG2AN74MWTtEcQ1oZSt1YSJpBC4Xf15_czw5M3U_BH9AKlZ1LTM0Z3A0BX1GLVVpVn1jPQBtQn1fVRMhIzJ5JnVLRiNVUgIxdGcyYHBBUytRe1UkY28zG3prVglWVDkjXnZ4YBBiZy1JVl81Sn5IPkMeMU4mHOQkFgUyZnM1AHkSJVPz
3d407765-8359-4294-bda8-e45db778ec04	2917bad7-417e-40ab-b4eb-10ae1ce80aa9	600712656051765354	incoming	text	ทั้งเดือนกพ. รับน้ำส้มทุกวีค จัน พุธ ศุกร์เหมือนเดิมนะคะ 	\N	{"id": "600712656051765354", "text": "ทั้งเดือนกพ. รับน้ำส้มทุกวีค จัน พุธ ศุกร์เหมือนเดิมนะคะ ", "type": "text", "quoteToken": "IYsnrHjkUkircf2i7ePdH40FmfqaybNUT_RubjAYyj0iBMLPPcf1_tD4A8Jidf3jRwAkgpxD3F4-A6_GdTfK3MMuq9sp-rRC1R4GiAkN6WDFY15D1Gm_D_Y4on3jiXPfVWaVWJgtohru3kD-W3bSNw", "markAsReadToken": "F9gjMI9vyG0oqHlQvhl0gBjR-4Xk787gbjjUtlQ-MWom8dUhUSoul-Qczwgj48jfg_o_AVFQAIeKtjLHBzkiyzUOGxfbcUn9qgIPgB4Oi40Ko9PVVnMc-bx7wInSlwstPrRqd6Glxok3RBx9Nfc_r6PDTSEKox-wQOq-y9_rnXxDzoEq5FssYMDWuxu7CMjemGPn36J2TTC4-eH8u7X2Sw"}	2026-02-12 08:12:28.871+00	\N	2026-02-12 08:12:30.049+00	U943d39b92c702f2d20bf6c82bcf79cc6	JennySupichaya🎄	https://sprofile.line-scdn.net/0h-HfmM9m2cmdLFG2AN74MWTtEcQ1oZSt1YSJpBC4Xf15_czw5M3U_BH9AKlZ1LTM0Z3A0BX1GLVVpVn1jPQBtQn1fVRMhIzJ5JnVLRiNVUgIxdGcyYHBBUytRe1UkY28zG3prVglWVDkjXnZ4YBBiZy1JVl81Sn5IPkMeMU4mHOQkFgUyZnM1AHkSJVPz
6331e261-f4ad-45e6-b2eb-5065ab89eb9e	2917bad7-417e-40ab-b4eb-10ae1ce80aa9	600712683867865352	incoming	text	ฝากส่งแบบนี้ทุกๆวีคได้เลยนะคะ 	\N	{"id": "600712683867865352", "text": "ฝากส่งแบบนี้ทุกๆวีคได้เลยนะคะ ", "type": "text", "quoteToken": "ZZDWziMa2WWSzh5BxcHTlrxPTccZIQ0L-Wso0rAfsz2GBX8HSfBED0Yf33JTW5kOomkN8ky8RNBLEnU2R4TQqKlD3c4q1sswodfx4YzLE7s7K9gxe4GiA-Fb-p-F58sDKA8wlcdbxi5GKFM8QqO8Vg", "markAsReadToken": "z31as3zfN6ED3ZS3isiDWD8kPu4hS3b2kttnKJCovgl42VR8WEvIQOurKBy7q1bUAUnE5Ppt91tSu2uk-bZjv6eZ2QEdgWHWw4aMdohDJCWFl8cWgFYxxC_-YKz7twj48Fie8EhjxAg34Y-kcQ87nZUe6FqmkAwSY7RAIqbugXo2DX0bo3r9xFzFK1Yg9AkmOgbHtx-vMqz8cMzVUB0URg"}	2026-02-12 08:12:45.389+00	\N	2026-02-12 08:12:45.995+00	U943d39b92c702f2d20bf6c82bcf79cc6	JennySupichaya🎄	https://sprofile.line-scdn.net/0h-HfmM9m2cmdLFG2AN74MWTtEcQ1oZSt1YSJpBC4Xf15_czw5M3U_BH9AKlZ1LTM0Z3A0BX1GLVVpVn1jPQBtQn1fVRMhIzJ5JnVLRiNVUgIxdGcyYHBBUytRe1UkY28zG3prVglWVDkjXnZ4YBBiZy1JVl81Sn5IPkMeMU4mHOQkFgUyZnM1AHkSJVPz
609e027b-09a9-45c9-9bc5-e7ece9549b39	2917bad7-417e-40ab-b4eb-10ae1ce80aa9	600712701148136004	incoming	text	ขอบคุณค่ะ 	\N	{"id": "600712701148136004", "text": "ขอบคุณค่ะ ", "type": "text", "quoteToken": "NKBX8ttxet0OnC4fccUJUmGtYagS4zFix36HGrO7QtQ-tf4E_HnbfSsEI7wdt9zmFXycqne57lsRDbDD5E2ZMnLYOsquHUX6zZpDJUieqTn3mNykC9JLNQ_QYE9RHqMaNETAaeLX9WvXnNsCSmdZHQ", "markAsReadToken": "UoUQjpwaOI5bWaYZAne6cz-KHbftZRrW0siEzlS-GSvZqEyBIR0f871JUBStticajByqm5QBM82p3HKjIenEsWUSegdJpwTjHFPmN4BVL5UveyJEZQYm8JffBzNO5FgGaKLLtuuLz3OBfHUTTdM3CJR9T3PY7Ca7DDqzKEiIUNhJ-mEbKuUDlTa2KM1p1quGv0-yE36dUGi9Q30dJ-69zQ", "quotedMessageId": "600712680344912083"}	2026-02-12 08:12:55.79+00	\N	2026-02-12 08:12:56.707+00	U943d39b92c702f2d20bf6c82bcf79cc6	JennySupichaya🎄	https://sprofile.line-scdn.net/0h-HfmM9m2cmdLFG2AN74MWTtEcQ1oZSt1YSJpBC4Xf15_czw5M3U_BH9AKlZ1LTM0Z3A0BX1GLVVpVn1jPQBtQn1fVRMhIzJ5JnVLRiNVUgIxdGcyYHBBUytRe1UkY28zG3prVglWVDkjXnZ4YBBiZy1JVl81Sn5IPkMeMU4mHOQkFgUyZnM1AHkSJVPz
49d6793e-cfdd-4174-9bbf-873e5c1d614e	2917bad7-417e-40ab-b4eb-10ae1ce80aa9	600712708094689570	incoming	sticker	[สติกเกอร์]	\N	{"id": "600712708094689570", "type": "sticker", "keywords": ["Applause", "humble", "Thanks"], "packageId": "26458788", "stickerId": "671503234", "quoteToken": "BBPcXKJk5kuBLAClHsRvO7P4xfJ39RjVx16BmYJp41s6Xl-g49le-QhgReLJPbcCYuZ44Kt02MqKkl_u4eMo_jcJc0SdyIri9PRE6CImmu4Rp5rUCIFakVxDdS0GEppzhj1Rj4uLaVO_WTfXTk6w1w", "markAsReadToken": "DdjKg_Gy1Q3T1D2OdzmFtTelJa6zrSVjHPF2nR4eZvgFF3VF2Bx2tklKvMbjPKr0PAyxelH6XUMEYlwQecTsXi-jC8-D83PaDZR7dG8rlEqRKAx90fHCJWxdnu2WUBEAUcjq4QwSbr5J8_mOkeL1_SDwGNzbeEGJIXe9IBQRF56zMt0ZKlp4yGDbzrPwNwy-P8IDl8640zhRL7JPLFAziQ", "stickerResourceType": "STATIC"}	2026-02-12 08:12:59.794+00	\N	2026-02-12 08:13:00.928+00	U943d39b92c702f2d20bf6c82bcf79cc6	JennySupichaya🎄	https://sprofile.line-scdn.net/0h-HfmM9m2cmdLFG2AN74MWTtEcQ1oZSt1YSJpBC4Xf15_czw5M3U_BH9AKlZ1LTM0Z3A0BX1GLVVpVn1jPQBtQn1fVRMhIzJ5JnVLRiNVUgIxdGcyYHBBUytRe1UkY28zG3prVglWVDkjXnZ4YBBiZy1JVl81Sn5IPkMeMU4mHOQkFgUyZnM1AHkSJVPz
30fa9c99-358f-4904-b685-9e5cbebd9dad	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600718172551381044	incoming	text	สวนผักสั่งน้ำส้มเพิ่ม 20 ขวดค่ะ	\N	{"id": "600718172551381044", "text": "สวนผักสั่งน้ำส้มเพิ่ม 20 ขวดค่ะ", "type": "text", "quoteToken": "1HRXRmjkQIolSfhAd7OG72KVPPWnU2RLoRSTJrq_G0GK14oBJzHe3DCx5V6khkFHdx4cwFVi6ajdur5AOvkTTEiVx8I4n02RY-ng6QB6hciF28pRolMfAdADV-qf-iN8Cckju90wRqoL6SBfTbtiLQ", "markAsReadToken": "qzqA-DnJzsSaBN8JSGipGUUZJ7qpmJ38NhoeEJkfFov9KvoCHemkGt5mTrEqgdBDyl8uc9TvQci9tcExIxcCQevYO-X2KjfLefgftxyREcL2tWy86Tv_sJuonhTNd_Do2r-mza5Wfn6tXgJtaGg7TmOapXK9yBXs6MZe9y871BD5IhrBMaEft7nHFFUYDlSZWq-OlaKEBZ8wxVf986bZ9w"}	2026-02-12 09:07:16.858+00	\N	2026-02-12 09:07:18.677+00	Ue7be0355c54433d563bba215996ec61b	โจ๊กสามย่าน สวนผัก	https://sprofile.line-scdn.net/0hw6K3eECuKBlmSgG4htVWZhYaK3NFO3ELSSk3d1tCJCgMf2kaHSlkfFtNcHtcKGYYHSo1fFMecCFqWV9_eBzULWF6dShacm5ITCVj-g
2d65ac9b-6ed2-4260-a541-a619698fdc2b	3dd97414-b1a7-4c2c-8130-47c58799df01	600722672535732669	incoming	text	   เช็คน้าส้มสาขาลาดกระบัง\n12.2.69\n\nเหลือ  =26ขวด \n\nหมดอายุ 16.2.69  	\N	{"id": "600722672535732669", "text": "   เช็คน้าส้มสาขาลาดกระบัง\\n12.2.69\\n\\nเหลือ  =26ขวด \\n\\nหมดอายุ 16.2.69  ", "type": "text", "quoteToken": "nQhV_31IGmswWJhngR8rg3ADunt_aNJFWYU1gqdvss0i0413St840rU8WIvp0H9KgOgfxGbrJg1nH1CbHp6difWKva1DEaGRgAqR3j889J10BKggOcbS6E5oufWgE81KO7gMkbVaolHeFU-G2gvbQw", "markAsReadToken": "_29G9eynsy97jrCsGnLKoXbh7EwUypzjRAxD-kYmlPnr1YysyvuptIqtrVhcq-0m9dlw82x5I7rdztmmJxwjcEJzeKkTC4HEPSAgY102Uk4MsvbDhSo2DPRSICjub4AVnTgDBmMIklcN3H3KtEfr4fOlf2YzskjdxIfyiwkAh5Q5b-491sTiT3pzGlf99YU--oSRFzVbymSyBLmeAE7b7Q"}	2026-02-12 09:51:59.069+00	\N	2026-02-12 09:52:00.632+00	Uf3ee4beb9ef1d32d770f392d4a592373	Sai Max	https://sprofile.line-scdn.net/0hk50aizcVNBodGCsMd-xKJG1IN3A-aW0IMy0sdS9Nbn11fydJNy5_eS5PYisnLHpOMip7f3wcOCk_KDEYQgUhPnZwHlF6fQooeiwmK3tPMH1JSjUTUg0LJTRiOHp5bjI1NHk_Jk5OOmt_bQ84cBU7LnRjaFROSRBEdE9YTBgqWplyGkNPMH9zfS8eYy6l
e9d1cf5b-1c98-430b-bab0-639af236d629	016665ef-4285-4a5f-9a0e-03b622fd8408	600722731943592611	incoming	image	[รูปภาพ]	\N	{"id": "600722731943592611", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600722731943592611.jpg", "quoteToken": "fxmIxt47u10oFT8tNkYjHU68kOHIbBFoz9XrF2fjF0YRxNuS5vRPCOLNCfdaKMpujeXUs3-64fzKGfNDx6OttzW_ZOQWMawRS8WcYcPqn7TKFg9RjdTkb4iAlgCqZb276Zs41GgE-hDmZLyp2ElFEQ", "contentProvider": {"type": "line"}, "markAsReadToken": "TXj16CncOyIwIFRCNXgUrFGLyVf9RSj0Uwg2G-vrMQqIF9a7XnGxyK8hXOXd3-F_VJiIYY3TVvCJZz4wvEBap9ZGjnHMb0IrYogi_M5iIoKma1o1XNzrrlS-J7rCj6yqtFPTfsbOOkhhfb0w_XY7K0JSu_FUnAgPeLtW9DXCkuebHqZEPTWaDzXTgbrqMa8FX7_EixW7tDST2vup8V8XwA"}	2026-02-12 09:52:35.056+00	\N	2026-02-12 09:52:37.252+00	Ue3ba74928eb2588f133cc84abbe406bf	BENZ	https://sprofile.line-scdn.net/0hSSH_tBKHDHxlJh6LdolyAxV2DxZGV1VuS0cUElAuWx5dQR5-ShQRTVh2W0RfFkkrSEkRSAcnARtpNXsae3DwSGIWUU1ZHkotT0lHnw
9b97212e-c3a6-4537-b75f-a75f99e2893d	e4c8aa99-cedc-4aea-a0cb-2e24954ec3a2	600723507537772870	incoming	text	หวานขอโทษค่ะ	\N	{"id": "600723507537772870", "text": "หวานขอโทษค่ะ", "type": "text", "quoteToken": "jxELEx9sl_p-_--PK5lu_3A_w0xTG7ElfgLkPU0SvIXIDXchJ8KEsUzw4-CxBBkm6bLkfk3ajmzee4_fnvymmDZA1OtHkxJs8nxJY0if-uleozRAAmEy8gpk9-BaLLcGNBegLVAGnOtJ-KbXc6dcCA", "markAsReadToken": "duqa3cqKxF9pJuf3AFqk0UA8yql0rF0r0B_G6I0C96QWY36AwJDVY2unIZcfXxfA7xbL1ecp-Haxl3Bd4UNXg3dKxezk0QvCOybITEH1o0DbO-qe1ETqnr7AT7Hse5LxEuxI_CqmvTSjYJguEjaRyB6kie8an4KYeZK6PVoKIpAZggyDetL5YOY8ianuwD6JEuHUJveZL40l9pkQcTqltg"}	2026-02-12 10:00:16.912+00	\N	2026-02-12 10:00:18.849+00	Uc63b1ee990456b585097a81346973ee6	Pawita	https://sprofile.line-scdn.net/0hDhyI7k_eG0dUMARq4X9leSRgGC13QUJVfgFRJjQwTXZrCVRFcVQDKTVgEiI5UAsXK1VUKGdlQSN2UzkSKDc1fiZ7MTcuRwZIcCVXQGlNFyAvaC5lfxVcSBlXEwdodBhyDAQjVT1HPhEtdwsNOiYTT2lCDiUpQQlMM2d3EVECdcQ7MmwSeVdcIGY2THPs
718803bb-1384-488d-8434-69d7182c60b5	e4c8aa99-cedc-4aea-a0cb-2e24954ec3a2	600723523442835763	incoming	image	[รูปภาพ]	\N	{"id": "600723523442835763", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600723523442835763.jpg", "quoteToken": "P9dMqsPbIQyO6YuehwcaaYlqZBNfmYqEZlfRvpPHQfyxUy0CC0gBiSpKhV658MFnfPaHAn7IMuHBFRmKaozkNyAwFUXWEr-XvNLlQMiOJ-sUzAyxSQShUrBbcZPEqBdLcLobYT82I9VVjQvoXm6fzA", "contentProvider": {"type": "line"}, "markAsReadToken": "3keFjvQYe7zbosI8Yg5HkTrRgKbIM1oFYRpZByX0ofu2kkZvD-5SRuVzdMJYJL6VNgFkA5k43hygCk6zFtiK5xOR_-UVvMJRi2dJOt_lDvnTDewRrd4uRvdS6JUnbTc3dhxZP9rCPyMQG-gPWHj150O8VhgJl8OIvIcPjRUIXmmoBlIf79vu_5aNtlpByousf8evnQkRv4NG9om_OKjvSQ"}	2026-02-12 10:00:26.486+00	\N	2026-02-12 10:00:28.437+00	Uc63b1ee990456b585097a81346973ee6	Pawita	https://sprofile.line-scdn.net/0hDhyI7k_eG0dUMARq4X9leSRgGC13QUJVfgFRJjQwTXZrCVRFcVQDKTVgEiI5UAsXK1VUKGdlQSN2UzkSKDc1fiZ7MTcuRwZIcCVXQGlNFyAvaC5lfxVcSBlXEwdodBhyDAQjVT1HPhEtdwsNOiYTT2lCDiUpQQlMM2d3EVECdcQ7MmwSeVdcIGY2THPs
efe51352-0995-4f57-a891-5436ae620d9c	e4c8aa99-cedc-4aea-a0cb-2e24954ec3a2	600723539397968196	incoming	text	หวานยังแจ้งโอนเข้าบัญชีไทยพาณิชย์ฃ	\N	{"id": "600723539397968196", "text": "หวานยังแจ้งโอนเข้าบัญชีไทยพาณิชย์ฃ", "type": "text", "quoteToken": "8Ng1PONEI278_WLuCflPCbghLV47ddJcOu3z3QWs5naqqNSEefbuwHJjZNfEn3iIhuDJjBr-GQO0-28jyO8w7TUwFfik9Gds9Au5BGfmWCNmy0kyziJNH7i4fhBHzcJ2KHWh5l2Kwi1C96d1GvTyGg", "markAsReadToken": "Q8RejjY5jaKPorPYjthBTtMDxI2bmn1r3kmSV-O0HLowfJSd8-cJBVdZt7QSeK07SFzKVR_ij51k--wQh8SaCDBAu9XBn9JSvRJuNdWO_f1pWt4a_ie73cj68S5GAi56CcqvC9REX2yDOlmpj1dDZx1ICch1rVFzochgphkgF9RdgerjGSQaEsDs2reiDoSVLzl7E2P5gv_9x6Orrrm9hg"}	2026-02-12 10:00:35.751+00	\N	2026-02-12 10:00:36.908+00	Uc63b1ee990456b585097a81346973ee6	Pawita	https://sprofile.line-scdn.net/0hDhyI7k_eG0dUMARq4X9leSRgGC13QUJVfgFRJjQwTXZrCVRFcVQDKTVgEiI5UAsXK1VUKGdlQSN2UzkSKDc1fiZ7MTcuRwZIcCVXQGlNFyAvaC5lfxVcSBlXEwdodBhyDAQjVT1HPhEtdwsNOiYTT2lCDiUpQQlMM2d3EVECdcQ7MmwSeVdcIGY2THPs
5e068933-fce4-4cfc-87f3-4e23329b9457	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600837816012505311	incoming	text	น้ำส้มมาส่ง 15 ขวดค่ะ	\N	{"id": "600837816012505311", "text": "น้ำส้มมาส่ง 15 ขวดค่ะ", "type": "text", "quoteToken": "r8M7HaumOp15tfA8eAiiXDeMrg_mN8GNEH6SNLiUARzR4Cz5IgpU576R1MmsYsOAzRQlQeEW9YrO0PN-wz9oc2MCrlANC7OhOmziK_-ihC3oweqjmtIWrImZzXRHaHvcwYcC8W9GSbMkIvunevIw7Q", "markAsReadToken": "S4SA4oQQ0X1KR3aCuR9VsPFVIhovU4uxFz-JtZFWG9HyCEbMivNTg6vfcS2benx_A7cdRq7v28uBzNDfVtRhTLEqkvGou4AgQIYKqpiUp-ZFiz2b02pbrTgro9tAAapNInB0qFDQ-kPm7p0jTxDBwkt7WZm9NDI_wBh4WMHXkeISYw-_zIEQAPfE4YFZyc26TatBnsX1RkwnEbimWYRQVw"}	2026-02-13 04:55:49.922+00	\N	2026-02-13 04:55:50.872+00	Uffe6081377ac66e360cfc7656c02a058	โจ๊กสามย่านเศรษฐกิจ	\N
05f867ab-f216-4cc5-b8dc-91a5e4c0bfa8	e4c8aa99-cedc-4aea-a0cb-2e24954ec3a2	600723559597211684	incoming	image	[รูปภาพ]	\N	{"id": "600723559597211684", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600723559597211684.jpg", "quoteToken": "YR5dqEba2hrv_T5HfB1-B0chNB97I1hyP5fywCh2rcIHAQRsEXIu9bBbOpmX38j8t9swgZOUFO-LHCoa-aTBreK3BF_280FplXdiLlrr4aRMM6mM0cjh1NjYIDwsJ-eHKlJxhOLO9Es-DvZitk-RVg", "contentProvider": {"type": "line"}, "markAsReadToken": "Va4fqQ_kY0DsVqB8YWdimOLdBuWZ3na1QNqd1SJXn_7uPdiEXSS-LUHdnwdo5prXa-Wxs_MBamPe5K8UeyhsnL75f7XwCyeThkC4at9Lf5e5yR1sB18ZvZYX6qDn3u5Q9mJdqkwJLALTLlZpOGETXff133FlBRjVyGDsu9ph2X2FWCmELlg0tSFV1J1Pb0G-eyQg-4ZjhrYu6clPheX-kg"}	2026-02-12 10:00:48.371+00	\N	2026-02-12 10:00:49.809+00	Uc63b1ee990456b585097a81346973ee6	Pawita	https://sprofile.line-scdn.net/0hDhyI7k_eG0dUMARq4X9leSRgGC13QUJVfgFRJjQwTXZrCVRFcVQDKTVgEiI5UAsXK1VUKGdlQSN2UzkSKDc1fiZ7MTcuRwZIcCVXQGlNFyAvaC5lfxVcSBlXEwdodBhyDAQjVT1HPhEtdwsNOiYTT2lCDiUpQQlMM2d3EVECdcQ7MmwSeVdcIGY2THPs
7834b0c1-dc4f-4ec9-b818-7d395f61ad99	e4c8aa99-cedc-4aea-a0cb-2e24954ec3a2	600723567785017736	incoming	sticker	[สติกเกอร์]	\N	{"id": "600723567785017736", "type": "sticker", "keywords": ["bawl", "wail", "teary-eyed", "down", "crybaby", "glum", "Crying", "Melancholy", "lonely", "low", "blue", "sob", "blubber", "Sad", "gloomy"], "packageId": "11537", "stickerId": "52002750", "quoteToken": "yW4rMjx50-Tqu9LEVZH1IXPdLFbs_-DMNdkqASjT53qo52ame5E_dJAVAD6A77xgPvvPP8ouB1Q8iXJCqXN0Sfb3kBuztAU-5YExy-5mw0xfgdV68XRXlxmOrLZLwjRwUMdeIJhqlW4r88ysBrpvEw", "markAsReadToken": "6MKWYZR8UwZFCcoaqATQIaMZiBgYSixHlIM9_k1oDuLwp-OdtVt3ChqEf1dJ-lZzUyMvYZdmox3EK1mMS-XL5lFU9VeVbZI2P2n1tK5sIXKXms1ogISUL5eOLj56MnIYdgpcPQoOOkuSZFhb58WIQrbp0IRSO_oNpqDCC-ekxtTnHTYNNrIoYE3cckCjop3nxnQOZvpOrf8wyEWzceZnCw", "stickerResourceType": "ANIMATION"}	2026-02-12 10:00:52.673+00	\N	2026-02-12 10:00:53.062+00	Uc63b1ee990456b585097a81346973ee6	Pawita	https://sprofile.line-scdn.net/0hDhyI7k_eG0dUMARq4X9leSRgGC13QUJVfgFRJjQwTXZrCVRFcVQDKTVgEiI5UAsXK1VUKGdlQSN2UzkSKDc1fiZ7MTcuRwZIcCVXQGlNFyAvaC5lfxVcSBlXEwdodBhyDAQjVT1HPhEtdwsNOiYTT2lCDiUpQQlMM2d3EVECdcQ7MmwSeVdcIGY2THPs
86ffa88d-ee81-4f83-bddb-1895bea88569	e4c8aa99-cedc-4aea-a0cb-2e24954ec3a2	600723623300563393	incoming	text	กสิกรไทย สาขาอะไรนะคะ	\N	{"id": "600723623300563393", "text": "กสิกรไทย สาขาอะไรนะคะ", "type": "text", "quoteToken": "vhNeU2gL7whgdi4locdx0HiI6O823UD7m9_bHO8xo8HCw9EqjJ1L0HjaEMKmY3qbIyr5gWhh_a2UQh7bg20oIfvxfjKHVIBjznFfMgIyjqct5bbud7GwtCWr35ltHH9Wc3HVDkrBrH3BnBNeZ3vIlQ", "markAsReadToken": "klCkpcS6KiXs0E-3KVJsCw-Z9jPm08nMuNycynaiciashP7HpYlJsR0_iH1v_22mUKC57nD_5r0LARyYgJaBPM3ABryNyjMJBjiPnIZKKhXrqhrj_OnDlPU-SdCu_SDzpMEzpJeS1sx5HTr9ZMUEKAGXc5nABHtmwPYMfEeS8aDPtn5TQFvJCnlj6vxlKGoo5Tr3tGKWJXg4mQz0pWOPNA"}	2026-02-12 10:01:25.917+00	\N	2026-02-12 10:01:27.082+00	Uc63b1ee990456b585097a81346973ee6	Pawita	https://sprofile.line-scdn.net/0hDhyI7k_eG0dUMARq4X9leSRgGC13QUJVfgFRJjQwTXZrCVRFcVQDKTVgEiI5UAsXK1VUKGdlQSN2UzkSKDc1fiZ7MTcuRwZIcCVXQGlNFyAvaC5lfxVcSBlXEwdodBhyDAQjVT1HPhEtdwsNOiYTT2lCDiUpQQlMM2d3EVECdcQ7MmwSeVdcIGY2THPs
470837fa-b7a7-4138-adb9-a63240f9c7a7	e4c8aa99-cedc-4aea-a0cb-2e24954ec3a2	600723643618034245	incoming	text	ได้ค่ะ รอบนี้ต้องขอโทษจริง ๆค่ะ	\N	{"id": "600723643618034245", "text": "ได้ค่ะ รอบนี้ต้องขอโทษจริง ๆค่ะ", "type": "text", "quoteToken": "fHKd9esN0Tw-bPkEbfnBkqZiVzNzaZjTSKdE544p38jQFpBFQbYv_yxolwzhfXC2OikDXXpBcesETpenWsim7DHwIimJFu5ZFmSxa7PXykqhIUBLnrWMhZox1mRRoAtIrwbaGlJ5ttAtm8ETES3GAA", "markAsReadToken": "o3nRvesO3dBFv5tUi3CveracqY5FyZYdDWggXhy82GL84mzDDgnqhf7E-yjLeh0bzVM6EmosdihGfk-KkGBnfCvz_9fsq7iZb5yCUmVSHwtahKeyjk_J9h19MqE9JRLm9esu1rmX8L-5N6hf2oaHiX6pEneJHFIo-JetI0DAEC02-Xp4k72UCcssGN8gRuhhxxD4BCPK__UOwd-UACniFQ", "quotedMessageId": "600723613385228413"}	2026-02-12 10:01:38.034+00	\N	2026-02-12 10:01:38.982+00	Uc63b1ee990456b585097a81346973ee6	Pawita	https://sprofile.line-scdn.net/0hDhyI7k_eG0dUMARq4X9leSRgGC13QUJVfgFRJjQwTXZrCVRFcVQDKTVgEiI5UAsXK1VUKGdlQSN2UzkSKDc1fiZ7MTcuRwZIcCVXQGlNFyAvaC5lfxVcSBlXEwdodBhyDAQjVT1HPhEtdwsNOiYTT2lCDiUpQQlMM2d3EVECdcQ7MmwSeVdcIGY2THPs
788e7552-ae78-4469-9918-2fe870072cdd	e4c8aa99-cedc-4aea-a0cb-2e24954ec3a2	600723649153990900	incoming	sticker	[สติกเกอร์]	\N	{"id": "600723649153990900", "type": "sticker", "keywords": ["line", "Sorry", "Fidget", "nervous", "mybad", "Worring", "brown", "Apologizing", "sweat"], "packageId": "11537", "stickerId": "52002770", "quoteToken": "nS-kXSn2ZlZ1tms62xVnNqstyS52d1Oku1gISp7l75aOX5JIlBSTiBpDmOTcn-K_OsnyMlBuZVjGlM3n9ZeyeB8b70t3_cIVyUYJu7wSx-BGz3r0cLE1TgXNzCWww-VKYheb-SaUncbYLQLspDuDzw", "markAsReadToken": "MSxaLCHgD4NCrQXFXuTxYmGv2HXRB9qBmyekY8TgRxKBywsfi1Kz3d_6B-h5QlUqfeYL9JPGxsGEHhzpLT8ajbrxS0QC3y63tVw363GFDdZL4BmX2i6DcRIDve0IeJWtVN_tFFgnDnEvMkQUJnt5v0fIgRFUgrkvSPDC2R6pMy9zLcGdMnWB6DesfR2OAYWNc_jYvW56vPF-RamuNPgPnQ", "stickerResourceType": "ANIMATION"}	2026-02-12 10:01:41.367+00	\N	2026-02-12 10:01:42.407+00	Uc63b1ee990456b585097a81346973ee6	Pawita	https://sprofile.line-scdn.net/0hDhyI7k_eG0dUMARq4X9leSRgGC13QUJVfgFRJjQwTXZrCVRFcVQDKTVgEiI5UAsXK1VUKGdlQSN2UzkSKDc1fiZ7MTcuRwZIcCVXQGlNFyAvaC5lfxVcSBlXEwdodBhyDAQjVT1HPhEtdwsNOiYTT2lCDiUpQQlMM2d3EVECdcQ7MmwSeVdcIGY2THPs
b9d9711e-abcc-4794-aafe-90e740f3c8e5	e4c8aa99-cedc-4aea-a0cb-2e24954ec3a2	600723702740418614	incoming	text	มีสาขาไหมค่ะ พอดีให้รายละเอียดกับการเงินด้วยค่ะ	\N	{"id": "600723702740418614", "text": "มีสาขาไหมค่ะ พอดีให้รายละเอียดกับการเงินด้วยค่ะ", "type": "text", "quoteToken": "Yaz5t9N6hO5xdvrfYcLt7qPd32vtQ9gs00kxjjboFpZC-fkc-T8Mtj2qN1qSjG2wcllnCDKcI5F7btennZnoFgKctBcpk19LcOuLuCXPQbpDjJvuQpV_ixlst_tW4KEH6KTmN7wXmJP_ves-37RYSQ", "markAsReadToken": "sJvkyL85P1T6ChnB-nrIvmf44pdZQABLhg3CVaTy3fBCUB0hyb6JV6cSTHlw0XLVVHCvpppz9-LoWkuhSX3CPb0zrLPzlV6lo7uHQj0p7tDbUXLqfubjFWmhbjxpOV_TqRbB9bDGQAVnAj4ldHwHBpAwcWOi2oyuAABfRBJNmaRrrWj_dCfeXohUAtfnVZJIAPBUM-CS7w-2qRTDdbwKNw"}	2026-02-12 10:02:13.119+00	\N	2026-02-12 10:02:13.792+00	Uc63b1ee990456b585097a81346973ee6	Pawita	https://sprofile.line-scdn.net/0hDhyI7k_eG0dUMARq4X9leSRgGC13QUJVfgFRJjQwTXZrCVRFcVQDKTVgEiI5UAsXK1VUKGdlQSN2UzkSKDc1fiZ7MTcuRwZIcCVXQGlNFyAvaC5lfxVcSBlXEwdodBhyDAQjVT1HPhEtdwsNOiYTT2lCDiUpQQlMM2d3EVECdcQ7MmwSeVdcIGY2THPs
5a63fb2b-b467-4cc4-aaa5-38b349e63107	e4c8aa99-cedc-4aea-a0cb-2e24954ec3a2	600723714937979459	incoming	sticker	[สติกเกอร์]	\N	{"id": "600723714937979459", "type": "sticker", "keywords": ["Thanks", "innocent", "emo", "grateful", "beg", "moon", "blessed", "Please", "takecare", "Sparkle", "Moved"], "packageId": "1", "stickerId": "4", "quoteToken": "s573uVWIWVf9rKhxncqDZ9Y7ieP23IpC1T5ZdgKGuyufx4ylL1JXs27t0AmC3077E-YshmMoIuiqR7Wh-3kWNrRW0ajMlSnIEaN662G679EC9mZmEjz8-qaiK61o7GU2xOIgkhwdvl7IuKCTF1hddg", "markAsReadToken": "VcDLSl_RtFISZ84P-p3gFmY3X1S9xMNHW3dsrzw9ABjHJSda3qzguEXhqQj-3bpCBsl9cPu9mJDK2So6jlqXMoJUUcnpTcARUqiYD_nOloAsD33jawKEfhxc3YSdijqHiyKZ6ZAHuoHhrZSE8fnyVwz-drvkHrjU51_aG2IiFbj6ylgg-U5NmVpx482ES4mXJzco88oISQmc5JkwAcRtBg", "stickerResourceType": "STATIC"}	2026-02-12 10:02:20.383+00	\N	2026-02-12 10:02:21.087+00	Uc63b1ee990456b585097a81346973ee6	Pawita	https://sprofile.line-scdn.net/0hDhyI7k_eG0dUMARq4X9leSRgGC13QUJVfgFRJjQwTXZrCVRFcVQDKTVgEiI5UAsXK1VUKGdlQSN2UzkSKDc1fiZ7MTcuRwZIcCVXQGlNFyAvaC5lfxVcSBlXEwdodBhyDAQjVT1HPhEtdwsNOiYTT2lCDiUpQQlMM2d3EVECdcQ7MmwSeVdcIGY2THPs
86bbf7d7-305d-4350-b56c-3a6de0ca4dd7	8d1b1d5e-9bd0-4342-9843-88d77b683c16	600724434747916748	incoming	text	อันนี้สั่งทานเองได้มั้ยคะ	\N	{"id": "600724434747916748", "text": "อันนี้สั่งทานเองได้มั้ยคะ", "type": "text", "quoteToken": "J4Qu5grW50t-LjpiRNsXWxGFErdIOzLwMf2orhSWw-2n7mybyxgK5hXSNzvlihP4K3RJcTcT0Cz6w72vxx_ZMBLbgALRcEIdTR0DeoFTLU9951eq9aAAywHoOg4RcznX5YFchLGnvbferU98snjGbA", "markAsReadToken": "wL3nJZyF4XCJOXAl4FPeNUS46BTFsH42GDA0G7RN6k_szXZR76s4-4lbmnfZ94FsOF1hL0hUJ42kWpyf-v5N8AcnUc90fhx8bOPrZjVOSu_fBpvhJ829V50TF1SRhN6HYTSe_E4BArTF3s90UJ2HhSRnqpXHqnhtOrwG4o-PiCAA2tdhouPWKjs_IZxbdJ-iAot-rEeGXL21Hb2SYCEy8w"}	2026-02-12 10:09:29.424+00	\N	2026-02-12 10:09:30.628+00	Uf4fd968f79513421c4a77cbbabd59e36	w💕	https://sprofile.line-scdn.net/0hKV4UUdJPFHkZLAuSk35qR2l8FxM6XU1rYh9bTS1-TUonS1V6ZkNeHXt-T0AkT1MmMkJcHCx4TUg7TDFyThUbdlxoFU84fFNHdQgFFm4oSkBxTCRuMgMuflEwC1VaAFFpMBYnZVhtMhBhdwlRdiggQHUwLiJWQz1wUXt4Lxweevp2LmMsNEtTHisqQ02h
490fa654-8299-4ee2-a830-b7a6dc4b1501	8d1b1d5e-9bd0-4342-9843-88d77b683c16	600724446625923518	incoming	text	แบบไม่ได้ขาย	\N	{"id": "600724446625923518", "text": "แบบไม่ได้ขาย", "type": "text", "quoteToken": "aaWA-c2e6LwLQdOMFJo261V_-lUFeE8i3LcEnmZnpBlaCeO4OCz5o9SBcCMNfvzswxAvuSYepQAc2ymirgF4_Gi5cmfcnbnBOqOuY9YtnAFmIcJTF8lO1-hhTvJ6qVSGH4VmmZxFDTTbofKELqvgKQ", "markAsReadToken": "U4sgwVRj6uYEPiXBUphlwX3UIfGBPNTvZHrTr6sjCJQ1nQos9UV_c63pfeBEumbaDjZE_qJbhZAC6xmeNjJivU0pRNxV280IcfCoS-N6ZaEEMpieDKsMMIpYfTbiRTSSjj2qe0j2gC6adwLJg_bVHoy4d04ohv5UqIrDDk1OrtnKeXjGeQmKtHsZY9_ZCCtfK9rfIk52LFRaFm9LhIKhug"}	2026-02-12 10:09:36.601+00	\N	2026-02-12 10:09:37.56+00	Uf4fd968f79513421c4a77cbbabd59e36	w💕	https://sprofile.line-scdn.net/0hKV4UUdJPFHkZLAuSk35qR2l8FxM6XU1rYh9bTS1-TUonS1V6ZkNeHXt-T0AkT1MmMkJcHCx4TUg7TDFyThUbdlxoFU84fFNHdQgFFm4oSkBxTCRuMgMuflEwC1VaAFFpMBYnZVhtMhBhdwlRdiggQHUwLiJWQz1wUXt4Lxweevp2LmMsNEtTHisqQ02h
996b97ef-84cf-440b-9507-dca2d0ac8ca2	8d1b1d5e-9bd0-4342-9843-88d77b683c16	600724659511492801	incoming	text	ลองซื้อทานแล้วอร่อยมากค่ะ	\N	{"id": "600724659511492801", "text": "ลองซื้อทานแล้วอร่อยมากค่ะ", "type": "text", "quoteToken": "q-pwJ_mfSKmgxViX9sgcs-z9hqRe7jlDaRQnw936iALpVjk9BBYHer9cXGIC7s5sXoISrh1etsU-T5JzsULzpYm9CltL7xZDdSiJeHWbUdOTFRVzgI0HrLrp2Bkh-NZJ9iLcHDyNz5ARvBxOBP8bWA", "markAsReadToken": "3Mo2O6NqjZ1XBTEn_fddhjOJFP9kamakaENRT9G_NWyPGxPUC-5Ed-Xac12Yl0roCE1a2zrd42cDKBJ1tjgSFHrUOJkZLreFovU-rqaR7_qEbTfwCya7mLEaraze_rt-b6XveCGsoJ8Mpb2mBCrqSQWFDDh7UC_llpg_c9J63SOLyTZdnvF1wcjTbnf_BHNiwZIxohOs8uf-EFHEyEHWRQ"}	2026-02-12 10:11:43.443+00	\N	2026-02-12 10:11:45.347+00	Uf4fd968f79513421c4a77cbbabd59e36	w💕	https://sprofile.line-scdn.net/0hKV4UUdJPFHkZLAuSk35qR2l8FxM6XU1rYh9bTS1-TUonS1V6ZkNeHXt-T0AkT1MmMkJcHCx4TUg7TDFyThUbdlxoFU84fFNHdQgFFm4oSkBxTCRuMgMuflEwC1VaAFFpMBYnZVhtMhBhdwlRdiggQHUwLiJWQz1wUXt4Lxweevp2LmMsNEtTHisqQ02h
a483374e-b09e-40ca-9ed0-4c15544039d8	e4c8aa99-cedc-4aea-a0cb-2e24954ec3a2	600725125649662230	incoming	text	ขอบคุณมากค่ะ	\N	{"id": "600725125649662230", "text": "ขอบคุณมากค่ะ", "type": "text", "quoteToken": "Cm3gIZom-xfmI6a3MZEytkk0yNfbyhThsE70cZybJ475xRChvWi977ohMhYo0SsSv1VEC69nCq9P8o1xRkgJVB8woU9H6ZZEvAw-i_lHwUqrnaF165HmW_ZV3_lh6lGTiw4vqu_Sb37lJ8WM9ONDig", "markAsReadToken": "40KewvwuCMerNG7yFY6oKc4lPoKXctWSAQwS3MWrvWpiF01FnQhIhtxD3EBWF2RXeG-WeUpkKlMGA2DGp4sayvsxdRxX0eatYwPzdsq-Hc3Ybyd_xmah26_KCtRFeNLYA6eVfYKGHLR0VkfBPcbfNuE0GODI_dU1QSmlheGUvCIDUz2yfapLFmGMqkowT511Vr6n5-dCZOJcGO3rGJ85_g", "quotedMessageId": "600724958431150443"}	2026-02-12 10:16:21.389+00	\N	2026-02-12 10:16:22.772+00	Uc63b1ee990456b585097a81346973ee6	Pawita	https://sprofile.line-scdn.net/0hDhyI7k_eG0dUMARq4X9leSRgGC13QUJVfgFRJjQwTXZrCVRFcVQDKTVgEiI5UAsXK1VUKGdlQSN2UzkSKDc1fiZ7MTcuRwZIcCVXQGlNFyAvaC5lfxVcSBlXEwdodBhyDAQjVT1HPhEtdwsNOiYTT2lCDiUpQQlMM2d3EVECdcQ7MmwSeVdcIGY2THPs
c7c803f2-419f-4e29-8230-b58f9d7ffcbf	016665ef-4285-4a5f-9a0e-03b622fd8408	600725380881449012	incoming	text	ขออภัยครับ ครั้งหน้าโอนเข้าบริษัทให้ครับ	\N	{"id": "600725380881449012", "text": "ขออภัยครับ ครั้งหน้าโอนเข้าบริษัทให้ครับ", "type": "text", "quoteToken": "CSAnv-cRXDZBrIP7X512FGv24r2yIbvYDuFaMDdNK90g4Y2xmcLrmioETCgMtA7blg3TkARsaAzEiZ6QEvbMPJm2hzYN56mIQxaz6E5ko-Yc-NepHJnnXqshhgKOgUyYQZ79nLWd91QitdhwoRPsvg", "markAsReadToken": "iTi4U7sTXZZnJgXGa_pDz6pE0I6JE4rzkUQLYCaLHoTtIoyulT2ZK-rvyGOPY3NogC53t0dymFHEwxiXSLWEKoKVG8yGOqdvSL3da5MDf1urk-uAq_3uwbC_F4oj8ECOFqCsXoQYXVlAbncHig9Pge39C89qvIVzLwB06GajzucS88SPV9HBZv0mfpisIi-iCbQ8YRYYPYMkHPSh5fUIpA"}	2026-02-12 10:18:53.359+00	\N	2026-02-12 10:18:54.844+00	Ue3ba74928eb2588f133cc84abbe406bf	BENZ	https://sprofile.line-scdn.net/0hSSH_tBKHDHxlJh6LdolyAxV2DxZGV1VuS0cUElAuWx5dQR5-ShQRTVh2W0RfFkkrSEkRSAcnARtpNXsae3DwSGIWUU1ZHkotT0lHnw
be4be41e-019d-44e5-b5e2-1e81410eea3f	8d1b1d5e-9bd0-4342-9843-88d77b683c16	600726019120824696	incoming	text	ค่าส่งเท่าไหร่หรอคะ	\N	{"id": "600726019120824696", "text": "ค่าส่งเท่าไหร่หรอคะ", "type": "text", "quoteToken": "9uqaMCGrSHzXUnXN-vA4ZuvlrYNH9CpxhjvsMjxCGRouPgK_wXdYQtgAE4WlbnmCXO3LJmvDUtTeDHiE_EfY7bNYykghYBzlgfO7St8ag61MOxwGAjMQ8-nbCNyZt6ij6En4jRABS6_bHUUOz-Ez_A", "markAsReadToken": "yydZVsaV1MNL4nMVn_m2wG9Ju8VI0aNO1qP6QRK3Stb8BbuTQTli-hoghOHbHoLaXoCX0MnUi4oJ4229JE0nAYNckdFPtSe76f1-xCFa6XL3FxoxYej7rwx34zWLPbHfbpVUZZzLFtTLZoMfEDTnaWZYocg40voledDKVjgdXt9c5iZpaiQYnPSS-hfRSzxzGgRCF65S-2ctAFVI0UAbjA"}	2026-02-12 10:25:13.793+00	\N	2026-02-12 10:25:15.648+00	Uf4fd968f79513421c4a77cbbabd59e36	w💕	https://sprofile.line-scdn.net/0hKV4UUdJPFHkZLAuSk35qR2l8FxM6XU1rYh9bTS1-TUonS1V6ZkNeHXt-T0AkT1MmMkJcHCx4TUg7TDFyThUbdlxoFU84fFNHdQgFFm4oSkBxTCRuMgMuflEwC1VaAFFpMBYnZVhtMhBhdwlRdiggQHUwLiJWQz1wUXt4Lxweevp2LmMsNEtTHisqQ02h
11252d33-2d65-4e6e-9173-a909ccb64e43	8d1b1d5e-9bd0-4342-9843-88d77b683c16	600728379574714862	incoming	text	กทม ค่ะ	\N	{"id": "600728379574714862", "text": "กทม ค่ะ", "type": "text", "quoteToken": "XnwUIl3OM09ZGi9BiWpB2zfGayX064eKUrI5n5H_WDlhMV80oxlLuVUrTr48VHp7GZRjXgBuHxULKKkgqzHIXBr4YRb92J-hbsXXFfReym65i8PxZy4COWWNBqWisxsuogBY3JS12mfonEszZz2fcw", "markAsReadToken": "wBOIdUd1-fhyE6L0F5RQVle3bKeMSgNRTFWah182YI9oxYCW957_2vUD0gi0HC_PwJePLRJ_zWVMT_jr-qtuG9CzJ8wGS6fT621MSwmaaabdDmevNA3F3sXLzd8_VhEFJZa3xYLMtk5dgYDr3Nx_xdFFBokTcpcRVHKpjmWH_1eRhtz3inQsV4WVRPJDcAT1SLourkkY-suinnxxa8JQQQ"}	2026-02-12 10:48:40.726+00	\N	2026-02-12 10:48:41.677+00	Uf4fd968f79513421c4a77cbbabd59e36	w💕	https://sprofile.line-scdn.net/0hKV4UUdJPFHkZLAuSk35qR2l8FxM6XU1rYh9bTS1-TUonS1V6ZkNeHXt-T0AkT1MmMkJcHCx4TUg7TDFyThUbdlxoFU84fFNHdQgFFm4oSkBxTCRuMgMuflEwC1VaAFFpMBYnZVhtMhBhdwlRdiggQHUwLiJWQz1wUXt4Lxweevp2LmMsNEtTHisqQ02h
bb4e5909-7116-4ccf-b219-1b79c0063498	8d1b1d5e-9bd0-4342-9843-88d77b683c16	600732380453667201	incoming	text	โอเคค่ะ เด่ะหาจำนวนก่อนนะคะ	\N	{"id": "600732380453667201", "text": "โอเคค่ะ เด่ะหาจำนวนก่อนนะคะ", "type": "text", "quoteToken": "Sa8EvP5s3j-x5mvfpLIpbP7tgnWcP3ug2O5z_C3YSUDBdWEgh7IsZMauscUBw-tp4ZnW2kCew0nkCJ0ob45Cr80NzoYoolA-yFmxVk0xxtI7eLizXCskd_XsOGmEDg9QfwzAbPWOo7XABp1PEeiGXw", "markAsReadToken": "19_AVntCbUM6G9WModPVfRdKvxH-iKZtzAWhJjOh1QctXQQz29qB5XsApdiFvCUeVuH5dhh-8ho2QURCOH2X1t1eP7FQVe0BAdKYYDSXReW6r_GMjj5-tMpemd5dFWx0b5cB_RAVUXCnJhm_36VzTsHB-d7HmrEVGm8IdZpHWtCMCAO5XEy4sZrC5VXh1NmCDooLCjF46aCIg9HZyZlVZA"}	2026-02-12 11:28:25.455+00	\N	2026-02-12 11:28:27.974+00	Uf4fd968f79513421c4a77cbbabd59e36	w💕	https://sprofile.line-scdn.net/0hKV4UUdJPFHkZLAuSk35qR2l8FxM6XU1rYh9bTS1-TUonS1V6ZkNeHXt-T0AkT1MmMkJcHCx4TUg7TDFyThUbdlxoFU84fFNHdQgFFm4oSkBxTCRuMgMuflEwC1VaAFFpMBYnZVhtMhBhdwlRdiggQHUwLiJWQz1wUXt4Lxweevp2LmMsNEtTHisqQ02h
68f13311-b34d-4123-ae63-3698dd57eddf	8d1b1d5e-9bd0-4342-9843-88d77b683c16	600732403438452911	incoming	text	ถ้าขวดใหญ่อยู่ในตู้เย็นได้นานมั้ยคะ	\N	{"id": "600732403438452911", "text": "ถ้าขวดใหญ่อยู่ในตู้เย็นได้นานมั้ยคะ", "type": "text", "quoteToken": "UV3qk_Fbo3QNNi917t0EHhZwuMzr55JgYCCSuLQJR94txU4a9J7GxD_4lEILh8-sAeGl4L8OLnEQtHL4VBFc2XX7iqGmRjINxisF82q5etj4dyeQhSJFWtnoGlNve9jaszlEB7pvh-a7rS8J6BkDQg", "markAsReadToken": "xoRlMbi-7SAuxOqc936Gc6B_FO20Wj0cY_nijr713KBFHaYPt5s7JFOoTya1XKxmfsPRYvcqe94AhsVmMGDTMu3iw4o4KXCeHUlDeNNm5GeUHI6DQWnsDnSIMAOY-SVu5sduP1jp_md0BX2_Ac5O_T-5GkpLKwV8c0ODm954q3mpaN6TD9MsmLeu3QkciyNc2oVmsF3iYwerFPPjfeVnPg"}	2026-02-12 11:28:39.212+00	\N	2026-02-12 11:28:40.213+00	Uf4fd968f79513421c4a77cbbabd59e36	w💕	https://sprofile.line-scdn.net/0hKV4UUdJPFHkZLAuSk35qR2l8FxM6XU1rYh9bTS1-TUonS1V6ZkNeHXt-T0AkT1MmMkJcHCx4TUg7TDFyThUbdlxoFU84fFNHdQgFFm4oSkBxTCRuMgMuflEwC1VaAFFpMBYnZVhtMhBhdwlRdiggQHUwLiJWQz1wUXt4Lxweevp2LmMsNEtTHisqQ02h
2de6c8fc-e734-4cb5-b52a-7257071d0f9f	3dd97414-b1a7-4c2c-8130-47c58799df01	600735921301618833	incoming	text	@Joolz น้ำส้มคั้นสด💯 12•2•69\nสาขาFoodie \n\nน้ำส้มมาส่ง 20ขวด \n\n\nหมดอายุ  18•2•69\n\n@Joolz น้ำส้มคั้นสด💯 	\N	{"id": "600735921301618833", "text": "@Joolz น้ำส้มคั้นสด💯 12•2•69\\nสาขาFoodie \\n\\nน้ำส้มมาส่ง 20ขวด \\n\\n\\nหมดอายุ  18•2•69\\n\\n@Joolz น้ำส้มคั้นสด💯 ", "type": "text", "quoteToken": "wyj9E5zP7Km-vYqUF3lXHI7n0kjbkPXuQXwZlBHfJaNA20MKfbgDrkOelutdBXwQSJDGXokBJ9X_AGPLfoDa5xk78aRlxWZEahDRStGOCtYv5GXUmPxRikgF5YkwVUhHo2xJd17zgOflEagChJKFBw", "markAsReadToken": "kjY6ZJDrnqibRtbRVdISUaPenJPyb2Tb6loI57O_jsDq9XNixHltoYdt4kEtGvmKn_cIwuQu3VsN8EDXpx4gutD5FmQ3_7W4jmJuW5OehiyyUMTFSbiGVAl-D6kF2dapcLrqqLDoJZykUsh68vfEmJdwApACSLCadzhMnTNykGg1Fff_3SLOlbkH2jjabingPHj2ybMt3Fydr-jHet9WDw"}	2026-02-12 12:03:35.942+00	\N	2026-02-12 12:03:38.157+00	U3065b08d77070d6cdd734f0d47f35c69	Nan Dar 	https://sprofile.line-scdn.net/0h1emVhAECbkpAL3FkRDEQdDB_bSBjXjdYb0EpL3AsMn4oGHkbOEAlLn0pM3p4HnoZPx12K3AsYnJiTHd7H0BeSDJSNnMoRUgeDk5PUBZ3dTgmHFZ0Gw1kSnwqdhR5eXxnPk1FdnFzMjEOVCF9JxlzR2loQCN4dkBuG3gCHEUdAMkvLRkfbUgpLXIpOX74
57968150-823f-4c89-8eb9-717238c649af	8d1b1d5e-9bd0-4342-9843-88d77b683c16	600739880456945668	incoming	text	อร่อยจริงค่ะ สั่งข้าวในไลน์แมนแล้วมันต้องยอดถึง150 เลยกดน้ำส้มมา พอดื่มละตกใจเลย	\N	{"id": "600739880456945668", "text": "อร่อยจริงค่ะ สั่งข้าวในไลน์แมนแล้วมันต้องยอดถึง150 เลยกดน้ำส้มมา พอดื่มละตกใจเลย", "type": "text", "quoteToken": "ujw5l1JOtZFlS_GQYOF6sI1Cx6IK1tYmg-8hOc26_TDbUXvSXoAFl-FjlefbpE-d0uwwqUgzS0_nl66hPBfl3oM14u2OcD-y3RvzC1JDjZgx-HyS-73StpEXZUvBrxY-GAoHV7GfG-GpgsRta-lSJQ", "markAsReadToken": "V_zi8eSwOsUz2J6WaEuWpCWmRt7oHD-Dg4j2cxWoyx1wORYlYXpJFWZFyS5PjQOK8iNmHrglaMSWpB1vn2FvQ92aCKO00pdu_UZSrye3tDexX3bT8UaVZypqikliNYD83_URoIBwCEcZSkeZ34QKdXvh67JQvjzgPZad5qFM8R6C5HhvQa72xDCzuCqPVhX3eePEfED8BWTdOgyuR9nDwQ"}	2026-02-12 12:42:55.813+00	\N	2026-02-12 12:42:58.235+00	Uf4fd968f79513421c4a77cbbabd59e36	w💕	https://sprofile.line-scdn.net/0hKV4UUdJPFHkZLAuSk35qR2l8FxM6XU1rYh9bTS1-TUonS1V6ZkNeHXt-T0AkT1MmMkJcHCx4TUg7TDFyThUbdlxoFU84fFNHdQgFFm4oSkBxTCRuMgMuflEwC1VaAFFpMBYnZVhtMhBhdwlRdiggQHUwLiJWQz1wUXt4Lxweevp2LmMsNEtTHisqQ02h
abacee24-2a84-45cb-934b-b8a5aa5c21b0	8d1b1d5e-9bd0-4342-9843-88d77b683c16	600739891982893638	incoming	text	สด หวานมากก	\N	{"id": "600739891982893638", "text": "สด หวานมากก", "type": "text", "quoteToken": "ahF1BLRO70oJQDxGac0u4qUKFCbmNWBzuNxEE1hWzq5H6x4mehYMAj32TY7_ZmnGTrQrs8JjWKyzn3hXvdlcOLAF65hEFyhTZr_hpnQytl3A3I1tVs-lQVRnJVastnW8J3WneXV6V1ozhbLbNWV96g", "markAsReadToken": "wmxNz1_yVB5YoCez_c23OX8oQhIIDJ2YylGLzRoXqDve3tD9cP3d9DX6fvRTcr2R_rAIMyLEy0l1364KgkKZw9twOmsqQuFcXsqXKpkPbd11b1K7Ecp8J2HcH7U1z-hW565_yh1-PdGi83kwvDDO5wceH7IMuYrO23QWmRg0GgobB46HseiDZ__ZT0OHBcy6Uj9bIAvEzsW2FxuLic0Y-Q"}	2026-02-12 12:43:02.783+00	\N	2026-02-12 12:43:03.527+00	Uf4fd968f79513421c4a77cbbabd59e36	w💕	https://sprofile.line-scdn.net/0hKV4UUdJPFHkZLAuSk35qR2l8FxM6XU1rYh9bTS1-TUonS1V6ZkNeHXt-T0AkT1MmMkJcHCx4TUg7TDFyThUbdlxoFU84fFNHdQgFFm4oSkBxTCRuMgMuflEwC1VaAFFpMBYnZVhtMhBhdwlRdiggQHUwLiJWQz1wUXt4Lxweevp2LmMsNEtTHisqQ02h
60504521-e219-4a9c-ada2-d4b756895a10	c2c73a33-8fc0-41cd-92ed-952bb315612f	600747858072698955	incoming	sticker	[สติกเกอร์]	\N	{"id": "600747858072698955", "type": "sticker", "keywords": ["Thanks", "thanksforeverything", "Bowing", "brown", "line", "appreciate", "thankful", "grateful", "Please", "Pleading"], "packageId": "11537", "stickerId": "52002739", "quoteToken": "C6QO0Q3-TUj2amhvAbh1Lhh9jCo1KX2r0GgMeBLWqoDJ7xrI87izqJtCaIm9a1qN1OyjeMz9euuNRZF6qKA8EFUoDdVJgGIWaz6ICNZ2ZpJM_q6_3Z0tYJje77LaxQ4rkHu5sLM5N1u4AScFEC6JQg", "markAsReadToken": "-vjETzl_-uX8MZmRFiy4yPxIYhjE-M0HT4BWRHEouiIDy7ybWK2jaxvISJTPyac360vF9vZdv5fupUeGgGJnfxbbimdpL_euOhBojZBGnajgOJBAd1olhGFqo8xy0lUL3nKpsq5I5yiRJxMpCUQMD8Gv_jJk30nnyU3KnDurCP_OZoYqtT-OUTmjbtZK6WYG1PrB7iQBBi2ShhN5XegV3g", "stickerResourceType": "ANIMATION"}	2026-02-12 14:02:10.931+00	\N	2026-02-12 14:02:12.354+00	U3ec9d16844fc7d722fae0245a98629b9	อุ๋นอุ๋น	https://sprofile.line-scdn.net/0h3-rDQ-8DbAJfPXg9FsQSfS9tb2h8TDUQc19wbG5qZWFlBHkBcQsqZWg9MjBqBCsDJ1wiYms9MzBTLhtkQWuQNlgNMTNjBSpTdVIn4Q
ca619704-a35b-4de2-906f-94743205a095	c2c73a33-8fc0-41cd-92ed-952bb315612f	600747855858631082	incoming	image	[รูปภาพ]	\N	{"id": "600747855858631082", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600747855858631082.jpg", "quoteToken": "A5FuZaTkgRE4aE3j5i-nBhfHfPcV8jQv2aA0vHmBJkMKowg0ufvJQr5ku8ZcXoC8PPaBwQDiZQBz4jg9HU66lR8hlAxumE8Fi4J1cH5ksTuieWhpDO0wNqAfeaWnLNr9oKKIMy2yDLRY5kanmIfjtg", "contentProvider": {"type": "line"}, "markAsReadToken": "nzed1yTNzdUa4YC2YU8cN-Qke9GM38k-1LOEuIXNBSIM61Cpxvnb8wbEXXTFgAyQbu4DfcJyqLUNw2s3cRZXUSCBpWKwUxy00Dwa2t-6wpflU0Ia-rAhdmhgr4layvDsWKGsVfBK9d7VltCglTxUOHnSlBSqqey_ZxoNs_yadM168-AoBQ3DUXWjrNXgMfNi0f4j9ymY9uUM9zuQevA6cA"}	2026-02-12 14:02:09.704+00	\N	2026-02-12 14:02:12.816+00	U3ec9d16844fc7d722fae0245a98629b9	อุ๋นอุ๋น	https://sprofile.line-scdn.net/0h3-rDQ-8DbAJfPXg9FsQSfS9tb2h8TDUQc19wbG5qZWFlBHkBcQsqZWg9MjBqBCsDJ1wiYms9MzBTLhtkQWuQNlgNMTNjBSpTdVIn4Q
894e68a8-59a1-4a6c-bdbc-a8349f6fe025	d018401e-70b8-4beb-a37e-521da9f16a86	600761481206169720	incoming	image	[รูปภาพ]	\N	{"id": "600761481206169720", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600761481206169720.jpg", "quoteToken": "_y3zZ1cvfcSZ4hV9Mdnjv0M6FGfnywytdTfcoLKtY1AqxbU4b46ZiwnhuwxznItUIHowoMRxvUMg1SZHK6lcJww5S3tYr0KGv_AZiePgD_9XFkqA2l_WVcddPm6rMCH2DgS6-ymLIrNp7gIUUnZ3DA", "contentProvider": {"type": "line"}, "markAsReadToken": "GdxsQbR6WrJdCNzidqhQlQ98g-iaMAn5WaipFEnfPPMDbraym2JxAJ3tUtOwlseZtCXkA-Pqfgfy0gz3esW5qyQsONyI7dlhOKU_yb5TAvthd5xcsmiNZOcDGuGytXdore072UtHT_LFAQ_utm_goLOGfY-DEwS-1b3xuVfQGfxZJ93YNE3r2-14iaRjagwF6-HsJXlDSdBnNCVEpKB6NA"}	2026-02-12 16:17:31.211+00	\N	2026-02-12 16:17:35.4+00	U0fde09872afa50bc61694226e41dd72d	Movii.👑✨	https://sprofile.line-scdn.net/0hk8LAATrVNBdhOCqPI75KKRFoN31CSW0FT197eVBrPXNdAHFHH1orJVw8OiAICnpGRFZ-IlY-PydDajUzGR55cidKLn88TBIpHRsDLg5sDlsrDhESKC4zcw5LOWYfUxBFNTooBlZoLmEVXCQUEh0zdzBENFoLbwQVCG9YQWQKWpQOOkNCTF9zcFM-YyPZ
a80f35c0-bd08-4e78-83de-51efd9493a45	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600823694361362914	incoming	text	บางขุนนนท์สั่งน้ำส้ม 20 ขวดค่ะ	\N	{"id": "600823694361362914", "text": "บางขุนนนท์สั่งน้ำส้ม 20 ขวดค่ะ", "type": "text", "quoteToken": "WxvoLlJ4s_iBvwmD8DQQtbEZ4f-pAU5_Kd-DHKVy71Re2T-H6pm7Ig7-U0WlCOxbTV1syKIgz3HdZUjOneLe-Nqc-o49ozj3hQW3Pte-577PAhQ2XzZd4jrUVzL5oOL0sg1XOYtMIexNcH5rn8Tolw", "markAsReadToken": "cFJcput2BihNbyWeEVcp9JX1nxtj_ZVejFHUpwZLqf_M_nmNa43kjQlPkRc7VjMCZxub7kencfmysorSEhohYXHnQEm3AkQhV4SMtTFLEVc3zTDMVPIuzYgwfpfNlo68FmW1nU98tQun4UlgkNxelxra3MK5dmamEkcYBTrI5k1DL12jqKScU644MHaswQtn12Xo-PXuiaOPG3INQeXraQ"}	2026-02-13 02:35:32.91+00	\N	2026-02-13 02:35:35.292+00	U65a3931abc616559173b7aee523b58ec	โจ๊กสามย่าน บางขุนนน	https://sprofile.line-scdn.net/0hhqsJMqD-N15eMyAJCMRJIS5jNDR9Qm5MIlZ8bz87YGwwBHUIc1QvaG8xamowUHJfdlN9PW0ybW9SIEA4QGXLalkDam9iC3EPdFx8vQ
9a68ee7e-7d0a-47c4-812e-389c3f32dc35	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600823785394536638	incoming	text	สั่งน้ำส้ม 10 ขวดค่ะ\nอันเก่าเหลือ 2 ขวดค่ะ	\N	{"id": "600823785394536638", "text": "สั่งน้ำส้ม 10 ขวดค่ะ\\nอันเก่าเหลือ 2 ขวดค่ะ", "type": "text", "quoteToken": "fZFs_b8zwquSO0RUPRQteRV0v5AqFKgQ7_38_SFAt3xQx-UxLivZbSwvoRgOxqNTE3tzoXewz-VrZSOYX6W89jQyFMpQfg4A7ShfWBR7aUsPOVVjSTLOYWiXKsMmaLqyBZVD1Ohy6JBVP5KyKty2zQ", "markAsReadToken": "vJGP96ysa8P_cR0Fhx1z47Ps_w7JU18zmvSq3roTZTMwLaTPw-grfeE_kYaXffOcQmT0XQXcYPI9DMgV35l_UVv5P-xp4LxCT0VPDYQCgQItZmYDrnLyWmNudkX-1XSWXia2OPsP-D9Y1xrzP5Fwxc2LuAYhd2CLi8oFkI9zMI3oOFBT15mq3_W8bGiRqK6ZIuTFvGkrjaQsNokhsD1UsQ"}	2026-02-13 02:36:27.032+00	\N	2026-02-13 02:36:27.595+00	U4ddc32e139a6ed8679bd1b9920092889	โจ๊กสามย่าน คลองขวาง	https://sprofile.line-scdn.net/0h6V_tDd8haXlyDX7nvIcXBgJdahNRfDBrDmt2SEMKMUAdOCx_CWt1FhJaMRlIanovDjkjG08IMB1-Hh4fbFuVTXU9NEhONS8oWGIimg
e4060b15-24f8-46c7-8122-9e914cf8ed14	453afd84-f120-4295-b069-09740a2bbb99	600824862876893597	incoming	text	สวัสดีค่า สอบถามนิดนึง หากสนใจสั่งน้ำส้มขวดเล็กจำนวน 125ขวด ราคาอยุ่ที่ประมาณเท่าไหร่คะ	\N	{"id": "600824862876893597", "text": "สวัสดีค่า สอบถามนิดนึง หากสนใจสั่งน้ำส้มขวดเล็กจำนวน 125ขวด ราคาอยุ่ที่ประมาณเท่าไหร่คะ", "type": "text", "quoteToken": "EQLCbWiIVpXtasEcr3498kwR0ZRFZ3Afm0Ju75bkG8vsuVKDuDvxaZmFjf83jvRq0ffQCDJjuFKASpHNpn2XhG545LP1Q1xPGRtzJVn4P2MPPc-hKQ2JruQD2YmeYHMgeqmAzYawvYe4MVBgnxsffg", "markAsReadToken": "NPFdguktOTNq_F92O70ZbVSSx0pu9Gkut-w04wK3MRKvn_MwQo0gZhpHQmfNb9dB1ubHZILAYXqzbS_aUeWvF9m_mQRgNUdMMvNBLv9zXOJkfryEETQSVh7CEuQQwek_Oi1opLwFGx_d7gMY4-J-V2RbwzlZTSdyJx8nyWUwOy-nNfX_z6oA7HlB83GKQL6WNqYVh4_bP3fmLx62z23kaw"}	2026-02-13 02:47:09.255+00	\N	2026-02-13 02:47:10.183+00	U195dd07ebd3e2e30eaab1038c09c83f5	kate.xox🎪HR	https://sprofile.line-scdn.net/0hc_R2jpb4PHB_SyNAkC5CTg8bPxpcOmViASwkEh0eYBJGK3kuUCt3E0wZahIXen4jAy0mEU0eZUldBRVQLkM0TyMdPhVKfiskB18wVCQ3KVwXDhtUMWwMVBMTZS4dIC59A2t2cTUMCjsSHCZvLHRvdhQ8FBklGBAgKRxQJnp5UvMQSUslUix7F01Na0TH
2701abe1-03c7-4719-b100-6d3808a0ad99	453afd84-f120-4295-b069-09740a2bbb99	600825011053265312	incoming	text	 3,125 รวมค่าส่งมั้ยคะ	\N	{"id": "600825011053265312", "text": " 3,125 รวมค่าส่งมั้ยคะ", "type": "text", "quoteToken": "zOToICm4OERGBTufAXF0FDvAnnV8UgILDvWBvuBqGahcWGvgwtXBmLZSUKBOwMkfdJJ9us886dW9gTD2TP1_LvI6QkX7hAY7EWZOPTkFfCIMNVM2qYiuqerYtRtc-zN_UrMRJi6fX-c_P-GJPjMoXg", "markAsReadToken": "rq9V5bXKFcdZQeHQxFu-l2lqcdIzTCXHCMP3bCjl6YVcLl3NCXbczatNnY1Jsh9S9pUWHurdjcOhR70JKLpgmwd7ujRPOsUT8OIHtjodlK44rAixDaiGklysWxx_dhNI8eM_CfQNS2mU-krUN6t43Mc6rErSA4O-kYxiucz6b7lKeawbToicXK17gac7p49C7OVqAFuf2PW7IvudoSOJtQ"}	2026-02-13 02:48:37.718+00	\N	2026-02-13 02:48:38.502+00	U195dd07ebd3e2e30eaab1038c09c83f5	kate.xox🎪HR	https://sprofile.line-scdn.net/0hc_R2jpb4PHB_SyNAkC5CTg8bPxpcOmViASwkEh0eYBJGK3kuUCt3E0wZahIXen4jAy0mEU0eZUldBRVQLkM0TyMdPhVKfiskB18wVCQ3KVwXDhtUMWwMVBMTZS4dIC59A2t2cTUMCjsSHCZvLHRvdhQ8FBklGBAgKRxQJnp5UvMQSUslUix7F01Na0TH
1737fd6c-888e-44f8-995d-76cb3f353441	453afd84-f120-4295-b069-09740a2bbb99	600825061921784117	incoming	text	ถ้าให้ส่งที่อาคารอื้อจือเหลียง ถนน พระราม4	\N	{"id": "600825061921784117", "text": "ถ้าให้ส่งที่อาคารอื้อจือเหลียง ถนน พระราม4", "type": "text", "quoteToken": "oKUOq6yBUWJ0kDkJsLSY4UEelmU_acXfHcpzI0QJsoEDE_JggtEp8C9zffX3FMqnEi03_5mapG9jsmjKyyogLTyzc3cEikZi13tK9IRsUDa87AqVvbQz_CdlCZpcI-PQoNHBng7Qx4midnWK2SmV0w", "markAsReadToken": "KG84BuKXkFn1kyKOVdj80mS_WbS178BA4ALJCH7OB5ZKoaVL4wc6ZRlNJcByoFKE-tl6QC9Xs3-_wCA1G9CuVAcwhbBWmXRmdCQakZHwvhn1I5MrbTjY2sv_ot8Mpl2nWUe4PdAGg9ogAXvuZ82-KQu6bXk7I5OC0XSggK1dvp6domOVuB5xVIIr-pC_pjAEwdYGsgIsGhhn33y1osNBTw"}	2026-02-13 02:49:07.982+00	\N	2026-02-13 02:49:08.484+00	U195dd07ebd3e2e30eaab1038c09c83f5	kate.xox🎪HR	https://sprofile.line-scdn.net/0hc_R2jpb4PHB_SyNAkC5CTg8bPxpcOmViASwkEh0eYBJGK3kuUCt3E0wZahIXen4jAy0mEU0eZUldBRVQLkM0TyMdPhVKfiskB18wVCQ3KVwXDhtUMWwMVBMTZS4dIC59A2t2cTUMCjsSHCZvLHRvdhQ8FBklGBAgKRxQJnp5UvMQSUslUix7F01Na0TH
0b974c39-5e45-4c30-bccf-d2d05227adb8	453afd84-f120-4295-b069-09740a2bbb99	600825147015823672	incoming	text	วันจันทร์ที่16 ค่า	\N	{"id": "600825147015823672", "text": "วันจันทร์ที่16 ค่า", "type": "text", "quoteToken": "wdswD_69A7fodeT3ByzZ5FL_kdToI6tzrGI1fOhm0Sb_5CEskabfTs-JkW5o58fg9fPzYH_n8npZBcrkcgjjXjFZ9VENv0jaJT4FpmnYREHlHj9QwABCntHR65izSt7Of2B0pR9ga8_HXQlYolcMGA", "markAsReadToken": "KBCiPVsfNZ-mNpXT0W80DVzvFdQFfOKfPqjN_1Vu1mlvDQt1gj2Paf9TN2mK0zRuqzwHe99X40f9iwrY0v9iJz8FhNtRVcLT-LeDw0seIOPZrhKHuVt6kwJjQjOObJsJlIppF0iAA9IUEs0Ov8UTh9qYG3qiLAb-0LNmABgyC-UVY57VxXzP26llz2URCwYkP1I_0O--t_HjBqF0_jQpdw"}	2026-02-13 02:49:58.613+00	\N	2026-02-13 02:49:59.502+00	U195dd07ebd3e2e30eaab1038c09c83f5	kate.xox🎪HR	https://sprofile.line-scdn.net/0hc_R2jpb4PHB_SyNAkC5CTg8bPxpcOmViASwkEh0eYBJGK3kuUCt3E0wZahIXen4jAy0mEU0eZUldBRVQLkM0TyMdPhVKfiskB18wVCQ3KVwXDhtUMWwMVBMTZS4dIC59A2t2cTUMCjsSHCZvLHRvdhQ8FBklGBAgKRxQJnp5UvMQSUslUix7F01Na0TH
c48c04f4-ad04-4fbb-9a0f-98c384ccf42e	8db9db9f-2128-4d92-827c-23f97b74d9b2	600825281099333829	incoming	text	อารีย์สั่งน้ำส้ม	\N	{"id": "600825281099333829", "text": "อารีย์สั่งน้ำส้ม", "type": "text", "quoteToken": "bE6OSDdJtn3dzV_wSJ17VEjdj5MGEmXxAPlRhuqWYFSaPUE6UxiiqxMIohAJUcSFaQeWQp_UWH8JhagUrvkHv0li1LGNtrMj9qHuXpsYAI9xpyEel1f5qjj0S6NLba6-jziZ5kqcMjNf10mAy4Tp7Q", "markAsReadToken": "bGDyBWkdLMqg8H50LTRUuRHrxQjBuJakTAiELvbiF3AcMzkCct4Ym79H4KR3HE8Ui2ypBFOcLaOinC8fIUyibHx_sTJvtjESJX_hOste8EhVaxo59bw1XOh6AenyVlrLhkiea8M33B3fOyMWGIslrl-Nm0LRy_3IXx4DA6kGB78eWEXsg55rw3RIwJubtmldi3X9Ye3-XJrBErk81XLr3Q"}	2026-02-13 02:51:18.686+00	\N	2026-02-13 02:51:19.949+00	U583cbda06f035b93dfa5c84378ff5b25	Top	https://sprofile.line-scdn.net/0hO-CY2mpsEAJuIATgeEVufR5wE2hNUUkQRUcMMV4gG2VRRFNRS0UKbAgkHTdUQlQEERYKMFJ0HGJiM2dkcHbsNmkQTTNSGFZTRE9b4Q
b7b73fc7-bb1a-4e68-943a-4004696c6682	8db9db9f-2128-4d92-827c-23f97b74d9b2	600825290864197718	incoming	text	ส่งวันนี้ทันไหมครับ	\N	{"id": "600825290864197718", "text": "ส่งวันนี้ทันไหมครับ", "type": "text", "quoteToken": "7J8Itkni9bbqfnUN2YkcliCac6i9dIlzzOv9_uNIZcb7nRCxq7CNE8ihfzoV7jR48R4bBQjfq-sAznK_QoFzgg5GH0s8D__LNK1pMv0CFWHyLwjcC8FaypgYGqFYZR2EqO9wBn6guR3XVPpnOyFeBg", "markAsReadToken": "_2eh1oAkQuSinXywZNXKy6wdkBrlAhDKs_Hi_h5GrzqoKOA23x8UFUlPPg5l-DDrL1kZuD2iZrem7cbpBVekrg08_P_LVnhVm0y_iH9FI4xnyzFQXG9chYz6dCRrO7SYDdsenKz9VC4SqR8AVwXycDhsqo-V6ngKk5UGHIlReSU16J6dpET-lP9Xs4FH8fkPuEY8hXMgFYgPbi9-NX55Rg"}	2026-02-13 02:51:24.346+00	\N	2026-02-13 02:51:25.198+00	U583cbda06f035b93dfa5c84378ff5b25	Top	https://sprofile.line-scdn.net/0hO-CY2mpsEAJuIATgeEVufR5wE2hNUUkQRUcMMV4gG2VRRFNRS0UKbAgkHTdUQlQEERYKMFJ0HGJiM2dkcHbsNmkQTTNSGFZTRE9b4Q
cbe6ae87-da8d-482a-8c20-efa277d11050	8db9db9f-2128-4d92-827c-23f97b74d9b2	600825510377029764	incoming	text	เช้าทันไหมครับ	\N	{"id": "600825510377029764", "text": "เช้าทันไหมครับ", "type": "text", "quoteToken": "ENhaCfkB8ki_A4Y02la05HMCU6X9-pQ8nOCOvjdFGeNccOxpQ4X9bEJlRpW8sM8d0x540tNBjv2PtraoC7c7uG23884VFwNGLyE8R012i8KIEYX3lZ9TMKQmmXsBmpkPz7aCpVG2qD0k4XiAH9i7nA", "markAsReadToken": "QU-OdKkE8GyV7nKUecM3_JnWSe-ago6FULTYL6pcorThaOhwIL6gZb8BAIJlXUGPKYUz_s-u_VbKgFIQ4NI6faUkPtWP6aUeEH0waszA_2XjTCY1ZPAezsGeFZ3UNqNIjOFNtbPFTUV2C9Gx1w6NZTAF0ykWPqXlxs5wVEGcWo6BWgmjc-RCE2ZA2IaS4u6J9vW9_1WqPwBzaWVQ93dN7w"}	2026-02-13 02:53:35.366+00	\N	2026-02-13 02:53:36.218+00	U583cbda06f035b93dfa5c84378ff5b25	Top	https://sprofile.line-scdn.net/0hO-CY2mpsEAJuIATgeEVufR5wE2hNUUkQRUcMMV4gG2VRRFNRS0UKbAgkHTdUQlQEERYKMFJ0HGJiM2dkcHbsNmkQTTNSGFZTRE9b4Q
2dac01e8-c81d-4e14-a04f-a27feeb72fb0	453afd84-f120-4295-b069-09740a2bbb99	600825568543375685	incoming	text	แบบส่งคืนดีกว่าค่า	\N	{"id": "600825568543375685", "text": "แบบส่งคืนดีกว่าค่า", "type": "text", "quoteToken": "kZKbkjo9V2sZ51E4qRmLV3buvjQnpwjvkvIYhI0quCcuZnaIl4vvfKe2RhdKF3LsmJirTNKG3CEdTqV5aa2Eu-HmBktowpNf3rgZXqtYP5bdSHx2WTs4elXZOVSK6oG65jVnqQS4Y8nDXYiGAE-s7w", "markAsReadToken": "RrpdfLsE73X6Z1vjB8VkaCJidNHui1clvk8pVumFNdZBTZ2CjM64jBvms8Emtw4JvT1BJLXehd3ZYd1Ec6L5hF3XOqdQjKmMuPFrVmT1FGepEKmw4tWWjiDaMPgH_8eJH34By3tiM_cbuumwSBjJ_LbUKHJQToro7g0b7oBcDZKP94AjjRTJ27m7rh8DzJnKdkRqiXnuWT1T-t9IyUqfxw"}	2026-02-13 02:54:09.893+00	\N	2026-02-13 02:54:10.928+00	U195dd07ebd3e2e30eaab1038c09c83f5	kate.xox🎪HR	https://sprofile.line-scdn.net/0hc_R2jpb4PHB_SyNAkC5CTg8bPxpcOmViASwkEh0eYBJGK3kuUCt3E0wZahIXen4jAy0mEU0eZUldBRVQLkM0TyMdPhVKfiskB18wVCQ3KVwXDhtUMWwMVBMTZS4dIC59A2t2cTUMCjsSHCZvLHRvdhQ8FBklGBAgKRxQJnp5UvMQSUslUix7F01Na0TH
7641fd46-38d0-4666-ba5f-ee1b124576fe	453afd84-f120-4295-b069-09740a2bbb99	600825939723027118	incoming	text	เมธารินทร์\n\nจัดส่งที่ TRSC\nบริษัท ศูนย์รักษาสายตา จำกัด\n968 อาคารอื้อจือเหลียง ชั้น 6 ถนนพระรามที่ 4 สีลม บางรัก กรุงเทพฯ 10500\nรหัสประจำตัวผู้เสียภาษี 0105540068075\n\nเบอร์ 0630099650\n\nวันที่รับ 16 กพ.69 ช่วงบ่าย	\N	{"id": "600825939723027118", "text": "เมธารินทร์\\n\\nจัดส่งที่ TRSC\\nบริษัท ศูนย์รักษาสายตา จำกัด\\n968 อาคารอื้อจือเหลียง ชั้น 6 ถนนพระรามที่ 4 สีลม บางรัก กรุงเทพฯ 10500\\nรหัสประจำตัวผู้เสียภาษี 0105540068075\\n\\nเบอร์ 0630099650\\n\\nวันที่รับ 16 กพ.69 ช่วงบ่าย", "type": "text", "quoteToken": "MYV-TRKkwZWu_cRpX2yk6J_1WJKnFUSVFWyEojclflQVc_H1yHrCYz_EIRDnc0jRJYyesNK6JJmcUzSN3ZMymAknclipZFAvvVaso0TX5gwTCv7N_iLdmkG72HRRnwfgJheN434WT8f2PkeSvJgvqQ", "markAsReadToken": "-xCYojZM2XwR-s3TIAhtLWz_RkfL6TJgBOlQAs2y3TYU0SScmJZ62LfoCJbQAVgXmzAqk2Mr82QFxNWF7mVHzr9o4y6sOHxSRgyDlfd3oguPsWlGS1q9qhc5QgL6IriaExIQzVqeGKliYXgno_wLCKIQ5ceog11c4JFG7NbqLDWi2faZP11oPi0twS7lksGV-J6gK6cRgqRlvJk5e9UOMA"}	2026-02-13 02:57:51.301+00	\N	2026-02-13 02:57:52.208+00	U195dd07ebd3e2e30eaab1038c09c83f5	kate.xox🎪HR	https://sprofile.line-scdn.net/0hc_R2jpb4PHB_SyNAkC5CTg8bPxpcOmViASwkEh0eYBJGK3kuUCt3E0wZahIXen4jAy0mEU0eZUldBRVQLkM0TyMdPhVKfiskB18wVCQ3KVwXDhtUMWwMVBMTZS4dIC59A2t2cTUMCjsSHCZvLHRvdhQ8FBklGBAgKRxQJnp5UvMQSUslUix7F01Na0TH
aadbdefe-027d-4fe2-8120-dab73cbc95ea	453afd84-f120-4295-b069-09740a2bbb99	600826164000850007	incoming	text	จัดส่งที่อาคารบริเวรลิฟต์ใต้ดิน B1 ค่ะ	\N	{"id": "600826164000850007", "text": "จัดส่งที่อาคารบริเวรลิฟต์ใต้ดิน B1 ค่ะ", "type": "text", "quoteToken": "Ch154-Y9ztiZaar8Gw5LGsJDeMQfynZUwk1Od13jU8q67yzgSJNPIhpMKvoFfS92qlnWRvBZ4gTlhwouX-JjN3QLQgYMxq-KmMmaipirSECKwOZg-xvfeCIdhNN3q6Jlv84eEUnh8WonJ8i89k8nHg", "markAsReadToken": "alZGBISAyRXDZUfRfwvw1t_ICdn9TSvRmrdQ0qzqlnIG2mmB5n7hJcnFDnWEeRXQCcZjCwx1NrwhtP_Ycw8_jPgiGOsluFP4ZeVC8oFMjkIAvo04V3IyKVHzw6uNN9wv6pQZXROixJ-iwR0k-aNcA6PcKVQXhQO9rHOAbdAeXkbXmu-bq5-TyDt8Xa76aL_l53oEYICbTXkP-6BI84dxKQ"}	2026-02-13 03:00:04.918+00	\N	2026-02-13 03:00:05.687+00	U195dd07ebd3e2e30eaab1038c09c83f5	kate.xox🎪HR	https://sprofile.line-scdn.net/0hc_R2jpb4PHB_SyNAkC5CTg8bPxpcOmViASwkEh0eYBJGK3kuUCt3E0wZahIXen4jAy0mEU0eZUldBRVQLkM0TyMdPhVKfiskB18wVCQ3KVwXDhtUMWwMVBMTZS4dIC59A2t2cTUMCjsSHCZvLHRvdhQ8FBklGBAgKRxQJnp5UvMQSUslUix7F01Na0TH
1d84b9cb-0dc1-4468-8af4-38b55c6730eb	453afd84-f120-4295-b069-09740a2bbb99	600826228307394956	incoming	text	ได้ค่า	\N	{"id": "600826228307394956", "text": "ได้ค่า", "type": "text", "quoteToken": "vLAYrrh1uK7JniS6FP-fpuPIbg3Rm7uNxnbBIvqa8syeaiLf3bV53dlhW8X4OjW5n7UUOSYY_ohZA7F9DkI8VC8sVv3fbGn9bnCwFJCCeMk9UVPh-0HwyX4-hUCXhcDI2H5lkWwR4kkKjislZ6z1NQ", "markAsReadToken": "Sr_h1ge5c4uFFmiIL4w-EwMWl_VsT8T9Qe-LkWQ6R5YjWppOHMhxXXbGmNWUASKowyujx6QoV_AsDsgmcAan3W53Ps9yHf3adxIuttS4DL1dyA0F6DqQBlhKdUdFHsFYy_rN1cr5U6hxqDAYZpjw9Hggvoy1wPlHgIqGWBQ0j4O8EXF3X3QfLwlYljvvZ0ii74gibhGgqry_3R4AZDwV5g"}	2026-02-13 03:00:43.114+00	\N	2026-02-13 03:00:43.911+00	U195dd07ebd3e2e30eaab1038c09c83f5	kate.xox🎪HR	https://sprofile.line-scdn.net/0hc_R2jpb4PHB_SyNAkC5CTg8bPxpcOmViASwkEh0eYBJGK3kuUCt3E0wZahIXen4jAy0mEU0eZUldBRVQLkM0TyMdPhVKfiskB18wVCQ3KVwXDhtUMWwMVBMTZS4dIC59A2t2cTUMCjsSHCZvLHRvdhQ8FBklGBAgKRxQJnp5UvMQSUslUix7F01Na0TH
5a1fa2ae-210c-432f-8ac8-fc2ecdb6e435	453afd84-f120-4295-b069-09740a2bbb99	600836686402552286	incoming	text	แนบสลิปไปในลิ้งแล้วเน้อ	\N	{"id": "600836686402552286", "text": "แนบสลิปไปในลิ้งแล้วเน้อ", "type": "text", "quoteToken": "FWYvfV37HrBEoxs91ToFJgbSP9waLixIahC3IhxLraijgeegwX5omSNk4QyBODVMVOlrAuddjKO_z0dKdcns3_m7gAZ-dJ6nkTA0eNgYp2h9Bs1y9E2E7oYX-P3FQIzTeJP24YKPkW6B-aa-5hYG1Q", "markAsReadToken": "nouNL7uBmSHL8Gm0L9i87VGL3JYM9ozgXAmweBF8TYmNh3yfx9FNURJPNeJKfTBaBvCi-RD9Gs7ONyjjMJrffu4wvvuN4cihiaC1hLz80e5qA55ocI49lhRyIB62ry_NuaGajr4hcxHue95ctruJA23n-yN_8FbMG1KNjQu1X2X2o2qURWsuCfqlJP_-pswfiVdcqHB1n4wCeARukJeoFA"}	2026-02-13 04:44:36.662+00	\N	2026-02-13 04:44:38.409+00	U195dd07ebd3e2e30eaab1038c09c83f5	kate.xox🎪HR	https://sprofile.line-scdn.net/0hc_R2jpb4PHB_SyNAkC5CTg8bPxpcOmViASwkEh0eYBJGK3kuUCt3E0wZahIXen4jAy0mEU0eZUldBRVQLkM0TyMdPhVKfiskB18wVCQ3KVwXDhtUMWwMVBMTZS4dIC59A2t2cTUMCjsSHCZvLHRvdhQ8FBklGBAgKRxQJnp5UvMQSUslUix7F01Na0TH
f925abe7-ae3c-451a-a0ed-dc162f32b8ea	453afd84-f120-4295-b069-09740a2bbb99	600837038085767942	incoming	text	พาใบเสร็จมาให้เกดด้วยนะคะ ขอบคุณค่าา	\N	{"id": "600837038085767942", "text": "พาใบเสร็จมาให้เกดด้วยนะคะ ขอบคุณค่าา", "type": "text", "quoteToken": "EjKMNm8Q7SECAvSOIxp_j5k08Oyk9aQJtH2zgV3E81yIZ8LFiLJj3aGnQtV1k-5ICCbMTSlKXqD6rM1EDhhZx0ZAIXzTEK14NQ7cjRnu8SYRWEqkn_KSxfCavFohazV6vlzDeqcb098o-4fDsc6Xtw", "markAsReadToken": "d9-lN7OCTM4pXmnzwGPBiQfEVN34ao2284A2dOdVpBidEsdMNYNmFqZ8eM-S3yv5pwa7T4mhuMIfGpO8ktqIFQLAZ3o2DQE_ncTLIKr2eqjS2IPv8Hx10GyeHqLBzNoEQeu6FEDE0OgNr6HiQvzY7jjlJGZuwlwYYtABnYdKdmu8ZdUP2cSeCcV240x7RHE5AgvBKVGNBkEhcxmGr8WyjA"}	2026-02-13 04:48:06.248+00	\N	2026-02-13 04:48:07.18+00	U195dd07ebd3e2e30eaab1038c09c83f5	kate.xox🎪HR	https://sprofile.line-scdn.net/0hc_R2jpb4PHB_SyNAkC5CTg8bPxpcOmViASwkEh0eYBJGK3kuUCt3E0wZahIXen4jAy0mEU0eZUldBRVQLkM0TyMdPhVKfiskB18wVCQ3KVwXDhtUMWwMVBMTZS4dIC59A2t2cTUMCjsSHCZvLHRvdhQ8FBklGBAgKRxQJnp5UvMQSUslUix7F01Na0TH
12936860-b206-4870-b9cf-65aa18a12f04	453afd84-f120-4295-b069-09740a2bbb99	600837120479461736	incoming	text	บิลเงินสดก็ได้ค่า	\N	{"id": "600837120479461736", "text": "บิลเงินสดก็ได้ค่า", "type": "text", "quoteToken": "Eyg_31-ysZOo5E70HmHp6D7Si0Kqzx7MTFHJoz8bcMNWfbUyY4FNzdmGPq0vz8qTyA0chQd1NFtSxY8vbV551u_FMnH4Yllrrkiwf3ZdQrFSiv6Ka8CeVX7UqETI0LxTIOLnxsQ-weZgi8O-4rQP2A", "markAsReadToken": "1ysyWse6pECbBjikNch7WNeKcRIAlqlrlIZ_3fuyGQeNzuj6e3fdXGa23vi6iG_UG5u1k6xkh0ZhL7Dh-yqnfbqXJtHH58_VEo9STHjTjVtbfOZFFFdfmqwDRHUlf7WChVmGl4iuWRCxo8r_7WpLVj5w4eW96k-m8K5g_I0_zgkIoEFl8LEvE6XwK7JloK38DwIeXiMkIGTwDWmD9_8z6Q"}	2026-02-13 04:48:55.45+00	\N	2026-02-13 04:48:56.238+00	U195dd07ebd3e2e30eaab1038c09c83f5	kate.xox🎪HR	https://sprofile.line-scdn.net/0hc_R2jpb4PHB_SyNAkC5CTg8bPxpcOmViASwkEh0eYBJGK3kuUCt3E0wZahIXen4jAy0mEU0eZUldBRVQLkM0TyMdPhVKfiskB18wVCQ3KVwXDhtUMWwMVBMTZS4dIC59A2t2cTUMCjsSHCZvLHRvdhQ8FBklGBAgKRxQJnp5UvMQSUslUix7F01Na0TH
b5c8fe77-4a70-4fc2-b974-af3ef55ed305	adcd0754-b048-4f25-b02a-370e5528eb03	600839392903037202	incoming	image	[รูปภาพ]	\N	{"id": "600839392903037202", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600839392903037202.jpg", "quoteToken": "gKYQ6jvn82kiRdre0dp7D5wgTIEOxj7D61U_VcMxuT3w_XBReHcNQa8Wk-SSpm9GbtjlCIudud94oGL7rjOl9PGMqkSQynXtMV8m6SgdPetB55F3dv-ktwT1pqQor5cFbz0iTtcEfBfa40hcXhcyBQ", "contentProvider": {"type": "line"}, "markAsReadToken": "rWV3FvVSJ2PTrBwc7BdUevMaVqthaqipA8aWS9GWYonsv9gRCBkKKAmwRHGjL6MJNWfJAnNgcRMXZ5fv-DVtJe2Gmnho5628hc90qmud8W8Wo5dc8Hhk-FfZn9EY42ZZkgSCwtq1_8bUjLEL662Ppec3kZQt6PaeGmtAJ9wzTvtRVqIoZTRPJ-oU59E9B3neHjxEgxCZJHaYepadkQxmSg"}	2026-02-13 05:11:30.188+00	\N	2026-02-13 05:11:32.843+00	U687f079b14e8b44f2e8177195b28ab0f	Benyapha	https://sprofile.line-scdn.net/0hU7cphS1rChhOCRrb0r50Zz5ZCXJteFMKajtGKn5bBi11PkgcMThGfXMIXSpwOR0eMmgXLi4OViFCGn1-UF_2LEk5VylyMUxJZGZB-w
fbdaef2c-24ab-4f6d-9686-a9b20a5cdaad	667a0882-d61b-498b-b278-e6f7220b9890	600842871943463117	incoming	image	[รูปภาพ]	\N	{"id": "600842871943463117", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600842871943463117.jpg", "quoteToken": "IpaRS8U6NQlTWrSam_4y0J7-UU3gTfa9c-l2R86UHZkttwGxCazIrlNerq8UMvzthfiyPuLGvq16_1U3NbOZWwOz8na9YrITrVZMokpGPSrNqgilqSY1v6NsLnh7HGT1zWeTiDWZVVMSH2SE-yN6Eg", "contentProvider": {"type": "line"}, "markAsReadToken": "-ujoqHw8J1If3hSmN2kiJqf-DZzI8cVcgTeJkle4oJxvV-SiJxwdJU3R1Jl52qtQ9bHr8TLYHrpv0BWN06WZlUreSzRZ-OuxOBstoTBq9uiRKoSXZHkq3V6jOjuUY2CQAa3vj7c9HtLdCGqlDoPkhD0tIh55calFAvhUaSYajOnv4B6uVMOnwmVCM-evo1DmrDfMtbtaDxjmLU7H_jVI8Q"}	2026-02-13 05:46:03.959+00	\N	2026-02-13 05:46:06.091+00	Uae2ee67dc7c2f2676d0524ea95070512	Johnny	https://sprofile.line-scdn.net/0hYwnCjB8ZBlhDOhgCaKN4ZjNqBTJgS19KP1VKPXQ7Wm0uDkMJalhAbH9pXmF8CkYIb1kaPXc9DDthXwVZOl07eShkMRshTQNwPFlNfzQ6DxUAaB9HaiAOZCgzAjw_YhQIKVwSPS9cLxwCCiN-PVU0ODMzLTMhQxV3FG1qDkYIaNssOHENbl1BP3E8UWz7
f68b4d18-f3aa-4309-8fe6-171c06112bea	b54775bf-8849-4fe2-a5bb-a532ffbfc7c3	600846089713090647	incoming	text	@dream🍭 	\N	{"id": "600846089713090647", "text": "@dream🍭 ", "type": "text", "mention": {"mentionees": [{"type": "user", "index": 0, "isSelf": false, "length": 8, "userId": "U8d1b22a569329d7e411e25bf799af7a8"}]}, "quoteToken": "svzyZ-nfifZ08ITkoR7Gqt2D8cxI_IaA7z_i8va-l_ka_b-MEK1l8o41gIZUgUHMbHcqU1ASoPROw4lGv9BGStuc3oo5oYcjkvE5WGLfI-8ByNBw5luwm-GNMCul8IRSYV-3fecpjbfjmvFMs6mvPA", "markAsReadToken": "eiEvCSVkyFxoS04qqeAf5emUxR1aSvL-1hrge00R9SD8s5RzDpe4HQ48IRmZSbDG-oaCQk2SYK59yXMof8JmJEiuWcXy6EoyKMm_YP7iAGvJKd0liimQca25jAGTgQNU0NVf1tKS_ralzYZnObE2xjoqjaMc1V9AepRgrMYtuhf15wHPvPK7ILGLwgfoCeSRlml37xdcgQQe8rIRP6DN4A"}	2026-02-13 06:18:01.46+00	\N	2026-02-13 06:18:02.566+00	Ufe175fa5a9a26ab61711e1ed356f6b52	Captain official	https://sprofile.line-scdn.net/0htjejhELhK0VIEzmF0UtVOjhDKC9rYnJXNnwxI3wRcn18Kz5DMyBsKy0RJ3MiJGUWZ3IxdihEdidEAFwjVkXXcU8jdnR0K20UYnxgpg
cff5be3c-4aef-474d-b138-760559bc0618	b54775bf-8849-4fe2-a5bb-a532ffbfc7c3	600846260957610295	incoming	text	ทำจ่ายให้เรียบร้อยแล้วนะคะ .. ยอดน่าจะเข้าภายในวันนี้ค่ะ .. ยังไงเดี๋ยวส่งpayinไปให้นร้าาา @Joolz น้ำส้มคั้นสด💯 	\N	{"id": "600846260957610295", "text": "ทำจ่ายให้เรียบร้อยแล้วนะคะ .. ยอดน่าจะเข้าภายในวันนี้ค่ะ .. ยังไงเดี๋ยวส่งpayinไปให้นร้าาา @Joolz น้ำส้มคั้นสด💯 ", "type": "text", "mention": {"mentionees": [{"type": "user", "index": 91, "isSelf": true, "length": 21, "userId": "U3a5774da47800b13765e0f348596bf2a"}]}, "quoteToken": "J16fjZ8R1-7ConjI9JlqnaXU2OS6X_2KZUI_ZxsgkmIYGN0pDqoW52mMWu6sBruROfe2_-iLaniEKDyYeODxbN-WH2nRQH0H4MlEeWLURUsK_WFwIZLRRBDA1Xp04e37HG2fjjTvCQ_voCwjUCfmKQ", "markAsReadToken": "oTCvkUASghitGxGdK0-cUU0AVUj9kULBDeuPd45j0lMz5O6wtT2uwaf6WMj0u_PWdzfK16S6bw7C27pKWPDCO0MF5C82Egj0zGv-MgHQdDmr3lGUanUUNk40WILESrJCqJvv5pZjhOtPJz2Sd4ljZ4gfbRCbyTwHXeA3xPFN-Ia0l9Q_ud73wvRy2xuJj9_FqvvtZ52NIjiWi4cGDMq_mg"}	2026-02-13 06:19:43.598+00	\N	2026-02-13 06:19:44.584+00	U8d1b22a569329d7e411e25bf799af7a8	dream🍭	https://sprofile.line-scdn.net/0hD8T_zyGaGxd5JgV4WRJlKQl2GH1aV0IFUUcDdEoiQXBNEAsWBkYHd00kQiFCEQ9CVkcBdB8kFiFbcVgZAQcoCBUvBWYTbV8lNkkIcAVENS89FTpALyQiDA94H3cebDU9HTAwdBRuNWEidDkdDjssNkxDBnMcdQMmB3F3QXwUdZQWJGxCVEFccEsgTCPB
83f1b04a-1c7d-4126-b2fd-8a42b85d2702	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600848187703689321	incoming	text	สวนผักน้ำส้มมาส่ง 20 ขวดค่ะ	\N	{"id": "600848187703689321", "text": "สวนผักน้ำส้มมาส่ง 20 ขวดค่ะ", "type": "text", "quoteToken": "1g-q9iMVcFUO3PItvZOd0Ysq16qw-G36VZlAZwhGOdK0NPMCvsBR8EnOZqzvsdubf5st8uAix2ehTvq-y61iAyukXyAF2K7megN60xXJkNtvsdoRtgWRFnVieUYsg4xFdYXYHesYHZuOv42wdWS53w", "markAsReadToken": "zPFN728uW3fWl42iYUQxfYxk9J8cZofbB4G71UVGU09Zram8EEDHdeRHWfbrWAZthcucaOdMsU60XxltC30RwlZ15NW1tRE7I484Sq2eIuXIZlMB3UiJe6dhb2da2SbbyheKVarQE-67yVcrWu6rvBjwYoltp68gk6ZoB6BDqDnRxrux3mjEFgFqdxhW-kW4aBYM5SiTBDEvA1eqiO_pcg"}	2026-02-13 06:38:52.003+00	\N	2026-02-13 06:38:53.304+00	Ue7be0355c54433d563bba215996ec61b	โจ๊กสามย่าน สวนผัก	https://sprofile.line-scdn.net/0hw6K3eECuKBlmSgG4htVWZhYaK3NFO3ELSSk3d1tCJCgMf2kaHSlkfFtNcHtcKGYYHSo1fFMecCFqWV9_eBzULWF6dShacm5ITCVj-g
a89fede2-c25f-4f27-869a-7b88e97ccfc8	48e01de5-9ebb-4482-a48a-44b39bf0f4e6	600848197400920776	incoming	image	[รูปภาพ]	\N	{"id": "600848197400920776", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600848197400920776.jpg", "quoteToken": "0U2CMKDawYTHhMbEp1vhY06P8pkRUNydw5q0MwJJT0SF_WLUqV8SOXSUZCZD3KqmmwebX9gXTGDp2Xw8LYnTJ5DnOc_9TsriCC-yE_uYuGtfQ0G2wx1MsVOmZPdP6dqWEvFUA_2YOwl2vwR2Hvk9dg", "contentProvider": {"type": "line"}, "markAsReadToken": "CfQbmTeoTBV5hMa7LqkK7h7mfRY_MC7JavyWxLWQ5f4lt8HmJhTGrCm4OWXYtkZF3EEUPULf-vDcS4bCsicUz1C8bZ3xe64cZh7nxUI8eWyczEL3YUBExOmJvB93nSNqp8qs0E0Wy2869TIzLLtp6BKef0drQhaUVkqofaiAcVh7P380cWt59HhTMFMGHObYvGIjQ2Yv32gKCg4hOvgHzw"}	2026-02-13 06:38:58.164+00	\N	2026-02-13 06:38:59.87+00	Ue7be0355c54433d563bba215996ec61b	โจ๊กสามย่าน สวนผัก	https://sprofile.line-scdn.net/0hw6K3eECuKBlmSgG4htVWZhYaK3NFO3ELSSk3d1tCJCgMf2kaHSlkfFtNcHtcKGYYHSo1fFMecCFqWV9_eBzULWF6dShacm5ITCVj-g
7d56a885-1913-40c8-81a6-8c8ce14058f2	8bbe47d3-2782-4386-9337-2422bcc11795	600863281124737684	incoming	text	ออเดอร์อย่างละ 10 คะ	\N	{"id": "600863281124737684", "text": "ออเดอร์อย่างละ 10 คะ", "type": "text", "quoteToken": "UKLJQzKv6pwXgC4eEdnsScFqL3E3YQ9L9tRtmpHRpeBNrtCG_Nd-QQF6zJZbHBUtQnRlfLsPPYIopX1XdzUP4s_4KO4g6lhjoP4ZAPLKLTJjQd_z0kmtkhLZu_ynhh8RtYx5wQyWje_UMbRCDLkEzA", "markAsReadToken": "J5G7thxRbpm-gs5ZpyU2FTxeqr6RMdRztK7pi8JMFl1g15wP6kBAxGOsHyoc9ZdLXKDSPcNNJPJFHXSgUbD2PxXfFLzynjcEZiZRrHR-ed6AvgHNN7xtdDan38A1aRXnlwkPBOHMTfFs4YFeB0pBUKS2KcIE-Xi254bgPppML4ITDha9XHgwX3ckYTF2PDdjrWQasSqhySV-8bNuWarrDQ"}	2026-02-13 09:08:48.359+00	\N	2026-02-13 09:08:51.819+00	U03cbe1d174179788aee8ab3b8c6939c8	ด า ก า น ด า	https://sprofile.line-scdn.net/0hp7aqqGH_LxhMCDAqWHxRJjxYLHJveXYKaTtmfngNcSBxMTgdaWk0dyxYdXxxMG9HZW03fiwLcituORUzBgU8JBdBGV81QhcQHHIDLTp6JFIiTwAvAAloBDJDFlBzJC4cOQYfCCBtC00NexU3MwoXOiVtB1ciYQ9KM19DTkk6QZsjClhNYW9of34OeCz0
ace1b86c-a5c5-4248-a31b-29a6c796750b	8bbe47d3-2782-4386-9337-2422bcc11795	600863491359769142	incoming	text	ได้คะ	\N	{"id": "600863491359769142", "text": "ได้คะ", "type": "text", "quoteToken": "J-CA3e7HjLfLEdZDEKoMxb1jzwMBoQ_oscwlbkjtxhs2VzAij6JtQfjvu91fOIYugC_yP7EsD2cgh6lTARJ3nRM9RDf3j2dCh8VdpnUa6fIMSQkhIPN4Ym1xYw8ygiGAstNyU6l9ikqFse9WgnVT-A", "markAsReadToken": "qTq7DIbDPaeC8kf4M7uQvENwdl_tQvLxxP-SkLct0f55a_MG4gjNBpq9CZh9b1lM7NmLu4lXSmXVMB5AFHrbiumhD8ukKQ1bIHvtwq1k-hzWCgOgmL7QkbE0vrKZnoNQ1u-1_cMIfL_FGoiOI23ob_UCEWORq2xpOy76NjGZBu78Kedgp-iwJxjYbxScNan_mVDjwO2o2m75HfYUIkMJhQ"}	2026-02-13 09:10:53.729+00	\N	2026-02-13 09:10:55.974+00	U03cbe1d174179788aee8ab3b8c6939c8	ด า ก า น ด า	https://sprofile.line-scdn.net/0hp7aqqGH_LxhMCDAqWHxRJjxYLHJveXYKaTtmfngNcSBxMTgdaWk0dyxYdXxxMG9HZW03fiwLcituORUzBgU8JBdBGV81QhcQHHIDLTp6JFIiTwAvAAloBDJDFlBzJC4cOQYfCCBtC00NexU3MwoXOiVtB1ciYQ9KM19DTkk6QZsjClhNYW9of34OeCz0
fd7178e1-60e9-44f8-a4d7-e795d1f0bf58	8bbe47d3-2782-4386-9337-2422bcc11795	600863700387627521	incoming	text	ได้ค่า	\N	{"id": "600863700387627521", "text": "ได้ค่า", "type": "text", "quoteToken": "L_O7RX_AFs6fGjC9gHgCQgR1C2A7n1QfLIYx86cKNqOzGWSQh30Fr9noC4M8Tpc5R7LKT-zANE4UyjWKVXTIA3VnFs-Xh3tN-jZSAcjVp5P8FGgUrmYWFT7sjNpzpB1JAhGTjiP6qlJfrqgQz2nPAA", "markAsReadToken": "7CnIdjaqWAwprdpjSa1ExBe9xlmwW_bFD46xAWj7XOOdhWyTPXzPpo9AEzb1Sr90Bl0GuLRf9N2dKfDpebebwyaQa4KRDm6_73UgL_5PvOYFv3ChBRewZG1oV1RZJOv3ZxlB8xL2duWWl0o0u6igTWzN8fq41wYjmNWesoefIuy---Q-6JTUIsVsy6RIj3tsyAPwSbTHyrFwbK44F3cVtA"}	2026-02-13 09:12:58.254+00	\N	2026-02-13 09:12:59.997+00	U03cbe1d174179788aee8ab3b8c6939c8	ด า ก า น ด า	https://sprofile.line-scdn.net/0hp7aqqGH_LxhMCDAqWHxRJjxYLHJveXYKaTtmfngNcSBxMTgdaWk0dyxYdXxxMG9HZW03fiwLcituORUzBgU8JBdBGV81QhcQHHIDLTp6JFIiTwAvAAloBDJDFlBzJC4cOQYfCCBtC00NexU3MwoXOiVtB1ciYQ9KM19DTkk6QZsjClhNYW9of34OeCz0
92e922ff-4969-44f7-98e9-2245bb457c4d	8bbe47d3-2782-4386-9337-2422bcc11795	600863953421861122	incoming	image	[รูปภาพ]	\N	{"id": "600863953421861122", "type": "image", "imageUrl": "https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/chat-media/line-image/600863953421861122.jpg", "quoteToken": "s0GFiZ65mJ0spt43nIRU76OafU4qrqXfUv6bUN5CpGwxzvDHSBPDVo4AjHZjiIGAohWLxckgpjegAto448A1NIj_vLUIYH5oF9kg9grcTtRY3NCQnc_YMQBtpd_2fXotf3rf_0L4pLeyVeIqxeMVxg", "contentProvider": {"type": "line"}, "markAsReadToken": "aXjyI82RGC_OXoUCoCT8mx3FT-KpHoMx76ezjl2kNJoCPS3LaL4mZjJUbpvDnJxCwGWhzBCXW64R1qewCmZPD92mHQ_Z3gQXmRA4-_xFIum0EdoDiJzfa0aXYe-0LjiKYPSvSK6CiOwuQYffBBrTPXS9gWfg81EZRuwTi-e56LDbE3smH-47azaNnppoSM6X5uBYyzoW4tSoQsfHYjqTtw"}	2026-02-13 09:15:29.431+00	\N	2026-02-13 09:15:31.975+00	U03cbe1d174179788aee8ab3b8c6939c8	ด า ก า น ด า	https://sprofile.line-scdn.net/0hp7aqqGH_LxhMCDAqWHxRJjxYLHJveXYKaTtmfngNcSBxMTgdaWk0dyxYdXxxMG9HZW03fiwLcituORUzBgU8JBdBGV81QhcQHHIDLTp6JFIiTwAvAAloBDJDFlBzJC4cOQYfCCBtC00NexU3MwoXOiVtB1ciYQ9KM19DTkk6QZsjClhNYW9of34OeCz0
8e6332fe-b534-498d-aaac-459a2ee360fd	9f3368af-a40a-4aa2-8591-b6081e95a6b9	600867061383823787	incoming	text	สวัสดีค่ะ พรุ่งนี้รับน้ำส้ม 16 ขวดนะคะ	\N	{"id": "600867061383823787", "text": "สวัสดีค่ะ พรุ่งนี้รับน้ำส้ม 16 ขวดนะคะ", "type": "text", "quoteToken": "96q_AAfR-E66N7IXCdobf8ldGsNSe6N906FJDjge43ZU6XWpqMggGk6GwE_V2d-uCKTEJm_0HThxC1Mu5dfM3-iTW4KcZveIXXTSDXRBhrt1T2ScejyH1xA-5EU5bfj52D7ZUgCgqPZrApdwoYuk7w", "markAsReadToken": "H7koqnHqpBNxfOx5qLPZl3xtSxOZ3L2gJBXq-EW-N-PvJR1xYbhAHwD5I4qbvuN08qRmCrT1MheGd54MsSFdiyInTvmPSPKPmwNKq3c9kLQ6r2MQ_1Kz9iU9cA5KkOGLFJkjY9zUFh97Y9YkunRhHRDvUONoUbrcDUYgdRZpV2uIwWsPFYtDS-0DrHYnmv-Gs-AWP_B8YhPKhlkunJ7buw"}	2026-02-13 09:46:21.525+00	\N	2026-02-13 09:46:23.888+00	Ub34fb98088d21f56571b13a3d46eb254	Pichaya	https://sprofile.line-scdn.net/0hYd5KefYOBksYMhLWWd54NGhiBSE7Q19ZMlNMJStnW3l1A0dKYAdLKSo1DS8iUkgUN1YbLygxCHgUIXEtBmT6fx8CW3okCkAaMl1NqA
\.


--
-- Data for Name: line_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.line_users (id, line_user_id, display_name, picture_url, customer_id, total_messages, last_message_at, created_at, updated_at, status_message, mapped_at, mapped_by, is_blocked, is_active) FROM stdin;
\.


--
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_items (id, order_id, quantity, unit_price, discount_percent, discount_amount, subtotal, total, notes, created_at, updated_at, variation_id, product_id, product_code, product_name, bottle_size, discount_type) FROM stdin;
a00705c3-4f5b-41d1-9cca-b375c9adaa64	9b6481eb-5df9-41d2-a563-0f36070f258a	1	25.00	0.00	0.00	25.00	25.00	\N	2025-12-01 03:54:50.826+00	2025-12-01 03:54:50.826+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
aab600ec-f11c-4797-a04c-3f690737a4fe	9b6481eb-5df9-41d2-a563-0f36070f258a	1	99.00	0.00	0.00	99.00	99.00	\N	2025-12-01 03:54:51.054+00	2025-12-01 03:54:51.054+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
8a899538-fa26-48ae-8451-06e243a694f3	b2790dfe-f4ff-408d-981e-44c54f27ecfb	1	25.00	30.00	7.50	25.00	17.50	\N	2025-12-09 06:35:33.193+00	2025-12-09 06:35:33.193+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
d02b22fc-7dc8-488d-bbd8-1255ea94afd0	b2790dfe-f4ff-408d-981e-44c54f27ecfb	1	25.00	20.00	5.00	25.00	20.00	\N	2025-12-09 06:35:33.522+00	2025-12-09 06:35:33.522+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
f95486bb-ec8f-49fc-89e8-ebdb14a7abb3	42fd34f2-3770-4a06-957a-28012529f81a	30	25.00	0.00	0.00	750.00	750.00	\N	2025-12-09 06:38:22.361+00	2025-12-09 06:38:22.361+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
cd50c555-9eb5-4e79-ac28-c77f22544b43	42fd34f2-3770-4a06-957a-28012529f81a	20	25.00	0.00	0.00	500.00	500.00	\N	2025-12-09 06:38:22.478+00	2025-12-09 06:38:22.478+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
e925131b-2fd1-4b21-97b3-b2ad99b230a5	4dae3be0-8a5b-43b5-a740-8cc643d51ccd	10	25.00	0.00	0.00	250.00	250.00	\N	2025-12-15 16:49:05.425+00	2025-12-15 16:49:05.425+00	284cdc9e-a648-4550-8ca6-87f9fcfcc88f	b653af70-8d46-4085-a8bd-90ff890015af	PRD-MIY1ONK9E0O-Honey Lemon ขนาด  250 ML.	น้ำเลมอนเนด	Honey Lemon ขนาด  250 ML.	percent
397ce9f8-18d7-4fef-8a0c-99b88f13f00e	4dae3be0-8a5b-43b5-a740-8cc643d51ccd	40	25.00	0.00	0.00	1000.00	1000.00	\N	2025-12-15 16:49:05.567+00	2025-12-15 16:49:05.567+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
4ed1d7f8-7340-4c1f-9020-496de2c27288	d3dd9f8e-dd3f-4cde-b781-60878cf39968	50	25.00	0.00	0.00	1250.00	1250.00	\N	2025-12-15 17:03:25.419+00	2025-12-15 17:03:25.419+00	3eca1a07-55c2-41d5-b9ee-c0635d851713	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดแบน รามา ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	ขวดแบน รามา ขนาด 250 ML.	percent
1a0b9df2-fe7b-478b-ae81-e781bd862f38	0bc0df38-f904-4e91-b68d-385cb5dab7e6	30	25.00	0.00	0.00	750.00	750.00	\N	2025-12-15 17:04:01.009+00	2025-12-15 17:04:01.009+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
a06ab58f-2644-4cbd-979b-c8dada1abf02	96d1e0ba-1e4b-4aa2-a57d-e400363109da	16	90.00	0.00	0.00	1440.00	1440.00	\N	2025-12-15 17:05:34.632+00	2025-12-15 17:05:34.632+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง	Joolz Juice  ขนาด 1000 ML.	percent
fa7f91b3-e7b2-48b7-8847-193eb38128f0	baf4b872-07b7-4616-9056-f059ddce9bd7	20	25.00	0.00	0.00	500.00	500.00	\N	2025-12-15 17:06:27.396+00	2025-12-15 17:06:27.396+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
88822a02-9b9e-48c6-a6aa-30fb34431cc1	baf4b872-07b7-4616-9056-f059ddce9bd7	10	25.00	0.00	0.00	250.00	250.00	\N	2025-12-15 17:06:27.535+00	2025-12-15 17:06:27.535+00	284cdc9e-a648-4550-8ca6-87f9fcfcc88f	b653af70-8d46-4085-a8bd-90ff890015af	PRD-MIY1ONK9E0O-Honey Lemon ขนาด  250 ML.	น้ำเลมอนเนด	Honey Lemon ขนาด  250 ML.	percent
f97d0a5d-e93e-4cf1-9f65-9840ed102a3c	13f28b05-fd23-4e0a-98c7-a3a2c24b62bd	50	25.00	0.00	0.00	1250.00	1250.00	\N	2025-12-15 17:07:02.93+00	2025-12-15 17:07:02.93+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
6a109e53-d44e-4f7f-b9e0-595e2dbd58a2	a20c1754-b4c6-4c5f-b714-b023c34b2688	2	90.00	0.00	0.00	180.00	180.00	\N	2025-12-15 17:16:46.436+00	2025-12-15 17:16:46.436+00	dc310598-a277-4ba0-beea-aaf05a6002ee	b062fb6a-8fd5-44a7-afbc-9e8c6c63d862	PRD-MIY1ONK9E01-Joolz Honey Lemon ขนาด  1000 ML.	น้ำเลมอนเนด	Joolz Honey Lemon ขนาด  1000 ML.	percent
e2d0313a-798a-4618-ad10-49ed6a5ca9a6	a20c1754-b4c6-4c5f-b714-b023c34b2688	14	90.00	0.00	0.00	1260.00	1260.00	\N	2025-12-15 17:16:46.551+00	2025-12-15 17:16:46.551+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง	Joolz Juice  ขนาด 1000 ML.	percent
95205a9b-0249-4ad3-965b-dc60ef57162b	79db758c-74bb-45e5-b20b-2b1e2e3cabab	25	25.00	0.00	0.00	625.00	625.00	\N	2025-12-15 17:18:26.67+00	2025-12-15 17:18:26.67+00	8238eabc-9506-495a-b2b4-c8e821e61faf	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-wonderwoods ขนาด  250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	wonderwoods ขนาด  250 ML.	percent
c97c5f51-13d3-40fa-a670-42873c9fda86	8f9f0076-987f-4e33-a247-d9b88b23faa5	50	26.75	0.00	0.00	1337.50	1337.50	\N	2025-12-16 09:56:33.398+00	2025-12-16 09:56:33.398+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
dac61a53-414c-4c42-b934-abf2e763cff7	3d26a3ea-b2f8-47b9-b0eb-3fc3b248b1b8	50	25.00	0.00	0.00	1250.00	1250.00	\N	2025-12-16 10:13:46.065+00	2025-12-16 10:13:46.065+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
0a77f852-a580-495d-875e-96e7313ec978	74f16129-83ac-46cb-b799-a38398fd0c3b	25	96.30	0.00	0.00	2407.50	2407.50	\N	2025-12-16 10:16:12.588+00	2025-12-16 10:16:12.588+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง	Joolz Juice  ขนาด 1000 ML.	percent
5bb0fb52-5f6a-4d49-94db-1dadc660a965	cdbb0b32-cdf5-470c-948d-2268f481514b	15	25.00	0.00	0.00	375.00	375.00	\N	2025-12-16 10:21:20.289+00	2025-12-16 10:21:20.289+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
8488f49d-04db-4411-99e8-29d3d6e975a6	8175ab60-7478-4e65-a9c6-1c2cb5e94913	50	25.00	0.00	0.00	1250.00	1250.00	\N	2025-12-16 10:23:19.806+00	2025-12-16 10:23:19.806+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
2a72f90b-36a8-4128-8141-9dcca1ed8d02	9337146d-5a85-4fe2-9c4e-a8d3b1045de3	10	90.00	0.00	0.00	900.00	900.00	\N	2025-12-16 10:24:53.646+00	2025-12-16 10:24:53.646+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง	Joolz Juice  ขนาด 1000 ML.	percent
08ee726a-0484-45bf-8f2c-dfac7ec89e28	a94b0696-2183-46e6-883d-c1ad33e952b3	125	17.00	0.00	0.00	2125.00	2125.00	\N	2025-12-16 10:27:40.07+00	2025-12-16 10:27:40.07+00	5724cfc5-7cdc-4a4b-adb4-2b16b87f6878	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดแบน ขนาด 150 ML.	น้ำส้มคั้นสายน้ำผึ้ง	ขวดแบน ขนาด 150 ML.	percent
e4dd7d67-8cfa-48d8-b45f-0fd3aeae6c07	3c564d01-8907-4c13-b620-b6f120d7bebe	125	17.00	0.00	0.00	2125.00	2125.00	\N	2025-12-16 10:31:20.112+00	2025-12-16 10:31:20.112+00	5724cfc5-7cdc-4a4b-adb4-2b16b87f6878	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดแบน ขนาด 150 ML.	น้ำส้มคั้นสายน้ำผึ้ง	ขวดแบน ขนาด 150 ML.	percent
c686e858-c1c0-425c-8691-e197f88ace2a	5141ee03-ae03-47c8-a6fc-6bb20bcea54c	300	25.00	0.00	0.00	7500.00	7500.00	\N	2025-12-17 10:15:36.401+00	2025-12-17 10:15:36.401+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
7181b4b0-f26c-4e05-bec1-dc4c12a3f19f	b61e21cd-52c9-47c7-85bd-d5a448b8b5f5	50	25.00	0.00	0.00	1250.00	1250.00	\N	2025-12-17 10:16:12.88+00	2025-12-17 10:16:12.88+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
d09e5175-a9e5-4c52-9cea-6925955ab109	1cd279d0-650e-4367-a1f1-bb431c5ea670	50	25.00	0.00	0.00	1250.00	1250.00	\N	2025-12-17 10:17:41.101+00	2025-12-17 10:17:41.101+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
c1c79e22-653b-42b7-845c-fc3195c4d91c	53b77808-9ef7-4b7d-b485-c0a7239c3ae5	50	25.00	0.00	0.00	1250.00	1250.00	\N	2025-12-17 10:19:29.297+00	2025-12-17 10:19:29.297+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
1c8f81b6-5447-414e-bd95-972410e4b066	d3d3d5b7-7399-4a44-b1dc-065649933870	50	25.00	0.00	0.00	1250.00	1250.00	\N	2025-12-17 10:20:07.503+00	2025-12-17 10:20:07.503+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
d8809861-89cc-4dc9-8e63-d1d278ad2574	b11d491d-acfa-4cc3-a0f6-8a64b1ff6c08	16	90.00	0.00	0.00	1440.00	1440.00	\N	2025-12-17 10:20:40.671+00	2025-12-17 10:20:40.671+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง	Joolz Juice  ขนาด 1000 ML.	percent
1db4bfc0-44e2-4d33-afac-ef816e748ab8	72cf9fac-60f8-4e0a-a930-456d51947a32	25	17.00	0.00	0.00	425.00	425.00	\N	2025-12-17 10:22:07.038+00	2025-12-17 10:22:07.038+00	5724cfc5-7cdc-4a4b-adb4-2b16b87f6878	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดแบน ขนาด 150 ML.	น้ำส้มคั้นสายน้ำผึ้ง	ขวดแบน ขนาด 150 ML.	percent
8ca44f31-384d-497d-8dcc-0eb0cf8be125	72cf9fac-60f8-4e0a-a930-456d51947a32	30	25.00	0.00	0.00	750.00	750.00	\N	2025-12-17 10:22:07.156+00	2025-12-17 10:22:07.156+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
9a72fb6b-8dea-43f1-9a08-1403203d51c1	a1253310-ed3e-4f91-a120-d9abec7c35e0	25	25.00	0.00	0.00	625.00	625.00	\N	2025-12-21 04:32:28.082+00	2025-12-21 04:32:28.082+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
6cb8bc10-e5a4-400d-a846-c630cc00ebf7	c7be4200-236b-4d7e-921b-ea36dc7e6e4b	45	25.00	0.00	0.00	1125.00	1125.00	\N	2025-12-21 04:33:32.068+00	2025-12-21 04:33:32.068+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
98710156-2a63-48c4-a3d8-049035c6b7dd	c3b889d3-3929-4647-8843-09ad367cc91b	50	26.75	0.00	0.00	1337.50	1337.50	\N	2025-12-21 09:12:09.542+00	2025-12-21 09:12:09.542+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
e8da691d-6ce7-458d-a925-023a66b8ef73	486dcac2-5a00-47ae-abde-861dd2d93893	100	25.00	0.00	0.00	2500.00	2500.00	\N	2026-01-03 04:29:16.355+00	2026-01-03 04:29:16.355+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
e2bb0a0b-3836-4288-bd93-ad86ed697332	5072f4c3-5d67-479b-9f5e-bbcb4a8bac5f	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-03 04:30:46.549+00	2026-01-03 04:30:46.549+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
48ce2898-378e-4d3e-ad54-3be98ccce884	5df188a4-fc04-43b0-be0d-09533c9bed3b	20	25.00	0.00	0.00	500.00	500.00	\N	2026-01-03 04:32:20.021+00	2026-01-03 04:32:20.021+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
3f2044f6-8f8b-42db-b5fc-ef013980dd5a	df5af889-b9bf-43ed-b0e3-f711c8347d58	25	25.00	0.00	0.00	625.00	625.00	\N	2026-01-03 04:33:01.978+00	2026-01-03 04:33:01.978+00	8238eabc-9506-495a-b2b4-c8e821e61faf	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-wonderwoods ขนาด  250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	wonderwoods ขนาด  250 ML.	percent
12ad7e16-37c2-48f4-a253-b7bea7f7457e	0159b46b-fef9-4fd0-85a7-0c19c449b141	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-03 04:36:28.977+00	2026-01-03 04:36:28.978+00	8238eabc-9506-495a-b2b4-c8e821e61faf	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-wonderwoods ขนาด  250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	wonderwoods ขนาด  250 ML.	percent
3a7909fc-aee8-4e39-88a5-f0db111b757c	008439b5-4b89-4b18-9635-2b8903236c45	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-01-03 04:37:03.664+00	2026-01-03 04:37:03.664+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง	Joolz Juice  ขนาด 1000 ML.	percent
0e7c78db-e9d9-4e6b-8e56-26e09c7116b9	8af212e6-be34-49a4-a362-17ff5839da83	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-01-03 04:44:06.773+00	2026-01-03 04:44:06.773+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง	Joolz Juice  ขนาด 1000 ML.	percent
65b91f8d-aeee-4b44-9df6-c952a80b11a2	7a85f21b-6c48-4890-97f7-96a416745b4b	25	25.00	0.00	0.00	625.00	625.00	\N	2026-01-03 04:45:51.997+00	2026-01-03 04:45:51.997+00	8238eabc-9506-495a-b2b4-c8e821e61faf	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-wonderwoods ขนาด  250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	wonderwoods ขนาด  250 ML.	percent
8cb9af12-897a-499f-9124-6865f5fe2f2f	7a85f21b-6c48-4890-97f7-96a416745b4b	30	25.00	0.00	0.00	750.00	750.00	\N	2026-01-03 04:45:52.28+00	2026-01-03 04:45:52.28+00	8238eabc-9506-495a-b2b4-c8e821e61faf	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-wonderwoods ขนาด  250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	wonderwoods ขนาด  250 ML.	percent
c880bac3-43c2-4640-8395-685e8b5a570d	2d4139cb-655f-4d69-aff8-ac0a9d42717f	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-03 04:46:52.643+00	2026-01-03 04:46:52.643+00	b6efc5a9-63ad-4946-932b-7961e5332fc9	b653af70-8d46-4085-a8bd-90ff890015af	PRD-MIY1ONK9E0O-ขวดกลม	น้ำเลมอนเนด	ขวดกลม	percent
d17b66a6-fd52-4458-b0e5-c867540b554e	851f4031-44fa-4ba7-a516-1cc417fb25b4	15	90.00	0.00	0.00	1350.00	1350.00	\N	2026-01-03 04:48:03.425+00	2026-01-03 04:48:03.425+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง	Joolz Juice  ขนาด 1000 ML.	percent
b574e358-8dc0-48c7-b098-4e7a992048d6	e4544108-f67e-4fb8-8884-42a678f2ef8d	25	25.00	0.00	0.00	625.00	625.00	\N	2026-01-03 05:11:15.185+00	2026-01-03 05:11:15.185+00	8238eabc-9506-495a-b2b4-c8e821e61faf	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-wonderwoods ขนาด  250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	wonderwoods ขนาด  250 ML.	percent
f1cd1d8e-c663-4922-811e-d7ab19afe02c	4c5dcee2-ed50-4feb-b89b-0cd34ab8811f	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-03 05:16:23.759+00	2026-01-03 05:16:23.759+00	8238eabc-9506-495a-b2b4-c8e821e61faf	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-wonderwoods ขนาด  250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	wonderwoods ขนาด  250 ML.	percent
edaa41f6-991a-4980-b54d-4e08c186d65e	d83c7d58-41e2-48b3-bbd8-05b3eac82fbb	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-03 05:19:07.256+00	2026-01-03 05:19:07.256+00	8238eabc-9506-495a-b2b4-c8e821e61faf	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-wonderwoods ขนาด  250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	wonderwoods ขนาด  250 ML.	percent
08bc396b-9b26-4a88-b052-a69987df8c22	36b830a8-26a1-4a80-bcfd-2b4493d191b5	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-01-03 05:20:01.365+00	2026-01-03 05:20:01.365+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง	Joolz Juice  ขนาด 1000 ML.	percent
c20360b5-8b4f-4e8d-8cd3-1f59f8625251	b98cb97b-4d12-42e1-a4dc-2844ae6244e4	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-03 05:21:59.953+00	2026-01-03 05:21:59.954+00	8238eabc-9506-495a-b2b4-c8e821e61faf	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-wonderwoods ขนาด  250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	wonderwoods ขนาด  250 ML.	percent
16d3401d-ceb9-47f6-b2ef-a27730e89712	2a08ece8-3813-465f-9a70-5713601735e5	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-03 05:23:51.491+00	2026-01-03 05:23:51.491+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
af2fb08b-3068-494e-88cc-07a19df0ed22	4db5570e-8f24-4529-a64f-80d2d0821d37	25	25.00	0.00	0.00	625.00	625.00	\N	2026-01-03 05:28:55.772+00	2026-01-03 05:28:55.772+00	8238eabc-9506-495a-b2b4-c8e821e61faf	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-wonderwoods ขนาด  250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	wonderwoods ขนาด  250 ML.	percent
c92d3546-dbdc-4d13-8b50-5403af7a1b1c	4db5570e-8f24-4529-a64f-80d2d0821d37	20	25.00	0.00	0.00	500.00	500.00	\N	2026-01-03 05:28:55.908+00	2026-01-03 05:28:55.908+00	8238eabc-9506-495a-b2b4-c8e821e61faf	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-wonderwoods ขนาด  250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	wonderwoods ขนาด  250 ML.	percent
f33d6e55-f480-46cc-877a-53c880c0698e	669a8c49-3612-4a98-a153-48102cf7954e	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-05 06:25:08.349+00	2026-01-05 06:25:08.349+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
9f6c4098-440d-4418-af5e-61ffded0da51	20b45b1f-9890-495d-b94c-3fe2b240b933	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-01-05 06:58:54.375+00	2026-01-05 06:58:54.375+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง	Joolz Juice  ขนาด 1000 ML.	percent
35e3a07e-fb4f-4a33-af89-613dcbc8c02e	86776a0a-be68-4553-9157-17fb5928f560	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-01-05 07:00:34.014+00	2026-01-05 07:00:34.014+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง	Joolz Juice  ขนาด 1000 ML.	percent
67d3f849-f79c-4764-8b71-fb1870baafa5	5917139e-557f-4e9b-a2f9-7520b528656f	100	25.00	0.00	0.00	2500.00	2500.00	\N	2026-01-05 07:03:03.724+00	2026-01-05 07:03:03.724+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
dd73af22-7a7b-47d8-a0be-02392a89d280	79463f73-bbc4-449f-a692-4d29ba956283	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-05 07:03:48.29+00	2026-01-05 07:03:48.29+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
f8c2ff03-302e-49ba-9f2b-4452e6ccfc22	f544546c-3d78-4b4d-9284-cee034e925fb	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-05 07:13:54.625+00	2026-01-05 07:13:54.625+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
1470223e-99e7-45f5-86c4-09796e0a218f	d79892c2-a2e4-4dbb-bb53-6e6491afa43b	100	25.00	0.00	0.00	2500.00	2500.00	\N	2026-01-05 07:14:28.062+00	2026-01-05 07:14:28.062+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
e741c207-c953-4955-9a38-16a2e34c692f	33bdebc1-db55-4a60-b3d4-901713d41085	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-01-05 07:17:18.661+00	2026-01-05 07:17:18.661+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง	Joolz Juice  ขนาด 1000 ML.	percent
436371b5-f404-454a-af28-3a709f90ca73	bb79ce11-7b5d-432f-99ed-fc23bea0b34a	5	90.00	0.00	0.00	450.00	450.00	\N	2026-01-05 07:19:40.713+00	2026-01-05 07:19:40.713+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง	Joolz Juice  ขนาด 1000 ML.	percent
25ef8f24-7d30-4640-87a5-26aaca33a74a	e591d026-be51-47a8-896b-11ad6e8d7e6f	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-05 07:21:54.721+00	2026-01-05 07:21:54.721+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
aea06599-94c9-43b7-8ba7-9681bc417c8b	88f59107-960a-4ff2-8ca5-eef6b534844c	40	25.00	0.00	0.00	1000.00	1000.00	\N	2026-01-05 07:23:07.806+00	2026-01-05 07:23:07.806+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
4c2363c2-e6fa-4d28-a7a3-bc7ee572e268	c4337477-3b55-4460-bc1b-166d5453845a	14	25.00	0.00	0.00	350.00	350.00	\N	2026-01-05 07:27:25.985+00	2026-01-05 07:27:25.985+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
57f158d8-3919-4068-9957-29cddd566a51	39261209-5c4e-4bcf-bb97-d49a45f21779	50	25.00	100.00	1250.00	1250.00	0.00	\N	2026-01-05 07:29:45.895+00	2026-01-05 07:29:45.895+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
bb25971e-da0a-4f43-9255-aa77491abad3	39261209-5c4e-4bcf-bb97-d49a45f21779	50	25.00	100.00	1250.00	1250.00	0.00	\N	2026-01-05 07:29:46.034+00	2026-01-05 07:29:46.034+00	284cdc9e-a648-4550-8ca6-87f9fcfcc88f	b653af70-8d46-4085-a8bd-90ff890015af	PRD-MIY1ONK9E0O-Joolz Honey Lemon ขนาด  250 ML.	น้ำเลมอนเนด	Joolz Honey Lemon ขนาด  250 ML.	percent
5cca333f-c721-4009-97cd-74e3b5bedf2e	91bfd36b-fff0-46c3-94c9-e130d6687aec	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-05 07:30:32.076+00	2026-01-05 07:30:32.076+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
182d84eb-6014-4f6a-91d4-6f52c997c739	004f5edd-fb08-471c-962c-c1faaf86f8ce	20	25.00	0.00	0.00	500.00	500.00	\N	2026-01-05 07:31:53.716+00	2026-01-05 07:31:53.716+00	8238eabc-9506-495a-b2b4-c8e821e61faf	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-wonderwoods ขนาด  250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	wonderwoods ขนาด  250 ML.	percent
f6e0ed25-333b-410e-b7b8-4584308c2bd9	024f081e-17ba-4b52-8135-4f90c80a6485	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-05 07:36:05.178+00	2026-01-05 07:36:05.178+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
a95d2217-44ce-4b85-87aa-3aa10098e882	9b890295-9f2a-4895-b2af-e360b4c618ab	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-01-05 07:36:59.842+00	2026-01-05 07:36:59.842+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง	Joolz Juice  ขนาด 1000 ML.	percent
af17ac35-23d3-43e7-9736-92cef465b5b8	06a418d9-5d1c-4573-8969-fd5336dc758c	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-05 07:37:44.439+00	2026-01-05 07:37:44.439+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
486055e4-8c90-4af5-9227-d45939460533	e1dcf45a-66e9-4fef-b6ef-77c9ca7378cb	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-01-05 07:41:22.148+00	2026-01-05 07:41:22.148+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
692bf9f2-d740-4a0c-a70c-5f9ab554d169	3572c17d-355e-46a1-b6bc-2a2a933e0052	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-05 07:48:32.579+00	2026-01-05 07:48:32.579+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
d5407f9b-ce45-4959-8d11-b64607015ed8	84d9f7d7-0349-4737-b7c6-5896b6e361dc	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-01-05 07:55:07.78+00	2026-01-05 07:55:07.78+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง	Joolz Juice  ขนาด 1000 ML.	percent
eef24e2b-6e92-4b22-be84-541769229a84	c727f999-3600-44b8-a17e-63b58a65094b	25	25.00	0.00	0.00	625.00	625.00	\N	2026-01-05 08:02:24.981+00	2026-01-05 08:02:24.981+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
c9278412-3e89-4a24-8ddd-4a629e2dec94	c727f999-3600-44b8-a17e-63b58a65094b	10	25.00	0.00	0.00	250.00	250.00	\N	2026-01-05 08:02:25.185+00	2026-01-05 08:02:25.185+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
a4182ec4-da84-47c2-85ae-4ade8a937b6a	c727f999-3600-44b8-a17e-63b58a65094b	20	25.00	0.00	0.00	500.00	500.00	\N	2026-01-05 08:02:25.346+00	2026-01-05 08:02:25.346+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
8c5c40f3-5f30-41e4-976b-6681ae4ac7e2	c727f999-3600-44b8-a17e-63b58a65094b	25	25.00	0.00	0.00	625.00	625.00	\N	2026-01-05 08:02:25.495+00	2026-01-05 08:02:25.495+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
4e2fc7b9-2a3a-4889-a654-792c95f91061	acc80cf6-8ac8-40ee-ad95-7a8f0d2c91a9	30	25.00	0.00	0.00	750.00	750.00	\N	2026-01-05 08:03:58.521+00	2026-01-05 08:03:58.521+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
2a6408cd-8d23-4fdc-bd82-9e8c134f79af	3a29cf3e-46af-4798-9f33-e65897957e3a	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-05 08:06:29.923+00	2026-01-05 08:06:29.923+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
df47d30d-605e-4c14-8cce-5c8af3462845	3a29cf3e-46af-4798-9f33-e65897957e3a	1	90.00	0.00	0.00	90.00	90.00	\N	2026-01-05 08:06:30.05+00	2026-01-05 08:06:30.05+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง	Joolz Juice  ขนาด 1000 ML.	percent
ca6b347f-96b1-4451-8420-a12c58837008	3a29cf3e-46af-4798-9f33-e65897957e3a	1	90.00	0.00	0.00	90.00	90.00	\N	2026-01-05 08:06:30.177+00	2026-01-05 08:06:30.177+00	dc310598-a277-4ba0-beea-aaf05a6002ee	b062fb6a-8fd5-44a7-afbc-9e8c6c63d862	PRD-MIY1ONK9E01-Joolz Honey Lemon ขนาด  1000 ML.	น้ำเลมอนเนด	Joolz Honey Lemon ขนาด  1000 ML.	percent
7caec4ee-689d-4c2f-a75f-640f40bf9d05	df752c18-efa5-4710-862e-33db128aefe4	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-05 08:07:32.854+00	2026-01-05 08:07:32.854+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
22b045c4-2cc3-4952-949a-efb7a471c70a	7d2191f3-e5c9-48ed-8958-a69271dbca36	30	25.00	0.00	0.00	750.00	750.00	\N	2026-01-05 08:09:00.519+00	2026-01-05 08:09:00.519+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
3eb58599-e19f-473c-9339-384897376a9f	b5e1437f-c43c-4db1-8828-d0c91b8973f5	20	25.00	0.00	0.00	500.00	500.00	\N	2026-01-05 08:11:50.975+00	2026-01-05 08:11:50.976+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
4bc1128d-a208-444c-8699-4806ea39b159	2b330420-357d-4e88-9406-b19f9f6c2e26	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-01-05 08:12:22.664+00	2026-01-05 08:12:22.664+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง	Joolz Juice  ขนาด 1000 ML.	percent
db940651-f17b-4239-90bd-a2a6373b626b	8e2e0656-7929-47c8-bf54-d6e4039a4d0e	30	25.00	0.00	0.00	750.00	750.00	\N	2026-01-05 08:12:55.366+00	2026-01-05 08:12:55.366+00	8238eabc-9506-495a-b2b4-c8e821e61faf	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-wonderwoods ขนาด  250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	wonderwoods ขนาด  250 ML.	percent
6240815b-72bb-4741-a705-fe364b867591	d5d6ddbe-1c93-4619-a115-c5342411af35	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-05 08:14:22.082+00	2026-01-05 08:14:22.082+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
fdf164e3-d3b7-4160-8a3b-bf7eac6b8fd4	5093199b-f72d-48c6-a199-0bd965293c3c	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-05 08:15:10.392+00	2026-01-05 08:15:10.392+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
994e8617-c7b7-4c45-8ab8-4ec29ce86d42	2a123b2b-595c-4c50-a3ab-e7d3f450c02f	60	25.00	0.00	0.00	1500.00	1500.00	\N	2026-01-05 08:16:06.292+00	2026-01-05 08:16:06.292+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
821cf154-5302-4dc5-b273-eb64d53f3462	2a123b2b-595c-4c50-a3ab-e7d3f450c02f	20	25.00	0.00	0.00	500.00	500.00	\N	2026-01-05 08:16:06.456+00	2026-01-05 08:16:06.456+00	b6efc5a9-63ad-4946-932b-7961e5332fc9	b653af70-8d46-4085-a8bd-90ff890015af	PRD-MIY1ONK9E0O-ขวดกลม	น้ำเลมอนเนด	ขวดกลม	percent
82fc9c15-bde0-4d54-8f7a-d8ff739d295b	1bc6e040-820e-4d9f-a171-eb5ba544878e	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-05 08:16:32.413+00	2026-01-05 08:16:32.413+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
44327825-4e48-4ddc-9b4e-ebd7a3fb76ea	154b6379-3451-471e-893a-b72e0eabaa53	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-05 08:18:14.018+00	2026-01-05 08:18:14.018+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
c6f75540-48e6-49df-891e-1f14f3a56a2c	fd7ec458-607e-45b7-96a4-e4a0a0e04407	20	25.00	0.00	0.00	500.00	500.00	\N	2026-01-05 08:24:42.33+00	2026-01-05 08:24:42.33+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
a454cdd7-fee6-45e0-ac3b-27f24bf1af53	fd7ec458-607e-45b7-96a4-e4a0a0e04407	35	25.00	0.00	0.00	875.00	875.00	\N	2026-01-05 08:24:42.482+00	2026-01-05 08:24:42.482+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
c93ac7ea-5692-41de-a2d0-1dcb5a8793f1	fd7ec458-607e-45b7-96a4-e4a0a0e04407	35	25.00	0.00	0.00	875.00	875.00	\N	2026-01-05 08:24:42.643+00	2026-01-05 08:24:42.643+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
6b35c1d3-8c1a-49fa-ac61-9b103bc5a24b	047c01ce-301b-45d1-8c5f-e026c4f9ff2d	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-01-05 08:25:13.988+00	2026-01-05 08:25:13.988+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง	Joolz Juice  ขนาด 1000 ML.	percent
1bfe5f13-b99c-420d-aa2e-b45584539cab	908b314b-b973-4bd7-a9a5-e34bb61b94da	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-05 08:25:42.645+00	2026-01-05 08:25:42.645+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
e335073f-72c2-4fa0-9ff9-cbb49f2076f1	d8ca5cd2-8a4a-4556-a5d0-f6609eac2fe5	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-01-14 10:24:19.876+00	2026-01-14 10:24:19.876+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
d00d4f0a-8cce-422c-abcc-1eb431f055ba	fcbb8a16-5be3-43dd-8d1d-4679f9a776d3	50	26.75	0.00	0.00	1337.50	1337.50	\N	2026-01-14 10:26:13.347+00	2026-01-14 10:26:13.347+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	JoolzJuice ขนาด 250 ML.	percent
571922bb-4dd6-4f38-8be8-6508ce7dbbfa	27f76fa3-131b-4dbd-a2fb-dbddb4fc6f69	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-01-14 10:27:58.759+00	2026-01-14 10:27:58.759+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
7a05aa1a-6f46-4ea9-ac9d-fb39e9e8dd8b	d35aab06-0cf2-4e64-b9d6-028c64bb30e0	40	25.00	0.00	0.00	1000.00	1000.00	\N	2026-01-14 10:29:34.823+00	2026-01-14 10:29:34.823+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
6420b5f7-1b3e-4094-acd8-a5fafd7dc4eb	479896aa-2fd1-4051-8196-8a7bc917c1d6	35	25.00	0.00	0.00	875.00	875.00	\N	2026-01-14 10:30:35.642+00	2026-01-14 10:30:35.642+00	f7491eb6-deb8-4e57-ba61-87f4b9fb53dd	a68cff25-a3ab-4a77-88d5-2cce248f2d08	PRD-MIKYZ2LUR1-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง mix	JoolzJuice ขนาด 250 ML.	percent
8d1efaee-11aa-497b-8f17-df73ac9dfb32	479896aa-2fd1-4051-8196-8a7bc917c1d6	5	90.00	0.00	0.00	450.00	450.00	\N	2026-01-14 10:30:35.745+00	2026-01-14 10:30:35.745+00	18be21b3-05bf-4504-b122-a57a4f7e1563	a68cff25-a3ab-4a77-88d5-2cce248f2d08	PRD-MIKYZ2LUR1-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง mix	Joolz Juice  ขนาด 1000 ML.	percent
2e2c2ad8-f052-4766-872d-f54043657aa1	52108126-eae1-4ee3-b026-e76ddd1bc0fb	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-14 10:40:17.239+00	2026-01-14 10:40:17.24+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
6437281a-fa53-453b-b6ce-af01c200a27b	52108126-eae1-4ee3-b026-e76ddd1bc0fb	1	150.00	0.00	0.00	150.00	150.00	\N	2026-01-14 10:40:17.383+00	2026-01-14 10:40:17.383+00	23b3e944-9a51-4bde-92cd-a1b19e1d255a	1a9101ec-4bb0-4900-86b5-5e80dc4ea45e	PRD-MKDVUCKM77G-ขนส่ง	ค่าขนส่ง	ขนส่ง	percent
c2222bff-47de-49d1-a06a-1f6dfd4babbc	055d5da9-7f91-4a7c-b6d7-593fc4e230fc	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-14 11:10:38.859+00	2026-01-14 11:10:38.859+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
376110e8-8228-4afe-b52f-65c89f48b2b7	2bef7d3d-cb5f-442f-99c1-a9be0c3cb8b1	25	25.00	0.00	0.00	625.00	625.00	\N	2026-01-16 09:28:40.257+00	2026-01-16 09:28:40.257+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
6a07dd50-0e13-4b31-9ab0-3af1246d217e	296bc39b-243b-4112-a104-e68b441ab716	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-01-16 09:29:07.935+00	2026-01-16 09:29:07.935+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
2a396485-2620-4734-9e9f-1b7026fd5cf4	9b947346-4a88-48d5-94aa-76ec8e94970b	30	25.00	0.00	0.00	750.00	750.00	\N	2026-01-16 09:29:56.606+00	2026-01-16 09:29:56.606+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
38b05013-d970-4cb3-85f5-6fbc83d893ef	06dd156e-cb60-46b9-b1cc-76b3744955ac	20	25.00	0.00	0.00	500.00	500.00	\N	2026-01-16 09:30:25.825+00	2026-01-16 09:30:25.825+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
4ff0b59a-7c97-4771-bc0b-88aefb9c6e74	6e98dd48-f648-4b75-94b8-f94a2f3a7d07	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-01-16 09:31:31.253+00	2026-01-16 09:31:31.253+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
d73891f6-050e-4066-b607-0b248a1dba6a	1281eece-914d-4e79-a53e-695a481c94d0	40	25.00	0.00	0.00	1000.00	1000.00	\N	2026-01-18 09:56:35.463+00	2026-01-18 09:56:35.463+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
a0be6d3b-88ec-46ba-8ff3-e33ad68df85f	928496f9-a7b9-41a6-9762-b5151d074271	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-18 09:57:47.634+00	2026-01-18 09:57:47.634+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
048d15a6-318e-44d1-bb87-3ba1562bf698	14b63bb3-58e1-46ba-a4c3-1a50454b2ba2	55	25.00	0.00	0.00	1375.00	1375.00	\N	2026-01-18 09:58:32.165+00	2026-01-18 09:58:32.165+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
52766515-313a-4c27-b84d-63b5d1bec323	c81df463-4c9e-4006-bd13-b47c1df93b1c	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-18 10:00:14.333+00	2026-01-18 10:00:14.333+00	3eca1a07-55c2-41d5-b9ee-c0635d851713	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดแบน รามา ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	ขวดแบน รามา ขนาด 250 ML.	percent
6ed34d15-122e-4391-b6b8-03567e37d609	3d1e73f4-f4ee-4aa9-890f-65b131e46dbd	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-18 10:01:39.664+00	2026-01-18 10:01:39.664+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
823815eb-439a-47e2-bbce-48141e7dd4ea	62c7f4fb-769b-4b5d-ba0c-4ba736c41e10	50	26.75	0.00	0.00	1337.50	1337.50	\N	2026-01-18 10:02:09.724+00	2026-01-18 10:02:09.724+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
0453c3e4-59be-46c3-9e99-fe6221df344c	03f40255-a228-4ddd-9ef3-e8f5add75b1c	30	25.00	0.00	0.00	750.00	750.00	\N	2026-01-18 10:02:52.001+00	2026-01-18 10:02:52.001+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
02124dcd-4cad-4db5-8c74-67cfc7b53422	03f40255-a228-4ddd-9ef3-e8f5add75b1c	20	25.00	0.00	0.00	500.00	500.00	\N	2026-01-18 10:02:52.15+00	2026-01-18 10:02:52.15+00	284cdc9e-a648-4550-8ca6-87f9fcfcc88f	b653af70-8d46-4085-a8bd-90ff890015af	PRD-MIY1ONK9E0O-Joolz Honey Lemon ขนาด  250 ML.	น้ำเลมอนเนด	Joolz Honey Lemon ขนาด  250 ML.	percent
e65fd2ba-bd27-4108-ab61-3664f6dd900f	29f89184-b702-4cdb-8339-5f4ca325d078	115	25.00	0.00	0.00	2875.00	2875.00	\N	2026-01-18 10:03:26.58+00	2026-01-18 10:03:26.58+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
f8618e62-8dc1-420a-b855-38915db9f7bc	9a078541-0c5e-4f27-87f4-dd9b39135a84	25	25.00	0.00	0.00	625.00	625.00	\N	2026-01-19 10:37:21.157+00	2026-01-19 10:37:21.157+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
814a0409-ccf7-4755-8c08-19fc17e2ec22	7d3268cd-ab5b-4568-acd0-bc1392aed3c8	30	25.00	0.00	0.00	750.00	750.00	\N	2026-01-19 10:40:24.497+00	2026-01-19 10:40:24.497+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
e8759922-8c18-4cf2-a8cd-eb16b9e24863	e8b2dd20-3190-40c0-8b43-19d2f5c97217	25	25.00	0.00	0.00	625.00	625.00	\N	2026-01-19 10:40:51.571+00	2026-01-19 10:40:51.571+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
8435422a-6a6c-4709-846b-40da5601ad55	ef0b565c-d939-452a-a543-074542c20692	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-19 10:42:59.446+00	2026-01-19 10:42:59.446+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
f110e798-9bf5-46d6-ad08-f95dc3a04ead	ef0b565c-d939-452a-a543-074542c20692	1	150.00	0.00	0.00	150.00	150.00	\N	2026-01-19 10:42:59.582+00	2026-01-19 10:42:59.582+00	15157b99-7080-4d26-bde1-79b5eb8046d8	1a9101ec-4bb0-4900-86b5-5e80dc4ea45e	PRD-MKDVUCKM77G-ลังโฟม	ค่าขนส่ง	ลังโฟม	percent
90a9b752-4913-4218-8493-880622b37762	6ba6aad3-1e8b-47ac-bdab-075a43b3573f	5	96.30	0.00	0.00	481.50	481.50	\N	2026-01-19 10:43:46.356+00	2026-01-19 10:43:46.356+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
cb69f71f-2896-4896-9164-1b1f160549ab	6ba6aad3-1e8b-47ac-bdab-075a43b3573f	1	100.00	0.00	0.00	100.00	100.00	\N	2026-01-19 10:43:46.49+00	2026-01-19 10:43:46.49+00	23b3e944-9a51-4bde-92cd-a1b19e1d255a	1a9101ec-4bb0-4900-86b5-5e80dc4ea45e	PRD-MKDVUCKM77G-ขนส่ง	ค่าขนส่ง	ขนส่ง	percent
918a071f-8e73-4743-bdc6-df14f721cf79	15d48c6d-6dc7-4c9f-939f-aa69563cdd18	25	25.00	0.00	0.00	625.00	625.00	\N	2026-01-19 10:45:01.319+00	2026-01-19 10:45:01.319+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
25f67150-1a6f-42ed-9554-8203af7615ed	15d48c6d-6dc7-4c9f-939f-aa69563cdd18	25	25.00	0.00	0.00	625.00	625.00	\N	2026-01-19 10:45:01.442+00	2026-01-19 10:45:01.442+00	284cdc9e-a648-4550-8ca6-87f9fcfcc88f	b653af70-8d46-4085-a8bd-90ff890015af	PRD-MIY1ONK9E0O-Joolz Honey Lemon ขนาด  250 ML.	น้ำเลมอนเนด	Joolz Honey Lemon ขนาด  250 ML.	percent
fe575eed-39a7-4842-af42-15ff2cd9360c	cec2b2ff-8271-4971-adbf-a40c03ff6638	16	96.30	0.00	0.00	1540.80	1540.80	\N	2026-01-19 10:46:37.132+00	2026-01-19 10:46:37.132+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
3e5276c5-a117-4d96-b0d4-12eae25228ba	cec2b2ff-8271-4971-adbf-a40c03ff6638	1	150.00	0.00	0.00	150.00	150.00	\N	2026-01-19 10:46:37.239+00	2026-01-19 10:46:37.239+00	23b3e944-9a51-4bde-92cd-a1b19e1d255a	1a9101ec-4bb0-4900-86b5-5e80dc4ea45e	PRD-MKDVUCKM77G-ขนส่ง	ค่าขนส่ง	ขนส่ง	percent
b45db63d-a824-4874-be41-b4b610ce970f	621c7e4c-732c-4d94-bdc8-ed0c7c6ddfd5	15	25.00	0.00	0.00	375.00	375.00	\N	2026-01-19 10:47:23.527+00	2026-01-19 10:47:23.527+00	8238eabc-9506-495a-b2b4-c8e821e61faf	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-wonderwoods ขนาด  250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	wonderwoods ขนาด  250 ML.	percent
da78d9fd-cef1-48e2-9a14-9e46d0c5da6b	621c7e4c-732c-4d94-bdc8-ed0c7c6ddfd5	1	100.00	0.00	0.00	100.00	100.00	\N	2026-01-19 10:47:23.667+00	2026-01-19 10:47:23.667+00	23b3e944-9a51-4bde-92cd-a1b19e1d255a	1a9101ec-4bb0-4900-86b5-5e80dc4ea45e	PRD-MKDVUCKM77G-ขนส่ง	ค่าขนส่ง	ขนส่ง	percent
cd3bd73c-59a9-4f00-9710-e9532711b175	58930728-13aa-4c7a-afff-41007663c52d	58	25.00	0.00	0.00	1450.00	1450.00	\N	2026-01-19 10:48:43.671+00	2026-01-19 10:48:43.671+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
419a7f1b-0109-4ce9-b544-af111f1c4958	4613bd52-6524-49ba-a04a-fc05cc86c17c	30	25.00	0.00	0.00	750.00	750.00	\N	2026-01-23 10:36:47.578+00	2026-01-23 10:36:47.578+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
6074fe02-e260-4fc8-8181-163970d2280c	5044d6b6-e70a-4dd9-8e83-070cfcd94513	20	25.00	0.00	0.00	500.00	500.00	\N	2026-01-23 10:37:15.493+00	2026-01-23 10:37:15.493+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
f2aef7fc-d924-45d7-88d6-1a0a8192fc32	e51f8ca9-69ff-4728-9ae9-62a9bc2f982e	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-01-23 10:38:05.469+00	2026-01-23 10:38:05.469+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
cf7e3a1b-d9d1-4a21-8073-f83ed5a2c05e	6ae47b5d-e1fd-4d5d-8363-ee5cf02a38a2	30	25.00	0.00	0.00	750.00	750.00	\N	2026-01-23 10:40:17.838+00	2026-01-23 10:40:17.839+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
f0f556c0-0bb8-4785-a561-2bb35c8acf41	6ae47b5d-e1fd-4d5d-8363-ee5cf02a38a2	2	90.00	0.00	0.00	180.00	180.00	\N	2026-01-23 10:40:17.96+00	2026-01-23 10:40:17.96+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
04625def-2c1a-46cc-b77c-32bed1387133	6ae47b5d-e1fd-4d5d-8363-ee5cf02a38a2	5	25.00	0.00	0.00	125.00	125.00	\N	2026-01-23 10:40:18.094+00	2026-01-23 10:40:18.094+00	284cdc9e-a648-4550-8ca6-87f9fcfcc88f	b653af70-8d46-4085-a8bd-90ff890015af	PRD-MIY1ONK9E0O-Joolz Honey Lemon ขนาด  250 ML.	น้ำเลมอนเนด	Joolz Honey Lemon ขนาด  250 ML.	percent
14a97b93-e6bd-4dbb-919b-cfa89666bd48	c29cb534-0c38-4283-8df6-cf02d57944f4	16	96.30	0.00	0.00	1540.80	1540.80	\N	2026-01-23 10:41:25.69+00	2026-01-23 10:41:25.69+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
62957740-7c2b-4b58-a5a7-ad4fd60ddff4	1c1af632-780e-493f-b457-cb1770f0b671	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-01-23 10:41:54.943+00	2026-01-23 10:41:54.943+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
2f163833-704d-4ade-810f-175c9f180d75	8615a4d5-f092-46ee-b8c9-646d671feea3	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-24 09:06:32.762+00	2026-01-24 09:06:32.762+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
49ba5875-420e-46e8-aa88-743c5c5a3f66	18dd050d-f2b2-4359-b482-e8ea84d95324	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-24 09:08:46.016+00	2026-01-24 09:08:46.016+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
0cce6e0a-2b2f-4dc0-a08b-98441a6e99eb	39eb09ce-2c32-4d7c-be98-ced37deb5563	50	26.75	0.00	0.00	1337.50	1337.50	\N	2026-01-24 09:09:13.135+00	2026-01-24 09:09:13.135+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
5f99c34b-d8c9-4809-94c9-5bfc5fd6a47e	b8b62c16-b8d1-4ab7-9015-ba193878a19c	15	25.00	0.00	0.00	375.00	375.00	\N	2026-01-25 01:29:42.709+00	2026-01-25 01:29:42.709+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
9d16b8e3-eb7d-4ec2-95a2-264ec231aa70	6cfc0dbe-6048-4596-ac47-b1137ce4a754	25	25.00	0.00	0.00	625.00	625.00	\N	2026-01-25 01:30:34.154+00	2026-01-25 01:30:34.154+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
cc6f2af5-9af6-44b1-8ba9-376e1730cf53	6cfc0dbe-6048-4596-ac47-b1137ce4a754	1	90.00	0.00	0.00	90.00	90.00	\N	2026-01-25 01:30:34.259+00	2026-01-25 01:30:34.259+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
77f2e887-d022-445c-a4f4-cb07f5dc06f4	0e19fa62-c2e6-4159-aa35-2eed69b8f0af	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-25 07:41:19.995+00	2026-01-25 07:41:19.995+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
7d9c1949-1045-4585-856b-bd1b16116f66	0e19fa62-c2e6-4159-aa35-2eed69b8f0af	20	25.00	0.00	0.00	500.00	500.00	\N	2026-01-25 07:41:20.184+00	2026-01-25 07:41:20.184+00	284cdc9e-a648-4550-8ca6-87f9fcfcc88f	b653af70-8d46-4085-a8bd-90ff890015af	PRD-MIY1ONK9E0O-Joolz Honey Lemon ขนาด  250 ML.	น้ำเลมอนเนด	Joolz Honey Lemon ขนาด  250 ML.	percent
c1ec2d24-1520-4112-b230-bcae1362660a	0e19fa62-c2e6-4159-aa35-2eed69b8f0af	1	100.00	0.00	0.00	100.00	100.00	\N	2026-01-25 07:41:20.343+00	2026-01-25 07:41:20.343+00	23b3e944-9a51-4bde-92cd-a1b19e1d255a	1a9101ec-4bb0-4900-86b5-5e80dc4ea45e	PRD-MKDVUCKM77G-ขนส่ง	ค่าขนส่ง	ขนส่ง	percent
38f8d630-e6ca-4777-9c0a-e9c3f3d14bff	b2b29af1-63f9-4a28-ba28-15cc13575872	35	25.00	0.00	0.00	875.00	875.00	\N	2026-01-25 07:42:16.128+00	2026-01-25 07:42:16.128+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
2a37ad0b-b886-44c0-872c-5e48315af2b8	8bfab326-baf2-4a64-88da-74163ff0387c	60	25.00	0.00	0.00	1500.00	1500.00	\N	2026-01-25 07:43:30.629+00	2026-01-25 07:43:30.629+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
c69813f8-8cf8-40e9-a48f-a5a7a5cbbb3b	8bfab326-baf2-4a64-88da-74163ff0387c	20	25.00	0.00	0.00	500.00	500.00	\N	2026-01-25 07:43:30.759+00	2026-01-25 07:43:30.759+00	b6efc5a9-63ad-4946-932b-7961e5332fc9	b653af70-8d46-4085-a8bd-90ff890015af	PRD-MIY1ONK9E0O-ขวดกลม	น้ำเลมอนเนด	ขวดกลม	percent
1562f3a4-1827-4fa0-9a56-3eabab6dca4e	2edef3e7-31d8-4b41-88da-f6bb3ed10dbb	30	25.00	0.00	0.00	750.00	750.00	\N	2026-01-25 07:47:57.048+00	2026-01-25 07:47:57.048+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
3d489127-18aa-4865-88c0-29558ec6dde7	bbc0cd74-8280-4e7b-8d28-9e5a3ea87ad4	35	25.00	0.00	0.00	875.00	875.00	\N	2026-01-25 07:48:43.535+00	2026-01-25 07:48:43.536+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
bdbcecc9-0aa4-4f96-a975-ce6ed4ab5f29	cee2f552-c760-4f3b-a385-6d3532a32c5a	35	25.00	0.00	0.00	875.00	875.00	\N	2026-01-25 07:49:30.525+00	2026-01-25 07:49:30.525+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
6d1db3c5-ed1f-4040-83cc-14618047e86d	16ca4cb2-6c20-45f4-a19c-0e33a3b87694	1	39.00	0.00	0.00	39.00	39.00	\N	2026-01-25 07:51:29.193+00	2026-01-25 07:51:29.193+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
21f83ab9-f0e1-4682-aa97-bdae754c281d	16ca4cb2-6c20-45f4-a19c-0e33a3b87694	1	129.00	0.00	0.00	129.00	129.00	\N	2026-01-25 07:51:29.339+00	2026-01-25 07:51:29.339+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
566f71b5-9964-48bf-a2fc-3a93202bbdc4	16ca4cb2-6c20-45f4-a19c-0e33a3b87694	1	100.00	0.00	0.00	100.00	100.00	\N	2026-01-25 07:51:29.469+00	2026-01-25 07:51:29.469+00	23b3e944-9a51-4bde-92cd-a1b19e1d255a	1a9101ec-4bb0-4900-86b5-5e80dc4ea45e	PRD-MKDVUCKM77G-ขนส่ง	ค่าขนส่ง	ขนส่ง	percent
d7fa06d9-3203-452e-a8f8-4753a0429681	c8c222c8-34ee-4a85-b781-edaac955bb73	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-25 09:10:32.365+00	2026-01-25 09:10:32.365+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
8528f345-1a66-4e82-99e2-564e78b4d74a	50e63041-26cf-472f-9a3b-8a0831bab5db	40	25.00	0.00	0.00	1000.00	1000.00	\N	2026-01-26 06:30:06.176+00	2026-01-26 06:30:06.176+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
85508c93-e7b9-4416-921a-504a90e2696c	c7146eb9-128d-410f-9ec1-be2e2b88c7e2	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-26 06:30:51.512+00	2026-01-26 06:30:51.512+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
7e6d1ab2-2108-4e87-b039-b32fc04fbf81	5f936a6c-04eb-4bc7-8250-e15e74bc42bb	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-26 06:32:18.696+00	2026-01-26 06:32:18.696+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
76fadd7d-1a09-475f-9da4-ca04b2b0d9c6	5f936a6c-04eb-4bc7-8250-e15e74bc42bb	1	150.00	0.00	0.00	150.00	150.00	\N	2026-01-26 06:32:19.096+00	2026-01-26 06:32:19.096+00	23b3e944-9a51-4bde-92cd-a1b19e1d255a	1a9101ec-4bb0-4900-86b5-5e80dc4ea45e	PRD-MKDVUCKM77G-ขนส่ง	ค่าขนส่ง	ขนส่ง	percent
acf1b26c-e395-4168-9b6c-cb4aa866d665	2a18652c-760b-48ba-86f3-b0f619f16dac	15	25.00	0.00	0.00	375.00	375.00	\N	2026-01-26 09:29:07.278+00	2026-01-26 09:29:07.278+00	8238eabc-9506-495a-b2b4-c8e821e61faf	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-wonderwoods ขนาด  250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	wonderwoods ขนาด  250 ML.	percent
e1f8c40f-9e36-4f66-8f19-b437d04ddce1	2a18652c-760b-48ba-86f3-b0f619f16dac	1	100.00	0.00	0.00	100.00	100.00	\N	2026-01-26 09:29:07.396+00	2026-01-26 09:29:07.396+00	23b3e944-9a51-4bde-92cd-a1b19e1d255a	1a9101ec-4bb0-4900-86b5-5e80dc4ea45e	PRD-MKDVUCKM77G-ขนส่ง	ค่าขนส่ง	ขนส่ง	percent
33686b69-216b-4376-be87-bd853266a93d	f3c251db-8d57-4459-960e-64a89ac12bc7	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-01-26 10:05:23.539+00	2026-01-26 10:05:23.539+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
e8880836-50a0-4e46-aee9-3710b46abe3b	6beab3ee-78a1-485b-8cf5-7baf522b6397	50	26.75	0.00	0.00	1337.50	1337.50	\N	2026-01-27 02:50:31.476+00	2026-01-27 02:50:31.476+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
3496327b-afbe-4789-a782-7aec94d6c11e	6ab60593-8f42-4f54-b9dc-c06ef4cca0ff	3	90.00	0.00	0.00	270.00	270.00	\N	2026-01-27 02:53:34.838+00	2026-01-27 02:53:34.838+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
c0183f0d-ca77-4b05-8dbe-1a59c3f8c421	6ab60593-8f42-4f54-b9dc-c06ef4cca0ff	2	90.00	0.00	0.00	180.00	180.00	\N	2026-01-27 02:53:34.98+00	2026-01-27 02:53:34.98+00	dc310598-a277-4ba0-beea-aaf05a6002ee	b062fb6a-8fd5-44a7-afbc-9e8c6c63d862	PRD-MIY1ONK9E01-Joolz Honey Lemon ขนาด  1000 ML.	น้ำเลมอนเนด	Joolz Honey Lemon ขนาด  1000 ML.	percent
dcc213ea-3225-4df5-b125-0e5de1f9d854	c96983f5-6bff-4126-bfd2-78f7f97bd100	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-01-27 02:55:10.761+00	2026-01-27 02:55:10.761+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
52fb7e17-f778-42c6-884c-7b7f9d7b8e32	b4bdca1a-5aed-408b-a907-f602a28f607c	80	25.00	0.00	0.00	2000.00	2000.00	\N	2026-01-27 02:57:04.597+00	2026-01-27 02:57:04.597+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
f62c42f1-83ee-41b4-a32b-8c043d2deb2a	a12b161a-421d-4fe3-89d9-033f77c7f175	30	26.75	0.00	0.00	802.50	802.50	\N	2026-01-27 02:58:54.81+00	2026-01-27 02:58:54.81+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
6bf1e48e-7d6f-4792-80af-35a440bfbeda	4c4b2277-2473-4233-9ef6-e5f7d382b608	25	25.00	0.00	0.00	625.00	625.00	\N	2026-01-27 07:58:53.419+00	2026-01-27 07:58:53.419+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
0bf979da-fac6-48c1-b7a1-a874da509a15	8d63e753-7cb1-42a9-9eb9-45c23d985e80	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-27 10:38:49.515+00	2026-01-27 10:38:49.515+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
3785e7c1-6fd9-4571-989f-133e717b46f2	6d33cca4-91c7-4bd1-8d5a-823f2ea08511	30	25.00	0.00	0.00	750.00	750.00	\N	2026-01-27 10:39:45.449+00	2026-01-27 10:39:45.449+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
d44a63d1-2b1a-47d7-a438-7c9c1317230f	e77cf8bb-dc85-48b7-9bb6-a05507b935c5	16	96.30	0.00	0.00	1540.80	1540.80	\N	2026-01-27 10:40:29.527+00	2026-01-27 10:40:29.527+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
fefd1f7d-2fd2-437b-8f80-f86a85ffefe6	5170e6eb-8fb8-4906-83e9-979082ac7caa	100	25.00	0.00	0.00	2500.00	2500.00	\N	2026-01-28 10:33:37.066+00	2026-01-28 10:33:37.066+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
c909f9b4-296d-4137-bc29-f6c55999ab62	5170e6eb-8fb8-4906-83e9-979082ac7caa	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-01-28 10:33:37.227+00	2026-01-28 10:33:37.227+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
0eb8839c-0173-4838-9886-24e57c73dbde	4e04dc80-14ad-4ca3-8644-7341fed4178b	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-28 10:34:06.068+00	2026-01-28 10:34:06.068+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
21f177fd-94bd-4b75-8391-d555e4803722	8e433bd5-16da-4a55-9722-27cfbca3be62	30	25.00	0.00	0.00	750.00	750.00	\N	2026-01-28 10:34:54.216+00	2026-01-28 10:34:54.216+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
87a655b5-b91e-46c4-b10e-81334b7114e9	8e433bd5-16da-4a55-9722-27cfbca3be62	20	25.00	0.00	0.00	500.00	500.00	\N	2026-01-28 10:34:54.335+00	2026-01-28 10:34:54.335+00	284cdc9e-a648-4550-8ca6-87f9fcfcc88f	b653af70-8d46-4085-a8bd-90ff890015af	PRD-MIY1ONK9E0O-Joolz Honey Lemon ขนาด  250 ML.	น้ำเลมอนเนด	Joolz Honey Lemon ขนาด  250 ML.	percent
3f9a9ed6-0236-4fbc-8df8-46989ab3fe0a	acfdb8e5-f58b-4f9c-aa59-c5dd6d21317c	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-28 10:35:19.851+00	2026-01-28 10:35:19.851+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
cab11d87-a2e9-4407-8930-67cd333961d2	a9d49343-c546-4a16-b8c3-2c81ccb49c83	100	17.00	0.00	0.00	1700.00	1700.00	\N	2026-01-28 10:35:51.161+00	2026-01-28 10:35:51.161+00	5724cfc5-7cdc-4a4b-adb4-2b16b87f6878	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดแบน ขนาด 150 ML.	น้ำส้มคั้นสายน้ำผึ้ง	ขวดแบน ขนาด 150 ML.	percent
f0cd7a22-f6a2-46d4-b300-4893756427ce	dc0e638b-f559-4f67-9ab6-297c6f27d61f	50	26.75	0.00	0.00	1337.50	1337.50	\N	2026-01-29 08:00:56.942+00	2026-01-29 08:00:56.942+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
1e4d5b4e-9ad4-47e5-a94a-1d3b622f3229	758c9776-12d2-4c1b-a40c-20ba7201fb43	10	96.30	0.00	0.00	963.00	963.00	\N	2026-01-29 08:01:38.097+00	2026-01-29 08:01:38.097+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
00ccee30-d8aa-4401-8856-02b2bd44b79c	355fa462-25be-42e3-a3cc-47823a443c45	30	25.00	0.00	0.00	750.00	750.00	\N	2026-01-29 08:02:48.234+00	2026-01-29 08:02:48.234+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
3ca1ce5b-0fab-4a08-8974-68d7f282da9f	6d0e9205-0cfc-44b9-8dba-2a064c9c82a6	10	25.00	0.00	0.00	250.00	250.00	\N	2026-01-29 08:03:19.032+00	2026-01-29 08:03:19.032+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
6db9e0b3-02ad-4026-9b59-36161b4c7fb0	8d66bd25-41ae-416e-b385-0a3b1b2c8522	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-29 08:03:50.065+00	2026-01-29 08:03:50.065+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
5082dbb9-1d88-405d-b7c7-8099c8c2c9f3	8d08f67e-8c0c-4b51-ac58-54b1eeb8f1fe	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-01-29 08:04:36.659+00	2026-01-29 08:04:36.659+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
f62baa16-de81-4437-bc8b-51384cb800a8	cf5eb3d5-fc7b-49ba-bf19-84e7563f5128	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-29 10:25:47.659+00	2026-01-29 10:25:47.659+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
9c696c9b-aa60-4002-8a83-e072d9287d36	76193fda-1859-4e2d-aeae-f8e83f1f6724	30	25.00	0.00	0.00	750.00	750.00	\N	2026-01-29 10:26:14.592+00	2026-01-29 10:26:14.592+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
fc1162ac-d09d-47ac-8402-a20c8f1a1a4c	17e0160a-61bb-47c3-9353-aa5a86ff7cae	30	25.00	0.00	0.00	750.00	750.00	\N	2026-01-30 09:56:08.685+00	2026-01-30 09:56:08.685+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
1c7074cd-f9a7-4f11-9101-0a3882f38868	6358df46-9522-42d4-9176-28fe62d9a1b1	20	25.00	0.00	0.00	500.00	500.00	\N	2026-01-30 09:56:54.744+00	2026-01-30 09:56:54.744+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
3c9f3da7-97be-4357-a7bb-d10048aef82c	623a3aaa-62ea-420a-88f4-bba6f0b75f0a	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-30 09:57:35.331+00	2026-01-30 09:57:35.331+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
b685d386-bdba-47b5-b460-b4afef176205	f6eeadf2-13b3-4731-a42c-ed8e34ac5b51	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-01-30 10:02:33.004+00	2026-01-30 10:02:33.004+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
a9324909-60c4-447d-90a5-ecbbd202d637	e8644ca3-699a-44b9-8fb6-213ba494e12d	34	25.00	0.00	0.00	850.00	850.00	\N	2026-01-30 10:03:00.626+00	2026-01-30 10:03:00.626+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
a8db0e5c-ff65-44a2-8a38-afcfde8226ef	aaec8f36-3e1d-4e4e-92c6-958a04145d52	35	25.00	0.00	0.00	875.00	875.00	\N	2026-01-30 10:06:59.906+00	2026-01-30 10:06:59.906+00	f7491eb6-deb8-4e57-ba61-87f4b9fb53dd	a68cff25-a3ab-4a77-88d5-2cce248f2d08	PRD-MIKYZ2LUR1-JoolzJuice ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง mix	JoolzJuice ขนาด 250 ML.	percent
87385db7-626e-48de-877a-cd0537875581	aaec8f36-3e1d-4e4e-92c6-958a04145d52	5	90.00	0.00	0.00	450.00	450.00	\N	2026-01-30 10:07:00.108+00	2026-01-30 10:07:00.108+00	18be21b3-05bf-4504-b122-a57a4f7e1563	a68cff25-a3ab-4a77-88d5-2cce248f2d08	PRD-MIKYZ2LUR1-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง mix	Joolz Juice  ขนาด 1000 ML.	percent
427d1c05-ef3c-4b5d-96a8-039b3a6c23cb	aaec8f36-3e1d-4e4e-92c6-958a04145d52	1	100.00	0.00	0.00	100.00	100.00	\N	2026-01-30 10:07:00.263+00	2026-01-30 10:07:00.263+00	15157b99-7080-4d26-bde1-79b5eb8046d8	1a9101ec-4bb0-4900-86b5-5e80dc4ea45e	PRD-MKDVUCKM77G-ลังโฟม	ค่าขนส่ง	ลังโฟม	percent
f26173df-9cdb-4f19-a907-48d6624d9d31	10a7824f-4e25-4c1d-9d92-1990944eafc6	10	90.00	0.00	0.00	900.00	900.00	\N	2026-01-30 10:37:32.832+00	2026-01-30 10:37:32.832+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
13ec240e-7254-46eb-ae28-41dd68c60fab	04e58d73-5c01-41b7-aa25-7d05d99e1012	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-01-30 10:38:02.19+00	2026-01-30 10:38:02.19+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
a70ff047-2c90-49d9-b184-9218abfcc3e7	e47bbc1f-6bc9-4927-b41d-47fea7f2d2a2	60	25.00	0.00	0.00	1500.00	1500.00	\N	2026-02-02 09:56:28.651+00	2026-02-02 09:56:28.651+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
c52ce539-bd73-4ab2-9bf1-4ad6c84296e2	2b8f9042-06f7-4d54-aa5a-30b778f225c4	25	25.00	0.00	0.00	625.00	625.00	\N	2026-02-02 09:58:34.29+00	2026-02-02 09:58:34.29+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
059c18b3-aaa3-4e82-8d09-baec7a9d9e35	e209b70b-723a-4771-86ce-2cb0e6ab2831	20	25.00	0.00	0.00	500.00	500.00	\N	2026-02-02 09:59:13.235+00	2026-02-02 09:59:13.235+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
b25bb7fe-b42c-46db-aa1c-47438345e733	5def8187-ff90-4e73-bb2a-b94c41e4ae7d	20	25.00	0.00	0.00	500.00	500.00	\N	2026-02-02 10:00:21.636+00	2026-02-02 10:00:21.636+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
618db745-681e-417d-87f5-3b49fc8de9b6	73f78a7d-c155-4341-a22e-2a7e4de23fb5	15	25.00	0.00	0.00	375.00	375.00	\N	2026-02-02 10:00:49.011+00	2026-02-02 10:00:49.011+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
c0c1c79b-5fdf-450c-b609-47bf052e9fc8	90c4137c-ef16-4a78-9488-00e03a411bf9	20	25.00	0.00	0.00	500.00	500.00	\N	2026-02-02 10:01:21.418+00	2026-02-02 10:01:21.418+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
989569cb-5d64-4a10-a510-14b79f84a468	ac3c0324-edfa-4a9c-9f12-73101c832fbb	10	25.00	0.00	0.00	250.00	250.00	\N	2026-02-02 10:02:00.339+00	2026-02-02 10:02:00.339+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
b3893f21-5023-4739-9d2c-879f7edae2b9	418e1a18-b2f7-48ab-9d19-d648c8d3afd3	40	25.00	0.00	0.00	1000.00	1000.00	\N	2026-02-02 10:07:17.743+00	2026-02-02 10:07:17.743+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
4cbdee72-d45e-4b29-b9bc-4e774a9c5207	418e1a18-b2f7-48ab-9d19-d648c8d3afd3	10	25.00	0.00	0.00	250.00	250.00	\N	2026-02-02 10:07:17.889+00	2026-02-02 10:07:17.889+00	b6efc5a9-63ad-4946-932b-7961e5332fc9	b653af70-8d46-4085-a8bd-90ff890015af	PRD-MIY1ONK9E0O-ขวดกลม	น้ำเลมอนเนด	ขวดกลม	percent
39ba5ae3-f4b4-441c-8c80-63dd18011967	2f5e4d4d-ccab-4ef7-8ab0-f2fc9d36d200	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-02-02 10:07:54.739+00	2026-02-02 10:07:54.739+00	3eca1a07-55c2-41d5-b9ee-c0635d851713	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดแบน รามา ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	ขวดแบน รามา ขนาด 250 ML.	percent
f9a6bb27-afde-4895-9618-7030f94a0aa3	b0b95b0d-df36-4607-b94d-e186d6b1f6ba	50	26.75	0.00	0.00	1337.50	1337.50	\N	2026-02-02 10:08:31.131+00	2026-02-02 10:08:31.131+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
4d474800-bcbc-475d-b36e-2624d7d864f4	559e3f8a-cd59-4412-95c7-912124133e2c	27	25.00	0.00	0.00	675.00	675.00	\N	2026-02-02 10:09:38.813+00	2026-02-02 10:09:38.813+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
b4aed780-8340-429c-8ba6-aa77903c9d7d	0230ad40-2e21-4a98-8915-a76e3b45e9c6	45	25.00	0.00	0.00	1125.00	1125.00	\N	2026-02-02 10:10:33.513+00	2026-02-02 10:10:33.513+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
e84efe34-ac6b-4fcd-b9d7-0451c93f9bf1	0230ad40-2e21-4a98-8915-a76e3b45e9c6	15	25.00	0.00	0.00	375.00	375.00	\N	2026-02-02 10:10:33.64+00	2026-02-02 10:10:33.64+00	b6efc5a9-63ad-4946-932b-7961e5332fc9	b653af70-8d46-4085-a8bd-90ff890015af	PRD-MIY1ONK9E0O-ขวดกลม	น้ำเลมอนเนด	ขวดกลม	percent
f68867fa-5e6e-4ea5-a322-bfc507b1ecd0	8428c091-1a81-4216-958e-612bcf8e2de9	35	25.00	0.00	0.00	875.00	875.00	\N	2026-02-02 10:11:03.89+00	2026-02-02 10:11:03.89+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
dcbbc59c-8c1d-45c2-a1bd-74dfd8e7f832	45cabd05-d842-4218-92fc-0e987934ae54	30	25.00	0.00	0.00	750.00	750.00	\N	2026-02-02 10:11:29.5+00	2026-02-02 10:11:29.5+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
01202e7a-52c2-45c3-b4c0-2247bfc5b594	87b72da9-b6f6-4319-9450-cc265730c529	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-02-02 10:11:49.613+00	2026-02-02 10:11:49.613+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
6c2991fe-0682-42ec-aab9-22001cedcdfa	7942b87d-db82-43c9-9f55-e0c42f28d554	25	25.00	0.00	0.00	625.00	625.00	\N	2026-02-02 10:12:11.88+00	2026-02-02 10:12:11.88+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
4602116b-59f8-426c-8f46-e7f041ae5671	a084bfbb-ca96-4df9-bc49-411ddc495c1a	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-02-02 10:12:36.884+00	2026-02-02 10:12:36.884+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
aaa5e030-7964-45c3-be9e-ebfa3e50a9ff	0b086df6-b9de-4ac6-8934-dce7f667591f	40	25.00	0.00	0.00	1000.00	1000.00	\N	2026-02-02 10:13:12.772+00	2026-02-02 10:13:12.772+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
1c5cdb3f-dc17-4c63-9233-8fffe0ed59b9	0b086df6-b9de-4ac6-8934-dce7f667591f	10	25.00	0.00	0.00	250.00	250.00	\N	2026-02-02 10:13:12.913+00	2026-02-02 10:13:12.913+00	284cdc9e-a648-4550-8ca6-87f9fcfcc88f	b653af70-8d46-4085-a8bd-90ff890015af	PRD-MIY1ONK9E0O-Joolz Honey Lemon ขนาด  250 ML.	น้ำเลมอนเนด	Joolz Honey Lemon ขนาด  250 ML.	percent
e9ff24de-fb46-43e2-add2-58081e5cb0c0	b4a09361-9056-4dc4-a323-3dd95fd1ac99	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-02-02 10:13:42.613+00	2026-02-02 10:13:42.613+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
36270136-1168-4479-be9d-7f50a56f2fae	d3d31d8a-a9e0-46ad-bd3c-f476b9dbffd1	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-02-02 10:14:07.501+00	2026-02-02 10:14:07.501+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
cc82fad8-b00c-4d9f-9c91-df578160343c	921c5629-0601-4cc5-b82e-b9f364ade748	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-02-02 10:14:32.247+00	2026-02-02 10:14:32.247+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
475c8bdd-6dbe-4fbf-8e95-95b79e7bd41e	8e2b8774-4dd0-43b5-b71c-9717129df246	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-02-02 10:15:03.087+00	2026-02-02 10:15:03.087+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
d39f446f-ef70-4a25-bd78-42a4f300505e	8e2b8774-4dd0-43b5-b71c-9717129df246	1	150.00	0.00	0.00	150.00	150.00	\N	2026-02-02 10:15:03.238+00	2026-02-02 10:15:03.238+00	23b3e944-9a51-4bde-92cd-a1b19e1d255a	1a9101ec-4bb0-4900-86b5-5e80dc4ea45e	PRD-MKDVUCKM77G-ขนส่ง	ค่าขนส่ง	ขนส่ง	percent
863a2c4b-50f0-4e8d-8b3b-f5304d78b004	8e65491b-78f5-4696-84a5-c854be7660d9	20	25.00	0.00	0.00	500.00	500.00	\N	2026-02-02 10:22:15.591+00	2026-02-02 10:22:15.591+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
1403814a-5e1a-4356-8371-df3f790bb2b1	8e65491b-78f5-4696-84a5-c854be7660d9	15	25.00	0.00	0.00	375.00	375.00	\N	2026-02-02 10:22:15.726+00	2026-02-02 10:22:15.726+00	284cdc9e-a648-4550-8ca6-87f9fcfcc88f	b653af70-8d46-4085-a8bd-90ff890015af	PRD-MIY1ONK9E0O-Joolz Honey Lemon ขนาด  250 ML.	น้ำเลมอนเนด	Joolz Honey Lemon ขนาด  250 ML.	percent
75ad84c9-8efd-4d62-be7d-3268e6ab26d2	ed0b2fdf-522f-49f1-a8cc-aad3c9c98fbf	50	26.75	0.00	0.00	1337.50	1337.50	\N	2026-02-02 10:23:23.571+00	2026-02-02 10:23:23.571+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
55a9d4c6-1528-41f9-8a6c-1a1dbfdfe16e	0613d925-e504-449d-882a-b7fc5b712615	20	25.00	0.00	0.00	500.00	500.00	\N	2026-02-02 10:24:03.418+00	2026-02-02 10:24:03.418+00	8238eabc-9506-495a-b2b4-c8e821e61faf	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-wonderwoods ขนาด  250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	wonderwoods ขนาด  250 ML.	percent
d841d566-cae3-4f44-b0a1-6cdfe3ea1698	0613d925-e504-449d-882a-b7fc5b712615	1	100.00	0.00	0.00	100.00	100.00	\N	2026-02-02 10:24:03.572+00	2026-02-02 10:24:03.572+00	23b3e944-9a51-4bde-92cd-a1b19e1d255a	1a9101ec-4bb0-4900-86b5-5e80dc4ea45e	PRD-MKDVUCKM77G-ขนส่ง	ค่าขนส่ง	ขนส่ง	percent
a9e81b47-9c62-4ef7-8b06-ff9e317bfaa9	989db6ed-9cb5-46e9-8471-f6c44a1e5ab6	16	96.30	0.00	0.00	1540.80	1540.80	\N	2026-02-02 10:24:29.429+00	2026-02-02 10:24:29.429+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
f1ed7dde-f6be-4cc0-95fd-29af8a97aa94	8b3c01c6-f01a-4945-bcf9-eb86531bb5b1	50	26.75	0.00	0.00	1337.50	1337.50	\N	2026-02-03 10:35:27.096+00	2026-02-03 10:35:27.096+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
6a64490a-909b-4271-b71a-91ffdbce4e53	527aa652-b2c1-4c52-b6d7-ac14a81efcc9	40	25.00	0.00	0.00	1000.00	1000.00	\N	2026-02-03 10:36:39.825+00	2026-02-03 10:36:39.825+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
16e2a568-c6a3-4160-8bc1-adfff542821a	32108c2a-afc8-474b-b04a-1b25bf63f7a4	30	25.00	0.00	0.00	750.00	750.00	\N	2026-02-03 10:37:08.599+00	2026-02-03 10:37:08.599+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
88afa77d-5f9f-493b-b4a2-77c5f9768330	91c0781e-0626-45a0-9e20-13f8c7aa8426	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-02-03 10:37:34.837+00	2026-02-03 10:37:34.837+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
d7f45b73-1dc8-4568-a5a0-a56d2baf5666	293d410c-bfcf-43e7-9411-c88bfe034752	30	26.75	0.00	0.00	802.50	802.50	\N	2026-02-03 10:38:07.608+00	2026-02-03 10:38:07.608+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
5a09ec58-ed52-4c2b-beda-f11f1fd12f6f	a7c710ab-685a-4957-a820-43853ab58e10	20	25.00	0.00	0.00	500.00	500.00	\N	2026-02-03 10:40:33.505+00	2026-02-03 10:40:33.505+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
2eddca1a-a8c2-4c5c-a155-8919c8e7a362	a7c710ab-685a-4957-a820-43853ab58e10	40	17.00	0.00	0.00	680.00	680.00	\N	2026-02-03 10:40:33.638+00	2026-02-03 10:40:33.638+00	5724cfc5-7cdc-4a4b-adb4-2b16b87f6878	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดแบน ขนาด 150 ML.	น้ำส้มคั้นสายน้ำผึ้ง	ขวดแบน ขนาด 150 ML.	percent
379a5813-34ff-4671-8878-be6e5eada51c	a7c710ab-685a-4957-a820-43853ab58e10	50	17.00	0.00	0.00	850.00	850.00	\N	2026-02-03 10:40:33.772+00	2026-02-03 10:40:33.772+00	284cdc9e-a648-4550-8ca6-87f9fcfcc88f	b653af70-8d46-4085-a8bd-90ff890015af	PRD-MIY1ONK9E0O-Joolz Honey Lemon ขนาด  250 ML.	น้ำเลมอนเนด	Joolz Honey Lemon ขนาด  250 ML.	percent
21590333-a3ef-44db-a3f9-ff9ee9a121ce	d0efeb42-7cc0-4e04-a29c-5add06ff6f49	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-02-03 10:41:03.731+00	2026-02-03 10:41:03.731+00	3eca1a07-55c2-41d5-b9ee-c0635d851713	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดแบน รามา ขนาด 250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	ขวดแบน รามา ขนาด 250 ML.	percent
9ad4795b-f834-4d5c-a954-ed2885a83bd3	a936fd8a-4c03-436f-a388-573af06b8ce7	30	25.00	0.00	0.00	750.00	750.00	\N	2026-02-03 10:41:29.237+00	2026-02-03 10:41:29.237+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
fd62299c-0623-4509-ac86-8d901062e226	b24973e5-6e34-441d-92e9-3329b739ed92	45	25.00	0.00	0.00	1125.00	1125.00	\N	2026-02-03 10:41:56.876+00	2026-02-03 10:41:56.876+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
88f149f8-94a8-4078-81da-476060cc1305	8d6f6e06-5d71-40a8-b1f0-12195a40c507	25	25.00	0.00	0.00	625.00	625.00	\N	2026-02-03 10:42:36.646+00	2026-02-03 10:42:36.646+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
bb3e905c-90f7-4c20-b46d-fb3b8bde805c	4068e419-ab55-4ad3-9999-404bdcc2a63f	30	25.00	0.00	0.00	750.00	750.00	\N	2026-02-04 10:33:23.611+00	2026-02-04 10:33:23.611+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
6d0872a6-a339-4a3f-9e91-59cad9288a67	179fd324-df42-4d39-a8a7-8585632729cc	20	25.00	0.00	0.00	500.00	500.00	\N	2026-02-04 10:33:55.398+00	2026-02-04 10:33:55.398+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
519dc809-cb9d-4383-b7ee-eb64b212ce07	c445af2d-da26-4295-86a9-143db75db4ca	40	25.00	0.00	0.00	1000.00	1000.00	\N	2026-02-04 10:34:24.049+00	2026-02-04 10:34:24.049+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
58a9e458-764f-4ed0-bfbd-a8f4185c211e	c445af2d-da26-4295-86a9-143db75db4ca	20	25.00	0.00	0.00	500.00	500.00	\N	2026-02-04 10:34:24.145+00	2026-02-04 10:34:24.145+00	284cdc9e-a648-4550-8ca6-87f9fcfcc88f	b653af70-8d46-4085-a8bd-90ff890015af	PRD-MIY1ONK9E0O-Joolz Honey Lemon ขนาด  250 ML.	น้ำเลมอนเนด	Joolz Honey Lemon ขนาด  250 ML.	percent
8f0d7c86-4e7b-40f2-b7f5-c0bc8ea19d26	a3d13662-02e5-4960-b3e7-f31e67d387c8	16	96.30	0.00	0.00	1540.80	1540.80	\N	2026-02-04 10:34:49.889+00	2026-02-04 10:34:49.889+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
7cd666a8-06b6-4fb7-9e1f-544c7c080079	a3d13662-02e5-4960-b3e7-f31e67d387c8	1	150.00	0.00	0.00	150.00	150.00	\N	2026-02-04 10:34:49.985+00	2026-02-04 10:34:49.985+00	23b3e944-9a51-4bde-92cd-a1b19e1d255a	1a9101ec-4bb0-4900-86b5-5e80dc4ea45e	PRD-MKDVUCKM77G-ขนส่ง	ค่าขนส่ง	ขนส่ง	percent
a820e106-3714-4ce7-abc4-57d1367f510d	d014a53f-73a1-4b2b-adca-157591c6f104	20	25.00	0.00	0.00	500.00	500.00	\N	2026-02-04 11:06:19.29+00	2026-02-04 11:06:19.29+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
1860d59a-441e-4a8c-833a-3b70c2c1ea87	d014a53f-73a1-4b2b-adca-157591c6f104	10	25.00	0.00	0.00	250.00	250.00	\N	2026-02-04 11:06:19.416+00	2026-02-04 11:06:19.416+00	284cdc9e-a648-4550-8ca6-87f9fcfcc88f	b653af70-8d46-4085-a8bd-90ff890015af	PRD-MIY1ONK9E0O-Joolz Honey Lemon ขนาด  250 ML.	น้ำเลมอนเนด	Joolz Honey Lemon ขนาด  250 ML.	percent
11b02d05-e73e-4817-9d12-aeca40f29731	9da8c0ac-cba3-4c12-9089-d8d265ae2144	22	96.30	0.00	0.00	2118.60	2118.60	\N	2026-02-06 06:51:45.88+00	2026-02-06 06:51:45.88+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
23289d58-82b5-407a-b393-676842453800	7ce7e66d-9a32-41d8-92de-07c5c4476edb	3	129.00	0.00	0.00	387.00	387.00	\N	2026-02-06 06:52:02.202+00	2026-02-06 06:52:02.202+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
17e9e99a-c918-45bb-92cb-e71f8cb1a2e0	85fc306f-6c9d-4cbc-b0ad-5b88f554086a	25	25.00	0.00	0.00	625.00	625.00	\N	2026-02-06 07:03:23.54+00	2026-02-06 07:03:23.54+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
fa78c84b-14d6-4f36-a65f-fe53883c4468	14a34bdd-daaf-49a9-8893-27aa84e0d969	30	25.00	0.00	0.00	750.00	750.00	\N	2026-02-06 07:05:38.166+00	2026-02-06 07:05:38.166+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
6754c4f6-398e-48ba-8046-b32735557331	d15386ac-e124-4ead-bece-f789b2a7fcab	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-02-06 07:07:28.111+00	2026-02-06 07:07:28.111+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
93a79800-1dd3-43d6-8a2c-d19ddcd6d79c	64e40667-8fbb-4795-a4f6-382e9c871ef7	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-02-06 07:08:29.019+00	2026-02-06 07:08:29.019+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
5216a3c3-f886-47ab-ac27-6586e3108bc2	2dd27ea7-43de-4679-a62a-b2d94483ac4e	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-02-06 07:09:15.333+00	2026-02-06 07:09:15.333+00	02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลมใหญ่	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลมใหญ่	percent
546cb0de-291c-4979-9fee-781e84af7e0a	3eb7d9e0-8648-47d2-a686-cee5396b38d0	1	90.00	0.00	0.00	90.00	90.00	\N	2026-02-10 01:23:09.083+00	2026-02-10 01:23:09.083+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง	Joolz Juice  ขนาด 1000 ML.	percent
843bd030-3f35-4973-9cec-82e2709623e2	c830b219-58de-459f-b48b-1f133502935d	20	25.00	0.00	0.00	500.00	500.00	\N	2026-02-10 01:33:25.943+00	2026-02-10 01:33:25.943+00	8238eabc-9506-495a-b2b4-c8e821e61faf	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-wonderwoods ขนาด  250 ML.	น้ำส้มคั้นสายน้ำผึ้ง	wonderwoods ขนาด  250 ML.	percent
64c59a90-df1d-43aa-8b2c-b78755d99919	c830b219-58de-459f-b48b-1f133502935d	10	90.00	0.00	0.00	900.00	900.00	\N	2026-02-10 01:33:26.019+00	2026-02-10 01:33:26.019+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง	Joolz Juice  ขนาด 1000 ML.	percent
6c7b84a3-9429-40f2-a646-a90755796485	a4c5b511-7621-48bb-b632-ce463d90e09e	20	90.00	0.00	0.00	1800.00	1800.00	\N	2026-02-10 01:34:34.755+00	2026-02-10 01:34:34.755+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	PRD-MIKYZ2LURWF-Joolz Juice  ขนาด 1000 ML.	น้ำส้มคั้นสายน้ำผึ้ง	Joolz Juice  ขนาด 1000 ML.	percent
65fd139f-da57-4842-88f9-ab0401e1939a	a4c5b511-7621-48bb-b632-ce463d90e09e	20	25.00	0.00	0.00	500.00	500.00	\N	2026-02-10 01:34:34.91+00	2026-02-10 01:34:34.91+00	284cdc9e-a648-4550-8ca6-87f9fcfcc88f	b653af70-8d46-4085-a8bd-90ff890015af	PRD-MIY1ONK9E0O-Joolz Honey Lemon ขนาด  250 ML.	น้ำเลมอนเนด	Joolz Honey Lemon ขนาด  250 ML.	percent
80f19a2c-5629-4b47-b64b-390572c862a4	3309a49a-886b-48fb-8422-a712956e69ff	1	25.00	0.00	0.00	25.00	25.00	\N	2026-02-11 03:14:09.282+00	2026-02-11 03:14:09.282+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-Joolz-250	น้ำส้มคั้นสายน้ำผึ้ง	Joolz-250	percent
8d164855-b52a-4f3e-b912-5aa7d5497eaa	3309a49a-886b-48fb-8422-a712956e69ff	1	10.00	0.00	0.00	10.00	10.00	\N	2026-02-11 03:14:09.456+00	2026-02-11 03:14:09.456+00	ef92db89-e8f5-459d-9dcc-6f7ab132cda9	5ab971b8-eeb8-4790-b980-ef239eec8698	SKU-MLG9RM6IY4U-150ml	น้ำเมล่อน	150ml	percent
351d7799-9b01-4a25-90be-1062da3cf88a	3309a49a-886b-48fb-8422-a712956e69ff	1	20.00	0.00	0.00	20.00	20.00	\N	2026-02-11 03:14:09.628+00	2026-02-11 03:14:09.628+00	97effde6-7fe7-4f06-aa95-039219eb5c86	5ab971b8-eeb8-4790-b980-ef239eec8698	SKU-MLG9RM6IY4U-250ml	น้ำเมล่อน	250ml	percent
c44bfb03-fb68-4df2-8be3-186d5eee9428	3309a49a-886b-48fb-8422-a712956e69ff	1	20.00	0.00	0.00	20.00	20.00	\N	2026-02-11 03:14:09.787+00	2026-02-11 03:14:09.787+00	97effde6-7fe7-4f06-aa95-039219eb5c86	5ab971b8-eeb8-4790-b980-ef239eec8698	SKU-MLG9RM6IY4U-250ml	น้ำเมล่อน	250ml	percent
30673f26-4fa8-43d5-9abd-b5ca6a93aa43	859bb6a1-0891-47d7-9060-c4afc3968785	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-02-11 03:29:33.677+00	2026-02-11 03:29:33.677+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-Joolz-250	น้ำส้มคั้นสายน้ำผึ้ง	Joolz-250	percent
3049919b-ca81-4805-b426-04a5a02b6517	859bb6a1-0891-47d7-9060-c4afc3968785	20	10.00	0.00	0.00	200.00	200.00	\N	2026-02-11 03:29:33.869+00	2026-02-11 03:29:33.869+00	ef92db89-e8f5-459d-9dcc-6f7ab132cda9	5ab971b8-eeb8-4790-b980-ef239eec8698	SKU-MLG9RM6IY4U-150ml	น้ำเมล่อน	150ml	percent
2df9c70f-7bae-4aed-8258-136a2fc975f6	3e175acf-96a0-450b-92d7-003929bc8b1f	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-02-12 01:18:19.644+00	2026-02-12 01:18:19.644+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-Joolz-250	น้ำส้มคั้นสายน้ำผึ้ง	Joolz-250	percent
acc2a55d-0466-4b94-a008-c2997932e39d	3e175acf-96a0-450b-92d7-003929bc8b1f	1	15.00	0.00	0.00	15.00	15.00	\N	2026-02-12 01:18:19.758+00	2026-02-12 01:18:19.758+00	6b08e982-d5a5-4236-a6c6-9f0e53b5b581	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-ขวดกั๊ก-150	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกั๊ก-150	percent
b835189a-a064-4d21-b7be-140a9b0576b1	3e175acf-96a0-450b-92d7-003929bc8b1f	1	25.00	0.00	0.00	25.00	25.00	\N	2026-02-12 01:18:19.851+00	2026-02-12 01:18:19.851+00	8238eabc-9506-495a-b2b4-c8e821e61faf	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-WonderWoods-250	น้ำส้มคั้นสายน้ำผึ้ง	WonderWoods-250	percent
79f924de-48a9-4944-b9ee-e4b51850a572	aea70e36-79be-4ba3-89c1-27bcb5924dcf	50	15.00	0.00	0.00	750.00	750.00	\N	2026-02-12 01:25:23.856+00	2026-02-12 01:25:23.856+00	6b08e982-d5a5-4236-a6c6-9f0e53b5b581	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-ขวดกั๊ก-150	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกั๊ก-150	percent
c8b37c75-b9fa-4c66-8ae3-0cc2d6fce9ad	eba313de-3fae-4a2e-9daa-eda8c0bcc68e	50	15.00	0.00	0.00	750.00	750.00	\N	2026-02-12 01:32:14.584+00	2026-02-12 01:32:14.584+00	6b08e982-d5a5-4236-a6c6-9f0e53b5b581	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-ขวดกั๊ก-150	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกั๊ก-150	percent
48900df8-b554-4530-beb5-06d1c8619be2	c3594db6-b50d-444b-909e-3f20593277ab	50	15.00	0.00	0.00	750.00	750.00	\N	2026-02-12 01:33:07.486+00	2026-02-12 01:33:07.486+00	6b08e982-d5a5-4236-a6c6-9f0e53b5b581	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-ขวดกั๊ก-150	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกั๊ก-150	percent
86e2253f-b802-43fa-8482-2d8f16658ba3	fabfad6b-bab3-4c54-9bff-d61492e10a97	50	15.00	0.00	0.00	750.00	750.00	\N	2026-02-12 01:46:03.242+00	2026-02-12 01:46:03.242+00	6b08e982-d5a5-4236-a6c6-9f0e53b5b581	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-ขวดกั๊ก-150	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกั๊ก-150	percent
75f068ad-3a5c-4d78-92b6-a5179615da28	2b52affe-9341-453b-9b78-9b17b64dfdba	50	15.00	0.00	0.00	750.00	750.00	\N	2026-02-12 02:14:07.038+00	2026-02-12 02:14:07.038+00	6b08e982-d5a5-4236-a6c6-9f0e53b5b581	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-ขวดกั๊ก-150	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกั๊ก-150	percent
cfe471e4-4cfb-4dfc-b4a5-a36fc6ebb0eb	c0fa4431-cd0e-42fc-bc2f-8c38dae4246e	20	25.00	0.00	0.00	500.00	500.00	\N	2026-02-12 04:46:40.816+00	2026-02-12 04:46:40.816+00	8238eabc-9506-495a-b2b4-c8e821e61faf	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-WonderWoods-250	น้ำส้มคั้นสายน้ำผึ้ง	WonderWoods-250	percent
fcd656e9-e8d5-4218-95a0-87bc6ccbc077	c0fa4431-cd0e-42fc-bc2f-8c38dae4246e	20	10.00	0.00	0.00	200.00	200.00	\N	2026-02-12 04:46:41.081+00	2026-02-12 04:46:41.082+00	ef92db89-e8f5-459d-9dcc-6f7ab132cda9	5ab971b8-eeb8-4790-b980-ef239eec8698	SKU-MLG9RM6IY4U-150ml	น้ำเมล่อน	150ml	percent
ebe44b85-17a4-4d6f-a70a-7d9697277032	3357db72-3e45-4543-891c-da8a5eaa909d	5	96.30	0.00	0.00	481.50	481.50	\N	2026-02-12 08:07:15.489+00	2026-02-12 08:07:15.489+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-Joolz-1000	น้ำส้มคั้นสายน้ำผึ้ง	Joolz-1000	percent
2f17c4bf-f87e-48c0-af29-358ef60c8f34	a016e573-9daf-4942-8e97-4357a147384b	50	26.75	0.00	0.00	1337.50	1337.50	\N	2026-02-12 08:10:42.653+00	2026-02-12 08:10:42.653+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-Joolz-250	น้ำส้มคั้นสายน้ำผึ้ง	Joolz-250	percent
573468b2-d7e2-4c14-a1aa-30647ec434e2	a2102d29-547d-4e78-9e8a-9a5d28af9108	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-02-12 08:11:02.278+00	2026-02-12 08:11:02.278+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-Joolz-250	น้ำส้มคั้นสายน้ำผึ้ง	Joolz-250	percent
80447d12-27ba-48e4-bc31-414c0163aefb	17ba7dc3-573d-464a-a19f-fcfd30f9deea	25	25.00	0.00	0.00	625.00	625.00	\N	2026-02-12 08:17:49.018+00	2026-02-12 08:17:49.018+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-Joolz-250	น้ำส้มคั้นสายน้ำผึ้ง	Joolz-250	percent
4c6ac606-2bc4-4234-a33d-85e4e73323e8	e354e915-60e4-46a5-82d7-eaa226257b7a	1	150.00	0.00	0.00	150.00	150.00	\N	2026-02-12 08:20:01.559+00	2026-02-12 08:20:01.559+00	23b3e944-9a51-4bde-92cd-a1b19e1d255a	1a9101ec-4bb0-4900-86b5-5e80dc4ea45e	PRD-MKDVUCKM77G-ขนส่ง	ค่าขนส่ง	ขนส่ง	percent
53cbea84-fe5f-4417-93a1-7458bbd423fd	e354e915-60e4-46a5-82d7-eaa226257b7a	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-02-12 08:20:01.762+00	2026-02-12 08:20:01.762+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-Joolz-250	น้ำส้มคั้นสายน้ำผึ้ง	Joolz-250	percent
133509dd-c1cd-44a3-82aa-1658366e467a	a8aa6c29-df82-4966-875d-2b788d92cf28	100	25.00	0.00	0.00	2500.00	2500.00	\N	2026-02-12 08:22:03.485+00	2026-02-12 08:22:03.485+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-Joolz-250	น้ำส้มคั้นสายน้ำผึ้ง	Joolz-250	percent
5ed14414-94cb-4cc1-a4f8-0f41f5c48eca	54b29b7e-bd6a-4f36-97e2-ac76c4a7c3ca	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-02-12 08:23:54.69+00	2026-02-12 08:23:54.69+00	471c0674-15e4-4db6-b2a8-4bfb08dbfe7e	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-ขวดกลม-250	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม-250	percent
ee8dafde-fe64-4c4c-bf7f-f0b75eb1ac02	54b29b7e-bd6a-4f36-97e2-ac76c4a7c3ca	15	25.00	0.00	0.00	375.00	375.00	\N	2026-02-12 08:23:54.799+00	2026-02-12 08:23:54.799+00	284cdc9e-a648-4550-8ca6-87f9fcfcc88f	b653af70-8d46-4085-a8bd-90ff890015af	PRD-MIY1ONK9E0O-Joolz Honey Lemon ขนาด  250 ML.	น้ำเลมอนเนด	Joolz Honey Lemon ขนาด  250 ML.	percent
b4830676-d3f8-4077-8edf-c0f8e6ec915f	9f71cc19-f345-4581-9fe5-bdd5acedf2e7	15	25.00	0.00	0.00	375.00	375.00	\N	2026-02-12 09:08:37.214+00	2026-02-12 09:08:37.214+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-Joolz-250	น้ำส้มคั้นสายน้ำผึ้ง	Joolz-250	percent
2118e415-2421-4c01-acb9-7ab52fe5f830	9f71cc19-f345-4581-9fe5-bdd5acedf2e7	20	25.00	0.00	0.00	500.00	500.00	\N	2026-02-12 09:08:37.371+00	2026-02-12 09:08:37.371+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-Joolz-250	น้ำส้มคั้นสายน้ำผึ้ง	Joolz-250	percent
b4708a7e-f6bb-4bb1-a0f2-7f81c2fa21b8	5ac8e7c1-9bc3-4454-978d-4669446af0f0	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-02-12 10:47:50.105+00	2026-02-12 10:47:50.105+00	ad4501b4-3ef4-4280-90eb-f3d044cef700	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-ขวดแบน-250	น้ำส้มคั้นสายน้ำผึ้ง	ขวดแบน-250	percent
f52dbf91-1d02-4e71-8e17-de0fb7410cf1	6aea1149-8701-4847-a54e-4b3290bc67cd	40	25.00	0.00	0.00	1000.00	1000.00	\N	2026-02-12 12:26:21.784+00	2026-02-12 12:26:21.784+00	62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7-ขวดกลม	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกลม	percent
1bf98d7a-53cb-4c21-9a10-4c5598f117e1	6aea1149-8701-4847-a54e-4b3290bc67cd	20	25.00	0.00	0.00	500.00	500.00	\N	2026-02-12 12:26:21.918+00	2026-02-12 12:26:21.918+00	284cdc9e-a648-4550-8ca6-87f9fcfcc88f	b653af70-8d46-4085-a8bd-90ff890015af	PRD-MIY1ONK9E0O-Joolz Honey Lemon ขนาด  250 ML.	น้ำเลมอนเนด	Joolz Honey Lemon ขนาด  250 ML.	percent
b6ec9ba6-a142-4135-85c4-c206f0112ff7	6847c9df-71c9-47b6-9df6-2a5d1afd51c7	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-02-12 13:35:44.167+00	2026-02-12 13:35:44.167+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-Joolz-250	น้ำส้มคั้นสายน้ำผึ้ง	Joolz-250	percent
b4be83db-a2eb-45d9-867d-2fea773cd737	b5bdcf0e-e994-423a-96c0-e6f28c7a42ca	10	25.00	0.00	0.00	250.00	250.00	\N	2026-02-13 03:40:55.396+00	2026-02-13 03:40:55.396+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-Joolz-250	น้ำส้มคั้นสายน้ำผึ้ง	Joolz-250	percent
2ca138a5-bef3-4221-b868-379035986b51	b5bdcf0e-e994-423a-96c0-e6f28c7a42ca	20	25.00	0.00	0.00	500.00	500.00	\N	2026-02-13 03:40:55.522+00	2026-02-13 03:40:55.522+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-Joolz-250	น้ำส้มคั้นสายน้ำผึ้ง	Joolz-250	percent
889dcc91-7e06-4d66-ac0d-53f34daf7c70	c48e9212-0c96-495e-8b3f-a00c784ed596	50	25.00	0.00	0.00	1250.00	1250.00	\N	2026-02-13 03:42:09.396+00	2026-02-13 03:42:09.396+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-Joolz-250	น้ำส้มคั้นสายน้ำผึ้ง	Joolz-250	percent
4de2c39c-cdf5-4bdf-9819-fe3f78803535	725db179-38a5-4b83-9e16-c4060fd71e95	5	17.00	0.00	0.00	85.00	85.00	\N	2026-02-13 04:19:09.727+00	2026-02-13 04:19:09.727+00	6b08e982-d5a5-4236-a6c6-9f0e53b5b581	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-ขวดกั๊ก-150	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกั๊ก-150	percent
37fb25c1-f593-4a6d-ada7-620a66aa165f	24018131-2dde-4ce3-a026-78b53fa8785e	5	17.00	0.00	0.00	85.00	85.00	\N	2026-02-13 04:26:12.391+00	2026-02-13 04:26:12.391+00	6b08e982-d5a5-4236-a6c6-9f0e53b5b581	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-ขวดกั๊ก-150	น้ำส้มคั้นสายน้ำผึ้ง	ขวดกั๊ก-150	percent
da3baab8-7519-4ef9-9003-a3dae5690dda	932ed32e-f44d-4e58-a19d-56db664e11e8	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-02-13 04:26:55.574+00	2026-02-13 04:26:55.574+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-Joolz-1000	น้ำส้มคั้นสายน้ำผึ้ง	Joolz-1000	percent
8e4b2f07-501d-4f4b-8b90-640224bd9053	9554526a-806b-4f68-983c-5543b446980a	16	90.00	0.00	0.00	1440.00	1440.00	\N	2026-02-13 05:28:01.273+00	2026-02-13 05:28:01.273+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-Joolz-1000	น้ำส้มคั้นสายน้ำผึ้ง	Joolz-1000	percent
e4096ce2-e858-4f8f-bded-f7f30c801fd9	3bed8759-4032-46f2-96c1-6779240ac6c6	16	96.30	0.00	0.00	1540.80	1540.80	\N	2026-02-13 10:07:39.765+00	2026-02-13 10:07:39.765+00	2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-Joolz-1000	น้ำส้มคั้นสายน้ำผึ้ง	Joolz-1000	percent
92c860fe-1d4f-443a-a985-5704a94cf7ae	855939c1-350c-4747-8b50-a080bc7a7304	25	25.00	0.00	0.00	625.00	625.00	\N	2026-02-13 10:36:19.175+00	2026-02-13 10:36:19.175+00	51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE-Joolz-250	น้ำส้มคั้นสายน้ำผึ้ง	Joolz-250	percent
\.


--
-- Data for Name: order_shipments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_shipments (id, order_item_id, shipping_address_id, quantity, delivery_status, delivery_date, received_date, delivery_notes, created_at, updated_at, shipping_fee) FROM stdin;
3373c89a-16cf-46ae-b756-17db69093bb8	a00705c3-4f5b-41d1-9cca-b375c9adaa64	875b0009-caf8-4fa0-a7d9-899d4bb85a5c	1	pending	\N	\N	\N	2025-12-01 03:54:50.945+00	2025-12-01 03:54:50.945+00	0
bd8ea2b8-3e65-45e4-aabe-69ef3fa773c1	aab600ec-f11c-4797-a04c-3f690737a4fe	875b0009-caf8-4fa0-a7d9-899d4bb85a5c	1	pending	\N	\N	\N	2025-12-01 03:54:51.15+00	2025-12-01 03:54:51.15+00	0
0d5a2107-806a-4d93-9022-38dc2b7f7d6c	8a899538-fa26-48ae-8451-06e243a694f3	4d4085c3-fa39-49ac-a631-c5ae49edb251	1	pending	\N	\N	\N	2025-12-09 06:35:33.378+00	2025-12-09 06:35:33.378+00	0
b2859cdd-38fc-4f36-b18d-387471d090a5	d02b22fc-7dc8-488d-bbd8-1255ea94afd0	db930d1f-969f-42dd-b87c-6570ef9723fc	1	pending	\N	\N	\N	2025-12-09 06:35:33.676+00	2025-12-09 06:35:33.676+00	0
ddf4183b-1a7d-431b-be74-f9752e6b4730	f95486bb-ec8f-49fc-89e8-ebdb14a7abb3	4d4085c3-fa39-49ac-a631-c5ae49edb251	30	pending	\N	\N	\N	2025-12-09 06:38:22.418+00	2025-12-09 06:38:22.418+00	0
070a9f1f-c802-497b-8aae-5cc6364324e0	cd50c555-9eb5-4e79-ac28-c77f22544b43	db930d1f-969f-42dd-b87c-6570ef9723fc	20	pending	\N	\N	\N	2025-12-09 06:38:22.544+00	2025-12-09 06:38:22.544+00	0
ef4f1fa2-9a74-44c8-9395-bb5648ee50fd	e925131b-2fd1-4b21-97b3-b2ad99b230a5	041fe181-5066-4bdb-b82b-f452e05de22a	10	pending	\N	\N	\N	2025-12-15 16:49:05.517+00	2025-12-15 16:49:05.517+00	0
e80c6292-c95e-4246-8ed9-aa00b18b4fc0	397ce9f8-18d7-4fef-8a0c-99b88f13f00e	041fe181-5066-4bdb-b82b-f452e05de22a	40	pending	\N	\N	\N	2025-12-15 16:49:05.611+00	2025-12-15 16:49:05.611+00	0
21e14c4c-220c-46d4-8578-048d1a721678	4ed1d7f8-7340-4c1f-9020-496de2c27288	5ca47c05-ccb7-42ff-bc8d-c5edcb9582cc	50	pending	\N	\N	\N	2025-12-15 17:03:25.512+00	2025-12-15 17:03:25.512+00	0
093742dd-80a5-4da0-856a-08453f6b0e9e	1a0b9df2-fe7b-478b-ae81-e781bd862f38	4d4085c3-fa39-49ac-a631-c5ae49edb251	30	pending	\N	\N	\N	2025-12-15 17:04:01.098+00	2025-12-15 17:04:01.098+00	0
a7791235-205b-4584-8c90-0d093d7e5684	a06ab58f-2644-4cbd-979b-c8dada1abf02	6021e501-269f-4cda-9da0-f1527f743aa6	16	pending	\N	\N	\N	2025-12-15 17:05:34.696+00	2025-12-15 17:05:34.696+00	0
8c3e8343-5a9d-4cd1-8601-d48ff68e82f4	fa7f91b3-e7b2-48b7-8847-193eb38128f0	ee167ce8-69b1-47f0-8c77-1654e9093f09	20	pending	\N	\N	\N	2025-12-15 17:06:27.474+00	2025-12-15 17:06:27.474+00	0
5d5201ef-a85f-4fc5-b9fc-b609d220c476	88822a02-9b9e-48c6-a6aa-30fb34431cc1	ee167ce8-69b1-47f0-8c77-1654e9093f09	10	pending	\N	\N	\N	2025-12-15 17:06:27.593+00	2025-12-15 17:06:27.593+00	0
45c6795a-f8ef-4385-94f5-d46249a3c91f	f97d0a5d-e93e-4cf1-9f65-9840ed102a3c	690a3895-f316-4b15-97ec-d34fbe6c8ae3	50	pending	\N	\N	\N	2025-12-15 17:07:02.973+00	2025-12-15 17:07:02.973+00	0
47d6860f-d732-4036-ae10-ff5ca297330b	6a109e53-d44e-4f7f-b9e0-595e2dbd58a2	bbebbb72-69f8-4a34-a5bd-c9580036ba14	2	pending	\N	\N	\N	2025-12-15 17:16:46.494+00	2025-12-15 17:16:46.494+00	0
f7e8baff-1abc-47f4-a323-610a45e71af4	e2d0313a-798a-4618-ad10-49ed6a5ca9a6	bbebbb72-69f8-4a34-a5bd-c9580036ba14	14	pending	\N	\N	\N	2025-12-15 17:16:46.618+00	2025-12-15 17:16:46.618+00	0
9248c3b1-9762-447b-866d-5a0f74e39043	95205a9b-0249-4ad3-965b-dc60ef57162b	8e80ecf1-e4ff-426a-bec1-e5fa2c72bfb8	25	pending	\N	\N	\N	2025-12-15 17:18:26.716+00	2025-12-15 17:18:26.716+00	0
52595beb-6810-444b-aaf1-1cdecf623590	c97c5f51-13d3-40fa-a670-42873c9fda86	ad71e81f-c73f-4a0d-820a-79ffa859b5e6	50	pending	\N	\N	\N	2025-12-16 09:56:33.505+00	2025-12-16 09:56:33.505+00	0
cef874ec-0dfe-4249-b076-d753b6974447	dac61a53-414c-4c42-b934-abf2e763cff7	6f31cc53-58fe-4e43-9ffb-6393d876c003	50	pending	\N	\N	\N	2025-12-16 10:13:46.151+00	2025-12-16 10:13:46.151+00	0
c8e4338f-1a35-432a-b0a6-0414a4412acc	0a77f852-a580-495d-875e-96e7313ec978	42c272d7-7fd5-412b-8ba6-ca5095122ea1	25	pending	\N	\N	\N	2025-12-16 10:16:12.671+00	2025-12-16 10:16:12.671+00	0
7c9444bf-f290-4654-ba6c-5327a4a68fa4	5bb0fb52-5f6a-4d49-94db-1dadc660a965	118bc7c4-39e6-4229-93d3-cd2d4ef74906	15	pending	\N	\N	\N	2025-12-16 10:21:20.361+00	2025-12-16 10:21:20.361+00	0
5e482ee9-0292-4107-b1ea-25f139a4a53d	8488f49d-04db-4411-99e8-29d3d6e975a6	8b7b08f5-3e60-4b17-97e2-33bb8de0f517	50	pending	\N	\N	\N	2025-12-16 10:23:19.872+00	2025-12-16 10:23:19.872+00	0
ca081145-752a-4cf6-8f07-6e23b19e7e59	2a72f90b-36a8-4128-8141-9dcca1ed8d02	c4c9694b-a1c3-45d4-88c6-f7ab0570450f	10	pending	\N	\N	\N	2025-12-16 10:24:53.738+00	2025-12-16 10:24:53.738+00	0
b3f78f1a-8ff2-4206-bbf1-3e31347cf28b	08ee726a-0484-45bf-8f2c-dfac7ec89e28	97a751d1-4361-4126-b5e4-472a63dc72ab	125	pending	\N	\N	\N	2025-12-16 10:27:40.14+00	2025-12-16 10:27:40.14+00	0
dcf57824-16aa-403c-9fcb-40067f0ca9e8	e4dd7d67-8cfa-48d8-b45f-0fd3aeae6c07	97a751d1-4361-4126-b5e4-472a63dc72ab	125	pending	\N	\N	\N	2025-12-16 10:31:20.175+00	2025-12-16 10:31:20.175+00	0
525c8b3f-5c22-4ea3-b183-dac5664ea9c6	c686e858-c1c0-425c-8691-e197f88ace2a	be3d6c26-17b6-42b8-bd08-c65d0a4d1187	300	pending	\N	\N	\N	2025-12-17 10:15:36.501+00	2025-12-17 10:15:36.501+00	0
690b33fb-1ded-4685-ad9a-9df0b8b6fc6e	7181b4b0-f26c-4e05-bec1-dc4c12a3f19f	68633360-f36b-4994-8251-2231cbda3b3b	50	pending	\N	\N	\N	2025-12-17 10:16:12.943+00	2025-12-17 10:16:12.943+00	0
16cde569-9346-4ae6-9ca7-817786bb17b2	d09e5175-a9e5-4c52-9cea-6925955ab109	91962800-44a5-4b8c-a569-c041797eb777	50	pending	\N	\N	\N	2025-12-17 10:17:41.171+00	2025-12-17 10:17:41.171+00	0
94837337-5112-4349-a2cd-e5d36d667e11	c1c79e22-653b-42b7-845c-fc3195c4d91c	2b004b62-9551-4241-9e49-ce0fab0b532f	50	pending	\N	\N	\N	2025-12-17 10:19:29.36+00	2025-12-17 10:19:29.36+00	0
1a187393-33f5-45ae-98ea-df0e64dc59e9	1c8f81b6-5447-414e-bd95-972410e4b066	5d1639cd-151e-4dfd-909b-61d46843e86d	50	pending	\N	\N	\N	2025-12-17 10:20:07.566+00	2025-12-17 10:20:07.566+00	0
5dfcee7b-b9e5-4e4f-9c81-0cfc6e78f796	d8809861-89cc-4dc9-8e63-d1d278ad2574	a03de010-00f5-4221-9528-59605c81139f	16	pending	\N	\N	\N	2025-12-17 10:20:40.807+00	2025-12-17 10:20:40.807+00	0
b789b921-4322-4c33-bff4-b633468b1d10	1db4bfc0-44e2-4d33-afac-ef816e748ab8	97a751d1-4361-4126-b5e4-472a63dc72ab	25	pending	\N	\N	\N	2025-12-17 10:22:07.1+00	2025-12-17 10:22:07.1+00	0
f331c6a9-76d2-4491-bf31-b48b9112d168	8ca44f31-384d-497d-8dcc-0eb0cf8be125	97a751d1-4361-4126-b5e4-472a63dc72ab	30	pending	\N	\N	\N	2025-12-17 10:22:07.231+00	2025-12-17 10:22:07.231+00	0
8602f0bc-8c96-4082-8707-141e89e6374c	9a72fb6b-8dea-43f1-9a08-1403203d51c1	32960b0c-db73-4210-a1ee-ab84a4416c3a	25	pending	\N	\N	\N	2025-12-21 04:32:28.281+00	2025-12-21 04:32:28.281+00	0
495c545f-f7c2-4ede-aed9-445294c201a1	6cb8bc10-e5a4-400d-a846-c630cc00ebf7	118bc7c4-39e6-4229-93d3-cd2d4ef74906	45	pending	\N	\N	\N	2025-12-21 04:33:32.137+00	2025-12-21 04:33:32.137+00	0
050bfd04-68a5-4f68-b607-0a582542d99f	98710156-2a63-48c4-a3d8-049035c6b7dd	ad71e81f-c73f-4a0d-820a-79ffa859b5e6	50	pending	\N	\N	\N	2025-12-21 09:12:09.799+00	2025-12-21 09:12:09.799+00	0
9dc2e3a4-d47d-4af3-ad32-e8733ee49dec	e8da691d-6ce7-458d-a925-023a66b8ef73	6e6fd0b4-a12d-47fb-8490-a9a3a7705ed1	100	pending	\N	\N	\N	2026-01-03 04:29:16.43+00	2026-01-03 04:29:16.43+00	0
f3a9c7e9-7edb-4e8a-8379-cf70b9b5a5b5	e2bb0a0b-3836-4288-bd93-ad86ed697332	6098aff4-496d-48db-8c00-6c4f0b692ccd	50	pending	\N	\N	\N	2026-01-03 04:30:46.608+00	2026-01-03 04:30:46.608+00	0
0211ef3a-55ae-4eda-ae67-8c0f2e5f343b	48ce2898-378e-4d3e-ad54-3be98ccce884	dc745476-e021-429c-8f06-b959f4e30e17	20	pending	\N	\N	\N	2026-01-03 04:32:20.134+00	2026-01-03 04:32:20.134+00	0
5bb56760-2468-4346-88dc-454d043fbed7	3f2044f6-8f8b-42db-b5fc-ef013980dd5a	fff6d7c9-fc46-4f08-ab7d-3aad9573a4ee	25	pending	\N	\N	\N	2026-01-03 04:33:02.037+00	2026-01-03 04:33:02.037+00	0
0b0403a2-5b61-4d20-ab53-c87eccf3f651	12ad7e16-37c2-48f4-a253-b7bea7f7457e	df5f379f-f0c8-4699-bd19-7072f01244c5	50	pending	\N	\N	\N	2026-01-03 04:36:29.043+00	2026-01-03 04:36:29.043+00	0
0e7b5b1c-18fc-4393-bbb8-248a65b32a4e	3a7909fc-aee8-4e39-88a5-f0db111b757c	6021e501-269f-4cda-9da0-f1527f743aa6	16	pending	\N	\N	\N	2026-01-03 04:37:03.913+00	2026-01-03 04:37:03.913+00	0
7cb6582a-5d9a-4737-a24b-497986022c7b	0e7c78db-e9d9-4e6b-8e56-26e09c7116b9	f40518e5-150b-4b58-9dc2-a91f517000fc	16	pending	\N	\N	\N	2026-01-03 04:44:06.847+00	2026-01-03 04:44:06.847+00	0
88f12f3d-8198-421e-83ac-ec706d166612	65b91f8d-aeee-4b44-9df6-c952a80b11a2	db930d1f-969f-42dd-b87c-6570ef9723fc	25	pending	\N	\N	\N	2026-01-03 04:45:52.14+00	2026-01-03 04:45:52.14+00	0
3870e391-2678-42d8-81c4-bc0e1ca1ebbb	8cb9af12-897a-499f-9124-6865f5fe2f2f	4d4085c3-fa39-49ac-a631-c5ae49edb251	30	pending	\N	\N	\N	2026-01-03 04:45:52.42+00	2026-01-03 04:45:52.42+00	0
52bf316c-8697-463c-85c2-584c7d815c7c	c880bac3-43c2-4640-8395-685e8b5a570d	66767a9b-1e76-44e6-b01d-caaea496c888	50	pending	\N	\N	\N	2026-01-03 04:46:52.699+00	2026-01-03 04:46:52.699+00	0
c6b9769d-834e-4fa3-9728-6b74584e7212	d17b66a6-fd52-4458-b0e5-c867540b554e	ca2cba73-597f-47ef-9396-3da28da7a8d2	15	pending	\N	\N	\N	2026-01-03 04:48:03.482+00	2026-01-03 04:48:03.482+00	0
d1cc30f2-faee-4a29-8986-f3545b933ac2	b574e358-8dc0-48c7-b098-4e7a992048d6	8e80ecf1-e4ff-426a-bec1-e5fa2c72bfb8	25	pending	\N	\N	\N	2026-01-03 05:11:15.299+00	2026-01-03 05:11:15.299+00	0
4f5ded8d-89b4-42d8-b91f-45ef6b2e8669	f1cd1d8e-c663-4922-811e-d7ab19afe02c	99c59ef0-4983-4899-a2e4-4e871870c5e0	50	pending	\N	\N	\N	2026-01-03 05:16:23.822+00	2026-01-03 05:16:23.822+00	0
b282a684-20e8-4357-952b-ecb5e7fec9d4	edaa41f6-991a-4980-b54d-4e08c186d65e	315f8b49-729a-48f4-b88d-8955ee0ae616	50	pending	\N	\N	\N	2026-01-03 05:19:07.319+00	2026-01-03 05:19:07.319+00	0
ee543d3f-145b-4940-a4ab-95ea6a3f640d	08bc396b-9b26-4a88-b052-a69987df8c22	a03de010-00f5-4221-9528-59605c81139f	16	pending	\N	\N	\N	2026-01-03 05:20:01.44+00	2026-01-03 05:20:01.44+00	0
2cd1d432-a41c-4a0a-83b1-29108defee07	c20360b5-8b4f-4e8d-8cd3-1f59f8625251	a7b45f16-511b-481c-821a-1ea7129d96ac	50	pending	\N	\N	\N	2026-01-03 05:22:00.043+00	2026-01-03 05:22:00.043+00	0
667ba039-ff78-4907-bbdb-16ee06c4d917	16d3401d-ceb9-47f6-b2ef-a27730e89712	8a6dc3e1-8874-4864-b2df-848727acb3b0	50	pending	\N	\N	\N	2026-01-03 05:23:51.554+00	2026-01-03 05:23:51.554+00	0
89eb82b0-a235-489e-8147-9891f1ffef2b	af2fb08b-3068-494e-88cc-07a19df0ed22	ab7d890a-e170-438e-91a1-fc19c520d78e	25	pending	\N	\N	\N	2026-01-03 05:28:55.84+00	2026-01-03 05:28:55.84+00	0
9ea5bf2a-6d0a-4a9f-b121-e3f13c1310b3	c92d3546-dbdc-4d13-8b50-5403af7a1b1c	96e1f734-b297-480e-8e4c-685f4ad34f61	20	pending	\N	\N	\N	2026-01-03 05:28:55.963+00	2026-01-03 05:28:55.963+00	0
ea1612af-6af1-47e1-842a-6f3e7e9d1196	f33d6e55-f480-46cc-877a-53c880c0698e	7f8d20b5-3be8-45bc-aecd-4a1b0f81437b	50	pending	\N	\N	\N	2026-01-05 06:25:08.503+00	2026-01-05 06:25:08.503+00	0
31c706b9-a4bc-486f-8ee6-b72657f9f45d	9f6c4098-440d-4418-af5e-61ffded0da51	edb1729f-bb69-4edd-802a-78d3494466d0	16	pending	\N	\N	\N	2026-01-05 06:58:54.515+00	2026-01-05 06:58:54.515+00	0
72a8afc0-230f-4a22-b68f-99277e074e27	35e3a07e-fb4f-4a33-af89-613dcbc8c02e	58fa74a1-8f2b-4ea7-b0a1-1ece5eb0beab	16	pending	\N	\N	\N	2026-01-05 07:00:34.082+00	2026-01-05 07:00:34.082+00	0
00c6d200-d687-45dd-ba3a-db3613c3b708	67d3f849-f79c-4764-8b71-fb1870baafa5	875b0009-caf8-4fa0-a7d9-899d4bb85a5c	100	pending	\N	\N	\N	2026-01-05 07:03:03.806+00	2026-01-05 07:03:03.806+00	0
2c754ec0-bc83-41db-b931-d715bafe5257	dd73af22-7a7b-47d8-a0be-02392a89d280	ad71e81f-c73f-4a0d-820a-79ffa859b5e6	50	pending	\N	\N	\N	2026-01-05 07:03:48.366+00	2026-01-05 07:03:48.366+00	0
5e17d813-d221-4a3d-b0d5-c19365de61c0	f8c2ff03-302e-49ba-9f2b-4452e6ccfc22	6f31cc53-58fe-4e43-9ffb-6393d876c003	50	pending	\N	\N	\N	2026-01-05 07:13:54.676+00	2026-01-05 07:13:54.676+00	0
da9c4133-6a6c-44b8-aeff-2cff4741fd22	1470223e-99e7-45f5-86c4-09796e0a218f	df5f379f-f0c8-4699-bd19-7072f01244c5	100	pending	\N	\N	\N	2026-01-05 07:14:28.221+00	2026-01-05 07:14:28.221+00	0
4d707d38-33a2-4b21-90b3-39dc7305c086	e741c207-c953-4955-9a38-16a2e34c692f	b5a401d3-3dc3-4706-838e-d8668fbf17da	16	pending	\N	\N	\N	2026-01-05 07:17:18.746+00	2026-01-05 07:17:18.746+00	0
25f590d6-2d29-4cf8-acfe-17374e45f84c	436371b5-f404-454a-af28-3a709f90ca73	48082142-4135-4062-a8dc-936a19141ee2	5	pending	\N	\N	\N	2026-01-05 07:19:40.87+00	2026-01-05 07:19:40.87+00	0
2d70b43e-0e97-4430-b4e5-e869e0c1e75f	25ef8f24-7d30-4640-87a5-26aaca33a74a	0866c25a-32c2-454c-bc8f-796aaa90373f	50	pending	\N	\N	\N	2026-01-05 07:21:54.842+00	2026-01-05 07:21:54.842+00	0
89080e5a-2218-444a-8cb2-a2404a522181	aea06599-94c9-43b7-8ba7-9681bc417c8b	6098aff4-496d-48db-8c00-6c4f0b692ccd	40	pending	\N	\N	\N	2026-01-05 07:23:07.876+00	2026-01-05 07:23:07.876+00	0
e48fff49-91ac-4d4a-b8d2-4652d867a550	4c2363c2-e6fa-4d28-a7a3-bc7ee572e268	8c3560e3-1fb5-4cb2-8337-36e1ecaffd1b	14	pending	\N	\N	\N	2026-01-05 07:27:26.055+00	2026-01-05 07:27:26.055+00	0
e3cdf5a2-39e1-48f2-a442-371769a45401	57f158d8-3919-4068-9957-29cddd566a51	6f31cc53-58fe-4e43-9ffb-6393d876c003	50	pending	\N	\N	\N	2026-01-05 07:29:45.974+00	2026-01-05 07:29:45.974+00	0
02d28d6e-dcb4-4b69-ba50-4f155c51ef50	bb25971e-da0a-4f43-9255-aa77491abad3	6f31cc53-58fe-4e43-9ffb-6393d876c003	50	pending	\N	\N	\N	2026-01-05 07:29:46.1+00	2026-01-05 07:29:46.1+00	0
409a3c12-373c-4a88-a8cf-6171cc6748ef	5cca333f-c721-4009-97cd-74e3b5bedf2e	99c59ef0-4983-4899-a2e4-4e871870c5e0	50	pending	\N	\N	\N	2026-01-05 07:30:32.147+00	2026-01-05 07:30:32.147+00	0
a893d8c6-0e6b-4093-af95-38829e7230b3	182d84eb-6014-4f6a-91d4-6f52c997c739	dc745476-e021-429c-8f06-b959f4e30e17	20	pending	\N	\N	\N	2026-01-05 07:31:53.779+00	2026-01-05 07:31:53.779+00	0
d96970ce-c4f7-41a2-8e36-0a31adc0c609	f6e0ed25-333b-410e-b7b8-4584308c2bd9	3f585a52-9e4f-4ca6-92d1-dcff84ded283	50	pending	\N	\N	\N	2026-01-05 07:36:05.241+00	2026-01-05 07:36:05.241+00	0
7e2c34bf-25e1-4014-9c74-516fbd4b72a3	a95d2217-44ce-4b85-87aa-3aa10098e882	a03de010-00f5-4221-9528-59605c81139f	16	pending	\N	\N	\N	2026-01-05 07:36:59.921+00	2026-01-05 07:36:59.921+00	0
7a9a50c7-fdd7-4460-8215-db46338b4e2d	af17ac35-23d3-43e7-9736-92cef465b5b8	690a3895-f316-4b15-97ec-d34fbe6c8ae3	50	pending	\N	\N	\N	2026-01-05 07:37:44.518+00	2026-01-05 07:37:44.518+00	0
cf4b4528-f1d9-4300-b9cb-2d5473f213ac	486055e4-8c90-4af5-9227-d45939460533	9300e05b-ad50-4812-aec4-f915860583bc	16	pending	\N	\N	\N	2026-01-05 07:41:22.293+00	2026-01-05 07:41:22.293+00	0
c93da8bd-d367-46ab-93f2-109bc86d2ce1	692bf9f2-d740-4a0c-a70c-5f9ab554d169	ad71e81f-c73f-4a0d-820a-79ffa859b5e6	50	pending	\N	\N	\N	2026-01-05 07:48:32.646+00	2026-01-05 07:48:32.646+00	0
e7455832-051b-443e-9b5d-a3fb590dad65	d5407f9b-ce45-4959-8d11-b64607015ed8	a03de010-00f5-4221-9528-59605c81139f	16	pending	\N	\N	\N	2026-01-05 07:55:07.939+00	2026-01-05 07:55:07.939+00	0
e4159fff-317a-4820-b7e9-6af543cc1ffc	eef24e2b-6e92-4b22-be84-541769229a84	8c3560e3-1fb5-4cb2-8337-36e1ecaffd1b	25	pending	\N	\N	\N	2026-01-05 08:02:25.1+00	2026-01-05 08:02:25.1+00	0
84d54c48-c62d-476f-b437-ff131642afbf	c9278412-3e89-4a24-8ddd-4a629e2dec94	f0be0232-0ea6-44bf-a0c5-a0e9ee99acc4	10	pending	\N	\N	\N	2026-01-05 08:02:25.27+00	2026-01-05 08:02:25.27+00	0
250db8dc-9c46-473b-9459-d6ee09925f1c	a4182ec4-da84-47c2-85ae-4ade8a937b6a	644cdb67-ad3c-4465-8bef-7cee68d9a6e1	20	pending	\N	\N	\N	2026-01-05 08:02:25.428+00	2026-01-05 08:02:25.428+00	0
cffbfdc0-7c76-48a9-bfa1-4bbc8acb3ca1	8c5c40f3-5f30-41e4-976b-6681ae4ac7e2	4a130524-f4a3-4182-baa8-82419469b72e	25	pending	\N	\N	\N	2026-01-05 08:02:25.568+00	2026-01-05 08:02:25.568+00	0
e405d4e9-7bd3-4107-bcb7-3f9bd9b49ba6	4e2fc7b9-2a3a-4889-a654-792c95f91061	eaaf3864-e89d-4d2e-b350-bf873be702be	30	pending	\N	\N	\N	2026-01-05 08:03:58.58+00	2026-01-05 08:03:58.58+00	0
bd5c37df-92e9-4919-97dd-423e8c56f3d4	2a6408cd-8d23-4fdc-bd82-9e8c134f79af	b7ec21bd-e8ac-4c04-9de3-473e27d03512	50	pending	\N	\N	\N	2026-01-05 08:06:29.995+00	2026-01-05 08:06:29.995+00	0
e7f6e254-0227-4398-bf1d-9d1a1908999b	df47d30d-605e-4c14-8cce-5c8af3462845	b7ec21bd-e8ac-4c04-9de3-473e27d03512	1	pending	\N	\N	\N	2026-01-05 08:06:30.117+00	2026-01-05 08:06:30.117+00	0
bbabcdb4-797e-4c66-9eac-9270181a545c	ca6b347f-96b1-4451-8420-a12c58837008	b7ec21bd-e8ac-4c04-9de3-473e27d03512	1	pending	\N	\N	\N	2026-01-05 08:06:30.244+00	2026-01-05 08:06:30.244+00	0
c6bc8c8d-2994-4045-b92d-da1f02a30a1a	7caec4ee-689d-4c2f-a75f-640f40bf9d05	3ce450cd-236a-41af-9365-f52221c1cd27	50	pending	\N	\N	\N	2026-01-05 08:07:32.911+00	2026-01-05 08:07:32.911+00	0
c8285227-82e8-4924-8184-098a1a456526	22b045c4-2cc3-4952-949a-efb7a471c70a	4d4085c3-fa39-49ac-a631-c5ae49edb251	30	pending	\N	\N	\N	2026-01-05 08:09:00.572+00	2026-01-05 08:09:00.572+00	0
594d7be5-a38f-43a6-b9aa-73398b2b18f7	3eb58599-e19f-473c-9339-384897376a9f	db930d1f-969f-42dd-b87c-6570ef9723fc	20	pending	\N	\N	\N	2026-01-05 08:11:51.024+00	2026-01-05 08:11:51.024+00	0
11409411-5921-429b-85d6-3d762a461974	4bc1128d-a208-444c-8699-4806ea39b159	6021e501-269f-4cda-9da0-f1527f743aa6	16	pending	\N	\N	\N	2026-01-05 08:12:22.715+00	2026-01-05 08:12:22.715+00	0
e3387477-29b4-4d8b-8c2b-4faf1e0fd7a2	db940651-f17b-4239-90bd-a2a6373b626b	dc745476-e021-429c-8f06-b959f4e30e17	30	pending	\N	\N	\N	2026-01-05 08:12:55.413+00	2026-01-05 08:12:55.413+00	0
fd3a138f-4821-4d18-a984-807397a69073	6240815b-72bb-4741-a705-fe364b867591	5f66ff92-70f7-4f94-b5a2-2b8c6051d9b0	50	pending	\N	\N	\N	2026-01-05 08:14:22.143+00	2026-01-05 08:14:22.143+00	0
385894b3-e031-4180-817b-a48822061431	fdf164e3-d3b7-4160-8a3b-bf7eac6b8fd4	315f8b49-729a-48f4-b88d-8955ee0ae616	50	pending	\N	\N	\N	2026-01-05 08:15:10.461+00	2026-01-05 08:15:10.461+00	0
14fcc139-411a-42a1-9a61-317a4b78bf38	994e8617-c7b7-4c45-8ab8-4ec29ce86d42	7f8d20b5-3be8-45bc-aecd-4a1b0f81437b	60	pending	\N	\N	\N	2026-01-05 08:16:06.377+00	2026-01-05 08:16:06.377+00	0
37e589ea-3b0e-444c-9782-5588b5c41974	821cf154-5302-4dc5-b273-eb64d53f3462	7f8d20b5-3be8-45bc-aecd-4a1b0f81437b	20	pending	\N	\N	\N	2026-01-05 08:16:06.521+00	2026-01-05 08:16:06.521+00	0
24f4168b-9f87-44a9-9063-a84e26b4d404	82fc9c15-bde0-4d54-8f7a-d8ff739d295b	ad71e81f-c73f-4a0d-820a-79ffa859b5e6	50	pending	\N	\N	\N	2026-01-05 08:16:32.861+00	2026-01-05 08:16:32.861+00	0
f0614676-4d9b-40bb-8ce7-fe27d9e8f47d	44327825-4e48-4ddc-9b4e-ebd7a3fb76ea	8b7de9c9-384f-4f7e-a589-a8f60619e43b	50	pending	\N	\N	\N	2026-01-05 08:18:14.293+00	2026-01-05 08:18:14.293+00	0
03ffd630-ac17-4bcc-9546-9625aa9d0e1c	c6f75540-48e6-49df-891e-1f14f3a56a2c	0629d403-a1f1-4658-9cb5-f45ba3f1ad3b	20	pending	\N	\N	\N	2026-01-05 08:24:42.409+00	2026-01-05 08:24:42.409+00	0
b06e1c16-f2a1-4453-8a3e-6cda340a860d	a454cdd7-fee6-45e0-ac3b-27f24bf1af53	c63e3ff7-0ec2-4f2f-b3ea-99f236b2bd64	35	pending	\N	\N	\N	2026-01-05 08:24:42.571+00	2026-01-05 08:24:42.571+00	0
04d27e2d-ecf4-4244-9671-5eb92b19cd6c	c93ac7ea-5692-41de-a2d0-1dcb5a8793f1	44677818-d0b3-48e5-ba78-a8cb6764ed92	35	pending	\N	\N	\N	2026-01-05 08:24:42.781+00	2026-01-05 08:24:42.781+00	0
a707485a-5381-48ec-9413-6e72f4d6dc00	6b35c1d3-8c1a-49fa-ac61-9b103bc5a24b	9300e05b-ad50-4812-aec4-f915860583bc	16	pending	\N	\N	\N	2026-01-05 08:25:14.025+00	2026-01-05 08:25:14.025+00	0
73099d03-c6c2-4e3a-9a47-4fde50d56da5	1bfe5f13-b99c-420d-aa2e-b45584539cab	ad71e81f-c73f-4a0d-820a-79ffa859b5e6	50	pending	\N	\N	\N	2026-01-05 08:25:42.694+00	2026-01-05 08:25:42.694+00	0
0d19ce0b-bf6d-41b0-9766-387b5cc13855	e335073f-72c2-4fa0-9ff9-cbb49f2076f1	fc7409f0-b2ab-4e42-bd6d-7b69456951a2	16	pending	\N	\N	\N	2026-01-14 10:24:19.935+00	2026-01-14 10:24:19.935+00	0
e29776d5-41be-4807-89cd-3552d5563f8d	d00d4f0a-8cce-422c-abcc-1eb431f055ba	7b7d4218-f064-43b4-a68e-6360a1e8cbc5	50	pending	\N	\N	\N	2026-01-14 10:26:13.422+00	2026-01-14 10:26:13.422+00	0
89113cf5-060c-4e40-81ad-c8b2572f8228	571922bb-4dd6-4f38-8be8-6508ce7dbbfa	e938e9ff-7bce-48a2-b367-69eb05f9fbb6	16	pending	\N	\N	\N	2026-01-14 10:27:58.831+00	2026-01-14 10:27:58.831+00	0
bdd17d39-58b4-4fbc-8a2e-b1fdf00dab3a	7a05aa1a-6f46-4ea9-ac9d-fb39e9e8dd8b	a12ba315-1acc-4ff2-bf5a-a4821e39c451	40	pending	\N	\N	\N	2026-01-14 10:29:34.888+00	2026-01-14 10:29:34.888+00	0
66700285-5478-4d0b-839e-968ba79ada60	6420b5f7-1b3e-4094-acd8-a5fafd7dc4eb	32960b0c-db73-4210-a1ee-ab84a4416c3a	35	pending	\N	\N	\N	2026-01-14 10:30:35.693+00	2026-01-14 10:30:35.693+00	0
82d19770-486c-45c5-ad5a-92ad41fab272	8d1efaee-11aa-497b-8f17-df73ac9dfb32	32960b0c-db73-4210-a1ee-ab84a4416c3a	5	pending	\N	\N	\N	2026-01-14 10:30:35.794+00	2026-01-14 10:30:35.794+00	0
52d10d31-2136-4179-95e9-b9cd1e66be32	2e2c2ad8-f052-4766-872d-f54043657aa1	70954a65-ce41-42b5-822b-f60b44c0e4f1	50	pending	\N	\N	\N	2026-01-14 10:40:17.304+00	2026-01-14 10:40:17.304+00	0
e999293e-1b6d-43a5-b566-e8a3bfbd7cc8	6437281a-fa53-453b-b6ce-af01c200a27b	70954a65-ce41-42b5-822b-f60b44c0e4f1	1	pending	\N	\N	\N	2026-01-14 10:40:17.45+00	2026-01-14 10:40:17.45+00	0
51ca5057-b5c2-49d9-bcbd-98d07127e0f0	c2222bff-47de-49d1-a06a-1f6dfd4babbc	690a3895-f316-4b15-97ec-d34fbe6c8ae3	50	pending	\N	\N	\N	2026-01-14 11:10:38.906+00	2026-01-14 11:10:38.906+00	0
e3f7c87c-1939-4c6b-8224-77d606efda4b	376110e8-8228-4afe-b52f-65c89f48b2b7	118bc7c4-39e6-4229-93d3-cd2d4ef74906	25	pending	\N	\N	\N	2026-01-16 09:28:40.397+00	2026-01-16 09:28:40.397+00	0
5baf7cfd-d22f-49dc-b5e2-3d121ccd2c96	6a07dd50-0e13-4b31-9ab0-3af1246d217e	a03de010-00f5-4221-9528-59605c81139f	16	pending	\N	\N	\N	2026-01-16 09:29:07.989+00	2026-01-16 09:29:07.989+00	0
8d87a178-5b86-4857-b255-e62df2e0ca91	2a396485-2620-4734-9e9f-1b7026fd5cf4	4d4085c3-fa39-49ac-a631-c5ae49edb251	30	pending	\N	\N	\N	2026-01-16 09:29:56.676+00	2026-01-16 09:29:56.676+00	0
1a34ffe0-a8a8-4b3b-82a3-194b800a3291	38b05013-d970-4cb3-85f5-6fbc83d893ef	db930d1f-969f-42dd-b87c-6570ef9723fc	20	pending	\N	\N	\N	2026-01-16 09:30:25.877+00	2026-01-16 09:30:25.877+00	0
4123f9b1-b839-4b32-bda7-ad4ad59a9ad9	4ff0b59a-7c97-4771-bc0b-88aefb9c6e74	6021e501-269f-4cda-9da0-f1527f743aa6	16	pending	\N	\N	\N	2026-01-16 09:31:31.341+00	2026-01-16 09:31:31.341+00	0
560d572f-ec22-4ef7-b659-faea51e3d8bf	d73891f6-050e-4066-b607-0b248a1dba6a	ab387d47-49e3-42e1-8e02-728d239dd42c	40	pending	\N	\N	\N	2026-01-18 09:56:35.547+00	2026-01-18 09:56:35.547+00	0
8422dd4e-c358-4c4d-a138-2f040ebd99e3	a0be6d3b-88ec-46ba-8ff3-e33ad68df85f	36a2eb66-9294-4b22-9844-ad15d35e13cf	50	pending	\N	\N	\N	2026-01-18 09:57:47.677+00	2026-01-18 09:57:47.677+00	0
92bef912-ef1f-4f37-9737-943c745e9bf0	048d15a6-318e-44d1-bb87-3ba1562bf698	118bc7c4-39e6-4229-93d3-cd2d4ef74906	55	pending	\N	\N	\N	2026-01-18 09:58:32.223+00	2026-01-18 09:58:32.223+00	0
20a4f1b2-7eab-4593-94b0-69a9c0cadc99	52766515-313a-4c27-b84d-63b5d1bec323	a827199c-5e23-447b-bab8-78613e9dbb4e	50	pending	\N	\N	\N	2026-01-18 10:00:14.387+00	2026-01-18 10:00:14.387+00	0
6c7b7676-5c36-4e20-83f4-be27fa1464b4	6ed34d15-122e-4391-b6b8-03567e37d609	df5f379f-f0c8-4699-bd19-7072f01244c5	50	pending	\N	\N	\N	2026-01-18 10:01:39.958+00	2026-01-18 10:01:39.958+00	0
1c0d46b6-de92-47c0-9465-36802afe0ac9	823815eb-439a-47e2-bbce-48141e7dd4ea	ad71e81f-c73f-4a0d-820a-79ffa859b5e6	50	pending	\N	\N	\N	2026-01-18 10:02:09.801+00	2026-01-18 10:02:09.801+00	0
98d45e53-2dbe-4727-804e-2349f4893116	0453c3e4-59be-46c3-9e99-fe6221df344c	97a751d1-4361-4126-b5e4-472a63dc72ab	30	pending	\N	\N	\N	2026-01-18 10:02:52.071+00	2026-01-18 10:02:52.071+00	0
63ad1db4-8117-4ca1-93d3-8656243108e7	02124dcd-4cad-4db5-8c74-67cfc7b53422	97a751d1-4361-4126-b5e4-472a63dc72ab	20	pending	\N	\N	\N	2026-01-18 10:02:52.221+00	2026-01-18 10:02:52.221+00	0
0d07d9c4-49a2-4acc-86e5-bc577bc8604f	e65fd2ba-bd27-4108-ab61-3664f6dd900f	0629d403-a1f1-4658-9cb5-f45ba3f1ad3b	115	pending	\N	\N	\N	2026-01-18 10:03:26.64+00	2026-01-18 10:03:26.64+00	0
8493d2e4-e59c-47a3-a397-8d0bb3af2a07	f8618e62-8dc1-420a-b855-38915db9f7bc	8e80ecf1-e4ff-426a-bec1-e5fa2c72bfb8	25	pending	\N	\N	\N	2026-01-19 10:37:21.27+00	2026-01-19 10:37:21.27+00	0
f1e56b39-27a8-435a-919b-371bd3e7118c	814a0409-ccf7-4755-8c08-19fc17e2ec22	117f1233-096d-4669-b09d-e586195b4077	30	pending	\N	\N	\N	2026-01-19 10:40:24.554+00	2026-01-19 10:40:24.554+00	0
06c61cda-d5b3-414a-8765-7c729d5ca90d	e8759922-8c18-4cf2-a8cd-eb16b9e24863	fff6d7c9-fc46-4f08-ab7d-3aad9573a4ee	25	pending	\N	\N	\N	2026-01-19 10:40:51.61+00	2026-01-19 10:40:51.61+00	0
d44d99bd-b8c3-409a-a123-fefcedd7a904	8435422a-6a6c-4709-846b-40da5601ad55	47962237-8fae-48f2-b6f3-415c73025873	50	pending	\N	\N	\N	2026-01-19 10:42:59.514+00	2026-01-19 10:42:59.514+00	0
fdb84127-7e2a-4bf0-92fa-ff666e2ec3e7	f110e798-9bf5-46d6-ad08-f95dc3a04ead	47962237-8fae-48f2-b6f3-415c73025873	1	pending	\N	\N	\N	2026-01-19 10:42:59.647+00	2026-01-19 10:42:59.647+00	0
1a8d9c4d-0d7b-47ec-9e94-b2a906e52df7	90a9b752-4913-4218-8493-880622b37762	48082142-4135-4062-a8dc-936a19141ee2	5	pending	\N	\N	\N	2026-01-19 10:43:46.441+00	2026-01-19 10:43:46.441+00	0
52519679-b628-49d7-b550-e034444436eb	cb69f71f-2896-4896-9164-1b1f160549ab	48082142-4135-4062-a8dc-936a19141ee2	1	pending	\N	\N	\N	2026-01-19 10:43:46.545+00	2026-01-19 10:43:46.545+00	0
3337eddc-ec2a-4aa3-ae43-f05eb31293f3	918a071f-8e73-4743-bdc6-df14f721cf79	6f31cc53-58fe-4e43-9ffb-6393d876c003	25	pending	\N	\N	\N	2026-01-19 10:45:01.38+00	2026-01-19 10:45:01.38+00	0
2b260833-bf67-4dca-9633-d99fc8a788be	25f67150-1a6f-42ed-9554-8203af7615ed	6f31cc53-58fe-4e43-9ffb-6393d876c003	25	pending	\N	\N	\N	2026-01-19 10:45:01.501+00	2026-01-19 10:45:01.501+00	0
a1f3076f-7c9b-49f3-915b-c2d8f600684f	fe575eed-39a7-4842-af42-15ff2cd9360c	f40518e5-150b-4b58-9dc2-a91f517000fc	16	pending	\N	\N	\N	2026-01-19 10:46:37.184+00	2026-01-19 10:46:37.185+00	0
a45cfaeb-9ee0-45c9-a18e-8e7f519eea62	3e5276c5-a117-4d96-b0d4-12eae25228ba	f40518e5-150b-4b58-9dc2-a91f517000fc	1	pending	\N	\N	\N	2026-01-19 10:46:37.295+00	2026-01-19 10:46:37.295+00	0
970e688e-dadc-43c9-b1ef-98e32287361a	b45db63d-a824-4874-be41-b4b610ce970f	dc745476-e021-429c-8f06-b959f4e30e17	15	pending	\N	\N	\N	2026-01-19 10:47:23.601+00	2026-01-19 10:47:23.601+00	0
74ca5d3c-23af-4d31-b356-99c241655331	da78d9fd-cef1-48e2-9a14-9e46d0c5da6b	dc745476-e021-429c-8f06-b959f4e30e17	1	pending	\N	\N	\N	2026-01-19 10:47:23.739+00	2026-01-19 10:47:23.739+00	0
79daba59-261f-47f5-8a0f-81cebcf621d6	cd3bd73c-59a9-4f00-9710-e9532711b175	4010d865-e14f-4259-83ac-12e326e690c2	58	pending	\N	\N	\N	2026-01-19 10:48:43.719+00	2026-01-19 10:48:43.719+00	0
4fefa54a-852e-4eab-98bf-ea15612e4ee9	419a7f1b-0109-4ce9-b544-af111f1c4958	4d4085c3-fa39-49ac-a631-c5ae49edb251	30	pending	\N	\N	\N	2026-01-23 10:36:47.757+00	2026-01-23 10:36:47.757+00	0
b458702b-5f6b-4565-9b79-d05f81b86554	6074fe02-e260-4fc8-8181-163970d2280c	db930d1f-969f-42dd-b87c-6570ef9723fc	20	pending	\N	\N	\N	2026-01-23 10:37:15.534+00	2026-01-23 10:37:15.534+00	0
ecc35f37-564c-4421-9764-7717e0dd2d56	f2aef7fc-d924-45d7-88d6-1a0a8192fc32	6021e501-269f-4cda-9da0-f1527f743aa6	16	pending	\N	\N	\N	2026-01-23 10:38:05.531+00	2026-01-23 10:38:05.531+00	0
d54dea86-e5e0-4fce-badc-812794463880	cf7e3a1b-d9d1-4a21-8073-f83ed5a2c05e	e9e98a4e-38b3-4824-b686-afa6424d1283	30	pending	\N	\N	\N	2026-01-23 10:40:17.905+00	2026-01-23 10:40:17.905+00	0
55486970-dd38-4697-bcfc-f3d151d37358	f0f556c0-0bb8-4785-a561-2bb35c8acf41	e9e98a4e-38b3-4824-b686-afa6424d1283	2	pending	\N	\N	\N	2026-01-23 10:40:18.04+00	2026-01-23 10:40:18.04+00	0
eaf50efe-239f-4f50-8d33-0df526ce71aa	04625def-2c1a-46cc-b77c-32bed1387133	e9e98a4e-38b3-4824-b686-afa6424d1283	5	pending	\N	\N	\N	2026-01-23 10:40:18.166+00	2026-01-23 10:40:18.166+00	0
2d48b5f1-71e0-41d1-a38f-abd953ba5491	14a97b93-e6bd-4dbb-919b-cfa89666bd48	19efdffb-327f-485c-bd02-10f4fb51ee3a	16	pending	\N	\N	\N	2026-01-23 10:41:25.754+00	2026-01-23 10:41:25.754+00	0
6dc72752-37a0-4e1e-916c-6041bf63a0a9	62957740-7c2b-4b58-a5a7-ad4fd60ddff4	fc7409f0-b2ab-4e42-bd6d-7b69456951a2	16	pending	\N	\N	\N	2026-01-23 10:41:54.984+00	2026-01-23 10:41:54.984+00	0
43bebb0d-e841-4603-9df8-27e142b5c4dc	2f163833-704d-4ade-810f-175c9f180d75	5aafed37-8f32-4271-9fa6-392f40f14e3d	50	pending	\N	\N	\N	2026-01-24 09:06:32.833+00	2026-01-24 09:06:32.833+00	0
8dd033d5-10f0-442c-b216-df05cebbf20e	49ba5875-420e-46e8-aa88-743c5c5a3f66	7c235938-e057-4ecc-ab54-cebbc0ea8d3d	50	pending	\N	\N	\N	2026-01-24 09:08:46.076+00	2026-01-24 09:08:46.076+00	0
dbb0205c-51b5-4134-ba05-e2da244d8f55	0cce6e0a-2b2f-4dc0-a08b-98441a6e99eb	ad71e81f-c73f-4a0d-820a-79ffa859b5e6	50	pending	\N	\N	\N	2026-01-24 09:09:13.187+00	2026-01-24 09:09:13.187+00	0
7434c45f-891b-4d23-9cdc-a9c7bfda627b	5f99c34b-d8c9-4809-94c9-5bfc5fd6a47e	0182f0b0-db25-4e7f-a0d1-2ec2ab5b57ed	15	pending	\N	\N	\N	2026-01-25 01:29:42.775+00	2026-01-25 01:29:42.775+00	0
a14893b7-c358-4a8d-a7c0-8b942bc1ca1c	9d16b8e3-eb7d-4ec2-95a2-264ec231aa70	32960b0c-db73-4210-a1ee-ab84a4416c3a	25	pending	\N	\N	\N	2026-01-25 01:30:34.211+00	2026-01-25 01:30:34.211+00	0
f7d6dba7-32bf-4157-bce6-214eb36d6253	cc6f2af5-9af6-44b1-8ba9-376e1730cf53	32960b0c-db73-4210-a1ee-ab84a4416c3a	1	pending	\N	\N	\N	2026-01-25 01:30:34.319+00	2026-01-25 01:30:34.319+00	0
7369f9d3-c361-43ed-bcff-1946a376cf6a	77f2e887-d022-445c-a4f4-cb07f5dc06f4	6f31cc53-58fe-4e43-9ffb-6393d876c003	50	pending	\N	\N	\N	2026-01-25 07:41:20.093+00	2026-01-25 07:41:20.093+00	0
c99949d5-0502-45df-b63c-37f8cd94bc32	7d9c1949-1045-4585-856b-bd1b16116f66	6f31cc53-58fe-4e43-9ffb-6393d876c003	20	pending	\N	\N	\N	2026-01-25 07:41:20.285+00	2026-01-25 07:41:20.285+00	0
501b6fe7-0802-40d7-b58c-b171a5193129	c1ec2d24-1520-4112-b230-bcae1362660a	6f31cc53-58fe-4e43-9ffb-6393d876c003	1	pending	\N	\N	\N	2026-01-25 07:41:20.441+00	2026-01-25 07:41:20.441+00	0
6a4863ff-742c-4792-8087-ba4b04e9fc37	38f8d630-e6ca-4777-9c0a-e9c3f3d14bff	4010d865-e14f-4259-83ac-12e326e690c2	35	pending	\N	\N	\N	2026-01-25 07:42:16.287+00	2026-01-25 07:42:16.287+00	0
8c9e6175-1a2c-45e2-891f-10aec47efa80	2a37ad0b-b886-44c0-872c-5e48315af2b8	7f8d20b5-3be8-45bc-aecd-4a1b0f81437b	60	pending	\N	\N	\N	2026-01-25 07:43:30.71+00	2026-01-25 07:43:30.71+00	0
b8dad47f-e32a-4f06-bb47-d16b9fc7f2e3	c69813f8-8cf8-40e9-a48f-a5a7a5cbbb3b	7f8d20b5-3be8-45bc-aecd-4a1b0f81437b	20	pending	\N	\N	\N	2026-01-25 07:43:30.804+00	2026-01-25 07:43:30.804+00	0
4190a520-ab02-4d8f-b49b-e06ebf13cea8	1562f3a4-1827-4fa0-9a56-3eabab6dca4e	a71bd1c3-cbe1-4ba1-b615-0f88d5653821	30	pending	\N	\N	\N	2026-01-25 07:47:57.12+00	2026-01-25 07:47:57.12+00	0
c05d4749-9bac-4541-946e-b44a3889afdd	3d489127-18aa-4865-88c0-29558ec6dde7	44677818-d0b3-48e5-ba78-a8cb6764ed92	35	pending	\N	\N	\N	2026-01-25 07:48:43.602+00	2026-01-25 07:48:43.602+00	0
761f5c48-6054-42d4-bf74-6b24dc06f37f	bdbcecc9-0aa4-4f96-a975-ce6ed4ab5f29	f46120a9-d629-42d6-8d90-ee8769d5997a	35	pending	\N	\N	\N	2026-01-25 07:49:30.59+00	2026-01-25 07:49:30.59+00	0
697c21f3-00a9-4009-9a34-e2dc97d005a8	6d1db3c5-ed1f-4040-83cc-14618047e86d	22e9d6e9-703b-42c0-b735-1b4146715bee	1	pending	\N	\N	\N	2026-01-25 07:51:29.26+00	2026-01-25 07:51:29.26+00	0
6a9e5f06-7446-4faf-b080-23ffa3814be0	21f83ab9-f0e1-4682-aa97-bdae754c281d	22e9d6e9-703b-42c0-b735-1b4146715bee	1	pending	\N	\N	\N	2026-01-25 07:51:29.399+00	2026-01-25 07:51:29.399+00	0
05a8a5e4-8ea1-4318-ad6e-96efbde92baa	566f71b5-9964-48bf-a2fc-3a93202bbdc4	22e9d6e9-703b-42c0-b735-1b4146715bee	1	pending	\N	\N	\N	2026-01-25 07:51:29.532+00	2026-01-25 07:51:29.532+00	0
90bbc5d0-9e5f-4e60-947b-9fadab32b83a	d7fa06d9-3203-452e-a8f8-4753a0429681	875b0009-caf8-4fa0-a7d9-899d4bb85a5c	50	pending	\N	\N	\N	2026-01-25 09:10:32.425+00	2026-01-25 09:10:32.425+00	0
f222f778-1e86-4f86-94c9-7a623649dcd4	8528f345-1a66-4e82-99e2-564e78b4d74a	a12ba315-1acc-4ff2-bf5a-a4821e39c451	40	pending	\N	\N	\N	2026-01-26 06:30:06.257+00	2026-01-26 06:30:06.257+00	0
9d7ae024-3659-4dcc-9d38-f8274f0fef1a	85508c93-e7b9-4416-921a-504a90e2696c	df5f379f-f0c8-4699-bd19-7072f01244c5	50	pending	\N	\N	\N	2026-01-26 06:30:51.597+00	2026-01-26 06:30:51.597+00	0
97d0581f-4a19-468b-aef9-4bb895e2a1f8	7e6d1ab2-2108-4e87-b039-b32fc04fbf81	47962237-8fae-48f2-b6f3-415c73025873	50	pending	\N	\N	\N	2026-01-26 06:32:18.891+00	2026-01-26 06:32:18.891+00	0
5fc5969f-3d15-4f48-a912-7a082d5ca55f	76fadd7d-1a09-475f-9da4-ca04b2b0d9c6	47962237-8fae-48f2-b6f3-415c73025873	1	pending	\N	\N	\N	2026-01-26 06:32:19.278+00	2026-01-26 06:32:19.278+00	0
76b613c3-e1a8-4d6c-8c51-ef6638b4da4f	acf1b26c-e395-4168-9b6c-cb4aa866d665	dc745476-e021-429c-8f06-b959f4e30e17	15	pending	\N	\N	\N	2026-01-26 09:29:07.341+00	2026-01-26 09:29:07.341+00	0
6476ed99-f7f9-4ada-b8c5-187745b06d51	e1f8c40f-9e36-4f66-8f19-b437d04ddce1	dc745476-e021-429c-8f06-b959f4e30e17	1	pending	\N	\N	\N	2026-01-26 09:29:07.439+00	2026-01-26 09:29:07.439+00	0
5429e639-2ab4-4900-9023-774e1b4a96e6	33686b69-216b-4376-be87-bd853266a93d	86d1b2cb-2899-4f2a-8c37-607dcbd34a48	16	pending	\N	\N	\N	2026-01-26 10:05:23.628+00	2026-01-26 10:05:23.628+00	0
705c5015-e660-495a-a555-c715ebc27a7e	e8880836-50a0-4e46-aee9-3710b46abe3b	ad71e81f-c73f-4a0d-820a-79ffa859b5e6	50	pending	\N	\N	\N	2026-01-27 02:50:31.527+00	2026-01-27 02:50:31.527+00	0
1ce00497-c649-49b2-ae1a-49421624bab3	3496327b-afbe-4789-a782-7aec94d6c11e	b7ec21bd-e8ac-4c04-9de3-473e27d03512	3	pending	\N	\N	\N	2026-01-27 02:53:34.917+00	2026-01-27 02:53:34.917+00	0
c944353e-d962-4695-9ce2-0a3bbc1ae261	c0183f0d-ca77-4b05-8dbe-1a59c3f8c421	b7ec21bd-e8ac-4c04-9de3-473e27d03512	2	pending	\N	\N	\N	2026-01-27 02:53:35.039+00	2026-01-27 02:53:35.039+00	0
09c48eda-a535-4b3c-9109-9c897c33b4b5	dcc213ea-3225-4df5-b125-0e5de1f9d854	fe6d5c3c-c5c6-4737-b808-079e42356700	16	pending	\N	\N	\N	2026-01-27 02:55:10.808+00	2026-01-27 02:55:10.808+00	0
ba19274b-ee4a-42e1-887c-b7292146646f	52fb7e17-f778-42c6-884c-7b7f9d7b8e32	118bc7c4-39e6-4229-93d3-cd2d4ef74906	80	pending	\N	\N	\N	2026-01-27 02:57:04.659+00	2026-01-27 02:57:04.659+00	0
0795908f-4367-4982-9e21-5dc7900dc7b0	f62c42f1-83ee-41b4-a32b-8c043d2deb2a	a55908f3-4848-4572-a126-0ed8966360bd	30	pending	\N	\N	\N	2026-01-27 02:58:54.861+00	2026-01-27 02:58:54.861+00	0
190e13af-d8a0-4091-95ce-212a8e9b5b48	6bf1e48e-7d6f-4792-80af-35a440bfbeda	8e80ecf1-e4ff-426a-bec1-e5fa2c72bfb8	25	pending	\N	\N	\N	2026-01-27 07:58:53.545+00	2026-01-27 07:58:53.545+00	0
51573201-69f4-4aa0-bf70-1c965f794302	0bf979da-fac6-48c1-b7a1-a874da509a15	875b0009-caf8-4fa0-a7d9-899d4bb85a5c	50	pending	\N	\N	\N	2026-01-27 10:38:49.7+00	2026-01-27 10:38:49.7+00	0
751815d9-54d1-4e5d-a211-fb1b4b6de4a2	3785e7c1-6fd9-4571-989f-133e717b46f2	c63e3ff7-0ec2-4f2f-b3ea-99f236b2bd64	30	pending	\N	\N	\N	2026-01-27 10:39:45.514+00	2026-01-27 10:39:45.514+00	0
6170188e-f0e6-4d6e-8d65-e9b2d6a7cf99	d44a63d1-2b1a-47d7-a438-7c9c1317230f	19efdffb-327f-485c-bd02-10f4fb51ee3a	16	pending	\N	\N	\N	2026-01-27 10:40:29.569+00	2026-01-27 10:40:29.569+00	0
95f892d5-5e51-48f0-a76a-d476097efc8c	fefd1f7d-2fd2-437b-8f80-f86a85ffefe6	2faefdab-bcf6-4247-98c1-7b1e9d8b35bc	100	pending	\N	\N	\N	2026-01-28 10:33:37.153+00	2026-01-28 10:33:37.153+00	0
e23683c8-b40f-4d89-9d75-7b5749afa92f	c909f9b4-296d-4137-bc29-f6c55999ab62	2faefdab-bcf6-4247-98c1-7b1e9d8b35bc	16	pending	\N	\N	\N	2026-01-28 10:33:37.282+00	2026-01-28 10:33:37.282+00	0
c3021912-a3dc-44f5-a6b9-096743bbfc76	0eb8839c-0173-4838-9886-24e57c73dbde	57bd335b-5e3d-4381-92c3-d746d2bb472c	50	pending	\N	\N	\N	2026-01-28 10:34:06.125+00	2026-01-28 10:34:06.125+00	0
70ecfd54-25e6-433b-bc99-9a44f06684bc	21f177fd-94bd-4b75-8391-d555e4803722	6f31cc53-58fe-4e43-9ffb-6393d876c003	30	pending	\N	\N	\N	2026-01-28 10:34:54.274+00	2026-01-28 10:34:54.274+00	0
80e848ac-1423-442f-8d2a-0a616e47a152	87a655b5-b91e-46c4-b10e-81334b7114e9	6f31cc53-58fe-4e43-9ffb-6393d876c003	20	pending	\N	\N	\N	2026-01-28 10:34:54.392+00	2026-01-28 10:34:54.392+00	0
de588f3b-4acc-4914-845d-efcc9ac69463	3f9a9ed6-0236-4fbc-8df8-46989ab3fe0a	a5de6b35-e138-46c0-8eba-b4fd9b344680	50	pending	\N	\N	\N	2026-01-28 10:35:19.893+00	2026-01-28 10:35:19.893+00	0
95e12bbd-cb00-4a5a-bf78-86dcdb863e59	cab11d87-a2e9-4407-8930-67cd333961d2	6098aff4-496d-48db-8c00-6c4f0b692ccd	100	pending	\N	\N	\N	2026-01-28 10:35:51.211+00	2026-01-28 10:35:51.211+00	0
8754c746-30b0-4f69-b8d5-784ab9bcaf0c	f0cd7a22-f6a2-46d4-b300-4893756427ce	ad71e81f-c73f-4a0d-820a-79ffa859b5e6	50	pending	\N	\N	\N	2026-01-29 08:00:57.064+00	2026-01-29 08:00:57.064+00	0
e29de9f1-e862-4dcf-9bc5-fe2fa1340c0e	1e4d5b4e-9ad4-47e5-a94a-1d3b622f3229	42c272d7-7fd5-412b-8ba6-ca5095122ea1	10	pending	\N	\N	\N	2026-01-29 08:01:38.178+00	2026-01-29 08:01:38.178+00	0
3aafeded-b41b-42d8-9e0e-e3f3c4f4f413	00ccee30-d8aa-4401-8856-02b2bd44b79c	eaaf3864-e89d-4d2e-b350-bf873be702be	30	pending	\N	\N	\N	2026-01-29 08:02:48.305+00	2026-01-29 08:02:48.305+00	0
f7d33884-e4fa-4a51-9dd7-49d2efefb8d5	3ca1ce5b-0fab-4a08-8974-68d7f282da9f	118bc7c4-39e6-4229-93d3-cd2d4ef74906	10	pending	\N	\N	\N	2026-01-29 08:03:19.375+00	2026-01-29 08:03:19.375+00	0
5d3412a7-3174-4d5b-a4e6-3e6c9b725477	6db9e0b3-02ad-4026-9b59-36161b4c7fb0	315f8b49-729a-48f4-b88d-8955ee0ae616	50	pending	\N	\N	\N	2026-01-29 08:03:50.146+00	2026-01-29 08:03:50.146+00	0
8d6b92ac-d8dc-4fc6-9a50-d556a56bdb9d	5082dbb9-1d88-405d-b7c7-8099c8c2c9f3	9300e05b-ad50-4812-aec4-f915860583bc	16	pending	\N	\N	\N	2026-01-29 08:04:36.881+00	2026-01-29 08:04:36.881+00	0
4ba04074-73cf-4820-af67-3b93e0b902d0	f62baa16-de81-4437-bc8b-51384cb800a8	f18fc167-036f-45b7-9c54-449b9d1e90da	50	pending	\N	\N	\N	2026-01-29 10:25:47.695+00	2026-01-29 10:25:47.695+00	0
89e7bf52-388e-4f6f-82b5-358a075051ed	9c696c9b-aa60-4002-8a83-e072d9287d36	44677818-d0b3-48e5-ba78-a8cb6764ed92	30	pending	\N	\N	\N	2026-01-29 10:26:14.643+00	2026-01-29 10:26:14.643+00	0
82f69970-2124-4bcd-be9d-bedf34690a24	fc1162ac-d09d-47ac-8402-a20c8f1a1a4c	4d4085c3-fa39-49ac-a631-c5ae49edb251	30	pending	\N	\N	\N	2026-01-30 09:56:08.77+00	2026-01-30 09:56:08.77+00	0
12053e8d-0844-431f-be0c-e5a2eb9b4142	1c7074cd-f9a7-4f11-9101-0a3882f38868	db930d1f-969f-42dd-b87c-6570ef9723fc	20	pending	\N	\N	\N	2026-01-30 09:56:54.81+00	2026-01-30 09:56:54.81+00	0
94a0185f-ccbc-4612-8616-14e56ff3dcd8	3c9f3da7-97be-4357-a7bb-d10048aef82c	df5f379f-f0c8-4699-bd19-7072f01244c5	50	pending	\N	\N	\N	2026-01-30 09:57:35.401+00	2026-01-30 09:57:35.401+00	0
1b4c3628-e39e-434a-9cca-017ff395e16f	b685d386-bdba-47b5-b460-b4afef176205	6021e501-269f-4cda-9da0-f1527f743aa6	16	pending	\N	\N	\N	2026-01-30 10:02:33.069+00	2026-01-30 10:02:33.069+00	0
62d1c853-7194-42bf-9f18-2795c63b3992	a9324909-60c4-447d-90a5-ecbbd202d637	4010d865-e14f-4259-83ac-12e326e690c2	34	pending	\N	\N	\N	2026-01-30 10:03:00.671+00	2026-01-30 10:03:00.672+00	0
51e0bb33-1870-4bbb-b938-068276a6be80	a8db0e5c-ff65-44a2-8a38-afcfde8226ef	29169281-3121-47b5-b3d9-310cd9cabe8d	35	pending	\N	\N	\N	2026-01-30 10:06:59.978+00	2026-01-30 10:06:59.978+00	0
85d419ae-645e-4a54-91d3-d090b4996879	87385db7-626e-48de-877a-cd0537875581	29169281-3121-47b5-b3d9-310cd9cabe8d	5	pending	\N	\N	\N	2026-01-30 10:07:00.212+00	2026-01-30 10:07:00.212+00	0
2235adcf-e65d-437b-a2af-ea76ccc14b53	427d1c05-ef3c-4b5d-96a8-039b3a6c23cb	29169281-3121-47b5-b3d9-310cd9cabe8d	1	pending	\N	\N	\N	2026-01-30 10:07:00.34+00	2026-01-30 10:07:00.34+00	0
5f7e0b10-b3f6-4827-9bf9-277f18f1cb9c	f26173df-9cdb-4f19-a907-48d6624d9d31	c4c9694b-a1c3-45d4-88c6-f7ab0570450f	10	pending	\N	\N	\N	2026-01-30 10:37:32.887+00	2026-01-30 10:37:32.887+00	0
d222f4f2-a638-4fd3-937f-d4280a3c1d09	13ec240e-7254-46eb-ae28-41dd68c60fab	97a751d1-4361-4126-b5e4-472a63dc72ab	50	pending	\N	\N	\N	2026-01-30 10:38:02.236+00	2026-01-30 10:38:02.236+00	0
0874bae2-7fc5-4c1d-b2c7-aa799905d9c8	a70ff047-2c90-49d9-b184-9218abfcc3e7	5aafed37-8f32-4271-9fa6-392f40f14e3d	60	pending	\N	\N	\N	2026-02-02 09:56:28.741+00	2026-02-02 09:56:28.741+00	0
50f7264d-d5d4-4f71-aa4e-1fec5c7b7620	c52ce539-bd73-4ab2-9bf1-4ad6c84296e2	a0c9da56-cae8-4b2d-9196-6653e12dd736	25	pending	\N	\N	\N	2026-02-02 09:58:34.353+00	2026-02-02 09:58:34.353+00	0
7b948d0a-3de8-48e2-b551-558ac9ca8408	059c18b3-aaa3-4e82-8d09-baec7a9d9e35	d9e204c0-09d3-47b4-9d7d-37992ec3ace9	20	pending	\N	\N	\N	2026-02-02 09:59:13.3+00	2026-02-02 09:59:13.3+00	0
e5fd99df-2fcc-4018-9b99-6fc24dd2e951	b25bb7fe-b42c-46db-aa1c-47438345e733	4a130524-f4a3-4182-baa8-82419469b72e	20	pending	\N	\N	\N	2026-02-02 10:00:21.703+00	2026-02-02 10:00:21.703+00	0
0d3d557e-2366-4f35-98ae-f89dd7551316	618db745-681e-417d-87f5-3b49fc8de9b6	0182f0b0-db25-4e7f-a0d1-2ec2ab5b57ed	15	pending	\N	\N	\N	2026-02-02 10:00:49.079+00	2026-02-02 10:00:49.079+00	0
91c40148-471f-410e-9760-cefa3a678965	c0c1c79b-5fdf-450c-b609-47bf052e9fc8	644cdb67-ad3c-4465-8bef-7cee68d9a6e1	20	pending	\N	\N	\N	2026-02-02 10:01:21.475+00	2026-02-02 10:01:21.475+00	0
f35d0218-43eb-4b99-9afe-7cb92ccfd154	989569cb-5d64-4a10-a510-14b79f84a468	f0be0232-0ea6-44bf-a0c5-a0e9ee99acc4	10	pending	\N	\N	\N	2026-02-02 10:02:00.402+00	2026-02-02 10:02:00.402+00	0
b6fb1e70-521f-4a6b-9bb4-06f2a251d123	b3893f21-5023-4739-9d2c-879f7edae2b9	6f31cc53-58fe-4e43-9ffb-6393d876c003	40	pending	\N	\N	\N	2026-02-02 10:07:17.815+00	2026-02-02 10:07:17.815+00	0
0ff41a26-754f-4e56-8a43-a92db9f0ea6c	4cbdee72-d45e-4b29-b9bc-4e774a9c5207	6f31cc53-58fe-4e43-9ffb-6393d876c003	10	pending	\N	\N	\N	2026-02-02 10:07:17.961+00	2026-02-02 10:07:17.961+00	0
50d0e861-1a62-4df3-922d-0dd3a86a5480	39ba5ae3-f4b4-441c-8c80-63dd18011967	a827199c-5e23-447b-bab8-78613e9dbb4e	50	pending	\N	\N	\N	2026-02-02 10:07:54.805+00	2026-02-02 10:07:54.805+00	0
c4b11438-bab3-492e-8d97-c32ec164a644	f9a6bb27-afde-4895-9618-7030f94a0aa3	ad71e81f-c73f-4a0d-820a-79ffa859b5e6	50	pending	\N	\N	\N	2026-02-02 10:08:31.198+00	2026-02-02 10:08:31.198+00	0
97f5105b-6dff-4d23-909f-8c13eb74dff1	4d474800-bcbc-475d-b36e-2624d7d864f4	36a2eb66-9294-4b22-9844-ad15d35e13cf	27	pending	\N	\N	\N	2026-02-02 10:09:38.885+00	2026-02-02 10:09:38.885+00	0
641a0b52-dcaa-43f3-849d-03e327edad8c	b4aed780-8340-429c-8ba6-aa77903c9d7d	7f8d20b5-3be8-45bc-aecd-4a1b0f81437b	45	pending	\N	\N	\N	2026-02-02 10:10:33.587+00	2026-02-02 10:10:33.587+00	0
8112510d-2632-4012-8c68-2950c0a5fb08	e84efe34-ac6b-4fcd-b9d7-0451c93f9bf1	7f8d20b5-3be8-45bc-aecd-4a1b0f81437b	15	pending	\N	\N	\N	2026-02-02 10:10:33.747+00	2026-02-02 10:10:33.747+00	0
54b94fbb-0fc2-4cf7-9093-082b25926317	f68867fa-5e6e-4ea5-a322-bfc507b1ecd0	f46120a9-d629-42d6-8d90-ee8769d5997a	35	pending	\N	\N	\N	2026-02-02 10:11:03.939+00	2026-02-02 10:11:03.939+00	0
08ea0c3f-039c-4ba4-9a97-889767e01066	dcbbc59c-8c1d-45c2-a1bd-74dfd8e7f832	a71bd1c3-cbe1-4ba1-b615-0f88d5653821	30	pending	\N	\N	\N	2026-02-02 10:11:29.548+00	2026-02-02 10:11:29.548+00	0
e77095f5-c535-49f1-84fc-d87505e3cad8	01202e7a-52c2-45c3-b4c0-2247bfc5b594	875b0009-caf8-4fa0-a7d9-899d4bb85a5c	50	pending	\N	\N	\N	2026-02-02 10:11:49.653+00	2026-02-02 10:11:49.653+00	0
dacee391-ba30-4777-9fe2-96e1c08ee150	6c2991fe-0682-42ec-aab9-22001cedcdfa	8e80ecf1-e4ff-426a-bec1-e5fa2c72bfb8	25	pending	\N	\N	\N	2026-02-02 10:12:12.163+00	2026-02-02 10:12:12.163+00	0
c7c0878f-6430-4f03-85c0-3ae147811543	4602116b-59f8-426c-8f46-e7f041ae5671	8b7de9c9-384f-4f7e-a589-a8f60619e43b	50	pending	\N	\N	\N	2026-02-02 10:12:36.999+00	2026-02-02 10:12:36.999+00	0
6e423d33-448b-47bd-ae50-a1e65ce6efd1	aaa5e030-7964-45c3-be9e-ebfa3e50a9ff	97a751d1-4361-4126-b5e4-472a63dc72ab	40	pending	\N	\N	\N	2026-02-02 10:13:12.859+00	2026-02-02 10:13:12.859+00	0
47962358-b187-49e6-9cfa-bf106e3fde26	1c5cdb3f-dc17-4c63-9233-8fffe0ed59b9	97a751d1-4361-4126-b5e4-472a63dc72ab	10	pending	\N	\N	\N	2026-02-02 10:13:13.02+00	2026-02-02 10:13:13.02+00	0
c6f419aa-d315-489b-be8c-6ee6afb77dba	e9ff24de-fb46-43e2-add2-58081e5cb0c0	0866c25a-32c2-454c-bc8f-796aaa90373f	50	pending	\N	\N	\N	2026-02-02 10:13:42.663+00	2026-02-02 10:13:42.663+00	0
f7fc70e4-fa6b-4aef-b7f8-08d50c4f1e2e	36270136-1168-4479-be9d-7f50a56f2fae	fc7409f0-b2ab-4e42-bd6d-7b69456951a2	16	pending	\N	\N	\N	2026-02-02 10:14:07.687+00	2026-02-02 10:14:07.687+00	0
386a8efb-dff4-4bed-a8c6-3b68e6ec23fb	cc82fad8-b00c-4d9f-9c91-df578160343c	df5f379f-f0c8-4699-bd19-7072f01244c5	50	pending	\N	\N	\N	2026-02-02 10:14:32.299+00	2026-02-02 10:14:32.299+00	0
569f2fe6-67b4-4760-872c-5fbb16dd5a27	475c8bdd-6dbe-4fbf-8e95-95b79e7bd41e	70954a65-ce41-42b5-822b-f60b44c0e4f1	50	pending	\N	\N	\N	2026-02-02 10:15:03.18+00	2026-02-02 10:15:03.18+00	0
47eb0ac0-1caf-437d-8cf2-f5401892527c	d39f446f-ef70-4a25-bd78-42a4f300505e	70954a65-ce41-42b5-822b-f60b44c0e4f1	1	pending	\N	\N	\N	2026-02-02 10:15:03.303+00	2026-02-02 10:15:03.303+00	0
3d3ad5a9-9605-463f-913d-e0d66f3d466b	863a2c4b-50f0-4e8d-8b3b-f5304d78b004	fedd69f2-8eaa-4b38-bc43-df446740835e	20	pending	\N	\N	\N	2026-02-02 10:22:15.674+00	2026-02-02 10:22:15.674+00	0
2e8bcb46-e9fc-41b9-b085-3c50244671fc	1403814a-5e1a-4356-8371-df3f790bb2b1	fedd69f2-8eaa-4b38-bc43-df446740835e	15	pending	\N	\N	\N	2026-02-02 10:22:15.775+00	2026-02-02 10:22:15.775+00	0
ea9989ab-d16d-4cea-ad9c-10a86f8ba871	75ad84c9-8efd-4d62-be7d-3268e6ab26d2	7b7d4218-f064-43b4-a68e-6360a1e8cbc5	50	pending	\N	\N	\N	2026-02-02 10:23:23.63+00	2026-02-02 10:23:23.631+00	0
039955d9-bdac-43b3-8dfe-3a09d4a38da9	55a9d4c6-1528-41f9-8a6c-1a1dbfdfe16e	dc745476-e021-429c-8f06-b959f4e30e17	20	pending	\N	\N	\N	2026-02-02 10:24:03.5+00	2026-02-02 10:24:03.5+00	0
74c68390-551a-42f6-9b8b-a70883015ad7	d841d566-cae3-4f44-b0a1-6cdfe3ea1698	dc745476-e021-429c-8f06-b959f4e30e17	1	pending	\N	\N	\N	2026-02-02 10:24:03.635+00	2026-02-02 10:24:03.635+00	0
ccaf7d6c-019e-4f38-89ce-5f43f7831292	a9e81b47-9c62-4ef7-8b06-ff9e317bfaa9	19efdffb-327f-485c-bd02-10f4fb51ee3a	16	pending	\N	\N	\N	2026-02-02 10:24:29.492+00	2026-02-02 10:24:29.492+00	0
b4f85d9d-6b94-4669-9390-b4cda85f33df	f1ed7dde-f6be-4cc0-95fd-29af8a97aa94	ad71e81f-c73f-4a0d-820a-79ffa859b5e6	50	pending	\N	\N	\N	2026-02-03 10:35:27.276+00	2026-02-03 10:35:27.276+00	0
371e65b0-f9c0-4b10-b4b1-adb1e625b723	6a64490a-909b-4271-b71a-91ffdbce4e53	ab7d890a-e170-438e-91a1-fc19c520d78e	40	pending	\N	\N	\N	2026-02-03 10:36:39.894+00	2026-02-03 10:36:39.894+00	0
f2ba1487-5e79-4633-85b6-0909bcee6aec	16e2a568-c6a3-4160-8bc1-adfff542821a	96e1f734-b297-480e-8e4c-685f4ad34f61	30	pending	\N	\N	\N	2026-02-03 10:37:08.65+00	2026-02-03 10:37:08.65+00	0
c4478315-e98e-4c89-bd9b-a449066b2b18	88afa77d-5f9f-493b-b4a2-77c5f9768330	9300e05b-ad50-4812-aec4-f915860583bc	16	pending	\N	\N	\N	2026-02-03 10:37:34.882+00	2026-02-03 10:37:34.882+00	0
805d6ab4-c429-42db-aae7-1c6ef528d85c	d7f45b73-1dc8-4568-a5a0-a56d2baf5666	a55908f3-4848-4572-a126-0ed8966360bd	30	pending	\N	\N	\N	2026-02-03 10:38:07.67+00	2026-02-03 10:38:07.67+00	0
244e118b-6456-4256-b4bc-74f9ec591669	5a09ec58-ed52-4c2b-beda-f11f1fd12f6f	97a751d1-4361-4126-b5e4-472a63dc72ab	20	pending	\N	\N	\N	2026-02-03 10:40:33.579+00	2026-02-03 10:40:33.579+00	0
6800605a-fe67-4d99-8157-87f4fc6c3aac	2eddca1a-a8c2-4c5c-a155-8919c8e7a362	97a751d1-4361-4126-b5e4-472a63dc72ab	40	pending	\N	\N	\N	2026-02-03 10:40:33.703+00	2026-02-03 10:40:33.703+00	0
03c96f40-3e4b-46fb-a476-5275d7828042	379a5813-34ff-4671-8878-be6e5eada51c	97a751d1-4361-4126-b5e4-472a63dc72ab	50	pending	\N	\N	\N	2026-02-03 10:40:33.847+00	2026-02-03 10:40:33.847+00	0
08aec0d9-ac01-47bf-84b6-41029d214af3	21590333-a3ef-44db-a3f9-ff9ee9a121ce	a827199c-5e23-447b-bab8-78613e9dbb4e	50	pending	\N	\N	\N	2026-02-03 10:41:03.785+00	2026-02-03 10:41:03.785+00	0
d82ab0ee-cd26-47f4-b16d-652e5e07f991	9ad4795b-f834-4d5c-a954-ed2885a83bd3	44677818-d0b3-48e5-ba78-a8cb6764ed92	30	pending	\N	\N	\N	2026-02-03 10:41:29.312+00	2026-02-03 10:41:29.312+00	0
6e2c5ea0-af6a-4703-96e5-e9b944cef79a	fd62299c-0623-4509-ac86-8d901062e226	f18fc167-036f-45b7-9c54-449b9d1e90da	45	pending	\N	\N	\N	2026-02-03 10:41:56.971+00	2026-02-03 10:41:56.971+00	0
e9845b72-7497-4f2f-a0ab-a229d03f3d19	88f149f8-94a8-4078-81da-476060cc1305	c63e3ff7-0ec2-4f2f-b3ea-99f236b2bd64	25	pending	\N	\N	\N	2026-02-03 10:42:36.799+00	2026-02-03 10:42:36.799+00	0
73e37277-f8ab-4a84-b409-56c17e199b62	bb3e905c-90f7-4c20-b46d-fb3b8bde805c	4d4085c3-fa39-49ac-a631-c5ae49edb251	30	pending	\N	\N	\N	2026-02-04 10:33:23.719+00	2026-02-04 10:33:23.719+00	0
9c16c702-8d35-451b-a76a-2e277c394091	6d0872a6-a339-4a3f-9e91-59cad9288a67	db930d1f-969f-42dd-b87c-6570ef9723fc	20	pending	\N	\N	\N	2026-02-04 10:33:55.446+00	2026-02-04 10:33:55.446+00	0
d430e745-c394-47b4-be7a-a1ead1ea4310	519dc809-cb9d-4383-b7ee-eb64b212ce07	6f31cc53-58fe-4e43-9ffb-6393d876c003	40	pending	\N	\N	\N	2026-02-04 10:34:24.099+00	2026-02-04 10:34:24.099+00	0
76e0f739-ba2a-4f97-8582-14564e08627a	58a9e458-764f-4ed0-bfbd-a8f4185c211e	6f31cc53-58fe-4e43-9ffb-6393d876c003	20	pending	\N	\N	\N	2026-02-04 10:34:24.205+00	2026-02-04 10:34:24.205+00	0
87ce9a3a-009d-4fa4-873b-273204d4c813	8f0d7c86-4e7b-40f2-b7f5-c0bc8ea19d26	f40518e5-150b-4b58-9dc2-a91f517000fc	16	pending	\N	\N	\N	2026-02-04 10:34:49.941+00	2026-02-04 10:34:49.941+00	0
25a1d170-84df-4290-a2da-09815c4793cf	7cd666a8-06b6-4fb7-9e1f-544c7c080079	f40518e5-150b-4b58-9dc2-a91f517000fc	1	pending	\N	\N	\N	2026-02-04 10:34:50.052+00	2026-02-04 10:34:50.052+00	0
b5dd2d7b-346f-473a-bd0d-9b1668b2ca80	a820e106-3714-4ce7-abc4-57d1367f510d	fedd69f2-8eaa-4b38-bc43-df446740835e	20	pending	\N	\N	\N	2026-02-04 11:06:19.352+00	2026-02-04 11:06:19.352+00	0
5ee1dfb5-8cc6-4a1c-a0be-25ef8f134afe	1860d59a-441e-4a8c-833a-3b70c2c1ea87	fedd69f2-8eaa-4b38-bc43-df446740835e	10	pending	\N	\N	\N	2026-02-04 11:06:19.46+00	2026-02-04 11:06:19.46+00	0
53ec5b9f-ebf4-417b-9030-d3c460e32ed9	11b02d05-e73e-4817-9d12-aeca40f29731	42c272d7-7fd5-412b-8ba6-ca5095122ea1	22	pending	\N	\N	\N	2026-02-06 06:51:45.936+00	2026-02-06 06:51:45.936+00	0
ced30952-6e92-49f8-8666-a717f01f4a7a	23289d58-82b5-407a-b393-676842453800	cb2f3fbc-82b8-4575-8d00-cefddd31e746	3	pending	\N	\N	\N	2026-02-06 06:52:02.252+00	2026-02-06 06:52:02.252+00	0
b23c6bda-dfa8-4d51-b4f6-e65b89c50f7e	17e9e99a-c918-45bb-92cb-e71f8cb1a2e0	118bc7c4-39e6-4229-93d3-cd2d4ef74906	25	pending	\N	\N	\N	2026-02-06 07:03:23.595+00	2026-02-06 07:03:23.595+00	0
7fe9677e-d552-44c2-8d79-08f5607a133b	fa78c84b-14d6-4f36-a65f-fe53883c4468	3ade39c4-77d4-42db-9a17-9f7a05c37b2d	30	pending	\N	\N	\N	2026-02-06 07:05:38.234+00	2026-02-06 07:05:38.234+00	0
42693d29-1faf-4a39-9797-09f47da4db51	6754c4f6-398e-48ba-8046-b32735557331	eebfe034-f888-4b64-9f5a-1ef700f7bec0	50	pending	\N	\N	\N	2026-02-06 07:07:28.15+00	2026-02-06 07:07:28.15+00	0
28a00aff-ab95-4569-a381-079d53f9c0ca	93a79800-1dd3-43d6-8a2c-d19ddcd6d79c	df5f379f-f0c8-4699-bd19-7072f01244c5	50	pending	\N	\N	\N	2026-02-06 07:08:29.079+00	2026-02-06 07:08:29.079+00	0
c25ae8e3-c71e-448b-96b3-57d793968456	5216a3c3-f886-47ab-ac27-6586e3108bc2	6021e501-269f-4cda-9da0-f1527f743aa6	16	pending	\N	\N	\N	2026-02-06 07:09:15.378+00	2026-02-06 07:09:15.378+00	0
e7e67cdf-0b26-4b57-bd09-c500e8fdaf62	546cb0de-291c-4979-9fee-781e84af7e0a	239b9ad5-a559-4dfd-b1fc-b4e85c7f4ec3	1	pending	\N	\N	\N	2026-02-10 01:23:09.126+00	2026-02-10 01:23:09.126+00	0
82318f9e-363c-42b2-a357-cb1506b55299	843bd030-3f35-4973-9cec-82e2709623e2	239b9ad5-a559-4dfd-b1fc-b4e85c7f4ec3	20	pending	\N	\N	\N	2026-02-10 01:33:25.979+00	2026-02-10 01:33:25.979+00	0
36ebb574-3b3a-4550-94e2-df26460bfda3	64c59a90-df1d-43aa-8b2c-b78755d99919	b7eea5d3-aa20-478c-a8e0-c38caf8433df	10	pending	\N	\N	\N	2026-02-10 01:33:26.062+00	2026-02-10 01:33:26.062+00	0
3f970ab3-0102-4a38-9d2c-702ea2f191bc	6c7b84a3-9429-40f2-a646-a90755796485	239b9ad5-a559-4dfd-b1fc-b4e85c7f4ec3	20	pending	\N	\N	\N	2026-02-10 01:34:34.864+00	2026-02-10 01:34:34.864+00	0
7defe383-bf1d-4f02-b0d9-063c6e78ec6a	65fd139f-da57-4842-88f9-ab0401e1939a	b7eea5d3-aa20-478c-a8e0-c38caf8433df	20	pending	\N	\N	\N	2026-02-10 01:34:34.954+00	2026-02-10 01:34:34.954+00	0
2ec3f0d5-8880-4a42-b81f-3830b75b94f0	80f19a2c-5629-4b47-b64b-390572c862a4	239b9ad5-a559-4dfd-b1fc-b4e85c7f4ec3	1	pending	\N	\N	\N	2026-02-11 03:14:09.364+00	2026-02-11 03:14:09.364+00	20
81cc94c3-ab23-4ee5-a5b6-c0a2464be76e	8d164855-b52a-4f3e-b912-5aa7d5497eaa	239b9ad5-a559-4dfd-b1fc-b4e85c7f4ec3	1	pending	\N	\N	\N	2026-02-11 03:14:09.533+00	2026-02-11 03:14:09.533+00	20
6fd6f6cb-333c-4790-b41d-91cde4ad5755	351d7799-9b01-4a25-90be-1062da3cf88a	239b9ad5-a559-4dfd-b1fc-b4e85c7f4ec3	1	pending	\N	\N	\N	2026-02-11 03:14:09.703+00	2026-02-11 03:14:09.703+00	20
49f247b8-91c7-4ce1-9ca2-59c94fbc11cf	c44bfb03-fb68-4df2-8be3-186d5eee9428	b7eea5d3-aa20-478c-a8e0-c38caf8433df	1	pending	\N	\N	\N	2026-02-11 03:14:09.863+00	2026-02-11 03:14:09.863+00	0
c5253134-85bd-47b7-a867-4bddf8c93a5a	30673f26-4fa8-43d5-9abd-b5ca6a93aa43	239b9ad5-a559-4dfd-b1fc-b4e85c7f4ec3	50	pending	\N	\N	\N	2026-02-11 03:29:33.775+00	2026-02-11 03:29:33.775+00	20
b1f18a1f-1790-4025-90e5-37f8d0e3bff6	3049919b-ca81-4805-b426-04a5a02b6517	b7eea5d3-aa20-478c-a8e0-c38caf8433df	20	pending	\N	\N	\N	2026-02-11 03:29:33.965+00	2026-02-11 03:29:33.965+00	20
0e1b4186-3ca0-4231-b6e4-503e18190180	2df9c70f-7bae-4aed-8258-136a2fc975f6	239b9ad5-a559-4dfd-b1fc-b4e85c7f4ec3	50	pending	\N	\N	\N	2026-02-12 01:18:19.708+00	2026-02-12 01:18:19.708+00	0
92ee4d59-d791-4193-a336-faa5a250448e	acc2a55d-0466-4b94-a008-c2997932e39d	239b9ad5-a559-4dfd-b1fc-b4e85c7f4ec3	1	pending	\N	\N	\N	2026-02-12 01:18:19.819+00	2026-02-12 01:18:19.819+00	0
a8a89f15-e16a-4c08-abb2-928aa1a41093	b835189a-a064-4d21-b7be-140a9b0576b1	239b9ad5-a559-4dfd-b1fc-b4e85c7f4ec3	1	pending	\N	\N	\N	2026-02-12 01:18:19.894+00	2026-02-12 01:18:19.894+00	0
a67098e7-5d87-4fb3-9d64-c4652b06d1d9	79f924de-48a9-4944-b9ee-e4b51850a572	239b9ad5-a559-4dfd-b1fc-b4e85c7f4ec3	50	pending	\N	\N	\N	2026-02-12 01:25:23.933+00	2026-02-12 01:25:23.933+00	0
9c42ed13-3324-4b0c-ae64-82ec2712208b	c8b37c75-b9fa-4c66-8ae3-0cc2d6fce9ad	239b9ad5-a559-4dfd-b1fc-b4e85c7f4ec3	50	pending	\N	\N	\N	2026-02-12 01:32:14.634+00	2026-02-12 01:32:14.634+00	0
e924d838-7b42-4c77-bbec-c86834adb8ab	48900df8-b554-4530-beb5-06d1c8619be2	239b9ad5-a559-4dfd-b1fc-b4e85c7f4ec3	50	pending	\N	\N	\N	2026-02-12 01:33:07.569+00	2026-02-12 01:33:07.569+00	0
e7c0fe73-55ea-4009-82d4-284f31c7d0a4	86e2253f-b802-43fa-8482-2d8f16658ba3	239b9ad5-a559-4dfd-b1fc-b4e85c7f4ec3	50	pending	\N	\N	\N	2026-02-12 01:46:03.473+00	2026-02-12 01:46:03.473+00	0
aedaf2e8-1496-4130-a323-c3a7d54398d5	75f068ad-3a5c-4d78-92b6-a5179615da28	239b9ad5-a559-4dfd-b1fc-b4e85c7f4ec3	50	pending	\N	\N	\N	2026-02-12 02:14:07.17+00	2026-02-12 02:14:07.17+00	0
dd73d6a6-9a26-4b4e-9bb7-9df90c3fae61	cfe471e4-4cfb-4dfc-b4a5-a36fc6ebb0eb	239b9ad5-a559-4dfd-b1fc-b4e85c7f4ec3	20	pending	\N	\N	\N	2026-02-12 04:46:40.964+00	2026-02-12 04:46:40.964+00	0
1860ee14-ca54-4d3f-9f0c-086a0e9979cc	fcd656e9-e8d5-4218-95a0-87bc6ccbc077	b7eea5d3-aa20-478c-a8e0-c38caf8433df	20	pending	\N	\N	\N	2026-02-12 04:46:41.178+00	2026-02-12 04:46:41.178+00	0
6b610e4f-732e-45af-a602-550552ee5cb2	ebe44b85-17a4-4d6f-a70a-7d9697277032	42c272d7-7fd5-412b-8ba6-ca5095122ea1	5	pending	\N	\N	\N	2026-02-12 08:07:15.569+00	2026-02-12 08:07:15.569+00	0
76d109b6-79bf-44f3-9c2a-6c424e524f7b	2f17c4bf-f87e-48c0-af29-358ef60c8f34	ad71e81f-c73f-4a0d-820a-79ffa859b5e6	50	pending	\N	\N	\N	2026-02-12 08:10:42.73+00	2026-02-12 08:10:42.73+00	0
5084bcad-8249-411c-87c1-53677d484d20	573468b2-d7e2-4c14-a1aa-30647ec434e2	df5f379f-f0c8-4699-bd19-7072f01244c5	50	pending	\N	\N	\N	2026-02-12 08:11:02.43+00	2026-02-12 08:11:02.43+00	0
3271dfd9-c3d4-49e2-b632-3af01ba23a68	80447d12-27ba-48e4-bc31-414c0163aefb	32960b0c-db73-4210-a1ee-ab84a4416c3a	25	pending	\N	\N	\N	2026-02-12 08:17:49.077+00	2026-02-12 08:17:49.077+00	0
924533fe-512b-4652-b81f-1bd1d2290c34	4c6ac606-2bc4-4234-a33d-85e4e73323e8	511e012f-d3e7-46ec-b011-57dbbabc3aea	1	pending	\N	\N	\N	2026-02-12 08:20:01.648+00	2026-02-12 08:20:01.648+00	0
c4eaad9d-790a-4cfd-8137-8cc0cc328569	53cbea84-fe5f-4417-93a1-7458bbd423fd	511e012f-d3e7-46ec-b011-57dbbabc3aea	50	pending	\N	\N	\N	2026-02-12 08:20:01.829+00	2026-02-12 08:20:01.829+00	0
235cfd44-7764-4955-9383-5b9ff1d0bf44	133509dd-c1cd-44a3-82aa-1658366e467a	875b0009-caf8-4fa0-a7d9-899d4bb85a5c	100	pending	\N	\N	\N	2026-02-12 08:22:03.555+00	2026-02-12 08:22:03.555+00	0
e03775f4-49d8-469f-a6bc-362f8ece4569	5ed14414-94cb-4cc1-a4f8-0f41f5c48eca	97a751d1-4361-4126-b5e4-472a63dc72ab	50	pending	\N	\N	\N	2026-02-12 08:23:54.749+00	2026-02-12 08:23:54.749+00	0
44c326ca-f2af-4e75-b371-64cdbd726fdc	ee8dafde-fe64-4c4c-bf7f-f0b75eb1ac02	97a751d1-4361-4126-b5e4-472a63dc72ab	15	pending	\N	\N	\N	2026-02-12 08:23:54.848+00	2026-02-12 08:23:54.848+00	0
0bcbf99f-caad-4dad-812f-632cc7dc79f6	b4830676-d3f8-4077-8edf-c0f8e6ec915f	d9e204c0-09d3-47b4-9d7d-37992ec3ace9	15	pending	\N	\N	\N	2026-02-12 09:08:37.293+00	2026-02-12 09:08:37.293+00	0
b8d7ffc4-4f23-4493-8663-94017fe76e4f	2118e415-2421-4c01-acb9-7ab52fe5f830	644cdb67-ad3c-4465-8bef-7cee68d9a6e1	20	pending	\N	\N	\N	2026-02-12 09:08:37.43+00	2026-02-12 09:08:37.43+00	0
de3ad05c-c2ad-45d9-a727-bfdb59c055df	b4708a7e-f6bb-4bb1-a0f2-7f81c2fa21b8	a827199c-5e23-447b-bab8-78613e9dbb4e	50	pending	\N	\N	\N	2026-02-12 10:47:50.153+00	2026-02-12 10:47:50.153+00	0
ea641890-8f4f-45b9-b5a4-caffeb79ff05	f52dbf91-1d02-4e71-8e17-de0fb7410cf1	6f31cc53-58fe-4e43-9ffb-6393d876c003	40	pending	\N	\N	\N	2026-02-12 12:26:21.837+00	2026-02-12 12:26:21.837+00	100
1e219677-4348-46dd-8634-21e16665a81c	1bf98d7a-53cb-4c21-9a10-4c5598f117e1	6f31cc53-58fe-4e43-9ffb-6393d876c003	20	pending	\N	\N	\N	2026-02-12 12:26:22.005+00	2026-02-12 12:26:22.005+00	100
ed15e865-a058-4dd5-bbbd-0d9477accaac	b6ec9ba6-a142-4135-85c4-c206f0112ff7	68633360-f36b-4994-8251-2231cbda3b3b	50	pending	\N	\N	\N	2026-02-12 13:35:44.266+00	2026-02-12 13:35:44.266+00	150
90adac48-3601-4d77-8f4c-40ad19471d5c	b4be83db-a2eb-45d9-867d-2fea773cd737	f0be0232-0ea6-44bf-a0c5-a0e9ee99acc4	10	pending	\N	\N	\N	2026-02-13 03:40:55.47+00	2026-02-13 03:40:55.47+00	0
620988f1-2835-47d9-b8f1-cae119a60801	2ca138a5-bef3-4221-b868-379035986b51	4a130524-f4a3-4182-baa8-82419469b72e	20	pending	\N	\N	\N	2026-02-13 03:40:55.554+00	2026-02-13 03:40:55.554+00	0
173a5fe0-263f-44a3-8a30-dcd95381d85d	889dcc91-7e06-4d66-ac0d-53f34daf7c70	0866c25a-32c2-454c-bc8f-796aaa90373f	50	pending	\N	\N	\N	2026-02-13 03:42:09.445+00	2026-02-13 03:42:09.445+00	0
74ea1fb2-7e2a-4d99-8b95-d19dc824eeb1	4de2c39c-cdf5-4bdf-9819-fe3f78803535	1d3ad581-e114-4187-be9a-6b0faf339c0e	5	pending	\N	\N	\N	2026-02-13 04:19:09.78+00	2026-02-13 04:19:09.78+00	0
a5163111-5edb-403c-8812-9acc61715f7f	37fb25c1-f593-4a6d-ada7-620a66aa165f	1d3ad581-e114-4187-be9a-6b0faf339c0e	5	pending	\N	\N	\N	2026-02-13 04:26:12.527+00	2026-02-13 04:26:12.527+00	0
f4a90085-20aa-4eeb-9d17-6a7a7f005ffc	da3baab8-7519-4ef9-9003-a3dae5690dda	6021e501-269f-4cda-9da0-f1527f743aa6	16	pending	\N	\N	\N	2026-02-13 04:26:55.602+00	2026-02-13 04:26:55.602+00	0
dfc8853c-7be6-4f1b-9082-eae5ff3a082e	8e4b2f07-501d-4f4b-8b90-640224bd9053	86d1b2cb-2899-4f2a-8c37-607dcbd34a48	16	pending	\N	\N	\N	2026-02-13 05:28:01.345+00	2026-02-13 05:28:01.345+00	0
86ca131e-d276-44e7-bad9-ab8de9b29140	e4096ce2-e858-4f8f-bded-f7f30c801fd9	a03de010-00f5-4221-9528-59605c81139f	16	pending	\N	\N	\N	2026-02-13 10:07:39.817+00	2026-02-13 10:07:39.818+00	0
c19402a6-1099-438b-ac62-2533dc9a2360	92c860fe-1d4f-443a-a985-5704a94cf7ae	8e80ecf1-e4ff-426a-bec1-e5fa2c72bfb8	25	pending	\N	\N	\N	2026-02-13 10:36:19.263+00	2026-02-13 10:36:19.263+00	0
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.orders (id, order_number, customer_id, order_date, delivery_date, subtotal, discount_amount, total_amount, payment_method, payment_status, notes, internal_notes, cancellation_reason, created_by, created_at, updated_at, order_status, vat_amount, shipping_fee, order_discount_type) FROM stdin;
8175ab60-7478-4e65-a9c6-1c2cb5e94913	ORD-202512-0016	494a6b5c-7b0a-4ea5-80cc-ab9d956464f5	2025-12-16	2025-12-17	1168.22	0.00	1250.00	\N	pending	ช่วงเช้า 	ช่วงเช้า 	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-16 10:23:19.731+00	2025-12-16 10:23:19.80897+00	new	81.78	0	amount
9337146d-5a85-4fe2-9c4e-a8d3b1045de3	ORD-202512-0017	c947e4a7-5f11-47dd-addf-e32451250a02	2025-12-16	2025-12-17	841.12	0.00	900.00	\N	pending	ช่วงเช้า	ช่วงเช้า	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-16 10:24:53.56+00	2025-12-16 10:24:53.66554+00	new	58.88	0	amount
79db758c-74bb-45e5-b20b-2b1e2e3cabab	ORD-202512-0011	7aea9b3f-cf61-40db-92e4-bfc187a581a6	2025-12-15	2025-12-16	584.11	0.00	625.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2025-12-15 17:18:26.485+00	2025-12-15 17:18:26.702658+00	new	40.89	0	amount
13f28b05-fd23-4e0a-98c7-a3a2c24b62bd	ORD-202512-0009	ad07f63f-f28f-4aa3-96d1-ca49f26ab3e9	2025-12-15	2025-12-16	1168.22	0.00	1250.00	\N	paid	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2025-12-15 17:07:02.88+00	2025-12-15 17:20:31.875656+00	new	81.78	0	amount
a20c1754-b4c6-4c5f-b714-b023c34b2688	ORD-202512-0010	747bb1a4-9d5a-4167-a2d1-092ff55bbb24	2025-12-15	2025-12-16	1345.79	0.00	1440.00	\N	paid	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2025-12-15 17:16:46.365+00	2025-12-15 17:21:48.607717+00	new	94.21	0	amount
b2790dfe-f4ff-408d-981e-44c54f27ecfb	ORD-202512-0002	55a26af3-78ee-43cc-b6a4-c05d68c0ac84	2025-12-09	2025-12-09	35.05	0.00	37.50	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2025-12-09 06:35:32.909+00	2025-12-09 06:37:22.095217+00	cancelled	2.45	0	amount
42fd34f2-3770-4a06-957a-28012529f81a	ORD-202512-0003	55a26af3-78ee-43cc-b6a4-c05d68c0ac84	2025-12-09	2025-12-09	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2025-12-09 06:38:22.29+00	2025-12-16 00:10:11.865668+00	cancelled	81.78	0	amount
9b6481eb-5df9-41d2-a563-0f36070f258a	ORD-202512-0001	3eb26f74-1ab2-407c-89ae-843749750baa	2025-12-01	2025-12-02	115.89	0.00	124.00	\N	pending	\N	\N	\N	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2025-12-01 03:54:49.812+00	2025-12-16 00:10:18.82485+00	cancelled	8.11	0	amount
b61e21cd-52c9-47c7-85bd-d5a448b8b5f5	ORD-202512-0021	b6c3ed11-10ad-40cc-b634-a2bff38f95ef	2025-12-17	2025-12-18	1168.22	0.00	1250.00	\N	paid	DHL	DHL	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-17 10:16:12.79+00	2025-12-17 10:25:34.576513+00	new	81.78	0	amount
8f9f0076-987f-4e33-a247-d9b88b23faa5	ORD-202512-0012	b10cb1c3-cc14-4001-ab0b-d0854399c1a8	2025-12-16	2025-12-17	1250.00	0.00	1337.50	\N	pending	+ใบกำกับไปพร้อมสินค้า	+ใบกำกับไปพร้อมสินค้า	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-16 09:56:33.296+00	2025-12-16 09:56:33.427206+00	new	87.50	0	amount
4dae3be0-8a5b-43b5-a740-8cc643d51ccd	ORD-202512-0004	d10954b1-94b3-4366-ba22-567ac872b6f8	2025-12-15	2025-12-16	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2025-12-15 16:49:05.321+00	2025-12-15 16:49:05.553698+00	new	81.78	0	amount
a94b0696-2183-46e6-883d-c1ad33e952b3	ORD-202512-0018	3f5de013-3fa1-412e-a726-31d01ec6cd2b	2025-12-16	2025-12-17	1985.98	0.00	2125.00	\N	pending	ก่อน 12.00\n- OEM  150 ml ส้ม ขวดกลม  125 ขวด	ก่อน 12.00\n- OEM  150 ml ส้ม ขวดกลม  125 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-16 10:27:39.993+00	2025-12-16 10:30:30.954242+00	cancelled	139.02	0	amount
d3dd9f8e-dd3f-4cde-b781-60878cf39968	ORD-202512-0005	ec0a5eaf-cf59-48a4-b9e2-c76f8c3162f1	2025-12-15	2025-12-16	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2025-12-15 17:03:25.275+00	2025-12-15 17:03:25.456762+00	new	81.78	0	amount
c7be4200-236b-4d7e-921b-ea36dc7e6e4b	ORD-202512-0028	caf88ba6-28a7-47d6-b007-5bc794f32a98	2025-12-21	2025-12-22	1051.40	0.00	1125.00	\N	pending	ฝากปั๊มวันหมดอายุ ที่ฝาขวด\n- หมู่บ้านเศรษฐกิจ 25 ขวด\n- สวนผัก 20 ขวด	ฝากปั๊มวันหมดอายุ ที่ฝาขวด\n- หมู่บ้านเศรษฐกิจ 25 ขวด\n- สวนผัก 20 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-21 04:33:32.001+00	2025-12-21 04:33:32.11468+00	new	73.60	0	amount
0bc0df38-f904-4e91-b68d-385cb5dab7e6	ORD-202512-0006	55a26af3-78ee-43cc-b6a4-c05d68c0ac84	2025-12-15	2025-12-16	700.93	0.00	750.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2025-12-15 17:04:00.896+00	2025-12-15 17:04:01.024949+00	new	49.07	0	amount
96d1e0ba-1e4b-4aa2-a57d-e400363109da	ORD-202512-0007	1a36dbb0-3be1-4d4d-98b3-4101237037ab	2025-12-15	2025-12-16	1345.79	0.00	1440.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2025-12-15 17:05:34.544+00	2025-12-15 17:05:34.667066+00	new	94.21	0	amount
baf4b872-07b7-4616-9056-f059ddce9bd7	ORD-202512-0008	335d07e5-4bae-4f09-bf78-f7ea8f0fd994	2025-12-15	2025-12-16	700.93	0.00	750.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2025-12-15 17:06:27.318+00	2025-12-15 17:06:27.564076+00	new	49.07	0	amount
3c564d01-8907-4c13-b620-b6f120d7bebe	ORD-202512-0019	3f5de013-3fa1-412e-a726-31d01ec6cd2b	2025-12-16	2025-12-17	1985.98	0.00	2125.00	\N	pending	ก่อน 12.00\n- OEM  150 ml ส้ม 125 ขวด	ก่อน 12.00\n- OEM  150 ml ส้ม 125 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-16 10:31:20.035+00	2025-12-16 10:31:20.113058+00	new	139.02	0	amount
cdbb0b32-cdf5-470c-948d-2268f481514b	ORD-202512-0015	caf88ba6-28a7-47d6-b007-5bc794f32a98	2025-12-16	2025-12-17	350.47	0.00	375.00	\N	pending	- อิสรภาพ 15 ขวด\nฝากปั๊มวันหมดอายุ ที่ฝาขวด	- อิสรภาพ 15 ขวด\nฝากปั๊มวันหมดอายุ ที่ฝาขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-16 10:21:20.213+00	2025-12-16 10:21:20.297294+00	new	24.53	0	amount
d3d3d5b7-7399-4a44-b1dc-065649933870	ORD-202512-0024	01bca52c-7aed-433c-be24-f32ae448e717	2025-12-17	2025-12-18	1168.22	0.00	1250.00	\N	paid	\N	\N	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-17 10:20:07.382+00	2025-12-17 10:26:17.887998+00	new	81.78	0	amount
1cd279d0-650e-4367-a1f1-bb431c5ea670	ORD-202512-0022	bedbb98e-fb28-4153-85e1-e311630d3326	2025-12-17	2025-12-18	1168.22	0.00	1250.00	\N	pending	DHL	DHL	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-17 10:17:41.025+00	2025-12-17 10:17:41.10572+00	new	81.78	0	amount
3d26a3ea-b2f8-47b9-b0eb-3fc3b248b1b8	ORD-202512-0013	33650f06-de75-493c-b503-bbee8cce3166	2025-12-16	2025-12-17	1168.22	0.00	1250.00	\N	paid	ก่อน 12.00 \n**รับลังกลับด้วยค่ะ**	ก่อน 12.00 \n**รับลังกลับด้วยค่ะ**	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-16 10:13:45.994+00	2025-12-17 10:30:38.989357+00	new	81.78	0	amount
74f16129-83ac-46cb-b799-a38398fd0c3b	ORD-202512-0014	3f068301-ec61-4f65-b563-992da0f806e8	2025-12-16	2025-12-17	1800.00	481.50	1926.00	\N	paid	\N	\N	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-16 10:16:12.499+00	2025-12-17 10:31:43.870037+00	new	126.00	0	amount
53b77808-9ef7-4b7d-b485-c0a7239c3ae5	ORD-202512-0023	494a6b5c-7b0a-4ea5-80cc-ab9d956464f5	2025-12-17	2025-12-18	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-17 10:19:29.198+00	2025-12-17 10:19:29.294203+00	new	81.78	0	amount
72cf9fac-60f8-4e0a-a930-456d51947a32	ORD-202512-0026	3f5de013-3fa1-412e-a726-31d01ec6cd2b	2025-12-17	2025-12-18	1098.13	0.00	1175.00	\N	pending	ก่อน 10.00\n- OEM  150 ml ส้ม 25 ขวด\n- OEM  250 ml ส้ม 30 ขวด	ก่อน 10.00\n- OEM  150 ml ส้ม 25 ขวด\n- OEM  250 ml ส้ม 30 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-17 10:22:06.937+00	2025-12-17 10:22:07.163079+00	new	76.87	0	amount
c3b889d3-3929-4647-8843-09ad367cc91b	ORD-202512-0029	b10cb1c3-cc14-4001-ab0b-d0854399c1a8	2025-12-21	2025-12-22	1250.00	0.00	1337.50	\N	pending	\N	\N	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-21 09:12:09.399+00	2025-12-21 09:12:09.608584+00	new	87.50	0	amount
5141ee03-ae03-47c8-a6fc-6bb20bcea54c	ORD-202512-0020	6b6a0eac-17b7-4b3f-8ac5-89f8801ddb01	2025-12-17	2025-12-18	7009.35	0.00	7500.00	\N	paid	ส่งช่วง 07.30 เป็นต้นไปได้เลยค่ะ	ส่งช่วง 07.30 เป็นต้นไปได้เลยค่ะ	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-17 10:15:36.298+00	2025-12-17 10:22:50.625546+00	new	490.65	0	amount
b11d491d-acfa-4cc3-a0f6-8a64b1ff6c08	ORD-202512-0025	b87dfcd8-4001-4de7-8c95-504874ff2627	2025-12-17	2025-12-18	1345.79	0.00	1440.00	\N	pending	\N	\N	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-17 10:20:40.5+00	2025-12-17 10:20:40.72133+00	new	94.21	0	amount
a1253310-ed3e-4f91-a120-d9abec7c35e0	ORD-202512-0027	da7f1ad2-e025-4d9d-a9e4-a9e1636d50a6	2025-12-21	2025-12-22	584.11	0.00	625.00	\N	pending	\N	\N	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-21 04:32:27.904+00	2025-12-21 04:32:28.201445+00	new	40.89	0	amount
486dcac2-5a00-47ae-abde-861dd2d93893	ORD-202601-0001	40c274cb-1474-474d-9364-e2615c5c0694	2026-01-03	2025-12-23	2336.45	0.00	2500.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 04:29:16.27+00	2026-01-03 04:29:16.397708+00	new	163.55	0	amount
5072f4c3-5d67-479b-9f5e-bbcb4a8bac5f	ORD-202601-0002	3f5de013-3fa1-412e-a726-31d01ec6cd2b	2026-01-03	2025-12-23	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 04:30:46.471+00	2026-01-03 04:30:46.587467+00	new	81.78	0	amount
5df188a4-fc04-43b0-be0d-09533c9bed3b	ORD-202601-0003	86020312-8c63-401b-bfc6-a4a63dff6f26	2026-01-03	2025-12-23	467.29	0.00	500.00	\N	pending	ค่าจัดส่ง 100 บาท	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 04:32:19.385+00	2026-01-03 04:32:20.087193+00	new	32.71	0	amount
df5af889-b9bf-43ed-b0e3-f711c8347d58	ORD-202601-0004	77e46928-7b1c-44d1-9c0e-6cb9122043e0	2026-01-03	2025-12-23	584.11	0.00	625.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 04:33:01.907+00	2026-01-03 04:33:02.017381+00	new	40.89	0	amount
0159b46b-fef9-4fd0-85a7-0c19c449b141	ORD-202601-0005	f7581fec-a8c9-4109-b18e-d362d92ca94d	2026-01-03	2025-12-24	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 04:36:28.883+00	2026-01-03 04:36:29.023395+00	new	81.78	0	amount
008439b5-4b89-4b18-9635-2b8903236c45	ORD-202601-0006	1a36dbb0-3be1-4d4d-98b3-4101237037ab	2026-01-03	2025-12-24	1345.79	0.00	1440.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 04:37:03.581+00	2026-01-03 04:37:03.897698+00	new	94.21	0	amount
8af212e6-be34-49a4-a362-17ff5839da83	ORD-202601-0007	2739c5e6-1384-4ded-81ef-26f31524ca99	2026-01-03	2025-12-25	1345.79	0.00	1440.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 04:44:06.683+00	2026-01-03 04:44:06.826733+00	new	94.21	0	amount
7a85f21b-6c48-4890-97f7-96a416745b4b	ORD-202601-0008	55a26af3-78ee-43cc-b6a4-c05d68c0ac84	2026-01-03	2025-12-25	1285.05	0.00	1375.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 04:45:51.843+00	2026-01-03 04:45:52.362742+00	new	89.95	0	amount
79463f73-bbc4-449f-a692-4d29ba956283	ORD-202601-0022	b10cb1c3-cc14-4001-ab0b-d0854399c1a8	2026-01-05	2025-12-26	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:03:48.217+00	2026-01-05 07:03:48.332809+00	new	81.78	0	amount
2d4139cb-655f-4d69-aff8-ac0a9d42717f	ORD-202601-0009	c1bfa50b-145f-4844-bed4-7f781edb2346	2026-01-03	2025-12-26	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 04:46:52.577+00	2026-01-03 04:46:52.679956+00	new	81.78	0	amount
851f4031-44fa-4ba7-a516-1cc417fb25b4	ORD-202601-0010	5762e90f-8931-4535-a74a-b418615037c8	2026-01-03	2025-12-25	1261.68	0.00	1350.00	\N	pending	ราคารวมภาษี 7%	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 04:48:03.36+00	2026-01-03 04:48:03.460172+00	new	88.32	0	amount
e4544108-f67e-4fb8-8884-42a678f2ef8d	ORD-202601-0011	7aea9b3f-cf61-40db-92e4-bfc187a581a6	2026-01-03	2025-12-26	584.11	0.00	625.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 05:11:15.01+00	2026-01-03 05:11:15.242988+00	new	40.89	0	amount
f544546c-3d78-4b4d-9284-cee034e925fb	ORD-202601-0023	33650f06-de75-493c-b503-bbee8cce3166	2026-01-05	2025-12-27	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:13:54.552+00	2026-01-05 07:13:54.646939+00	new	81.78	0	amount
4c5dcee2-ed50-4feb-b89b-0cd34ab8811f	ORD-202601-0012	74061c15-e609-48b4-aa6e-2f934af4e4e6	2026-01-03	2025-12-26	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 05:16:23.68+00	2026-01-03 05:16:23.797024+00	new	81.78	0	amount
d83c7d58-41e2-48b3-bbd8-05b3eac82fbb	ORD-202601-0013	55a26af3-78ee-43cc-b6a4-c05d68c0ac84	2026-01-03	2025-12-26	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 05:19:07.189+00	2026-01-03 05:19:07.292692+00	new	81.78	0	amount
91bfd36b-fff0-46c3-94c9-e130d6687aec	ORD-202601-0031	74061c15-e609-48b4-aa6e-2f934af4e4e6	2026-01-05	2025-12-27	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:30:32.001+00	2026-01-05 07:30:32.118821+00	new	81.78	0	amount
36b830a8-26a1-4a80-bcfd-2b4493d191b5	ORD-202601-0014	b87dfcd8-4001-4de7-8c95-504874ff2627	2026-01-03	2025-12-26	1345.79	0.00	1440.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 05:20:01.291+00	2026-01-03 05:20:01.405319+00	new	94.21	0	amount
d79892c2-a2e4-4dbb-bb53-6e6491afa43b	ORD-202601-0024	f7581fec-a8c9-4109-b18e-d362d92ca94d	2026-01-05	2025-12-27	2336.45	0.00	2500.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:14:27.87+00	2026-01-05 07:14:28.140585+00	new	163.55	0	amount
b98cb97b-4d12-42e1-a4dc-2844ae6244e4	ORD-202601-0015	4e9ef205-7a2d-4d7d-b2ca-0bb81423a168	2026-01-03	2025-12-26	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 05:21:59.831+00	2026-01-03 05:22:00.004572+00	new	81.78	0	amount
2a08ece8-3813-465f-9a70-5713601735e5	ORD-202601-0016	7d8b38b7-425b-43d9-8f6b-46d211327856	2026-01-03	2025-12-26	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 05:23:51.413+00	2026-01-03 05:23:51.519939+00	new	81.78	0	amount
33bdebc1-db55-4a60-b3d4-901713d41085	ORD-202601-0025	51bf4d96-d372-4893-8fee-6e29702c4297	2026-01-05	2025-12-27	1345.79	0.00	1440.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:17:18.554+00	2026-01-05 07:17:18.71303+00	new	94.21	0	amount
4db5570e-8f24-4529-a64f-80d2d0821d37	ORD-202601-0017	8115a585-61a7-4823-95ec-535a1c93c1c5	2026-01-03	2025-12-26	1051.40	0.00	1125.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 05:28:55.708+00	2026-01-03 05:28:55.93967+00	new	73.60	0	amount
acc80cf6-8ac8-40ee-ad95-7a8f0d2c91a9	ORD-202601-0040	a791d4f2-bfed-45d9-b532-5c18c49f98af	2026-01-05	2025-12-29	700.93	0.00	750.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:03:58.442+00	2026-01-05 08:03:58.554368+00	new	49.07	0	amount
669a8c49-3612-4a98-a153-48102cf7954e	ORD-202601-0018	f0e39ea2-a9dc-4492-9994-bc6893d2838e	2026-01-05	2025-12-26	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 06:25:08.205+00	2026-01-05 06:25:08.439001+00	new	81.78	0	amount
bb79ce11-7b5d-432f-99ed-fc23bea0b34a	ORD-202601-0026	56a792d5-e6b2-4096-8792-cf270c7d7566	2026-01-05	2025-12-27	420.56	0.00	450.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:19:40.623+00	2026-01-05 07:19:40.749861+00	new	29.44	0	amount
20b45b1f-9890-495d-b94c-3fe2b240b933	ORD-202601-0019	e9d078d2-04d6-415f-a5fe-3fe33b414d40	2026-01-05	2025-12-26	1345.79	0.00	1440.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 06:58:54.148+00	2026-01-05 06:58:54.454952+00	new	94.21	0	amount
86776a0a-be68-4553-9157-17fb5928f560	ORD-202601-0020	c3f38f6b-7517-4d47-a866-b3233eabb648	2026-01-05	2025-12-26	1345.79	0.00	1440.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:00:33.939+00	2026-01-05 07:00:34.050165+00	new	94.21	0	amount
004f5edd-fb08-471c-962c-c1faaf86f8ce	ORD-202601-0032	86020312-8c63-401b-bfc6-a4a63dff6f26	2026-01-05	2025-12-27	467.29	0.00	500.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:31:53.642+00	2026-01-05 07:31:53.748379+00	new	32.71	0	amount
5917139e-557f-4e9b-a2f9-7520b528656f	ORD-202601-0021	3eb26f74-1ab2-407c-89ae-843749750baa	2026-01-05	2025-12-26	2336.45	0.00	2500.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:03:03.635+00	2026-01-05 07:03:03.768037+00	new	163.55	0	amount
e591d026-be51-47a8-896b-11ad6e8d7e6f	ORD-202601-0027	f616a0cc-8a7d-4897-987c-81d0404e24c0	2026-01-05	2025-12-27	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:21:54.436+00	2026-01-05 07:21:54.779683+00	new	81.78	0	amount
88f59107-960a-4ff2-8ca5-eef6b534844c	ORD-202601-0028	3f5de013-3fa1-412e-a726-31d01ec6cd2b	2026-01-05	2025-12-27	934.58	0.00	1000.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:23:07.67+00	2026-01-05 07:23:07.849372+00	new	65.42	0	amount
84d9f7d7-0349-4737-b7c6-5896b6e361dc	ORD-202601-0038	b87dfcd8-4001-4de7-8c95-504874ff2627	2026-01-05	2025-12-29	1345.79	0.00	1440.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:55:07.549+00	2026-01-05 07:55:07.868402+00	new	94.21	0	amount
c4337477-3b55-4460-bc1b-166d5453845a	ORD-202601-0029	101dbc58-c138-4e52-b312-cf9f47b11344	2026-01-05	2025-12-27	327.10	0.00	350.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:27:25.906+00	2026-01-05 07:27:26.014919+00	new	22.90	0	amount
024f081e-17ba-4b52-8135-4f90c80a6485	ORD-202601-0033	c1ce919c-6998-4dd4-ab5d-8a0a956ab3bc	2026-01-05	2025-12-29	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:36:05.076+00	2026-01-05 07:36:05.205615+00	new	81.78	0	amount
39261209-5c4e-4bcf-bb97-d49a45f21779	ORD-202601-0030	33650f06-de75-493c-b503-bbee8cce3166	2026-01-05	2025-12-27	0.00	0.00	0.00	\N	pending	สปอนให้กับพนักงาน	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:29:45.812+00	2026-01-05 07:29:46.0695+00	new	0.00	0	amount
9b890295-9f2a-4895-b2af-e360b4c618ab	ORD-202601-0034	b87dfcd8-4001-4de7-8c95-504874ff2627	2026-01-05	2025-12-29	1345.79	0.00	1440.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:36:59.707+00	2026-01-05 07:36:59.889931+00	new	94.21	0	amount
06a418d9-5d1c-4573-8969-fd5336dc758c	ORD-202601-0035	ad07f63f-f28f-4aa3-96d1-ca49f26ab3e9	2026-01-05	2025-12-29	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:37:44.363+00	2026-01-05 07:37:44.483581+00	new	81.78	0	amount
df752c18-efa5-4710-862e-33db128aefe4	ORD-202601-0042	9c980499-65d3-4d8d-9edf-ac790c5ace33	2026-01-05	2025-12-29	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:07:32.799+00	2026-01-05 08:07:32.88982+00	new	81.78	0	amount
e1dcf45a-66e9-4fef-b6ef-77c9ca7378cb	ORD-202601-0036	ea0842ce-6cfd-48a1-85d4-034fe4725889	2026-01-05	2025-12-29	1345.79	0.00	1440.00	\N	pending	OEM	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:41:21.924+00	2026-01-05 07:41:22.242702+00	new	94.21	0	amount
3572c17d-355e-46a1-b6bc-2a2a933e0052	ORD-202601-0037	b10cb1c3-cc14-4001-ab0b-d0854399c1a8	2026-01-05	2025-12-29	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:48:32.499+00	2026-01-05 07:48:32.613955+00	new	81.78	0	amount
5093199b-f72d-48c6-a199-0bd965293c3c	ORD-202601-0048	55a26af3-78ee-43cc-b6a4-c05d68c0ac84	2026-01-05	2025-12-31	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:15:10.271+00	2026-01-05 08:15:10.440026+00	new	81.78	0	amount
7d2191f3-e5c9-48ed-8958-a69271dbca36	ORD-202601-0043	55a26af3-78ee-43cc-b6a4-c05d68c0ac84	2026-01-05	2025-12-30	700.93	0.00	750.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:09:00.441+00	2026-01-05 08:09:00.553297+00	new	49.07	0	amount
3a29cf3e-46af-4798-9f33-e65897957e3a	ORD-202601-0041	d75f6899-d5b5-4855-8614-a6ad5993ce25	2026-01-05	2025-12-05	1242.99	100.00	1330.00	\N	pending	VIP	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:06:29.842+00	2026-01-05 08:06:30.222439+00	new	87.01	0	amount
2b330420-357d-4e88-9406-b19f9f6c2e26	ORD-202601-0045	1a36dbb0-3be1-4d4d-98b3-4101237037ab	2026-01-05	2025-12-30	1345.79	0.00	1440.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:12:22.604+00	2026-01-05 08:12:22.695208+00	new	94.21	0	amount
b5e1437f-c43c-4db1-8828-d0c91b8973f5	ORD-202601-0044	55a26af3-78ee-43cc-b6a4-c05d68c0ac84	2026-01-05	2025-12-30	467.29	0.00	500.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:11:50.908+00	2026-01-05 08:11:50.998685+00	new	32.71	0	amount
d5d6ddbe-1c93-4619-a115-c5342411af35	ORD-202601-0047	7d4a2c7c-9a44-4d94-a3cc-0a6c8446b591	2026-01-05	2025-12-30	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:14:22.017+00	2026-01-05 08:14:22.125893+00	new	81.78	0	amount
8e2e0656-7929-47c8-bf54-d6e4039a4d0e	ORD-202601-0046	86020312-8c63-401b-bfc6-a4a63dff6f26	2026-01-05	2025-12-30	700.93	0.00	750.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:12:55.32+00	2026-01-05 08:12:55.394957+00	new	49.07	0	amount
2a123b2b-595c-4c50-a3ab-e7d3f450c02f	ORD-202601-0049	f0e39ea2-a9dc-4492-9994-bc6893d2838e	2026-01-05	2025-12-31	1869.16	0.00	2000.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:16:06.207+00	2026-01-05 08:16:06.499968+00	new	130.84	0	amount
1bc6e040-820e-4d9f-a171-eb5ba544878e	ORD-202601-0050	b10cb1c3-cc14-4001-ab0b-d0854399c1a8	2026-01-05	2025-12-31	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:16:32.001+00	2026-01-05 08:16:32.498825+00	new	81.78	0	amount
154b6379-3451-471e-893a-b72e0eabaa53	ORD-202601-0051	46652f57-9bd5-4133-8d35-ddae7de97b32	2026-01-05	2026-01-01	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:18:13.942+00	2026-01-05 08:18:14.254879+00	new	81.78	0	amount
fd7ec458-607e-45b7-96a4-e4a0a0e04407	ORD-202601-0052	03c433d2-b412-4155-9696-2f1088f245fd	2026-01-05	2026-01-02	2102.80	0.00	2250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:24:42.227+00	2026-01-05 08:24:42.693667+00	new	147.20	0	amount
047c01ce-301b-45d1-8c5f-e026c4f9ff2d	ORD-202601-0053	ea0842ce-6cfd-48a1-85d4-034fe4725889	2026-01-05	2026-01-02	1345.79	0.00	1440.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:25:13.923+00	2026-01-05 08:25:14.010729+00	new	94.21	0	amount
c727f999-3600-44b8-a17e-63b58a65094b	ORD-202601-0039	101dbc58-c138-4e52-b312-cf9f47b11344	2026-01-05	2026-01-29	1869.16	0.00	2000.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:02:24.744+00	2026-01-28 10:36:48.675138+00	cancelled	130.84	0	amount
908b314b-b973-4bd7-a9a5-e34bb61b94da	ORD-202601-0054	b10cb1c3-cc14-4001-ab0b-d0854399c1a8	2026-01-05	2026-01-02	1168.22	0.00	1250.00	\N	pending	\N	\N	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:25:42.588+00	2026-01-05 08:25:42.675623+00	new	81.78	0	amount
d8ca5cd2-8a4a-4556-a5d0-f6609eac2fe5	ORD-202601-0055	3ba38459-588c-4d94-80b9-ab1dc178dba8	2026-01-14	2026-01-15	1345.79	0.00	1440.00	\N	pending	TH.1501 / ตลอด / ใหญ่ส้มx1	TH.1501 / ตลอด / ใหญ่ส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-14 10:24:19.789+00	2026-01-14 10:24:19.898467+00	new	94.21	0	amount
fcbb8a16-5be3-43dd-8d1d-4679f9a776d3	ORD-202601-0056	fb0e8cff-4b7a-482d-87fc-ec7ff3f69b48	2026-01-14	2026-01-15	1250.00	0.00	1337.50	\N	pending	TH.1501/ตลอด / เล็กส้ม x 1 ใบกำกับภาษี	TH.1501/ตลอด / เล็กส้ม x 1 ใบกำกับภาษี	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-14 10:26:13.271+00	2026-01-14 10:26:13.389632+00	new	87.50	0	amount
2bef7d3d-cb5f-442f-99c1-a9be0c3cb8b1	ORD-202601-0062	caf88ba6-28a7-47d6-b007-5bc794f32a98	2026-01-16	2026-01-17	584.11	0.00	625.00	\N	pending	SA.1701/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝา\n-  พันท้าย 25 ขวด	SA.1701/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝา\n-  พันท้าย 25 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-16 09:28:40.067+00	2026-01-16 09:28:40.360692+00	new	40.89	0	amount
27f76fa3-131b-4dbd-a2fb-dbddb4fc6f69	ORD-202601-0057	04f65103-1a92-4248-9fda-eae284c5ce07	2026-01-14	2026-01-15	1345.79	0.00	1440.00	\N	pending	TH.1501/ตลอด/ใหญ่ส้มx1	TH.1501/ตลอด/ใหญ่ส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-14 10:27:58.687+00	2026-01-14 10:27:58.802974+00	new	94.21	0	amount
d35aab06-0cf2-4e64-b9d6-028c64bb30e0	ORD-202601-0058	7df382dd-eba6-4498-ba34-97232404c8c1	2026-01-14	2026-01-15	934.58	0.00	1000.00	\N	pending	TH.1501 / ตลอด / เล็ก 40 ขวด	TH.1501 / ตลอด / เล็ก 40 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-14 10:29:34.744+00	2026-01-14 10:29:34.860411+00	new	65.42	0	amount
1281eece-914d-4e79-a53e-695a481c94d0	ORD-202601-0067	3c495c93-d33d-4d36-b8af-1e52c77cc09a	2026-01-18	2026-01-19	934.58	0.00	1000.00	\N	pending	MO.1901/08.00-12.00/OEM เล็กส้ม 40 ขวด+บิลเงินสด	MO.1901/08.00-12.00/OEM เล็กส้ม 40 ขวด+บิลเงินสด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-18 09:56:35.384+00	2026-01-18 09:56:35.5126+00	new	65.42	0	amount
296bc39b-243b-4112-a104-e68b441ab716	ORD-202601-0063	b87dfcd8-4001-4de7-8c95-504874ff2627	2026-01-16	2026-01-17	1345.79	0.00	1440.00	\N	pending	SA.1701 / ตลอด / ใหญ่ส้มx1	SA.1701 / ตลอด / ใหญ่ส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-16 09:29:07.881+00	2026-01-16 09:29:07.966656+00	new	94.21	0	amount
479896aa-2fd1-4051-8196-8a7bc917c1d6	ORD-202601-0059	da7f1ad2-e025-4d9d-a9e4-a9e1636d50a6	2026-01-14	2026-01-15	1238.32	0.00	1325.00	\N	pending	FR.1601 / หลัง 12.00 / มิกซ์ส้มx1\n**จัดส่ง TH.1501 + รับลังกลับ**	FR.1601 / หลัง 12.00 / มิกซ์ส้มx1\n**จัดส่ง TH.1501 + รับลังกลับ**	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-14 10:30:35.583+00	2026-01-14 10:30:35.7669+00	new	86.68	0	amount
9b947346-4a88-48d5-94aa-76ec8e94970b	ORD-202601-0064	55a26af3-78ee-43cc-b6a4-c05d68c0ac84	2026-01-16	2026-01-17	700.93	0.00	750.00	\N	pending	SA.1701 / ตลอด / เล็กส้ม 30 ขวด\nเก็บเงิน 750.-	SA.1701 / ตลอด / เล็กส้ม 30 ขวด\nเก็บเงิน 750.-	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-16 09:29:56.539+00	2026-01-16 09:29:56.655876+00	new	49.07	0	amount
52108126-eae1-4ee3-b026-e76ddd1bc0fb	ORD-202601-0060	51cf5288-f182-40b8-a6ec-15fee05407cc	2026-01-14	2026-01-15	1308.41	0.00	1400.00	\N	pending	TH.1501/DHL/เล็กส้มx1	TH.1501/DHL/เล็กส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-14 10:40:17.141+00	2026-01-14 10:40:17.420716+00	new	91.59	0	amount
62c7f4fb-769b-4b5d-ba0c-4ba736c41e10	ORD-202601-0072	b10cb1c3-cc14-4001-ab0b-d0854399c1a8	2026-01-18	2026-01-19	1250.00	0.00	1337.50	\N	pending	MO.1901/ตลอด/เล็กส้มx1 \n+ใบกำกับไปพร้อมสินค้า	MO.1901/ตลอด/เล็กส้มx1 \n+ใบกำกับไปพร้อมสินค้า	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-18 10:02:09.608+00	2026-01-18 10:02:09.768593+00	new	87.50	0	amount
055d5da9-7f91-4a7c-b6d7-593fc4e230fc	ORD-202601-0061	ad07f63f-f28f-4aa3-96d1-ca49f26ab3e9	2026-01-14	2026-01-15	1168.22	0.00	1250.00	\N	pending	TH.1501 / ตลอด / เล็กส้มx1	TH.1501 / ตลอด / เล็กส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-14 11:10:38.788+00	2026-01-14 11:10:38.875834+00	new	81.78	0	amount
06dd156e-cb60-46b9-b1cc-76b3744955ac	ORD-202601-0065	55a26af3-78ee-43cc-b6a4-c05d68c0ac84	2026-01-16	2026-01-17	467.29	0.00	500.00	\N	pending	SA.1701/ตลอด / เล็กส้ม 20 ขวด\nเก็บเงิน 500.-	SA.1701/ตลอด / เล็กส้ม 20 ขวด\nเก็บเงิน 500.-	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-16 09:30:25.777+00	2026-01-16 09:30:25.853906+00	new	32.71	0	amount
928496f9-a7b9-41a6-9762-b5151d074271	ORD-202601-0068	fdba0761-4123-4b05-ac68-c642b3c3ba6d	2026-01-18	2026-01-19	1168.22	0.00	1250.00	\N	pending	MO.1901/ตลอด/เล็กส้มx1	MO.1901/ตลอด/เล็กส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-18 09:57:47.572+00	2026-01-18 09:57:47.666715+00	new	81.78	0	amount
6e98dd48-f648-4b75-94b8-f94a2f3a7d07	ORD-202601-0066	1a36dbb0-3be1-4d4d-98b3-4101237037ab	2026-01-16	2026-01-17	1345.79	0.00	1440.00	\N	pending	SA.1701 / ตลอด / ใหญ่ส้มx1	SA.1701 / ตลอด / ใหญ่ส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-16 09:31:31.201+00	2026-01-16 09:31:31.290577+00	new	94.21	0	amount
c81df463-4c9e-4006-bd13-b47c1df93b1c	ORD-202601-0070	a2f94086-703f-472b-b152-ae94ed950036	2026-01-18	2026-01-19	1168.22	0.00	1250.00	\N	pending	MO.1901 / ก่อน 10.00น. / OEM /  เล็กx1	MO.1901 / ก่อน 10.00น. / OEM /  เล็กx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-18 10:00:14.258+00	2026-01-18 10:00:14.378666+00	new	81.78	0	amount
14b63bb3-58e1-46ba-a4c3-1a50454b2ba2	ORD-202601-0069	caf88ba6-28a7-47d6-b007-5bc794f32a98	2026-01-18	2026-01-19	1285.05	0.00	1375.00	\N	pending	MO.1901/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝา\n- สวนผัก 20 ขวด\n- อิสรภาพ 15 ขวด\n- บางขุนนนท์ 20 ขวด	MO.1901/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝา\n- สวนผัก 20 ขวด\n- อิสรภาพ 15 ขวด\n- บางขุนนนท์ 20 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-18 09:58:32.084+00	2026-01-18 09:58:32.213141+00	new	89.95	0	amount
3d1e73f4-f4ee-4aa9-890f-65b131e46dbd	ORD-202601-0071	f7581fec-a8c9-4109-b18e-d362d92ca94d	2026-01-18	2026-01-19	1168.22	0.00	1250.00	\N	pending	MO.1901/ช่วงเช้า / เล็กส้มx1	MO.1901/ช่วงเช้า / เล็กส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-18 10:01:39.366+00	2026-01-18 10:01:39.706103+00	new	81.78	0	amount
03f40255-a228-4ddd-9ef3-e8f5add75b1c	ORD-202601-0073	3f5de013-3fa1-412e-a726-31d01ec6cd2b	2026-01-18	2026-01-19	1168.22	0.00	1250.00	\N	pending	MO.1901/ก่อน 10.00/ \n-OEM น้ำส้ม 250 ml 30 ขวด\n-OEM เลม่อน 250 ml 20 ขวด	MO.1901/ก่อน 10.00/ \n-OEM น้ำส้ม 250 ml 30 ขวด\n-OEM เลม่อน 250 ml 20 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-18 10:02:51.91+00	2026-01-18 10:02:52.210256+00	new	81.78	0	amount
29f89184-b702-4cdb-8339-5f4ca325d078	ORD-202601-0074	03c433d2-b412-4155-9696-2f1088f245fd	2026-01-18	2026-01-19	2686.92	0.00	2875.00	\N	pending	MO.1901/ตลอด/\n-ท่าน้ำนนท์ 35 ขวด \n-วัดลาด 35 ขวด\n-ท่าอิฐ 45 ขวด	MO.1901/ตลอด/\n-ท่าน้ำนนท์ 35 ขวด \n-วัดลาด 35 ขวด\n-ท่าอิฐ 45 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-18 10:03:26.515+00	2026-01-18 10:03:26.632799+00	new	188.08	0	amount
9a078541-0c5e-4f27-87f4-dd9b39135a84	ORD-202601-0075	7aea9b3f-cf61-40db-92e4-bfc187a581a6	2026-01-19	2026-01-20	584.11	0.00	625.00	\N	pending	TU.2001/ตลอด / เล็กส้ม 25 ขวด	TU.2001/ตลอด / เล็กส้ม 25 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-19 10:37:20.964+00	2026-01-19 10:37:21.190169+00	new	40.89	0	amount
7d3268cd-ab5b-4568-acd0-bc1392aed3c8	ORD-202601-0076	9d9ce6db-dba1-4aac-a405-125b53688bdb	2026-01-19	2026-01-20	700.93	0.00	750.00	\N	pending	TU.2001/09.00-09.30	TU.2001/09.00-09.30	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-19 10:40:24.407+00	2026-01-19 10:40:24.487707+00	new	49.07	0	amount
e8b2dd20-3190-40c0-8b43-19d2f5c97217	ORD-202601-0077	77e46928-7b1c-44d1-9c0e-6cb9122043e0	2026-01-19	2026-01-20	584.11	0.00	625.00	\N	pending	TU.2001/  ตลอด / เล็กส้ม 25 ขวด	TU.2001/  ตลอด / เล็กส้ม 25 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-19 10:40:51.529+00	2026-01-19 10:40:51.547869+00	new	40.89	0	amount
4613bd52-6524-49ba-a04a-fc05cc86c17c	ORD-202601-0084	55a26af3-78ee-43cc-b6a4-c05d68c0ac84	2026-01-23	2026-01-24	700.93	0.00	750.00	\N	pending	SA.2401 / ตลอด / เล็กส้ม 30 ขวด\nเก็บเงิน 750.-	SA.2401 / ตลอด / เล็กส้ม 30 ขวด\nเก็บเงิน 750.-	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-23 10:36:47.456+00	2026-01-23 10:36:47.604818+00	new	49.07	0	amount
15d48c6d-6dc7-4c9f-939f-aa69563cdd18	ORD-202601-0080	33650f06-de75-493c-b503-bbee8cce3166	2026-01-19	2026-01-20	1168.22	0.00	1250.00	\N	pending	TU.2001 / ก่อน 12.00 น. / เล็กน้ำส้ม 25 ขวด\nน้ำเลม่อน 25 ขวด	TU.2001 / ก่อน 12.00 น. / เล็กน้ำส้ม 25 ขวด\nน้ำเลม่อน 25 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-19 10:44:25.209+00	2026-01-19 10:45:01.441484+00	new	81.78	0	amount
ef0b565c-d939-452a-a543-074542c20692	ORD-202601-0078	f01c0d58-b2c5-49e5-8394-ec1b89e262de	2026-01-19	2026-01-20	1308.41	0.00	1400.00	\N	pending	TU.2001/DHL /OEM 250 ml. ส้ม 50 ขวด	TU.2001/DHL /OEM 250 ml. ส้ม 50 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-19 10:42:59.348+00	2026-01-19 10:42:59.584378+00	new	91.59	0	amount
1c1af632-780e-493f-b457-cb1770f0b671	ORD-202601-0089	3ba38459-588c-4d94-80b9-ab1dc178dba8	2026-01-23	2026-01-24	1345.79	0.00	1440.00	\N	pending	SA.2401 / ตลอด / ใหญ่ส้มx1	SA.2401 / ตลอด / ใหญ่ส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-23 10:41:54.84+00	2026-01-23 10:41:54.92485+00	new	94.21	0	amount
5044d6b6-e70a-4dd9-8e83-070cfcd94513	ORD-202601-0085	55a26af3-78ee-43cc-b6a4-c05d68c0ac84	2026-01-23	2026-01-24	467.29	0.00	500.00	\N	pending	SA.2401/ตลอด / เล็กส้ม 20 ขวด\nเก็บเงิน 500.-	SA.2401/ตลอด / เล็กส้ม 20 ขวด\nเก็บเงิน 500.-	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-23 10:37:15.382+00	2026-01-23 10:37:15.472707+00	new	32.71	0	amount
6ba6aad3-1e8b-47ac-bdab-075a43b3573f	ORD-202601-0079	56a792d5-e6b2-4096-8792-cf270c7d7566	2026-01-19	2026-01-20	543.46	0.00	581.50	\N	pending	TU.2001/ตลอด/ใหญ่ส้ม 5	TU.2001/ตลอด/ใหญ่ส้ม 5	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-19 10:43:46.288+00	2026-01-19 10:43:46.487472+00	new	38.04	0	amount
cec2b2ff-8271-4971-adbf-a40c03ff6638	ORD-202601-0081	2739c5e6-1384-4ded-81ef-26f31524ca99	2026-01-19	2026-01-20	1580.19	0.00	1690.80	\N	pending	TU.2001/ DHL / ใหญ่ส้มx1 + ใบกำกับ	TU.2001/ DHL / ใหญ่ส้มx1 + ใบกำกับ	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-19 10:46:37.069+00	2026-01-19 10:46:37.235056+00	new	110.61	0	amount
e51f8ca9-69ff-4728-9ae9-62a9bc2f982e	ORD-202601-0086	1a36dbb0-3be1-4d4d-98b3-4101237037ab	2026-01-23	2026-01-24	1345.79	0.00	1440.00	\N	pending	SA.2401 / ตลอด / ใหญ่ส้มx1	SA.2401 / ตลอด / ใหญ่ส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-23 10:38:05.395+00	2026-01-23 10:38:05.467741+00	new	94.21	0	amount
621c7e4c-732c-4d94-bdc8-ed0c7c6ddfd5	ORD-202601-0082	86020312-8c63-401b-bfc6-a4a63dff6f26	2026-01-19	2026-01-20	443.93	0.00	475.00	\N	pending	TU.2001/ตลอด/เล็กส้ม 15 ขวด + ใบกำกับ	TU.2001/ตลอด/เล็กส้ม 15 ขวด + ใบกำกับ	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-19 10:47:23.426+00	2026-01-19 10:47:23.678795+00	new	31.07	0	amount
6ae47b5d-e1fd-4d5d-8363-ee5cf02a38a2	ORD-202601-0087	3150b512-00be-4097-84e6-9d8d03aec50e	2026-01-23	2026-01-24	985.98	0.00	1055.00	\N	pending	SA.2401/ ใหญ่ส้ม 2 ขวด + เล็กส้ม 30 ขวด + เล็กเลม่อน 5 ขวด \nถ้าได้ช่วงก่อนเที่ยงก็ดีค่ะ	SA.2401/ ใหญ่ส้ม 2 ขวด + เล็กส้ม 30 ขวด + เล็กเลม่อน 5 ขวด \nถ้าได้ช่วงก่อนเที่ยงก็ดีค่ะ	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-23 10:40:17.756+00	2026-01-23 10:40:18.100676+00	new	69.02	0	amount
8615a4d5-f092-46ee-b8c9-646d671feea3	ORD-202601-0090	bf03f5ae-ea55-41f1-b603-0108f0d0b524	2026-01-24	2026-01-26	1168.22	0.00	1250.00	\N	pending	MO.2601/08.00-12.00/OEM เล็กส้ม 50 ขวด+บิลเงินสด\n**ปั๊มวันหมดอายุที่ขวด รับลังกลับ**	MO.2601/08.00-12.00/OEM เล็กส้ม 50 ขวด+บิลเงินสด\n**ปั๊มวันหมดอายุที่ขวด รับลังกลับ**	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-24 09:06:32.685+00	2026-01-24 09:06:32.801798+00	new	81.78	0	amount
58930728-13aa-4c7a-afff-41007663c52d	ORD-202601-0083	8e599a70-e9dd-411b-8da8-f750a7b8b4aa	2026-01-19	2026-01-20	0.00	1450.00	0.00	\N	pending	TU.2001/ตลอด/เล็กส้ม 58 ขวด\n**จากบิล ONL202601132**	TU.2001/ตลอด/เล็กส้ม 58 ขวด\n**จากบิล ONL202601132**	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-19 10:48:43.629+00	2026-01-19 10:48:43.660202+00	new	0.00	0	amount
c29cb534-0c38-4283-8df6-cf02d57944f4	ORD-202601-0088	c0968a19-758d-42f5-a4b1-6228a7569e09	2026-01-23	2026-01-24	1440.00	0.00	1540.80	\N	pending	SA.2401 / ตลอด / ใหญ่ส้มx1	SA.2401 / ตลอด / ใหญ่ส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-23 10:41:25.62+00	2026-01-23 10:41:25.685207+00	new	100.80	0	amount
39eb09ce-2c32-4d7c-be98-ced37deb5563	ORD-202601-0092	b10cb1c3-cc14-4001-ab0b-d0854399c1a8	2026-01-24	2026-01-26	1250.00	0.00	1337.50	\N	pending	MO.2601/ตลอด/เล็กส้มx1 \n+ใบกำกับไปพร้อมสินค้า	MO.2601/ตลอด/เล็กส้มx1 \n+ใบกำกับไปพร้อมสินค้า	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-24 09:09:13.087+00	2026-01-24 09:09:13.174685+00	new	87.50	0	amount
18dd050d-f2b2-4359-b482-e8ea84d95324	ORD-202601-0091	c25ec1ed-3f58-436d-a6b7-0d84c65041bc	2026-01-24	2026-01-26	1168.22	0.00	1250.00	\N	pending	MO.2601/ตลอด (แต่เป็นได้ขอเป็นก่อน 12.00)\n/OEM 250 ml เล็กส้ม x1	MO.2601/ตลอด (แต่เป็นได้ขอเป็นก่อน 12.00)\n/OEM 250 ml เล็กส้ม x1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-24 09:08:45.94+00	2026-01-24 09:08:46.055745+00	new	81.78	0	amount
6cfc0dbe-6048-4596-ac47-b1137ce4a754	ORD-202601-0094	da7f1ad2-e025-4d9d-a9e4-a9e1636d50a6	2026-01-25	2026-01-26	668.22	0.00	715.00	\N	pending	MO.2601 / ตลอด / เล็กส้ม 25 ขวด + ใหญ่ส้ม 1 ขวด	MO.2601 / ตลอด / เล็กส้ม 25 ขวด + ใหญ่ส้ม 1 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-25 01:30:34.088+00	2026-01-25 01:30:34.256849+00	new	46.78	0	amount
b8b62c16-b8d1-4ab7-9015-ba193878a19c	ORD-202601-0093	101dbc58-c138-4e52-b312-cf9f47b11344	2026-01-25	2026-01-26	350.47	0.00	375.00	\N	pending	MO.2601/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝา\n- อิสรภาพ 15 ขวด	MO.2601/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝา\n- อิสรภาพ 15 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-25 01:29:42.61+00	2026-01-25 01:29:42.700961+00	new	24.53	0	amount
0e19fa62-c2e6-4159-aa35-2eed69b8f0af	ORD-202601-0095	33650f06-de75-493c-b503-bbee8cce3166	2026-01-25	2026-01-26	1728.97	0.00	1850.00	\N	pending	MO.2601 / ตลอด / เล็กส้มx1 + เล็กเลม่อน 20 ขวด	MO.2601 / ตลอด / เล็กส้มx1 + เล็กเลม่อน 20 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-25 07:41:19.883+00	2026-01-25 07:41:20.400817+00	new	121.03	0	amount
b2b29af1-63f9-4a28-ba28-15cc13575872	ORD-202601-0096	8e599a70-e9dd-411b-8da8-f750a7b8b4aa	2026-01-25	2026-01-26	0.00	875.00	0.00	\N	pending	MO.2601/ตลอด/เล็กส้ม 35 ขวด	MO.2601/ตลอด/เล็กส้ม 35 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-25 07:42:15.848+00	2026-01-25 07:42:16.214784+00	new	0.00	0	amount
8bfab326-baf2-4a64-88da-74163ff0387c	ORD-202601-0097	f0e39ea2-a9dc-4492-9994-bc6893d2838e	2026-01-25	2026-01-26	1869.16	0.00	2000.00	\N	pending	MO.2601/ตลอด/\n- OEM เล็กส้ม 60 ขวด \n- OEM เล็กฮันนี่เลม่อน 20 ขวด	MO.2601/ตลอด/\n- OEM เล็กส้ม 60 ขวด \n- OEM เล็กฮันนี่เลม่อน 20 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-25 07:43:30.53+00	2026-01-25 07:43:30.791547+00	new	130.84	0	amount
50e63041-26cf-472f-9a3b-8a0831bab5db	ORD-202601-0103	7df382dd-eba6-4498-ba34-97232404c8c1	2026-01-26	2026-01-27	934.58	0.00	1000.00	\N	pending	TU.2701 / ตลอด / เล็ก 40 ขวด	TU.2701 / ตลอด / เล็ก 40 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-26 06:30:06.062+00	2026-01-26 06:30:06.213065+00	new	65.42	0	amount
2edef3e7-31d8-4b41-88da-f6bb3ed10dbb	ORD-202601-0098	03c433d2-b412-4155-9696-2f1088f245fd	2026-01-25	2026-01-26	700.93	0.00	750.00	\N	pending	MO.2601/ตลอด/\n-ท่าน้ำนนท์ 30 ขวด 	MO.2601/ตลอด/\n-ท่าน้ำนนท์ 30 ขวด 	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-25 07:47:56.959+00	2026-01-25 07:47:57.099953+00	new	49.07	0	amount
bbc0cd74-8280-4e7b-8d28-9e5a3ea87ad4	ORD-202601-0099	03c433d2-b412-4155-9696-2f1088f245fd	2026-01-25	2026-01-26	817.76	0.00	875.00	\N	pending	MO.2601/ตลอด/\n-วัดลาด 35 ขวด	MO.2601/ตลอด/\n-วัดลาด 35 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-25 07:48:43.425+00	2026-01-25 07:48:43.58257+00	new	57.24	0	amount
6ab60593-8f42-4f54-b9dc-c06ef4cca0ff	ORD-202601-0109	d75f6899-d5b5-4855-8614-a6ad5993ce25	2026-01-27	2026-01-28	327.10	100.00	350.00	\N	pending	WE.2801/ตลอด /ส้มใหญ่ 3 ขวด + เลม่อนใหญ่ 2 ขวด	WE.2801/ตลอด /ส้มใหญ่ 3 ขวด + เลม่อนใหญ่ 2 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-27 02:53:34.738+00	2026-01-27 02:53:35.02511+00	new	22.90	0	amount
cee2f552-c760-4f3b-a385-6d3532a32c5a	ORD-202601-0100	03c433d2-b412-4155-9696-2f1088f245fd	2026-01-25	2026-01-26	817.76	0.00	875.00	\N	pending	MO.2601/ตลอด/\n-บางกรวย 35 ขวด	MO.2601/ตลอด/\n-บางกรวย 35 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-25 07:49:30.452+00	2026-01-25 07:49:30.574109+00	new	57.24	0	amount
c7146eb9-128d-410f-9ec1-be2e2b88c7e2	ORD-202601-0104	f7581fec-a8c9-4109-b18e-d362d92ca94d	2026-01-26	2026-01-27	1168.22	0.00	1250.00	\N	pending	TU.2701/  ช่วงเช้า / เล็กส้มx1	TU.2701/  ช่วงเช้า / เล็กส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-26 06:30:51.413+00	2026-01-26 06:30:51.570577+00	new	81.78	0	amount
c96983f5-6bff-4126-bfd2-78f7f97bd100	ORD-202601-0110	fc3f1c3e-727e-4dd6-bd43-6df1ea5b9979	2026-01-27	2026-01-28	1345.79	0.00	1440.00	\N	pending	WE.2801/ตลอด/ใหญ่ส้มx1	WE.2801/ตลอด/ใหญ่ส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-27 02:55:10.677+00	2026-01-27 02:55:10.794788+00	new	94.21	0	amount
16ca4cb2-6c20-45f4-a19c-0e33a3b87694	ORD-202601-0101	08645abb-26d8-4411-b686-bfca6d08d1c6	2026-01-25	2026-01-26	250.47	0.00	268.00	\N	pending	MO.2601/ตลอด/เล็กส้ม 1 ขวด + ใหญ่ส้ม 1 ขวด	MO.2601/ตลอด/เล็กส้ม 1 ขวด + ใหญ่ส้ม 1 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-25 07:51:29.117+00	2026-01-25 07:51:29.515946+00	new	17.53	0	amount
5f936a6c-04eb-4bc7-8250-e15e74bc42bb	ORD-202601-0105	f01c0d58-b2c5-49e5-8394-ec1b89e262de	2026-01-26	2026-01-27	1308.41	0.00	1400.00	\N	pending	TU.2701/DHL /OEM 250 ml. ส้ม 50 ขวด	TU.2701/DHL /OEM 250 ml. ส้ม 50 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-26 06:32:18.359+00	2026-01-26 06:32:19.206532+00	new	91.59	0	amount
c8c222c8-34ee-4a85-b781-edaac955bb73	ORD-202601-0102	3eb26f74-1ab2-407c-89ae-843749750baa	2026-01-25	2026-01-26	1168.22	0.00	1250.00	\N	pending	MO.2601 / ตลอด/เล็กส้มx1	MO.2601 / ตลอด/เล็กส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-25 09:10:32.244+00	2026-01-25 09:10:32.393446+00	new	81.78	0	amount
6beab3ee-78a1-485b-8cf5-7baf522b6397	ORD-202601-0108	b10cb1c3-cc14-4001-ab0b-d0854399c1a8	2026-01-27	2026-01-28	1250.00	0.00	1337.50	\N	pending	WE.2801/ตลอด/เล็กส้มx1 \n+ใบกำกับไปพร้อมสินค้า	WE.2801/ตลอด/เล็กส้มx1 \n+ใบกำกับไปพร้อมสินค้า	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-27 02:50:09.393+00	2026-01-27 02:50:31.509328+00	new	87.50	0	amount
2a18652c-760b-48ba-86f3-b0f619f16dac	ORD-202601-0106	86020312-8c63-401b-bfc6-a4a63dff6f26	2026-01-26	2026-01-27	443.93	0.00	475.00	\N	pending	TU.2701/ตลอด/เล็กส้ม 15 ขวด + ใบกำกับ	TU.2701/ตลอด/เล็กส้ม 15 ขวด + ใบกำกับ	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-26 09:29:07.091+00	2026-01-26 09:29:07.428444+00	new	31.07	0	amount
a12b161a-421d-4fe3-89d9-033f77c7f175	ORD-202601-0112	8b41abd9-cfd2-4895-8ccd-b0b430811ff8	2026-01-27	2026-01-28	750.00	0.00	802.50	\N	pending	WE.2801/ช่วงเช้า/เล็กส้ม 30 ขวด	WE.2801/ช่วงเช้า/เล็กส้ม 30 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-27 02:58:54.737+00	2026-01-27 02:58:54.851487+00	new	52.50	0	amount
f3c251db-8d57-4459-960e-64a89ac12bc7	ORD-202601-0107	fc574bea-4e14-45c2-aae2-bc9a9229e2ce	2026-01-26	2026-01-27	1345.79	0.00	1440.00	\N	pending	TU.2701/ตลอด/ใหญ่ส้มx1	TU.2701/ตลอด/ใหญ่ส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-26 10:05:23.434+00	2026-01-26 10:05:23.550611+00	new	94.21	0	amount
b4bdca1a-5aed-408b-a907-f602a28f607c	ORD-202601-0111	caf88ba6-28a7-47d6-b007-5bc794f32a98	2026-01-27	2026-01-28	1869.16	0.00	2000.00	\N	pending	WE.2801/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝา\n- อิสรภาพ 15 ขวด\n- สวนผัก 20 ขวด\n- พันท้าย 25 ขวด\n- บางขุนนนท์ 20 ขวด	WE.2801/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝา\n- อิสรภาพ 15 ขวด\n- สวนผัก 20 ขวด\n- พันท้าย 25 ขวด\n- บางขุนนนท์ 20 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-27 02:57:04.52+00	2026-01-27 02:57:04.645908+00	new	130.84	0	amount
4c4b2277-2473-4233-9ef6-e5f7d382b608	ORD-202601-0113	7aea9b3f-cf61-40db-92e4-bfc187a581a6	2026-01-27	2026-01-28	584.11	0.00	625.00	\N	pending	WE.2801/ตลอด / เล็กส้ม 25 ขวด	WE.2801/ตลอด / เล็กส้ม 25 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-27 07:58:53.264+00	2026-01-27 07:58:53.495315+00	new	40.89	0	amount
6d33cca4-91c7-4bd1-8d5a-823f2ea08511	ORD-202601-0115	03c433d2-b412-4155-9696-2f1088f245fd	2026-01-27	2026-01-28	700.93	0.00	750.00	\N	pending	WE.2801/ตลอด/\n-ปากเกร็ด 30 ขวด	WE.2801/ตลอด/\n-ปากเกร็ด 30 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-27 10:39:45.366+00	2026-01-27 10:39:45.451849+00	new	49.07	0	amount
8d63e753-7cb1-42a9-9eb9-45c23d985e80	ORD-202601-0114	3eb26f74-1ab2-407c-89ae-843749750baa	2026-01-27	2026-01-28	1168.22	0.00	1250.00	\N	pending	WE.2801 / ตลอด/เล็กส้มx1	WE.2801 / ตลอด/เล็กส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-27 10:38:49.414+00	2026-01-27 10:38:49.597906+00	new	81.78	0	amount
e77cf8bb-dc85-48b7-9bb6-a05507b935c5	ORD-202601-0116	c0968a19-758d-42f5-a4b1-6228a7569e09	2026-01-27	2026-01-28	1440.00	0.00	1540.80	\N	pending	WE.2801 / ตลอด / ใหญ่ส้มx1	WE.2801 / ตลอด / ใหญ่ส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-27 10:40:29.483+00	2026-01-27 10:40:29.510215+00	new	100.80	0	amount
5170e6eb-8fb8-4906-83e9-979082ac7caa	ORD-202601-0117	ee12bcd1-73ac-443f-97af-8f08ac6af0cb	2026-01-28	2026-01-29	3682.24	0.00	3940.00	\N	pending	TH.2901/ตลอด/OEM เล็กส้มx2 + OEM ใหญ่ส้มx1	TH.2901/ตลอด/OEM เล็กส้มx2 + OEM ใหญ่ส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-28 10:33:36.989+00	2026-01-28 10:33:37.221766+00	new	257.76	0	amount
4e04dc80-14ad-4ca3-8644-7341fed4178b	ORD-202601-0118	10e16ee6-db10-4292-a367-97b478f93873	2026-01-28	2026-01-29	1168.22	0.00	1250.00	\N	pending	TH.2901 / สะดวกรับก่อน 11.00 หรือ หลัง 17.00 / เล็กส้มx1	TH.2901 / สะดวกรับก่อน 11.00 หรือ หลัง 17.00 / เล็กส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-28 10:34:06.008+00	2026-01-28 10:34:06.054242+00	new	81.78	0	amount
8d66bd25-41ae-416e-b385-0a3b1b2c8522	ORD-202601-0126	55a26af3-78ee-43cc-b6a4-c05d68c0ac84	2026-01-29	2026-01-30	1168.22	0.00	1250.00	\N	pending	FR.3001/ตลอด / เล็กส้มx1 \nเก็บเงิน 1250.-	FR.3001/ตลอด / เล็กส้มx1 \nเก็บเงิน 1250.-	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-29 08:03:49.957+00	2026-01-29 08:03:50.078052+00	new	81.78	0	amount
8e433bd5-16da-4a55-9722-27cfbca3be62	ORD-202601-0119	33650f06-de75-493c-b503-bbee8cce3166	2026-01-28	2026-01-29	1168.22	0.00	1250.00	\N	pending	TH.2901 / ตลอด / เล็กส้ม 30 ขวด+ เล็กเลม่อน 20 ขวด	TH.2901 / ตลอด / เล็กส้ม 30 ขวด+ เล็กเลม่อน 20 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-28 10:34:54.142+00	2026-01-28 10:34:54.328132+00	new	81.78	0	amount
acfdb8e5-f58b-4f9c-aa59-c5dd6d21317c	ORD-202601-0120	3ae90b99-cdcc-4310-9d78-1aaca6a51d5a	2026-01-28	2026-01-29	1168.22	0.00	1250.00	\N	pending	TH.2901/OEM เล็กส้มx1	TH.2901/OEM เล็กส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-28 10:35:19.775+00	2026-01-28 10:35:19.829824+00	new	81.78	0	amount
17e0160a-61bb-47c3-9353-aa5a86ff7cae	ORD-202601-0131	55a26af3-78ee-43cc-b6a4-c05d68c0ac84	2026-01-30	2026-01-31	700.93	0.00	750.00	\N	pending	SA.3101 / ตลอด / เล็กส้ม 30 ขวด\nเก็บเงิน 750.-	SA.3101 / ตลอด / เล็กส้ม 30 ขวด\nเก็บเงิน 750.-	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-30 09:56:08.579+00	2026-01-30 09:56:08.715887+00	new	49.07	0	amount
a9d49343-c546-4a16-b8c3-2c81ccb49c83	ORD-202601-0121	3f5de013-3fa1-412e-a726-31d01ec6cd2b	2026-01-28	2026-01-29	1588.79	0.00	1700.00	\N	pending	TH.2901 / ก่อน 12.00  /\n- OEM  150 ml ส้ม 100 ขวด	TH.2901 / ก่อน 12.00  /\n- OEM  150 ml ส้ม 100 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-28 10:35:51.085+00	2026-01-28 10:35:51.149687+00	new	111.21	0	amount
8d08f67e-8c0c-4b51-ac58-54b1eeb8f1fe	ORD-202601-0127	ea0842ce-6cfd-48a1-85d4-034fe4725889	2026-01-29	2026-01-30	1345.79	0.00	1440.00	\N	pending	FR.3001/ตลอด/ OEM  ใหญ่ส้ม x1	FR.3001/ตลอด/ OEM  ใหญ่ส้ม x1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-29 08:04:36.544+00	2026-01-29 08:04:36.671598+00	new	94.21	0	amount
dc0e638b-f559-4f67-9ab6-297c6f27d61f	ORD-202601-0122	b10cb1c3-cc14-4001-ab0b-d0854399c1a8	2026-01-29	2026-01-30	1250.00	0.00	1337.50	\N	pending	FR.3001/ตลอด/เล็กส้มx1 \n+ใบกำกับไปพร้อมสินค้า	FR.3001/ตลอด/เล็กส้มx1 \n+ใบกำกับไปพร้อมสินค้า	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-29 08:00:56.827+00	2026-01-29 08:00:57.003961+00	new	87.50	0	amount
758c9776-12d2-4c1b-a40c-20ba7201fb43	ORD-202601-0123	3f068301-ec61-4f65-b563-992da0f806e8	2026-01-29	2026-01-30	900.00	0.00	963.00	\N	pending	FR.3001/ตลอด/ใหญ่ส้ม 10 ขวด	FR.3001/ตลอด/ใหญ่ส้ม 10 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-29 08:01:38.013+00	2026-01-29 08:01:38.127769+00	new	63.00	0	amount
355fa462-25be-42e3-a3cc-47823a443c45	ORD-202601-0124	a791d4f2-bfed-45d9-b532-5c18c49f98af	2026-01-29	2026-01-30	700.93	0.00	750.00	\N	pending	FR.3001/ตลอด / เล็กส้ม 30 ขวด	FR.3001/ตลอด / เล็กส้ม 30 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-29 08:02:48.16+00	2026-01-29 08:02:48.241618+00	new	49.07	0	amount
6d0e9205-0cfc-44b9-8dba-2a064c9c82a6	ORD-202601-0125	caf88ba6-28a7-47d6-b007-5bc794f32a98	2026-01-29	2026-01-30	233.64	0.00	250.00	\N	pending	FR.3001/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝา\n- คลองขวาง 10 ขวด	FR.3001/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝา\n- คลองขวาง 10 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-29 08:03:18.51+00	2026-01-29 08:03:19.069448+00	new	16.36	0	amount
6358df46-9522-42d4-9176-28fe62d9a1b1	ORD-202601-0132	55a26af3-78ee-43cc-b6a4-c05d68c0ac84	2026-01-30	2026-01-31	467.29	0.00	500.00	\N	pending	SA.3101/ตลอด / เล็กส้ม 20 ขวด\nเก็บเงิน 500.-	SA.3101/ตลอด / เล็กส้ม 20 ขวด\nเก็บเงิน 500.-	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-30 09:56:54.659+00	2026-01-30 09:56:54.763786+00	new	32.71	0	amount
cf5eb3d5-fc7b-49ba-bf19-84e7563f5128	ORD-202601-0129	03c433d2-b412-4155-9696-2f1088f245fd	2026-01-29	2026-01-30	1168.22	0.00	1250.00	\N	pending	FR.3001/ตลอด/\n-ท่าอิฐ 50 ขวด	FR.3001/ตลอด/\n-ท่าอิฐ 50 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-29 10:25:47.607+00	2026-01-29 10:25:47.683878+00	new	81.78	0	amount
623a3aaa-62ea-420a-88f4-bba6f0b75f0a	ORD-202601-0133	f7581fec-a8c9-4109-b18e-d362d92ca94d	2026-01-30	2026-01-31	1168.22	0.00	1250.00	\N	pending	SA.3101/  ช่วงเช้า / เล็กส้มx1	SA.3101/  ช่วงเช้า / เล็กส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-30 09:57:35.249+00	2026-01-30 09:57:35.362872+00	new	81.78	0	amount
76193fda-1859-4e2d-aeae-f8e83f1f6724	ORD-202601-0130	03c433d2-b412-4155-9696-2f1088f245fd	2026-01-29	2026-01-30	700.93	0.00	750.00	\N	pending	FR.3001/ตลอด/\n-วัดลาด 30 ขวด	FR.3001/ตลอด/\n-วัดลาด 30 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-29 10:26:14.514+00	2026-01-29 10:26:14.633463+00	new	49.07	0	amount
e8644ca3-699a-44b9-8fb6-213ba494e12d	ORD-202601-0135	8e599a70-e9dd-411b-8da8-f750a7b8b4aa	2026-01-30	2026-01-31	794.39	0.00	850.00	\N	pending	SA.3101/ตลอด/เล็กส้ม 34 ขวด\n**จากบิล ONL202601132**	SA.3101/ตลอด/เล็กส้ม 34 ขวด\n**จากบิล ONL202601132**	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-30 10:03:00.574+00	2026-01-30 10:03:00.639715+00	new	55.61	0	amount
f6eeadf2-13b3-4731-a42c-ed8e34ac5b51	ORD-202601-0134	1a36dbb0-3be1-4d4d-98b3-4101237037ab	2026-01-30	2026-01-31	1345.79	0.00	1440.00	\N	pending	SA.3101 / ตลอด / ใหญ่ส้มx1	SA.3101 / ตลอด / ใหญ่ส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-30 10:02:32.917+00	2026-01-30 10:02:33.035663+00	new	94.21	0	amount
aaec8f36-3e1d-4e4e-92c6-958a04145d52	ORD-202601-0136	6ef9f94a-6872-49b4-978d-4687294acc08	2026-01-30	2026-01-31	0.00	1425.00	0.00	\N	pending	SA.3101/DHL/ขวดเปล่า เซต OEM มิกซ์x1	SA.3101/DHL/ขวดเปล่า เซต OEM มิกซ์x1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-30 10:06:59.786+00	2026-01-30 10:07:00.308411+00	new	0.00	0	amount
04e58d73-5c01-41b7-aa25-7d05d99e1012	ORD-202601-0138	3f5de013-3fa1-412e-a726-31d01ec6cd2b	2026-01-30	2026-01-31	1168.22	0.00	1250.00	\N	pending	SA.3101 / ก่อน 12.00  /\n- OEM  250 ml ส้ม 50 ขวด	SA.3101 / ก่อน 12.00  /\n- OEM  250 ml ส้ม 50 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-30 10:38:02.131+00	2026-01-30 10:38:02.181787+00	new	81.78	0	amount
10a7824f-4e25-4c1d-9d92-1990944eafc6	ORD-202601-0137	c947e4a7-5f11-47dd-addf-e32451250a02	2026-01-30	2026-01-31	841.12	0.00	900.00	\N	pending	SA.3101/ช่วงเช้า / ใหญ่ส้ม 10 ขวด	SA.3101/ช่วงเช้า / ใหญ่ส้ม 10 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-30 10:37:32.746+00	2026-01-30 10:37:32.822251+00	new	58.88	0	amount
e47bbc1f-6bc9-4927-b41d-47fea7f2d2a2	ORD-202602-0001	bf03f5ae-ea55-41f1-b603-0108f0d0b524	2026-02-02	2026-02-02	1401.87	0.00	1500.00	\N	pending	MO.0202/08.00-12.00/OEM เล็กส้ม 60 ขวด+บิลเงินสด\n**ปั๊มวันหมดอายุที่ขวด รับลังกลับ**	MO.0202/08.00-12.00/OEM เล็กส้ม 60 ขวด+บิลเงินสด\n**ปั๊มวันหมดอายุที่ขวด รับลังกลับ**	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 09:56:28.506+00	2026-02-02 09:56:28.665988+00	new	98.13	0	amount
2b8f9042-06f7-4d54-aa5a-30b778f225c4	ORD-202602-0002	101dbc58-c138-4e52-b312-cf9f47b11344	2026-02-02	2026-02-02	584.11	0.00	625.00	\N	pending	MO.0202/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝาขวด\n- พันท้าย 25 ขวด	MO.0202/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝาขวด\n- พันท้าย 25 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 09:58:34.203+00	2026-02-02 09:58:34.283061+00	new	40.89	0	amount
ed0b2fdf-522f-49f1-a8cc-aad3c9c98fbf	ORD-202602-0024	fb0e8cff-4b7a-482d-87fc-ec7ff3f69b48	2026-02-02	2026-02-03	1250.00	0.00	1337.50	\N	pending	TU.0302/ตลอด / เล็กส้ม x 1 ใบกำกับภาษี	TU.0302/ตลอด / เล็กส้ม x 1 ใบกำกับภาษี	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:23:23.504+00	2026-02-02 10:23:23.576717+00	new	87.50	0	amount
e209b70b-723a-4771-86ce-2cb0e6ab2831	ORD-202602-0003	101dbc58-c138-4e52-b312-cf9f47b11344	2026-02-02	2026-02-02	467.29	0.00	500.00	\N	pending	MO.0202/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝาขวด\n- หมู่บ้านเศรษฐกิจ 20 ขวด	MO.0202/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝาขวด\n- หมู่บ้านเศรษฐกิจ 20 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 09:59:13.171+00	2026-02-02 09:59:13.242066+00	new	32.71	0	amount
45cabd05-d842-4218-92fc-0e987934ae54	ORD-202602-0014	03c433d2-b412-4155-9696-2f1088f245fd	2026-02-02	2026-02-02	700.93	0.00	750.00	\N	pending	MO.0202/ตลอด/\n-ท่าน้ำนนท์ 30 ขวด 	MO.0202/ตลอด/\n-ท่าน้ำนนท์ 30 ขวด 	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:11:29.437+00	2026-02-02 10:11:29.492631+00	new	49.07	0	amount
5def8187-ff90-4e73-bb2a-b94c41e4ae7d	ORD-202602-0004	101dbc58-c138-4e52-b312-cf9f47b11344	2026-02-02	2026-02-02	467.29	0.00	500.00	\N	pending	MO.0202/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝาขวด\n- บางขุนนนท์ 20 ขวด	MO.0202/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝาขวด\n- บางขุนนนท์ 20 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:00:21.55+00	2026-02-02 10:00:21.642663+00	new	32.71	0	amount
418e1a18-b2f7-48ab-9d19-d648c8d3afd3	ORD-202602-0008	33650f06-de75-493c-b503-bbee8cce3166	2026-02-02	2026-02-02	1168.22	0.00	1250.00	\N	pending	MO.0202 /ก่อน 09.30 / เล็กส้ม 40 ขวด+ เล็กเลม่อน 10 ขวด	MO.0202 /ก่อน 09.30 / เล็กส้ม 40 ขวด+ เล็กเลม่อน 10 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:07:17.658+00	2026-02-02 10:07:17.89987+00	new	81.78	0	amount
73f78a7d-c155-4341-a22e-2a7e4de23fb5	ORD-202602-0005	101dbc58-c138-4e52-b312-cf9f47b11344	2026-02-02	2026-02-02	350.47	0.00	375.00	\N	pending	MO.0202/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝาขวด\n- อิสรภาพ 15 ขวด	MO.0202/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝาขวด\n- อิสรภาพ 15 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:00:48.961+00	2026-02-02 10:00:49.010513+00	new	24.53	0	amount
90c4137c-ef16-4a78-9488-00e03a411bf9	ORD-202602-0006	101dbc58-c138-4e52-b312-cf9f47b11344	2026-02-02	2026-02-02	467.29	0.00	500.00	\N	pending	MO.0202/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝาขวด\n- สวนผัก 20 ขวด	MO.0202/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝาขวด\n- สวนผัก 20 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:01:21.346+00	2026-02-02 10:01:21.421404+00	new	32.71	0	amount
ac3c0324-edfa-4a9c-9f12-73101c832fbb	ORD-202602-0007	101dbc58-c138-4e52-b312-cf9f47b11344	2026-02-02	2026-02-02	233.64	0.00	250.00	\N	pending	MO.0202/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝาขวด\n- คลองขวาง 10 ขวด	MO.0202/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝาขวด\n- คลองขวาง 10 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:02:00.251+00	2026-02-02 10:02:00.346928+00	new	16.36	0	amount
2f5e4d4d-ccab-4ef7-8ab0-f2fc9d36d200	ORD-202602-0009	a2f94086-703f-472b-b152-ae94ed950036	2026-02-02	2026-02-02	1168.22	0.00	1250.00	\N	pending	MO.0202/ 09.00-10.00 / OEM 250 ml. ส้ม 50 ขวด	MO.0202/ 09.00-10.00 / OEM 250 ml. ส้ม 50 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:07:54.593+00	2026-02-02 10:07:54.748025+00	new	81.78	0	amount
0230ad40-2e21-4a98-8915-a76e3b45e9c6	ORD-202602-0012	f0e39ea2-a9dc-4492-9994-bc6893d2838e	2026-02-02	2026-02-02	1401.87	0.00	1500.00	\N	pending	MO.0202/ตลอด/ \n- OEM เล็กส้ม 45 ขวด \n- OEM เล็กฮันนี่เลม่อน 15 ขวด	MO.0202/ตลอด/ \n- OEM เล็กส้ม 45 ขวด \n- OEM เล็กฮันนี่เลม่อน 15 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:10:33.41+00	2026-02-02 10:10:33.691932+00	new	98.13	0	amount
b0b95b0d-df36-4607-b94d-e186d6b1f6ba	ORD-202602-0010	b10cb1c3-cc14-4001-ab0b-d0854399c1a8	2026-02-02	2026-02-02	1250.00	0.00	1337.50	\N	pending	MO.0202/ตลอด/เล็กส้มx1 \n+ใบกำกับไปพร้อมสินค้า	MO.0202/ตลอด/เล็กส้มx1 \n+ใบกำกับไปพร้อมสินค้า	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:08:31.041+00	2026-02-02 10:08:31.137874+00	new	87.50	0	amount
a084bfbb-ca96-4df9-bc49-411ddc495c1a	ORD-202602-0017	46652f57-9bd5-4133-8d35-ddae7de97b32	2026-02-02	2026-02-02	1168.22	0.00	1250.00	\N	pending	MO.0202/ตลอด / OEM เล็กส้มx1	MO.0202/ตลอด / OEM เล็กส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:12:36.62+00	2026-02-02 10:12:36.884959+00	new	81.78	0	amount
559e3f8a-cd59-4412-95c7-912124133e2c	ORD-202602-0011	fdba0761-4123-4b05-ac68-c642b3c3ba6d	2026-02-02	2026-02-02	630.84	0.00	675.00	\N	pending	MO.0202/ตลอด/เล็กส้ม 27 ขวด **พี่นุชไปส่งเอง**	MO.0202/ตลอด/เล็กส้ม 27 ขวด **พี่นุชไปส่งเอง**	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:09:38.745+00	2026-02-02 10:09:38.821922+00	new	44.16	0	amount
87b72da9-b6f6-4319-9450-cc265730c529	ORD-202602-0015	3eb26f74-1ab2-407c-89ae-843749750baa	2026-02-02	2026-02-02	1168.22	0.00	1250.00	\N	pending	MO.0202 / ตลอด/เล็กส้มx1	MO.0202 / ตลอด/เล็กส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:11:49.558+00	2026-02-02 10:11:49.601017+00	new	81.78	0	amount
8428c091-1a81-4216-958e-612bcf8e2de9	ORD-202602-0013	03c433d2-b412-4155-9696-2f1088f245fd	2026-02-02	2026-02-02	817.76	0.00	875.00	\N	pending	MO.0202/ตลอด/\n-บางกรวย 35 ขวด	MO.0202/ตลอด/\n-บางกรวย 35 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:11:03.818+00	2026-02-02 10:11:03.881703+00	new	57.24	0	amount
0b086df6-b9de-4ac6-8934-dce7f667591f	ORD-202602-0018	3f5de013-3fa1-412e-a726-31d01ec6cd2b	2026-02-02	2026-02-02	1168.22	0.00	1250.00	\N	pending	MO.0202 / ก่อน 12.00  /\n- OEM  250 ml ส้ม 40 ขวด\n- OEM  250 ml เลม่อน 10 ขวด	MO.0202 / ก่อน 12.00  /\n- OEM  250 ml ส้ม 40 ขวด\n- OEM  250 ml เลม่อน 10 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:13:12.688+00	2026-02-02 10:13:12.958881+00	new	81.78	0	amount
7942b87d-db82-43c9-9f55-e0c42f28d554	ORD-202602-0016	7aea9b3f-cf61-40db-92e4-bfc187a581a6	2026-02-02	2026-02-02	584.11	0.00	625.00	\N	pending	MO.0202/ตลอด / เล็กส้ม 25 ขวด	MO.0202/ตลอด / เล็กส้ม 25 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:12:11.429+00	2026-02-02 10:12:11.878187+00	new	40.89	0	amount
d3d31d8a-a9e0-46ad-bd3c-f476b9dbffd1	ORD-202602-0020	3ba38459-588c-4d94-80b9-ab1dc178dba8	2026-02-02	2026-02-03	1345.79	0.00	1440.00	\N	pending	TU.0302 / ตลอด / ใหญ่ส้มx1	TU.0302 / ตลอด / ใหญ่ส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:14:07.43+00	2026-02-02 10:14:07.540472+00	new	94.21	0	amount
b4a09361-9056-4dc4-a323-3dd95fd1ac99	ORD-202602-0019	f616a0cc-8a7d-4897-987c-81d0404e24c0	2026-02-02	2026-02-03	1168.22	0.00	1250.00	\N	pending	TU.0302 / ตลอด / เล็กส้มx1	TU.0302 / ตลอด / เล็กส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:13:42.559+00	2026-02-02 10:13:42.607221+00	new	81.78	0	amount
921c5629-0601-4cc5-b82e-b9f364ade748	ORD-202602-0021	f7581fec-a8c9-4109-b18e-d362d92ca94d	2026-02-02	2026-02-03	1168.22	0.00	1250.00	\N	pending	TU.0302/  ช่วงเช้า / เล็กส้มx1	TU.0302/  ช่วงเช้า / เล็กส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:14:32.157+00	2026-02-02 10:14:32.247858+00	new	81.78	0	amount
8e65491b-78f5-4696-84a5-c854be7660d9	ORD-202602-0023	0158a63d-29bd-4ed1-96ee-e9be6e97efcf	2026-02-02	2026-02-03	817.76	0.00	875.00	\N	pending	TU.0302/ตลอด / เล็กส้ม 20 ขวด + เล็กเลม่อน 15 ขวด	TU.0302/ตลอด / เล็กส้ม 20 ขวด + เล็กเลม่อน 15 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:22:15.497+00	2026-02-02 10:22:15.71975+00	new	57.24	0	amount
8e2b8774-4dd0-43b5-b71c-9717129df246	ORD-202602-0022	51cf5288-f182-40b8-a6ec-15fee05407cc	2026-02-02	2026-02-03	1308.41	0.00	1400.00	\N	pending	TU.0302/DHL/เล็กส้มx1	TU.0302/DHL/เล็กส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:15:02.994+00	2026-02-02 10:15:03.247106+00	new	91.59	0	amount
0613d925-e504-449d-882a-b7fc5b712615	ORD-202602-0025	86020312-8c63-401b-bfc6-a4a63dff6f26	2026-02-02	2026-02-03	560.75	0.00	600.00	\N	pending	TU.0302/ตลอด/เล็กส้ม 20 ขวด + ใบกำกับ	TU.0302/ตลอด/เล็กส้ม 20 ขวด + ใบกำกับ	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:24:03.32+00	2026-02-02 10:24:03.578128+00	new	39.25	0	amount
8d6f6e06-5d71-40a8-b1f0-12195a40c507	ORD-202602-0036	03c433d2-b412-4155-9696-2f1088f245fd	2026-02-03	2026-02-04	584.11	0.00	625.00	\N	pending	WE.0402/ตลอด/\n- ปากเกร็ด 25 ขวด	WE.0402/ตลอด/\n- ปากเกร็ด 25 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-03 10:42:36.45+00	2026-02-03 10:42:36.672045+00	new	40.89	0	amount
989db6ed-9cb5-46e9-8471-f6c44a1e5ab6	ORD-202602-0026	c0968a19-758d-42f5-a4b1-6228a7569e09	2026-02-02	2026-02-03	1440.00	0.00	1540.80	\N	pending	TU.0302 / ตลอด / ใหญ่ส้มx1	TU.0302 / ตลอด / ใหญ่ส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:24:29.361+00	2026-02-02 10:24:29.439093+00	new	100.80	0	amount
8b3c01c6-f01a-4945-bcf9-eb86531bb5b1	ORD-202602-0027	b10cb1c3-cc14-4001-ab0b-d0854399c1a8	2026-02-03	2026-02-04	1250.00	0.00	1337.50	\N	pending	WE.0402/ตลอด/เล็กส้มx1 \n+ใบกำกับไปพร้อมสินค้า	WE.0402/ตลอด/เล็กส้มx1 \n+ใบกำกับไปพร้อมสินค้า	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-03 10:35:26.919+00	2026-02-03 10:35:27.178838+00	new	87.50	0	amount
527aa652-b2c1-4c52-b6d7-ac14a81efcc9	ORD-202602-0028	8115a585-61a7-4823-95ec-535a1c93c1c5	2026-02-03	2026-02-04	934.58	0.00	1000.00	\N	pending	WE.0402/ตลอด / \n- เจริญนคร 40 ขวด	WE.0402/ตลอด / \n- เจริญนคร 40 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-03 10:36:39.741+00	2026-02-03 10:36:39.845449+00	new	65.42	0	amount
a7c710ab-685a-4957-a820-43853ab58e10	ORD-202602-0032	3f5de013-3fa1-412e-a726-31d01ec6cd2b	2026-02-03	2026-02-04	1897.20	0.00	2030.00	\N	pending	WE.0402 / ก่อน 12.00  /\n- OEM  150 ml ส้ม 40 ขวด\n- OEM  250 ml ส้ม 20 ขวด\n- OEM  150 ml เลม่อน 50 ขวด	WE.0402 / ก่อน 12.00  /\n- OEM  150 ml ส้ม 40 ขวด\n- OEM  250 ml ส้ม 20 ขวด\n- OEM  150 ml เลม่อน 50 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-03 10:40:33.423+00	2026-02-03 10:40:33.775284+00	new	132.80	0	amount
32108c2a-afc8-474b-b04a-1b25bf63f7a4	ORD-202602-0029	8115a585-61a7-4823-95ec-535a1c93c1c5	2026-02-03	2026-02-04	700.93	0.00	750.00	\N	pending	WE.0402/ตลอด / \n- ศาลายา 30 ขวด	WE.0402/ตลอด / \n- ศาลายา 30 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-03 10:37:08.537+00	2026-02-03 10:37:08.60162+00	new	49.07	0	amount
91c0781e-0626-45a0-9e20-13f8c7aa8426	ORD-202602-0030	ea0842ce-6cfd-48a1-85d4-034fe4725889	2026-02-03	2026-02-04	1345.79	0.00	1440.00	\N	pending	WE.0402/ตลอด/ OEM  ใหญ่ส้ม x1	WE.0402/ตลอด/ OEM  ใหญ่ส้ม x1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-03 10:37:34.768+00	2026-02-03 10:37:34.837984+00	new	94.21	0	amount
4068e419-ab55-4ad3-9999-404bdcc2a63f	ORD-202602-0037	55a26af3-78ee-43cc-b6a4-c05d68c0ac84	2026-02-04	2026-02-05	700.93	0.00	750.00	\N	pending	TH.0502/ ตลอด / เล็กส้ม 30 ขวด\nเก็บเงิน 750.-	TH.0502/ ตลอด / เล็กส้ม 30 ขวด\nเก็บเงิน 750.-	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-04 10:33:23.495+00	2026-02-04 10:33:23.621738+00	new	49.07	0	amount
293d410c-bfcf-43e7-9411-c88bfe034752	ORD-202602-0031	8b41abd9-cfd2-4895-8ccd-b0b430811ff8	2026-02-03	2026-02-04	750.00	0.00	802.50	\N	pending	WE.0402/ช่วงเช้า/เล็กส้ม 30 ขวด	WE.0402/ช่วงเช้า/เล็กส้ม 30 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-03 10:38:07.536+00	2026-02-03 10:38:07.61546+00	new	52.50	0	amount
d0efeb42-7cc0-4e04-a29c-5add06ff6f49	ORD-202602-0033	a2f94086-703f-472b-b152-ae94ed950036	2026-02-03	2026-02-04	1168.22	0.00	1250.00	\N	pending	WE.0402/ 09.00-10.00 / OEM 250 ml. ส้ม 50 ขวด	WE.0402/ 09.00-10.00 / OEM 250 ml. ส้ม 50 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-03 10:41:03.641+00	2026-02-03 10:41:03.720347+00	new	81.78	0	amount
c445af2d-da26-4295-86a9-143db75db4ca	ORD-202602-0039	33650f06-de75-493c-b503-bbee8cce3166	2026-02-04	2026-02-05	1401.87	0.00	1500.00	\N	pending	TH.0502 /ก่อน 11.00 / เล็กส้ม 40 ขวด+ เล็กเลม่อน 20 ขวด	TH.0502 /ก่อน 11.00 / เล็กส้ม 40 ขวด+ เล็กเลม่อน 20 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-04 10:34:23.93+00	2026-02-04 10:34:24.143847+00	new	98.13	0	amount
a936fd8a-4c03-436f-a388-573af06b8ce7	ORD-202602-0034	03c433d2-b412-4155-9696-2f1088f245fd	2026-02-03	2026-02-04	700.93	0.00	750.00	\N	pending	WE.0402/ตลอด/\n- วัดลาด 30 ขวด	WE.0402/ตลอด/\n- วัดลาด 30 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-03 10:41:29.178+00	2026-02-03 10:41:29.217712+00	new	49.07	0	amount
179fd324-df42-4d39-a8a7-8585632729cc	ORD-202602-0038	55a26af3-78ee-43cc-b6a4-c05d68c0ac84	2026-02-04	2026-02-05	467.29	0.00	500.00	\N	pending	TH.0502/ตลอด / เล็กส้ม 20 ขวด\nเก็บเงิน 500.-	TH.0502/ตลอด / เล็กส้ม 20 ขวด\nเก็บเงิน 500.-	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-04 10:33:55.329+00	2026-02-04 10:33:55.381575+00	new	32.71	0	amount
b24973e5-6e34-441d-92e9-3329b739ed92	ORD-202602-0035	03c433d2-b412-4155-9696-2f1088f245fd	2026-02-03	2026-02-04	1051.40	0.00	1125.00	\N	pending	WE.0402/ตลอด/\n- ท่าอิฐ 45 ขวด	WE.0402/ตลอด/\n- ท่าอิฐ 45 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-03 10:41:56.787+00	2026-02-03 10:41:56.851395+00	new	73.60	0	amount
d014a53f-73a1-4b2b-adca-157591c6f104	ORD-202602-0041	0158a63d-29bd-4ed1-96ee-e9be6e97efcf	2026-02-04	2026-02-05	700.93	0.00	750.00	\N	pending	TH.0502/ตลอด / เล็กส้ม 20 ขวด + เล็กเลม่อน 10 ขวด	TH.0502/ตลอด / เล็กส้ม 20 ขวด + เล็กเลม่อน 10 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-04 11:06:19.198+00	2026-02-04 11:06:19.403279+00	new	49.07	0	amount
a3d13662-02e5-4960-b3e7-f31e67d387c8	ORD-202602-0040	2739c5e6-1384-4ded-81ef-26f31524ca99	2026-02-04	2026-02-05	1580.19	0.00	1690.80	\N	pending	TH.0502/ DHL / ใหญ่ส้มx1 + ใบกำกับ	TH.0502/ DHL / ใหญ่ส้มx1 + ใบกำกับ	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-04 10:34:49.83+00	2026-02-04 10:34:49.977489+00	new	110.61	0	amount
85fc306f-6c9d-4cbc-b0ad-5b88f554086a	ORD-202602-0044	caf88ba6-28a7-47d6-b007-5bc794f32a98	2026-02-06	2026-02-07	584.11	0.00	625.00	\N	pending	SA.0702/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝา\n- คลองขวาง 10 ขวด\n- อิสรภาพ 15 ขวด	SA.0702/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝา\n- คลองขวาง 10 ขวด\n- อิสรภาพ 15 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-06 07:02:52.089+00	2026-02-06 07:03:23.528618+00	new	40.89	0	amount
7ce7e66d-9a32-41d8-92de-07c5c4476edb	ORD-202602-0043	2c4ac07f-3a6d-4e89-a133-be7fdfce19a5	2026-02-06	2026-02-07	327.10	37.00	350.00	\N	pending	SA.0702/ตลอด/ส้มใหญ่ 3 ขวด	SA.0702/ตลอด/ส้มใหญ่ 3 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-06 06:51:24.47+00	2026-02-06 06:52:02.204034+00	new	22.90	0	amount
9da8c0ac-cba3-4c12-9089-d8d265ae2144	ORD-202602-0042	3f068301-ec61-4f65-b563-992da0f806e8	2026-02-06	2026-02-07	1980.00	0.00	2118.60	\N	pending	SA.0702/ตลอด/ใหญ่ส้ม 22 ขวด	SA.0702/ตลอด/ใหญ่ส้ม 22 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-06 06:48:10.71+00	2026-02-06 06:51:45.884219+00	new	138.60	0	amount
14a34bdd-daaf-49a9-8893-27aa84e0d969	ORD-202602-0045	2155c7d2-2847-4658-9c2a-021d8d957715	2026-02-06	2026-02-07	700.93	0.00	750.00	\N	pending	SA.0702 / ตลอด / เล็กส้ม 30 ขวด	SA.0702 / ตลอด / เล็กส้ม 30 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-06 07:05:25.069+00	2026-02-06 07:05:38.170746+00	new	49.07	0	amount
d15386ac-e124-4ead-bece-f789b2a7fcab	ORD-202602-0046	d83f9e00-b451-419d-a041-4f311f5c8028	2026-02-06	2026-02-07	1168.22	0.00	1250.00	\N	pending	SA.0702/ขอช่วงบ่าย/เล็กส้มx1	SA.0702/ขอช่วงบ่าย/เล็กส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-06 07:07:15.814+00	2026-02-06 07:07:28.092197+00	new	81.78	0	amount
64e40667-8fbb-4795-a4f6-382e9c871ef7	ORD-202602-0047	f7581fec-a8c9-4109-b18e-d362d92ca94d	2026-02-06	2026-02-07	1168.22	0.00	1250.00	\N	pending	SA.0702/  ช่วงเช้า / เล็กส้มx1	SA.0702/  ช่วงเช้า / เล็กส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-06 07:07:54.591+00	2026-02-06 07:08:29.006766+00	new	81.78	0	amount
859bb6a1-0891-47d7-9060-c4afc3968785	ORD-202602-0053	ab52c29d-a0c0-440c-8cd7-a5a71cd77b92	2026-02-11	2026-02-15	1355.14	0.00	1450.00	\N	paid	\N	\N	\N	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-11 03:29:33.537+00	2026-02-11 10:04:39.314812+00	new	94.86	40	amount
2dd27ea7-43de-4679-a62a-b2d94483ac4e	ORD-202602-0048	1a36dbb0-3be1-4d4d-98b3-4101237037ab	2026-02-06	2026-02-07	1345.79	0.00	1440.00	\N	pending	SA.0702 / ตลอด / ใหญ่ส้มx1	SA.0702 / ตลอด / ใหญ่ส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-06 07:09:01.613+00	2026-02-06 07:09:15.3146+00	new	94.21	0	amount
3eb7d9e0-8648-47d2-a686-cee5396b38d0	ORD-202602-0049	ab52c29d-a0c0-440c-8cd7-a5a71cd77b92	2026-02-10	\N	84.11	0.00	90.00	\N	pending	\N	\N	\N	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 01:23:09.016+00	2026-02-10 01:23:27.43153+00	cancelled	5.89	0	amount
2b52affe-9341-453b-9b78-9b17b64dfdba	ORD-202602-0061	ab52c29d-a0c0-440c-8cd7-a5a71cd77b92	2026-02-12	2026-02-21	700.93	0.00	750.00	\N	pending	\N	\N	\N	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-12 02:14:06.512+00	2026-02-12 02:14:07.204394+00	new	49.07	0	amount
3e175acf-96a0-450b-92d7-003929bc8b1f	ORD-202602-0054	ab52c29d-a0c0-440c-8cd7-a5a71cd77b92	2026-02-12	2026-02-15	1205.61	0.00	1290.00	\N	pending	ส่งดีๆ เรียกชื่อดังๆ	\N	\N	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-12 01:18:19.567+00	2026-02-12 01:18:19.836088+00	new	84.39	0	amount
aea70e36-79be-4ba3-89c1-27bcb5924dcf	ORD-202602-0055	ab52c29d-a0c0-440c-8cd7-a5a71cd77b92	2026-02-12	2026-02-22	700.93	0.00	750.00	\N	pending	\N	\N	\N	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-12 01:25:23.753+00	2026-02-12 01:25:23.845859+00	new	49.07	0	amount
a4c5b511-7621-48bb-b632-ce463d90e09e	ORD-202602-0051	ab52c29d-a0c0-440c-8cd7-a5a71cd77b92	2026-02-10	2026-02-12	2149.53	0.00	2300.00	\N	pending	\N	\N	\N	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 01:34:34.666+00	2026-02-10 01:34:34.893991+00	new	150.47	0	amount
c830b219-58de-459f-b48b-1f133502935d	ORD-202602-0050	ab52c29d-a0c0-440c-8cd7-a5a71cd77b92	2026-02-10	2026-02-11	1308.41	0.00	1400.00	\N	pending	\N	\N	\N	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 01:33:25.883+00	2026-02-10 01:35:21.70242+00	completed	91.59	0	amount
eba313de-3fae-4a2e-9daa-eda8c0bcc68e	ORD-202602-0056	ab52c29d-a0c0-440c-8cd7-a5a71cd77b92	2026-02-12	2026-02-22	700.93	0.00	750.00	\N	pending	\N	\N	\N	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-12 01:32:14.521+00	2026-02-12 01:32:14.572001+00	new	49.07	0	amount
c3594db6-b50d-444b-909e-3f20593277ab	ORD-202602-0057	ab52c29d-a0c0-440c-8cd7-a5a71cd77b92	2026-02-12	2026-02-22	700.93	0.00	750.00	\N	pending	\N	\N	\N	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-12 01:33:07.354+00	2026-02-12 01:33:07.645102+00	new	49.07	0	amount
c0fa4431-cd0e-42fc-bc2f-8c38dae4246e	ORD-202602-0062	ab52c29d-a0c0-440c-8cd7-a5a71cd77b92	2026-02-12	2026-02-28	654.21	0.00	700.00	\N	pending	\N	\N	\N	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-12 04:46:40.649+00	2026-02-12 04:46:41.14955+00	new	45.79	0	amount
fabfad6b-bab3-4c54-9bff-d61492e10a97	ORD-202602-0058	ab52c29d-a0c0-440c-8cd7-a5a71cd77b92	2026-02-12	2026-02-24	700.93	0.00	750.00	\N	pending	\N	\N	\N	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-12 01:46:03.032+00	2026-02-12 01:46:03.395246+00	new	49.07	0	amount
3309a49a-886b-48fb-8422-a712956e69ff	ORD-202602-0052	ab52c29d-a0c0-440c-8cd7-a5a71cd77b92	2026-02-11	2026-02-07	70.09	0.00	75.00	\N	pending	\N	\N	\N	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-11 02:47:46.349+00	2026-02-11 03:14:09.809114+00	new	4.91	20	amount
b5bdcf0e-e994-423a-96c0-e6f28c7a42ca	ORD-202602-0071	101dbc58-c138-4e52-b312-cf9f47b11344	2026-02-13	2026-02-14	700.93	0.00	750.00	\N	pending	SA.1402/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝาขวด\n- คลองขวาง 10 ขวด\n- บางขุนนนท์ 20 ขวด	SA.1402/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝาขวด\n- คลองขวาง 10 ขวด\n- บางขุนนนท์ 20 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-13 03:40:55.309+00	2026-02-13 03:40:55.50006+00	new	49.07	0	amount
c48e9212-0c96-495e-8b3f-a00c784ed596	ORD-202602-0072	f616a0cc-8a7d-4897-987c-81d0404e24c0	2026-02-13	2026-02-14	1168.22	0.00	1250.00	\N	pending	SA.1402 / ตลอด / เล็กส้มx1	SA.1402 / ตลอด / เล็กส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-13 03:42:09.353+00	2026-02-13 03:42:09.394012+00	new	81.78	0	amount
a8aa6c29-df82-4966-875d-2b788d92cf28	ORD-202602-0067	3eb26f74-1ab2-407c-89ae-843749750baa	2026-02-12	2026-02-13	2336.45	0.00	2500.00	\N	pending	FR.1302 / ตลอด/เล็กส้มx1	FR.1302 / ตลอด/เล็กส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-12 08:22:03.412+00	2026-02-13 06:35:09.886885+00	completed	163.55	0	amount
725db179-38a5-4b83-9e16-c4060fd71e95	ORD-202602-0073	6c4e86da-2dd1-45c1-829c-f4ebf6a40a0c	2026-02-13	2026-02-14	79.44	0.00	85.00	\N	cancelled	SA.1402/ช่วงเช้า/ส้ม 150 ml 5 ขวด	SA.1402/ช่วงเช้า/ส้ม 150 ml 5 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-13 04:19:09.58+00	2026-02-13 04:39:22.613331+00	cancelled	5.56	0	amount
6aea1149-8701-4847-a54e-4b3290bc67cd	ORD-202602-0069	33650f06-de75-493c-b503-bbee8cce3166	2026-02-12	2026-02-13	1401.87	0.00	1500.00	\N	pending	FR.1302 /ก่อน 09.30/ เล็กส้ม 40 ขวด+ เล็กเลม่อน 20 ขวด	FR.1302 /ก่อน 09.30/ เล็กส้ม 40 ขวด+ เล็กเลม่อน 20 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-12 12:26:10.364+00	2026-02-13 06:35:15.09256+00	completed	98.13	100	amount
9f71cc19-f345-4581-9fe5-bdd5acedf2e7	ORD-202602-0059	101dbc58-c138-4e52-b312-cf9f47b11344	2026-02-12	2026-02-13	817.76	0.00	875.00	\N	pending	FR.1302/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝาขวด\n- หมู่บ้านเศรษฐกิจ 15 ขวด\n- สวนผัก 20 ขวด	FR.1302/ตลอด/ฝากปั๊มวันหมดอายุ ที่ฝาขวด\n- หมู่บ้านเศรษฐกิจ 15 ขวด\n- สวนผัก 20 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-12 01:49:14.845+00	2026-02-13 06:35:53.947308+00	completed	57.24	0	amount
a016e573-9daf-4942-8e97-4357a147384b	ORD-202602-0063	b10cb1c3-cc14-4001-ab0b-d0854399c1a8	2026-02-12	2026-02-13	1250.00	0.00	1337.50	\N	pending	FR.1302/ตลอด/เล็กส้มx1 \n+ใบกำกับไปพร้อมสินค้า	FR.1302/ตลอด/เล็กส้มx1 \n+ใบกำกับไปพร้อมสินค้า	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-12 08:03:16.042+00	2026-02-13 06:35:59.172465+00	completed	87.50	0	amount
e354e915-60e4-46a5-82d7-eaa226257b7a	ORD-202601-0128	23d2cddc-7783-4f7a-b30d-68f455f48f5a	2026-01-29	2026-02-13	1308.41	0.00	1400.00	\N	pending	FR.1302/DHL/เล็กส้มx1	FR.1302/DHL/เล็กส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-29 10:25:09.764+00	2026-02-13 06:36:04.623944+00	completed	91.59	0	amount
a2102d29-547d-4e78-9e8a-9a5d28af9108	ORD-202602-0060	f7581fec-a8c9-4109-b18e-d362d92ca94d	2026-02-12	2026-02-13	1168.22	0.00	1250.00	\N	pending	FR.1302/  ช่วงเช้า / เล็กส้มx1	FR.1302/  ช่วงเช้า / เล็กส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-12 01:50:55.097+00	2026-02-13 06:36:08.499257+00	completed	81.78	0	amount
54b29b7e-bd6a-4f36-97e2-ac76c4a7c3ca	ORD-202602-0068	3f5de013-3fa1-412e-a726-31d01ec6cd2b	2026-02-12	2026-02-13	1518.69	0.00	1625.00	\N	verifying	FR.1302 / ก่อน 09.30  /\n- OEM  250 ml ส้ม 50 ขวด\n- OEM  250 ml เลม่อน 15 ขวด	FR.1302 / ก่อน 09.30  /\n- OEM  250 ml ส้ม 50 ขวด\n- OEM  250 ml เลม่อน 15 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-12 08:23:54.542+00	2026-02-13 06:36:13.345941+00	completed	106.31	0	amount
6847c9df-71c9-47b6-9df6-2a5d1afd51c7	ORD-202602-0070	b6c3ed11-10ad-40cc-b634-a2bff38f95ef	2026-02-12	2026-02-13	1168.22	0.00	1250.00	\N	pending	FR.1302/DHL/เล็กส้มx1	FR.1302/DHL/เล็กส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-12 13:35:44.045+00	2026-02-13 06:36:22.556279+00	completed	81.78	150	amount
5ac8e7c1-9bc3-4454-978d-4669446af0f0	ORD-202602-0066	a2f94086-703f-472b-b152-ae94ed950036	2026-02-12	2026-02-13	1168.22	0.00	1250.00	\N	pending	FR.1302/ 09.00-10.00 / OEM 250 ml. ส้ม 50 ขวด	FR.1302/ 09.00-10.00 / OEM 250 ml. ส้ม 50 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-12 08:21:07.029+00	2026-02-13 06:36:26.289296+00	completed	81.78	0	amount
17ba7dc3-573d-464a-a19f-fcfd30f9deea	ORD-202602-0065	da7f1ad2-e025-4d9d-a9e4-a9e1636d50a6	2026-02-12	2026-02-13	584.11	0.00	625.00	\N	pending	FR.1302/ตลอด/เล็กส้ม 25 ขวด	FR.1302/ตลอด/เล็กส้ม 25 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-12 08:17:48.965+00	2026-02-13 06:36:30.022991+00	completed	40.89	0	amount
3357db72-3e45-4543-891c-da8a5eaa909d	ORD-202602-0064	3f068301-ec61-4f65-b563-992da0f806e8	2026-02-12	2026-02-13	450.00	0.00	481.50	\N	pending	FR.1302/ตลอด/ใหญ่ส้ม 5 ขวด	FR.1302/ตลอด/ใหญ่ส้ม 5 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-12 08:07:15.341+00	2026-02-13 06:36:34.851033+00	completed	31.50	0	amount
932ed32e-f44d-4e58-a19d-56db664e11e8	ORD-202602-0075	1a36dbb0-3be1-4d4d-98b3-4101237037ab	2026-02-13	2026-02-14	1345.79	0.00	1440.00	\N	pending	SA.1402 / ตลอด / ใหญ่ส้มx1	SA.1402 / ตลอด / ใหญ่ส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-13 04:26:55.464+00	2026-02-13 04:26:55.55552+00	new	94.21	0	amount
24018131-2dde-4ce3-a026-78b53fa8785e	ORD-202602-0074	6c4e86da-2dd1-45c1-829c-f4ebf6a40a0c	2026-02-13	2026-02-14	79.44	0.00	85.00	\N	cancelled	SA.1402/ช่วงเช้า/ส้ม 150 ml 5 ขวด	SA.1402/ช่วงเช้า/ส้ม 150 ml 5 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-13 04:26:12.209+00	2026-02-13 04:39:30.03308+00	cancelled	5.56	0	amount
9554526a-806b-4f68-983c-5543b446980a	ORD-202602-0076	fc574bea-4e14-45c2-aae2-bc9a9229e2ce	2026-02-13	2026-02-14	1345.79	0.00	1440.00	\N	pending	SA.1402/ตลอด/ใหญ่ส้มx1	SA.1402/ตลอด/ใหญ่ส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-13 05:28:01.144+00	2026-02-13 05:28:01.292027+00	new	94.21	0	amount
3bed8759-4032-46f2-96c1-6779240ac6c6	ORD-202602-0077	b87dfcd8-4001-4de7-8c95-504874ff2627	2026-02-13	2026-02-14	1440.00	0.00	1540.80	\N	pending	SA.1402 / ตลอด / ใหญ่ส้มx1	SA.1402 / ตลอด / ใหญ่ส้มx1	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-13 10:07:39.602+00	2026-02-13 10:07:39.773736+00	new	100.80	0	amount
855939c1-350c-4747-8b50-a080bc7a7304	ORD-202602-0078	7aea9b3f-cf61-40db-92e4-bfc187a581a6	2026-02-13	2026-02-14	584.11	0.00	625.00	\N	pending	SA.1402/ตลอด / เล็กส้ม 25 ขวด	SA.1402/ตลอด / เล็กส้ม 25 ขวด	\N	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-13 10:36:19.059+00	2026-02-13 10:36:19.197376+00	new	40.89	0	amount
\.


--
-- Data for Name: payment_channels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payment_channels (id, channel_group, type, name, is_active, sort_order, config, created_at, updated_at) FROM stdin;
f3adb213-3537-4343-a273-e18300606c01	bill_online	bank_transfer	กสิกรไทย	t	0	{"bank_code": "KBANK", "account_name": "บริษัท อัลฟ่าเฟรช จำกัด", "account_number": "1713911379"}	2026-02-12 08:17:14.737519+00	2026-02-12 09:41:01.172+00
00f53eba-da39-42f7-b850-6896d2108d06	bill_online	cash	เงินสด	t	1	{"description": "รับเงินสดจากลูกค้า / จ่ายหน้าร้าน"}	2026-02-12 04:40:02.655433+00	2026-02-12 09:41:01.248+00
0586a359-0608-497a-bead-a395be5a8d52	bill_online	payment_gateway	Beam Checkout	t	2	{"api_key": "Mlq9GfSfNEINoDrqA1UE6C0WmKSdM7rZn0CcyF4eNC8=", "channels": {"CARD": {"enabled": false, "fee_payer": "merchant", "min_amount": 0, "customer_types": ["retail", "wholesale", "distributor"]}, "KPLUS": {"enabled": false, "fee_payer": "merchant", "min_amount": 0, "customer_types": ["retail", "wholesale", "distributor"]}, "ALIPAY": {"enabled": false, "fee_payer": "merchant", "min_amount": 0, "customer_types": ["retail", "wholesale", "distributor"]}, "LINE_PAY": {"enabled": false, "fee_payer": "merchant", "min_amount": 0, "customer_types": ["retail", "wholesale", "distributor"]}, "SCB_EASY": {"enabled": false, "fee_payer": "merchant", "min_amount": 0, "customer_types": ["retail", "wholesale", "distributor"]}, "SHOPEE_PAY": {"enabled": false, "fee_payer": "merchant", "min_amount": 0, "customer_types": ["retail", "wholesale", "distributor"]}, "TRUE_MONEY": {"enabled": false, "fee_payer": "merchant", "min_amount": 0, "customer_types": ["retail", "wholesale", "distributor"]}, "WECHAT_PAY": {"enabled": false, "fee_payer": "merchant", "min_amount": 0, "customer_types": ["retail", "wholesale", "distributor"]}, "KRUNGSRI_APP": {"enabled": false, "fee_payer": "merchant", "min_amount": 0, "customer_types": ["retail", "wholesale", "distributor"]}, "QR_PROMPT_PAY": {"enabled": true, "fee_payer": "merchant", "min_amount": 0, "customer_types": ["retail", "wholesale", "distributor"]}, "BANGKOK_BANK_APP": {"enabled": false, "fee_payer": "merchant", "min_amount": 0, "customer_types": ["retail", "wholesale", "distributor"]}}, "environment": "production", "merchant_id": "adayfresh"}	2026-02-12 07:37:46.209539+00	2026-02-13 03:04:00.695+00
\.


--
-- Data for Name: payment_records; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payment_records (id, order_id, payment_method, payment_date, amount, collected_by, transfer_date, transfer_time, notes, created_at, created_by, slip_image_url, status, gateway_provider, gateway_payment_link_id, gateway_charge_id, gateway_status, gateway_raw_response) FROM stdin;
24758e04-82ab-444e-9c15-a531ba336e1d	9b6481eb-5df9-41d2-a563-0f36070f258a	cash	2025-12-01 03:55:09.909814+00	124.00	พี่ตูน	\N	\N	20	2025-12-01 03:55:09.909814+00	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	\N	verified	\N	\N	\N	\N	\N
324ca016-0d90-4661-93ff-5f3f68e02bcd	13f28b05-fd23-4e0a-98c7-a3a2c24b62bd	transfer	2025-12-15 17:20:32.444144+00	1250.00	\N	2025-12-15	19:17:00	\N	2025-12-15 17:20:32.444144+00	634da19d-716f-4b48-8c44-0706303d0840	\N	verified	\N	\N	\N	\N	\N
d7e04b26-4bdc-4442-91b2-fa117802ddad	a20c1754-b4c6-4c5f-b714-b023c34b2688	transfer	2025-12-15 17:21:49.034972+00	1440.00	\N	2025-12-15	19:01:00	\N	2025-12-15 17:21:49.034972+00	634da19d-716f-4b48-8c44-0706303d0840	\N	verified	\N	\N	\N	\N	\N
f77b254c-6be3-4025-9a0d-3a79e505dccc	5141ee03-ae03-47c8-a6fc-6bb20bcea54c	transfer	2025-12-17 10:22:50.813248+00	7500.00	\N	2025-12-16	12:03:00	บช.อัลฟ่า	2025-12-17 10:22:50.813248+00	0d90fb2c-dfb6-4ebd-9b81-38909b601854	\N	verified	\N	\N	\N	\N	\N
f7f48832-5399-4613-8d26-4cdcaae2d85f	b61e21cd-52c9-47c7-85bd-d5a448b8b5f5	transfer	2025-12-17 10:25:34.767507+00	1250.00	\N	2025-12-17	10:47:00	บช.อัลฟ่า\n	2025-12-17 10:25:34.767507+00	0d90fb2c-dfb6-4ebd-9b81-38909b601854	\N	verified	\N	\N	\N	\N	\N
cd166bc4-d9df-4edc-9107-babfde8c9cc2	d3d3d5b7-7399-4a44-b1dc-065649933870	transfer	2025-12-17 10:26:18.027034+00	1250.00	\N	2025-12-17	11:41:00	บช.อัลฟ่า	2025-12-17 10:26:18.027034+00	0d90fb2c-dfb6-4ebd-9b81-38909b601854	\N	verified	\N	\N	\N	\N	\N
aeb66c6f-1838-47c5-a952-6f5762b29622	3d26a3ea-b2f8-47b9-b0eb-3fc3b248b1b8	transfer	2025-12-17 10:30:39.209993+00	1250.00	\N	2025-12-12	18:42:00	บช.อัลฟ่า	2025-12-17 10:30:39.209993+00	0d90fb2c-dfb6-4ebd-9b81-38909b601854	\N	verified	\N	\N	\N	\N	\N
c5bb12d7-a26c-4551-b202-5c744b8a6ca6	74f16129-83ac-46cb-b799-a38398fd0c3b	transfer	2025-12-17 10:31:44.034036+00	1926.00	\N	2025-12-17	14:51:00	บช.อัลฟ่า	2025-12-17 10:31:44.034036+00	0d90fb2c-dfb6-4ebd-9b81-38909b601854	\N	verified	\N	\N	\N	\N	\N
1923801b-99cb-4533-80fb-986197fc1551	859bb6a1-0891-47d7-9060-c4afc3968785	transfer	2026-02-11 10:03:18.912267+00	1450.00	\N	2026-02-12	14:00:00	\N	2026-02-11 10:03:18.912267+00	\N	https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/payment-slips/859bb6a1-0891-47d7-9060-c4afc3968785/1770804197787.blob	pending	\N	\N	\N	\N	\N
496b1833-c261-4338-a2f9-abec0778a1ff	859bb6a1-0891-47d7-9060-c4afc3968785	transfer	2026-02-11 10:04:16.631719+00	1450.00	\N	2026-02-12	14:00:00	\N	2026-02-11 10:04:16.631719+00	\N	https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/payment-slips/859bb6a1-0891-47d7-9060-c4afc3968785/1770804255556.blob	verified	\N	\N	\N	\N	\N
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.payments (id, order_id, payment_date, amount, payment_method, reference_number, bank_name, receipt_number, receipt_image_url, notes, received_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: price_lists; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.price_lists (id, product_id, bottle_id, standard_price, wholesale_price, special_price, min_qty_standard, min_qty_wholesale, min_qty_special, is_active, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: product_images; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.product_images (id, product_id, variation_id, image_url, storage_path, sort_order, created_at) FROM stdin;
4b32ac24-8fe2-46c8-a151-39fa591a7500	34be98db-0f8c-45c4-9622-c6c7a76b942d	\N	https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/product-images/products/34be98db-0f8c-45c4-9622-c6c7a76b942d/1770707834507-1.png	products/34be98db-0f8c-45c4-9622-c6c7a76b942d/1770707834507-1.png	0	2026-02-10 07:17:15.162188+00
ef4fddc8-14c9-4120-9d5b-86f4a92abc4d	34be98db-0f8c-45c4-9622-c6c7a76b942d	\N	https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/product-images/products/34be98db-0f8c-45c4-9622-c6c7a76b942d/1770707835159-2.png	products/34be98db-0f8c-45c4-9622-c6c7a76b942d/1770707835159-2.png	1	2026-02-10 07:17:15.56556+00
0b6bf124-4ea6-4085-95ce-2a7017f8364c	34be98db-0f8c-45c4-9622-c6c7a76b942d	\N	https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/product-images/products/34be98db-0f8c-45c4-9622-c6c7a76b942d/1770707835556-3.png	products/34be98db-0f8c-45c4-9622-c6c7a76b942d/1770707835556-3.png	2	2026-02-10 07:17:15.959146+00
8964fa2a-43fe-4229-9fe3-07fccc3ca373	34be98db-0f8c-45c4-9622-c6c7a76b942d	\N	https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/product-images/products/34be98db-0f8c-45c4-9622-c6c7a76b942d/1770707835953-4.png	products/34be98db-0f8c-45c4-9622-c6c7a76b942d/1770707835953-4.png	3	2026-02-10 07:17:16.378305+00
e7a5d172-7f0b-45d6-b69f-10027987833f	34be98db-0f8c-45c4-9622-c6c7a76b942d	\N	https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/product-images/products/34be98db-0f8c-45c4-9622-c6c7a76b942d/1770707836371-5.png	products/34be98db-0f8c-45c4-9622-c6c7a76b942d/1770707836371-5.png	4	2026-02-10 07:17:16.854288+00
292df21a-9a58-46f2-97d1-dbd07a329194	34be98db-0f8c-45c4-9622-c6c7a76b942d	\N	https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/product-images/products/34be98db-0f8c-45c4-9622-c6c7a76b942d/1770707836848-6.png	products/34be98db-0f8c-45c4-9622-c6c7a76b942d/1770707836848-6.png	5	2026-02-10 07:17:17.271267+00
450f82ee-478d-48ef-9ede-ebe39203cdd6	5ab971b8-eeb8-4790-b980-ef239eec8698	\N	https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/product-images/products/5ab971b8-eeb8-4790-b980-ef239eec8698/1770708387097-Because_little_things_matter_big..png	products/5ab971b8-eeb8-4790-b980-ef239eec8698/1770708387097-Because_little_things_matter_big..png	0	2026-02-10 07:26:27.957989+00
4c5a3373-4029-45f5-99e6-740aa0ae29e0	\N	ef92db89-e8f5-459d-9dcc-6f7ab132cda9	https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/product-images/variations/ef92db89-e8f5-459d-9dcc-6f7ab132cda9/1770708387968-logo.png	variations/ef92db89-e8f5-459d-9dcc-6f7ab132cda9/1770708387968-logo.png	0	2026-02-10 07:26:28.307457+00
83f8e8a7-b3a7-4fde-81c5-11694b0202ac	\N	97effde6-7fe7-4f06-aa95-039219eb5c86	https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/product-images/variations/97effde6-7fe7-4f06-aa95-039219eb5c86/1770708388323-unnamed.png	variations/97effde6-7fe7-4f06-aa95-039219eb5c86/1770708388323-unnamed.png	0	2026-02-10 07:26:28.735294+00
1ef3dcf8-15c3-4659-8add-9a26e5646c2e	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	\N	https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/product-images/products/c72b5c2a-a8e3-4653-9df0-9e2879a0d46e/1770708543797-1.png	products/c72b5c2a-a8e3-4653-9df0-9e2879a0d46e/1770708543797-1.png	0	2026-02-10 07:29:04.306508+00
bd2e1f05-e9c1-4ac3-bd67-fc3fb1d4eed7	\N	51963800-0124-4dd4-ade7-901bc25b6487	https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/product-images/variations/51963800-0124-4dd4-ade7-901bc25b6487/1770708649715-1.png	variations/51963800-0124-4dd4-ade7-901bc25b6487/1770708649715-1.png	0	2026-02-10 07:30:50.324361+00
7e467053-212c-4886-986f-0fb48cfa229f	\N	8238eabc-9506-495a-b2b4-c8e821e61faf	https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/product-images/variations/8238eabc-9506-495a-b2b4-c8e821e61faf/1770708655923-7.png	variations/8238eabc-9506-495a-b2b4-c8e821e61faf/1770708655923-7.png	0	2026-02-10 07:30:56.624856+00
89b643e7-07f5-42a5-b07b-fafd54da4207	\N	2cbcb25a-d4c2-467c-8289-058111d109e0	https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/product-images/variations/2cbcb25a-d4c2-467c-8289-058111d109e0/1770708660579-8.png	variations/2cbcb25a-d4c2-467c-8289-058111d109e0/1770708660579-8.png	0	2026-02-10 07:31:01.079521+00
e10044da-af79-4bba-8167-17e6705e3152	\N	6b08e982-d5a5-4236-a6c6-9f0e53b5b581	https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/product-images/variations/6b08e982-d5a5-4236-a6c6-9f0e53b5b581/1770708847834-6.png	variations/6b08e982-d5a5-4236-a6c6-9f0e53b5b581/1770708847834-6.png	0	2026-02-10 07:34:08.597267+00
e1711c71-52cb-468d-92b1-b00736ad4e45	\N	471c0674-15e4-4db6-b2a8-4bfb08dbfe7e	https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/product-images/variations/471c0674-15e4-4db6-b2a8-4bfb08dbfe7e/1770709485552-3.png	variations/471c0674-15e4-4db6-b2a8-4bfb08dbfe7e/1770709485552-3.png	0	2026-02-10 07:44:47.488377+00
28ab4909-5fc8-4931-bb79-3a124084632a	\N	7567d2b1-7525-4005-bf09-40e50db4e8b3	https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/product-images/variations/7567d2b1-7525-4005-bf09-40e50db4e8b3/1770709720559-9.png	variations/7567d2b1-7525-4005-bf09-40e50db4e8b3/1770709720559-9.png	0	2026-02-10 07:48:41.515807+00
d37ec279-b882-4d28-9deb-6e179c13b661	\N	ad4501b4-3ef4-4280-90eb-f3d044cef700	https://kaidsjjzzbquojcdsjbt.supabase.co/storage/v1/object/public/product-images/variations/ad4501b4-3ef4-4280-90eb-f3d044cef700/1770709746663-5.png	variations/ad4501b4-3ef4-4280-90eb-f3d044cef700/1770709746663-5.png	0	2026-02-10 07:49:07.667559+00
\.


--
-- Data for Name: product_variations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.product_variations (id, product_id, default_price, discount_price, stock, min_stock, is_active, created_at, updated_at, bottle_size, attributes, sku, barcode) FROM stdin;
284cdc9e-a648-4550-8ca6-87f9fcfcc88f	b653af70-8d46-4085-a8bd-90ff890015af	39.00	25.00	0	0	t	2025-12-09 04:57:26.382+00	2026-02-10 05:38:47.581384+00	Joolz Honey Lemon ขนาด  250 ML.	{"ความจุ": "Joolz Honey Lemon ขนาด  250 ML."}	\N	\N
c8e1fd88-b783-41f1-a66a-5dcb94d24b93	b062fb6a-8fd5-44a7-afbc-9e8c6c63d862	39.00	25.00	0	0	t	2025-12-15 17:15:36.262+00	2026-02-10 05:38:47.581384+00	Joolz Honey Lemon ขนาด  250 ML.	{"ความจุ": "Joolz Honey Lemon ขนาด  250 ML."}	\N	\N
b6efc5a9-63ad-4946-932b-7961e5332fc9	b653af70-8d46-4085-a8bd-90ff890015af	39.00	25.00	0	0	t	2025-12-09 04:57:26.382+00	2026-02-10 05:38:47.581384+00	ขวดกลม	{"ความจุ": "ขวดกลม"}	\N	\N
62a1a008-52a6-4d0e-bd67-f6758f5e522c	04c21907-dcb8-4e23-857c-fa1e8af94723	39.00	25.00	0	0	t	2025-12-15 16:43:57.923+00	2026-02-10 05:38:47.581384+00	ขวดกลม	{"ความจุ": "ขวดกลม"}	\N	\N
3eca1a07-55c2-41d5-b9ee-c0635d851713	04c21907-dcb8-4e23-857c-fa1e8af94723	39.00	25.00	0	0	t	2025-12-15 16:43:57.923+00	2026-02-10 05:38:47.581384+00	ขวดแบน รามา ขนาด 250 ML.	{"ความจุ": "ขวดแบน รามา ขนาด 250 ML."}	\N	\N
5724cfc5-7cdc-4a4b-adb4-2b16b87f6878	04c21907-dcb8-4e23-857c-fa1e8af94723	39.00	17.00	0	0	t	2025-12-15 16:43:57.923+00	2026-02-10 05:38:47.581384+00	ขวดแบน ขนาด 150 ML.	{"ความจุ": "ขวดแบน ขนาด 150 ML."}	\N	\N
f7491eb6-deb8-4e57-ba61-87f4b9fb53dd	a68cff25-a3ab-4a77-88d5-2cce248f2d08	25.00	0.00	0	0	f	2026-01-14 10:25:48.682+00	2026-02-10 11:48:31.53306+00	JoolzJuice ขนาด 250 ML.	{"ความจุ": "JoolzJuice ขนาด 250 ML."}	\N	\N
51963800-0124-4dd4-ade7-901bc25b6487	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	39.00	25.00	0	0	t	2025-11-30 00:17:30.855+00	2026-02-10 12:22:32.027153+00	Joolz-250	{"ความจุ": "Joolz-250"}	SKU003	\N
dc310598-a277-4ba0-beea-aaf05a6002ee	b062fb6a-8fd5-44a7-afbc-9e8c6c63d862	139.00	90.00	0	0	t	2025-12-15 17:15:36.262+00	2026-02-10 05:38:47.581384+00	Joolz Honey Lemon ขนาด  1000 ML.	{"ความจุ": "Joolz Honey Lemon ขนาด  1000 ML."}	\N	\N
2cbcb25a-d4c2-467c-8289-058111d109e0	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	139.00	90.00	0	0	t	2025-11-30 21:55:07.103+00	2026-02-10 12:22:31.533346+00	Joolz-1000	{"ความจุ": "Joolz-1000"}	SKU001	\N
7567d2b1-7525-4005-bf09-40e50db4e8b3	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	139.00	90.00	0	0	t	2026-02-10 07:33:34.38+00	2026-02-10 12:22:31.621717+00	OEM-1000	{"ความจุ": "OEM-1000"}	SKU004	919191919191
02220fa3-3dff-449f-9e76-4483c582f354	04c21907-dcb8-4e23-857c-fa1e8af94723	139.00	90.00	0	0	t	2025-12-15 16:43:57.923+00	2026-02-10 05:38:47.581384+00	ขวดกลมใหญ่	{"ความจุ": "ขวดกลมใหญ่"}	\N	\N
ef92db89-e8f5-459d-9dcc-6f7ab132cda9	5ab971b8-eeb8-4790-b980-ef239eec8698	10.00	0.00	0	0	t	2026-02-10 07:26:26.888+00	2026-02-10 07:59:24.05264+00	150ml	{"ความจุ": "150ml"}	150	\N
97effde6-7fe7-4f06-aa95-039219eb5c86	5ab971b8-eeb8-4790-b980-ef239eec8698	20.00	0.00	0	0	t	2026-02-10 07:26:26.888+00	2026-02-10 07:59:24.213181+00	250ml	{"ความจุ": "250ml"}	250	\N
ad4501b4-3ef4-4280-90eb-f3d044cef700	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	39.00	25.00	0	0	t	2026-02-10 07:33:34.459+00	2026-02-10 12:22:31.704689+00	ขวดแบน-250	{"ความจุ": "ขวดแบน-250"}	\N	919191919192
15157b99-7080-4d26-bde1-79b5eb8046d8	1a9101ec-4bb0-4900-86b5-5e80dc4ea45e	100.00	0.00	0	0	f	2026-01-14 10:38:46.256+00	2026-02-10 05:39:37.751668+00	ลังโฟม	{"ความจุ": "ลังโฟม"}	\N	\N
23b3e944-9a51-4bde-92cd-a1b19e1d255a	1a9101ec-4bb0-4900-86b5-5e80dc4ea45e	100.00	0.00	0	0	f	2026-01-14 10:38:46.256+00	2026-02-10 05:39:37.751668+00	ขนส่ง	{"ความจุ": "ขนส่ง"}	\N	\N
18be21b3-05bf-4504-b122-a57a4f7e1563	a68cff25-a3ab-4a77-88d5-2cce248f2d08	90.00	0.00	0	0	f	2026-01-14 10:25:48.682+00	2026-02-10 11:48:31.53306+00	Joolz Juice  ขนาด 1000 ML.	{"ความจุ": "Joolz Juice  ขนาด 1000 ML."}	\N	\N
a05695d9-3dbc-470f-8aa3-5ef605efaa25	34be98db-0f8c-45c4-9622-c6c7a76b942d	10.00	8.00	0	0	f	2026-02-10 07:17:13.962+00	2026-02-10 11:48:34.62627+00	-	\N	SKKKSSS	\N
14400bdf-b0f4-40be-857d-52ee80ac828f	0b21a8fc-b63a-497e-b136-0af3369a8392	15.00	0.00	0	0	t	2026-02-10 06:46:05.691+00	2026-02-10 06:46:05.691+00	150ml	{"ความจุ": "150ml"}	\N	\N
0d4aadf8-3f98-424c-809c-027119926c5c	0b21a8fc-b63a-497e-b136-0af3369a8392	25.00	0.00	0	0	t	2026-02-10 06:46:05.691+00	2026-02-10 06:46:05.691+00	250ml	{"ความจุ": "250ml"}	\N	\N
8238eabc-9506-495a-b2b4-c8e821e61faf	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	39.00	25.00	0	0	t	2025-12-09 04:55:35.803+00	2026-02-10 12:22:31.783198+00	WonderWoods-250	{"ความจุ": "WonderWoods-250"}	\N	919191919193
6b08e982-d5a5-4236-a6c6-9f0e53b5b581	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	25.00	15.00	0	0	t	2026-02-10 07:33:34.529+00	2026-02-10 12:22:31.86681+00	ขวดกั๊ก-150	{"ความจุ": "ขวดกั๊ก-150"}	\N	\N
471c0674-15e4-4db6-b2a8-4bfb08dbfe7e	c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	39.00	25.00	0	0	t	2026-02-10 07:33:34.309+00	2026-02-10 12:22:31.945985+00	ขวดกลม-250	{"ความจุ": "ขวดกลม-250"}	\N	\N
1fcd6194-ac1a-4957-830c-0dd5b82f8976	cb5b0d6b-2778-4b39-bfda-d6d38bf83268	20.00	0.00	0	0	t	2026-02-10 12:25:20.106+00	2026-02-10 12:25:20.106+00	250ml	{"ความจุ": "250ml"}	\N	\N
9694d73a-8728-45b3-bb5a-bc0506a55da6	cb5b0d6b-2778-4b39-bfda-d6d38bf83268	10.00	0.00	0	0	t	2026-02-10 12:25:20.106+00	2026-02-10 12:25:20.106+00	150ml	{"ความจุ": "150ml"}	\N	\N
04b19526-2c0c-4e72-a27a-32da3e18f425	5d063a66-c756-40c0-b6ae-2fc51f6c2fcd	10.00	0.00	0	0	t	2026-02-10 07:09:44.362+00	2026-02-10 12:03:35.177468+00	-	\N	SKU002	\N
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.products (id, code, name, description, is_active, image, created_by, created_at, updated_at, bottle_size, selected_variation_types) FROM stdin;
5ab971b8-eeb8-4790-b980-ef239eec8698	SKU-MLG9RM6IY4U	น้ำเมล่อน	สินะสินะสินะสินะสินะสินะสินะสินะ	t	\N	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 07:26:26.725+00	2026-02-10 07:59:23.881945+00	\N	{0e7e1a1a-3c16-48e0-a8ec-18e640ec2fad}
a68cff25-a3ab-4a77-88d5-2cce248f2d08	PRD-MIKYZ2LUR1	น้ำส้มคั้นสายน้ำผึ้ง mix	ใหญ่ 5 เล็ก 35	f	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-14 10:25:48.612+00	2026-02-10 11:48:31.380194+00	\N	{0e7e1a1a-3c16-48e0-a8ec-18e640ec2fad}
34be98db-0f8c-45c4-9622-c6c7a76b942d	SKU-MLG9PT1YC01	น้ำส้มธรรมดาที่แสนธรรมดา	\N	f	\N	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 07:17:13.828+00	2026-02-10 11:48:34.275748+00	-	{}
b062fb6a-8fd5-44a7-afbc-9e8c6c63d862	PRD-MIY1ONK9E01	น้ำเลมอนเนด	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	2025-12-15 17:15:36.009+00	2026-02-10 05:38:47.581384+00	\N	{0e7e1a1a-3c16-48e0-a8ec-18e640ec2fad}
b653af70-8d46-4085-a8bd-90ff890015af	PRD-MIY1ONK9E0O	น้ำเลมอนเนด	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	2025-12-09 04:57:26.344+00	2026-02-10 05:38:47.581384+00	\N	{0e7e1a1a-3c16-48e0-a8ec-18e640ec2fad}
5d063a66-c756-40c0-b6ae-2fc51f6c2fcd	SKU-MLG9EF3KLXD	น้ำส้มคั้นสด	\N	t	\N	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 07:09:44.176+00	2026-02-10 12:03:34.967856+00	-	{}
04c21907-dcb8-4e23-857c-fa1e8af94723	PRD-MIKYZ2LURW7	น้ำส้มคั้นสายน้ำผึ้ง	\N	t	\N	634da19d-716f-4b48-8c44-0706303d0840	2025-12-15 16:43:57.852+00	2026-02-10 05:38:47.581384+00	\N	{0e7e1a1a-3c16-48e0-a8ec-18e640ec2fad}
1a9101ec-4bb0-4900-86b5-5e80dc4ea45e	PRD-MKDVUCKM77G	ค่าขนส่ง	\N	f	\N	634da19d-716f-4b48-8c44-0706303d0840	2026-01-14 10:38:46.196+00	2026-02-10 05:39:37.603832+00	\N	{0e7e1a1a-3c16-48e0-a8ec-18e640ec2fad}
0b21a8fc-b63a-497e-b136-0af3369a8392	SKU-MLG8DU3MEAT	น้ำส้มคั้นสด	\N	t	\N	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 06:46:05.526+00	2026-02-10 06:46:05.526+00	\N	{0e7e1a1a-3c16-48e0-a8ec-18e640ec2fad}
c72b5c2a-a8e3-4653-9df0-9e2879a0d46e	ORANGEJUICE	น้ำส้มคั้นสายน้ำผึ้ง	\N	t	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRomXUTHvWolEGJ8hSqEZwAX5ACnvbY-TQOAA&s	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2025-11-30 00:17:30.778+00	2026-02-10 12:22:31.306127+00	\N	{0e7e1a1a-3c16-48e0-a8ec-18e640ec2fad}
cb5b0d6b-2778-4b39-bfda-d6d38bf83268	SKU-MLGKQ4MTRE5	น้ำเมล่อน (สำเนา)	สินะสินะสินะสินะสินะสินะสินะสินะ	t	\N	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 12:25:19.956+00	2026-02-10 12:25:19.956+00	\N	{0e7e1a1a-3c16-48e0-a8ec-18e640ec2fad}
\.


--
-- Data for Name: quality_tests; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.quality_tests (id, batch_id, test_type, brix_value, brix_image, acidity_value, acidity_image, product_image, notes, tested_by, tested_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: sales_order_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sales_order_items (id, order_id, product_id, bottle_type_id, quantity, price_per_unit, total) FROM stdin;
\.


--
-- Data for Name: sales_orders; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.sales_orders (id, order_number, customer_id, line_source, line_source_id, order_date, delivery_date, status, subtotal, discount, discount_type, delivery_fee, total, payment_method, payment_status, paid_amount, due_date, paid_date, delivery_type, delivery_address, notes, created_by, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: shipping_addresses; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.shipping_addresses (id, customer_id, address_name, contact_person, phone, address_line1, address_line2, district, amphoe, province, postal_code, google_maps_link, latitude, longitude, delivery_notes, is_default, is_active, created_by, created_at, updated_at) FROM stdin;
42c272d7-7fd5-412b-8ba6-ca5095122ea1	3f068301-ec61-4f65-b563-992da0f806e8	ริน แอท เรนทรี 	\N	\N	ริน แอท เรนทรี 	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-16 10:14:32.857+00	2025-12-16 10:14:32.857+00
875b0009-caf8-4fa0-a7d9-899d4bb85a5c	3eb26f74-1ab2-407c-89ae-843749750baa	สามย่าน	\N	\N	สามย่าน	\N	\N	\N	กรุงเทพมหานคร	\N	https://www.googlema.com	\N	\N	\N	t	t	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2025-12-01 03:29:06.191+00	2025-12-01 03:29:06.191+00
db930d1f-969f-42dd-b87c-6570ef9723fc	55a26af3-78ee-43cc-b6a4-c05d68c0ac84	สาขา ฟู้ดดี้บางนา	\N	\N	ฟู้ดดี้บางนา มาเก็ต	\N	บางแก้ว	บางพลี	สมุทรปราการ	10540	\N	\N	\N	\N	f	t	634da19d-716f-4b48-8c44-0706303d0840	2025-12-09 06:23:31.723+00	2025-12-09 06:23:31.723+00
4d4085c3-fa39-49ac-a631-c5ae49edb251	55a26af3-78ee-43cc-b6a4-c05d68c0ac84	สาขาลาดกระบัง			โจ๊กสามย่าน สาขาลาดกระบัง 20, 2 Lat Krabang Rd, Lat Krabang, Bangkok 10520 		ลาดกระบัง 	ลาดกระบัง 	สมุทรปราการ 	10520		\N	\N	20, 2 Lat Krabang Rd, Lat Krabang, Bangkok 10520 \n	f	t	634da19d-716f-4b48-8c44-0706303d0840	2025-12-09 05:17:33.8+00	2025-12-09 06:24:26.353976+00
fff6d7c9-fc46-4f08-ab7d-3aad9573a4ee	77e46928-7b1c-44d1-9c0e-6cb9122043e0	คุณแพรวตา	\N	\N	77 ม.ธารารมณ์ ซ.รามคำแหง43/1 ถ.รามคำแหง	\N	วังทองหลาง 	พลับพลา 	กรุงเทพมหานคร	10310	\N	\N	\N	\N	f	t	634da19d-716f-4b48-8c44-0706303d0840	2025-12-09 06:27:43.745+00	2025-12-09 06:27:43.745+00
dc745476-e021-429c-8f06-b959f4e30e17	86020312-8c63-401b-bfc6-a4a63dff6f26	wonderwood	คุณอิ๊บ ผจก.ร้าน	0969925216	วันเดอร์วูดส์	\N	สวนหลวง 	สวนหลวง 	กรุงเทพมหานคร	10250	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2025-12-09 06:29:32.512+00	2025-12-09 06:29:32.512+00
041fe181-5066-4bdb-b82b-f452e05de22a	d10954b1-94b3-4366-ba22-567ac872b6f8	ร้านราดหน้าผัดไทลุงแดง	ลุงแดง	0814296956	ร้านราดหน้าผัดไทลุงแดง 5 ซอย สายไหม 1 	\N	สายไหม 	สายไหม 	กรุงเทพมหานคร 	10220 	\N	\N	\N	\N	f	t	634da19d-716f-4b48-8c44-0706303d0840	2025-12-09 06:31:55.242+00	2025-12-09 06:31:55.242+00
6098aff4-496d-48db-8c00-6c4f0b692ccd	3f5de013-3fa1-412e-a726-31d01ec6cd2b	สาขา ทรู ดิจิทัล พาร์ค	คุณเอ๊ะ/คุณปุ๊ก	0982627465 / 0858001555	101 ถนน สุขุมวิท 101/1 แขวงบางจาก เขตพระโขนง กรุงเทพมหานคร 10260	\N	\N	\N	กรุงเทพมหานคร	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-11 05:03:31.478+00	2025-12-11 05:03:31.478+00
690a3895-f316-4b15-97ec-d34fbe6c8ae3	ad07f63f-f28f-4aa3-96d1-ca49f26ab3e9	สำนักงานใหญ่	\N	0816437966	775 ร้าน มะ ยอดผัก ราดหน้า ราชวัตร	\N	ดุสิต	ดุสิต	กรุงเทพมหานคร	10300	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2025-12-15 16:52:47.386+00	2025-12-15 16:52:47.386+00
5ca47c05-ccb7-42ff-bc8d-c5edcb9582cc	ec0a5eaf-cf59-48a4-b9e2-c76f8c3162f1	สำนักงานใหญ่	\N	023542660	แบล็คแคนยอน ร.พ. รามา โรงพยาบาลรามาธิบดี ทุ่งพญาไท ราชเทวี อาคารสมเด็จพระเทพรัตน์ ชั้น4 คณะแพทยศาสตร์ 	\N	ทุ่งพญาไท	ราชเทวี	กรุงเทพมหานคร	10400	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2025-12-15 16:55:45.968+00	2025-12-15 16:55:45.968+00
ee167ce8-69b1-47f0-8c77-1654e9093f09	335d07e5-4bae-4f09-bf78-f7ea8f0fd994	สำนักงานใหญ่	\N	0991611080	ก๋วยเตี๋ยวเนื้อตุ๋นบ้านจันทร์สุวรรณ 8/4 ถนน คสล 	\N	ออเงิน	สายใหม	กรุงเทพมหานคร	10220	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2025-12-15 16:57:45.304+00	2025-12-15 16:57:45.304+00
6021e501-269f-4cda-9da0-f1527f743aa6	1a36dbb0-3be1-4d4d-98b3-4101237037ab	สำนักงานใหญ่	\N	0993692840	Snooze Coffee House Restaurant 170 4 ถนน สามเสน 	\N	สามเสน	พระนคร	กรุงเทพมหานคร	10200	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2025-12-15 16:59:44.417+00	2025-12-15 16:59:44.417+00
bbebbb72-69f8-4a34-a5bd-c9580036ba14	747bb1a4-9d5a-4167-a2d1-092ff55bbb24	สำนักงานใหญ่	\N	0855561245	Iconicnok RKdstn 108/82 ตึก 5 ไอริสอะแวนิวคอนโด เขตลาดกระบัง แขวงลาดกระบัง กทม	\N	ลาดกระบัง 	ลาดกระบัง	กรุงเทพมหานคร	10520	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2025-12-15 17:02:11.731+00	2025-12-15 17:02:11.731+00
8e80ecf1-e4ff-426a-bec1-e5fa2c72bfb8	7aea9b3f-cf61-40db-92e4-bfc187a581a6	สำนักงานใหญ่	\N	0965595945	ก๋วยเตี๋ยวเรือ ศรีอยุธยา ก๋วยเตี๋ยวเรือ ศรีอยุธยา สาขาอารีย์ พญาไท สามเสนใน กรุงเทพมหานคร 10400	\N	พญาไท	สามเสนใน	กรุงเทพมหานคร	10400	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2025-12-15 17:09:23.226+00	2025-12-15 17:09:23.226+00
ad71e81f-c73f-4a0d-820a-79ffa859b5e6	b10cb1c3-cc14-4001-ab0b-d0854399c1a8	สนามบินดอนเมือง 	\N	\N	อาคาร 1 ชั้น 3 ประตู 7 	\N	\N	\N	กทม.	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-16 09:53:49.733+00	2025-12-16 09:53:49.733+00
6f31cc53-58fe-4e43-9ffb-6393d876c003	33650f06-de75-493c-b503-bbee8cce3166	โชว์รูม Zeekr สาขารามอินทรา 	\N	\N	บริษัท เอจีอี ออโต้ แกลเลอรี่ จำกัด เลขที่ 599 ถ.รามอินทรา แขวงคันนายาว เขตคันนายาว -	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-16 10:03:09.387+00	2025-12-16 10:03:09.388+00
118bc7c4-39e6-4229-93d3-cd2d4ef74906	caf88ba6-28a7-47d6-b007-5bc794f32a98	กระจายสินค้า	\N	\N	บางขุนนนท์ / คลองขวาง / อิสรภาพ / สวนผัก / พันท้าย / หมู่บ้านเศรษฐกิจ	\N	\N	\N	กทม / นนทบุรี	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-16 10:20:14.51+00	2025-12-16 10:20:14.511+00
8b7b08f5-3e60-4b17-97e2-33bb8de0f517	494a6b5c-7b0a-4ea5-80cc-ab9d956464f5	โจ๊กสามย่าน เมืองทอง	\N	\N	 58/164,166 ถนนนเเจ้งวัฒนะ ปากเกร็ด ปากเกร็ด นนทบุรี 11120	\N	\N	\N	นนทบุรี	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-16 10:22:35.737+00	2025-12-16 10:22:35.737+00
c4c9694b-a1c3-45d4-88c6-f7ab0570450f	c947e4a7-5f11-47dd-addf-e32451250a02	All Day Fine	\N	\N	1060/54 ถนน วิภาวดีรังสิต จตุจักร จอมพล กรุงเทพมหานคร 10900	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-16 10:24:21.282+00	2025-12-16 10:24:21.282+00
97a751d1-4361-4126-b5e4-472a63dc72ab	3f5de013-3fa1-412e-a726-31d01ec6cd2b	สาขาศาลาแดง 	\N	\N	เลขที่ 1010/17 บางรัก สีลม กรุงเทพมหานคร 10500	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-16 10:26:07.152+00	2025-12-16 10:26:07.152+00
be3d6c26-17b6-42b8-bd08-c65d0a4d1187	6b6a0eac-17b7-4b3f-8ac5-89f8801ddb01	scb รัชโยธิน สำนักงานใหญ่ 	\N	\N	ส่ง ที่ตึก East ฝั่งประตูเชฟรอน	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-17 10:09:51.721+00	2025-12-17 10:09:51.721+00
68633360-f36b-4994-8251-2231cbda3b3b	b6c3ed11-10ad-40cc-b634-a2bff38f95ef	(โกดังพี่จี้สีขาวตรงข้ามอบต.ทุ่งนางาม) 	\N	\N	168 ม.11 ต.ทุ่งนางาม อ.ลานสัก จ.อุทัยธานี 61160	\N	\N	\N	อุทัยธานี	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-17 10:10:43.988+00	2025-12-17 10:10:43.988+00
91962800-44a5-4b8c-a569-c041797eb777	bedbb98e-fb28-4153-85e1-e311630d3326	ริสาสินีสปา	\N	\N	 214/11 ถนนมหายศ ตำบลในเวียง อำเภอเมืองน่าน จ.น่าน ในเวียง น่าน 55000 	\N	\N	\N	น่าน	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-17 10:11:43.546+00	2025-12-17 10:11:43.546+00
4a130524-f4a3-4182-baa8-82419469b72e	101dbc58-c138-4e52-b312-cf9f47b11344	โจ๊กสามย่าน บางขุนนนท์	\N	061 446 6699	142, 19 Bang Khun Non Alley	\N	Khwaeng Bang Khun Non	Khet Bangkok Noi	Bangkok 	10700	\N	\N	\N	\N	f	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:57:15.848+00	2026-01-05 07:57:15.848+00
2b004b62-9551-4241-9e49-ce0fab0b532f	494a6b5c-7b0a-4ea5-80cc-ab9d956464f5	โจ๊กสามย่าน ดิอัพ	\N	 0894915549	พระราม3 54 นราธิวาส ยานนาวา ช่องนนทรี กรุงเทพมหานคร 10120	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-17 10:12:28.695+00	2025-12-17 10:12:28.695+00
5d1639cd-151e-4dfd-909b-61d46843e86d	01bca52c-7aed-433c-be24-f32ae448e717	ร้านแก่นไม้ไผ่ by เนียร	\N	\N	 ซอยลาดกระบัง 42/4 ร้านอยู่ในโครงการ cabin air ค่ะ ริมบึง ในสุดโครงการค่า ลาดกระบัง ลาดกระบัง กรุงเทพมหานคร 10520	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-17 10:13:22.41+00	2025-12-17 10:13:22.41+00
a03de010-00f5-4221-9528-59605c81139f	b87dfcd8-4001-4de7-8c95-504874ff2627	F.I.X Sarasin & The Lazy Bunch	\N	\N	187/7 ถนน ราชดำ ปทุมวัน ลุมพินี กรุงเทพมหานคร 10330	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-17 10:14:27.843+00	2025-12-17 10:14:27.843+00
32960b0c-db73-4210-a1ee-ab84a4416c3a	da7f1ad2-e025-4d9d-a9e4-a9e1636d50a6	Toasted Gelato บรรทัดทอง 	\N	\N	1632 ถนน บรรทัดทอง ปทุมวัน วังใหม่ กรุงเทพมหานคร 10330	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2025-12-21 04:31:52.474+00	2025-12-21 04:31:52.474+00
6e6fd0b4-a12d-47fb-8490-a9a3a7705ed1	40c274cb-1474-474d-9364-e2615c5c0694	สำนักงานใหญ่	คุณหวาน	0816430493	Harborland เมกาบางนา หมู่ที่ 6, 3 Fl.อาคาร 38/1-3 , 39, ทางคู่ขนาน ถนนบางนา-ตราด	\N	บางพลี 	บางแก้ว	สมุทรปราการ	10540	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 04:28:14.408+00	2026-01-03 04:28:14.408+00
df5f379f-f0c8-4699-bd19-7072f01244c5	f7581fec-a8c9-4109-b18e-d362d92ca94d	สำนักงานใหญ่	\N	0894915549	โจ๊กสามย่าน เมืองทอง 58/164,166 ถนนนเเจ้งวัฒนะ ปากเกร็ด 	\N	 ปากเกร็ด	 ปากเกร็ด	นนทบุรี 	11120	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 04:35:22.573+00	2026-01-03 04:35:22.573+00
f40518e5-150b-4b58-9dc2-a91f517000fc	2739c5e6-1384-4ded-81ef-26f31524ca99	สำนักงานใหญ่	\N	0806296546	99/10 ถ.ยะรัง เมืองปัตตานี	\N	เมืองปัตตานี	จะบังติกอ	ปัตตานี 	94000	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 04:39:57.039+00	2026-01-03 04:39:57.039+00
66767a9b-1e76-44e6-b01d-caaea496c888	c1bfa50b-145f-4844-bed4-7f781edb2346	สำนักงานใหญ่	\N	091460 5055	70 ซ. ลาดปลาเค้า 24 	\N	จรเข้บัว	ลาดพร้าว 	กรุงเทพมหานคร 	10230 	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 04:40:51.614+00	2026-01-03 04:40:51.614+00
ca2cba73-597f-47ef-9396-3da28da7a8d2	5762e90f-8931-4535-a74a-b418615037c8	สำนักงานใหญ่	คุณเอิ๊ต	0962810763	ริน แอท เรนทรี   276 Soi Rama IX 17	\N	 Bang Kapi	Huai Khwang	Bangkok 	10310	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 04:43:09.13+00	2026-01-03 04:43:09.13+00
99c59ef0-4983-4899-a2e4-4e871870c5e0	74061c15-e609-48b4-aa6e-2f934af4e4e6	สำนักงานใหญ่	\N	0841127342	บริษัท สุภัทรา ริเวอร์ เฮ้าส์ จำกัด 266 ซอยวัดระฆัง ถนนอรุณอมรินทร์	\N	ศิริราช 	บางกอกใหญ่	กรุงเทพมหานคร 	10400	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 05:12:24.125+00	2026-01-03 05:12:24.125+00
315f8b49-729a-48f4-b88d-8955ee0ae616	55a26af3-78ee-43cc-b6a4-c05d68c0ac84	โจ๊กสามย่าน แคราย (ปากซอยงามวงศ์วาน 4)	\N	0807128256	200 ถนน งามวงศ์วาน	\N	เมืองนนทบุรี 	บางเขน 	นนทบุรี 	11000	\N	\N	\N	\N	f	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 05:18:04.062+00	2026-01-03 05:18:04.062+00
a7b45f16-511b-481c-821a-1ea7129d96ac	4e9ef205-7a2d-4d7d-b2ca-0bb81423a168	สำนักงานใหญ่	\N	0918068405​	1​/36 หมู่บ้าน​ธนิน​ทร ซอย​วิภาวดี​35	\N	สนามบิน	ดอนเมือง	กรุงเทพมหานคร 	10210 	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 05:21:19.906+00	2026-01-03 05:21:19.906+00
8a6dc3e1-8874-4864-b2df-848727acb3b0	7d8b38b7-425b-43d9-8f6b-46d211327856	สำนักงานใหญ่	\N	0962252255	433/3 ถนนสวนพลู 	\N	สาทร 	ทุ่งมหาเมฆ 	กรุงเทพมหานคร 	10120	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 05:22:50.058+00	2026-01-03 05:22:50.058+00
ab7d890a-e170-438e-91a1-fc19c520d78e	8115a585-61a7-4823-95ec-535a1c93c1c5	สำนักงานใหญ่	\N	0891169988	1431 ซอย เจริญนคร 29  	\N	บางลำภูล่าง	คลองสาน	กรุงเทพมหานคร	10600	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 05:26:07.074+00	2026-01-03 05:26:07.074+00
96e1f734-b297-480e-8e4c-685f4ad34f61	8115a585-61a7-4823-95ec-535a1c93c1c5	โจ๊กสามย่าน ศาลายา	\N	\N	66/91 หมู่4 ถ.ศาลายา-นครชัยศรี Salaya	\N	Salaya	Phutthamonthon	Nakhon Pathom	73170	\N	\N	\N	\N	f	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-03 05:27:32.89+00	2026-01-03 05:27:32.89+00
7f8d20b5-3be8-45bc-aecd-4a1b0f81437b	f0e39ea2-a9dc-4492-9994-bc6893d2838e	สำนักงานใหญ่	\N	0852224088	ร้านสิงห์กาแฟ ร้านกระจกสีดำ ประชาอุทิศ 131	\N	ทุ่งครุ	ทุ่งครุ	กรุงเทพมหานคร	0852224088	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 06:24:09.513+00	2026-01-05 06:24:09.513+00
edb1729f-bb69-4edd-802a-78d3494466d0	e9d078d2-04d6-415f-a5fe-3fe33b414d40	สำนักงานใหญ่	\N	08732626256 	218 ศศกรณ์ เรสซิเดนท์ ซอย 14 ถนน เจริญนคร	\N	คลองสาน 	คลองต้นไทร	กรุงเทพมหานคร 	10600	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 06:56:25.863+00	2026-01-05 06:56:25.863+00
58fa74a1-8f2b-4ea7-b0a1-1ece5eb0beab	c3f38f6b-7517-4d47-a866-b3233eabb648	สำนักงานใหญ่	\N	0944649645	581 ลาดพร้าว 130	\N	คลองจั่น 	บางกะปิ 	กรุงเทพมหานคร 	10240	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 06:59:37.932+00	2026-01-05 06:59:37.932+00
b5a401d3-3dc3-4706-838e-d8668fbf17da	51bf4d96-d372-4893-8fee-6e29702c4297	สำนักงานใหญ่	\N	0642263515	ร้าน Smootheory ที่ Decathlon Bangna 19/501 หมู่ 13 ถนนบางนา-ตราด	\N	บางพลี 	บางแก้ว 	สมุทรปราการ 	10540	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:15:32.196+00	2026-01-05 07:15:32.196+00
48082142-4135-4062-a8dc-936a19141ee2	56a792d5-e6b2-4096-8792-cf270c7d7566	สำนักงานใหญ่	\N	0822830594	69/60  ถ.พญาไท 	\N	ราชเทวี 	พญาไท 	กรุงเทพมหานคร 	10400	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:18:47.724+00	2026-01-05 07:18:47.724+00
0866c25a-32c2-454c-bc8f-796aaa90373f	f616a0cc-8a7d-4897-987c-81d0404e24c0	สำนักงานใหญ่	\N	0876898928	ตลาดมารวย หทัยราษฎร์ 54 ร้านแม่เมืองมะพร้าวสด ล็อค D54-55 ตรงข้ามร้านอาบน้ำหมา และร้านทำเล็บ	\N	ลำลูกกา 	บึงคำพร้อย	ปทุมธานี 	12150	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:20:48.438+00	2026-01-05 07:20:48.439+00
8c3560e3-1fb5-4cb2-8337-36e1ecaffd1b	101dbc58-c138-4e52-b312-cf9f47b11344	สำนักงานใหญ่	\N	0891169988	641 4 Itsaraphap 	\N	Wat Tha Phra	Bangkok Yai	Bangkok 	10600	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:25:23.7+00	2026-01-05 07:25:23.7+00
3f585a52-9e4f-4ca6-92d1-dcff84ded283	c1ce919c-6998-4dd4-ab5d-8a0a956ab3bc	สำนักงานใหญ่	\N	0870452282	ร้าน ABC สาขาเมกาบางนา	\N	บางพลี 	บางแก้ว 	สมุทรปราการ 	10540	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:35:20.191+00	2026-01-05 07:35:20.191+00
9300e05b-ad50-4812-aec4-f915860583bc	ea0842ce-6cfd-48a1-85d4-034fe4725889	สำนักงานใหญ่	\N	0613649963	99/293 หมู่บ้านมัณฑนาแจ้งวัฒนะ-ราชพฤกษ์ ถนนชัยพฤกษ์	\N	ปากเกร็ด 	บางพลับ 	นนทบุรี 	11120	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:40:22.07+00	2026-01-05 07:40:22.07+00
644cdb67-ad3c-4465-8bef-7cee68d9a6e1	101dbc58-c138-4e52-b312-cf9f47b11344	โจ๊กสามย่าน สวนผัก	\N	\N	105, 7 หมู่ 11 ถนน สวนผัก	\N	Taling Chan	Taling Chan	Bangkok 	10170	\N	\N	\N	\N	f	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 07:59:23.627+00	2026-01-05 07:59:23.627+00
f0be0232-0ea6-44bf-a0c5-a0e9ee99acc4	101dbc58-c138-4e52-b312-cf9f47b11344	โจ๊กสามย่าน คลองขวาง	\N	\N	35/6 ถนนเลี่ยบคลองทวีวัฒนาฝั่งเหนือ ซอยเพรชเกษม69 	\N	หนองแขม	หนองแขม	กรุงเทพมหานคร	10160	\N	\N	\N	\N	f	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:00:34.379+00	2026-01-05 08:00:34.379+00
eaaf3864-e89d-4d2e-b350-bf873be702be	a791d4f2-bfed-45d9-b532-5c18c49f98af	สำนักงานใหญ่	\N	0894159428	50 473 ถ. เอกชัย	\N	บางบอน	บางบอน	กรุงเทพมหานคร	10150 	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:03:32.338+00	2026-01-05 08:03:32.338+00
b7ec21bd-e8ac-4c04-9de3-473e27d03512	d75f6899-d5b5-4855-8614-a6ad5993ce25	สำนักงานใหญ่	\N	0950045544	Tiwanon Rd Pak Kret District Nonthaburi	\N	ปากเกล็ด 	บางพูด	กรุงเทพมหานคร	11120	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:05:11.207+00	2026-01-05 08:05:11.207+00
3ce450cd-236a-41af-9365-f52221c1cd27	9c980499-65d3-4d8d-9edf-ac790c5ace33	สำนักงานใหญ่	\N	0629622469	ศูนย์บริการสาธารณสุข 39 ราษฎร์บูรณะ	\N	ราษฎร์บูรณะ 	ราษฎร์บูรณะ 	กรุงเทพมหานคร 	10140	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:07:07.103+00	2026-01-05 08:07:07.103+00
5f66ff92-70f7-4f94-b5a2-2b8c6051d9b0	7d4a2c7c-9a44-4d94-a3cc-0a6c8446b591	สำนักงานใหญ่	\N	0804565539	222/19 มบ. Golden Town บางนา-สวนหลวง	\N	ดอกไม้ 	ประเวศ 	กรุงเทพมหานคร 	10250	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:13:49.504+00	2026-01-05 08:13:49.504+00
8b7de9c9-384f-4f7e-a589-a8f60619e43b	46652f57-9bd5-4133-8d35-ddae7de97b32	สำนักงานใหญ่	\N	0857647458	ร้านแซ่พุ้น ซอยช่างทอง บ้านเลขที่ 14  ถนนตะนาว พระนคร 	\N	 เสาชิงช้า	 เสาชิงช้า	กรุงเทพมหานคร 	10200	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:17:40.587+00	2026-01-05 08:17:40.587+00
fc7409f0-b2ab-4e42-bd6d-7b69456951a2	3ba38459-588c-4d94-80b9-ab1dc178dba8	ร้าน Smootheory ที่ Decathlon Bangna	\N	\N	ร้าน Smootheory ที่ Decathlon Bangna 19/501 หมู่ 13 ถนนบางนา-ตราด บางพลี บางแก้ว สมุทรปราการ 10540	\N	\N	\N	สมุทรปราการ	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-14 10:23:43.222+00	2026-01-14 10:23:43.222+00
7b7d4218-f064-43b4-a68e-6360a1e8cbc5	fb0e8cff-4b7a-482d-87fc-ec7ff3f69b48	บริษัทคีช มี จำกัด	\N	\N	433/3 ถนนสวนพลู สาทร ทุ่งมหาเมฆ กรุงเทพมหานคร 10120	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-14 10:24:58.898+00	2026-01-14 10:24:58.898+00
e938e9ff-7bce-48a2-b367-69eb05f9fbb6	04f65103-1a92-4248-9fda-eae284c5ce07	ร้าน Coco Addict 	\N	\N	10/3 ซอยสนามคลี (ซอยโปโล) ถ.วิทยุ ต.ลุมพินี อ.ปทุมวัน กรุงเทพฯ 10330 - 	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-14 10:27:04.478+00	2026-01-14 10:27:04.478+00
a12ba315-1acc-4ff2-bf5a-a4821e39c451	7df382dd-eba6-4498-ba34-97232404c8c1	สำนักงานใหญ่	\N	0628264936	26 14 หมู่ 7 ทางคู่ขนาน ถนนบางนา-ตราด	\N	บางพลี	บางแก้ว	สมุทรปราการ 	10540	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-14 10:28:41.367+00	2026-01-14 10:28:41.367+00
70954a65-ce41-42b5-822b-f60b44c0e4f1	51cf5288-f182-40b8-a6ec-15fee05407cc	สำนักงานใหญ่	\N	0941622365	14/3 หมู่1	\N	เกาะกูด 	เกาะกูด 	ตราด 	23000 	\N	\N	\N	\N	t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-14 10:29:54.849+00	2026-01-14 10:29:54.849+00
ab387d47-49e3-42e1-8e02-728d239dd42c	3c495c93-d33d-4d36-b8af-1e52c77cc09a	Perk Coffee Co	\N	\N	Perk Coffee Co. 1st Floor, The Shoppes at Belle Grand Rama 9 131 Soi Rama 9 Soi 3 , Khwaeng Huai Khwang, Khet Huai Khwang, Bangkok 10310 	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-18 09:55:04.201+00	2026-01-18 09:55:04.201+00
36a2eb66-9294-4b22-9844-ad15d35e13cf	fdba0761-4123-4b05-ac68-c642b3c3ba6d	อายตานิคนครปฐม สาขาถนนราชมรรคา	\N	\N	เลขที่ 102 14 ถ. ราชมรรคา สนามจันทร์ อำเภอเมืองนครปฐม นครปฐม 73000	\N	\N	\N	นครปฐม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-18 09:57:25.764+00	2026-01-18 09:57:25.764+00
a827199c-5e23-447b-bab8-78613e9dbb4e	a2f94086-703f-472b-b152-ae94ed950036	Black Canyon	\N	\N	โรงพยาบาลรามาธิบดี ทุ่งพญาไท ราชเทวี อาคารสมเด็จพระเทพรัตน์ ชั้น4 คณะแพทยศาสตร์ ราชเทวี ทุ่งพญาไท กรุงเทพมหานคร 10400 ราชเทวี ทุ่งพญาไท กรุงเทพมหานคร 10400	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-18 09:59:31.285+00	2026-01-18 09:59:31.285+00
4ab8c604-ede7-490b-9f85-d5e587603206	0d229b2d-8b28-4393-bd73-83279c3f26d8	โจ๊กสามย่าน เมืองทอง 	\N	\N	58/164,166 ถนนนเเจ้งวัฒนะ ปากเกร็ด ปากเกร็ด นนทบุรี 11120	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-18 10:01:09.123+00	2026-01-18 10:01:09.123+00
117f1233-096d-4669-b09d-e586195b4077	9d9ce6db-dba1-4aac-a405-125b53688bdb	ศูนย์ฝึกขับขี่ปลอดภัยฮอนด้า สมุทรปราการ	\N	\N	 149, ถนนรถรางเก่า, พระประแดง สำโรงใต้ สมุทรปราการ 10130	\N	\N	\N	สมุทรปราการ	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-19 10:38:46.983+00	2026-01-19 10:38:46.983+00
47962237-8fae-48f2-b6f3-415c73025873	f01c0d58-b2c5-49e5-8394-ec1b89e262de	ร้านมิกุชา สาขา ปั้ม ปตท.บ่อผุด 	\N	\N	 106/54 ม.1 บ่อผุด เกาะสมุย บ่อผุด สุราษฎร์ธานี 84320	\N	\N	\N	สุราษฎร์ธานี	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-19 10:42:09.635+00	2026-01-19 10:42:09.635+00
1ad9624b-5a54-4968-86bd-dbaf90270d0e	8cf56ef9-2786-4db8-b930-b7a834885c8b	AOI	\N	\N	99/10 ถ.ยะรัง เมืองปัตตานี จะบังติกอ ปัตตานี 94000	\N	\N	\N	ปัตตานี	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-19 10:45:54.357+00	2026-01-19 10:45:54.357+00
4010d865-e14f-4259-83ac-12e326e690c2	8e599a70-e9dd-411b-8da8-f750a7b8b4aa	เฝอหม้อไฟ(สุขสวัสดิ์) 	\N	\N	357 หมู่ 19 ต.บางพึ่ง อ.พระปะแดง จสมุทรปราการ 10130	\N	\N	\N	สมุทรปราการ	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-19 10:48:11.092+00	2026-01-19 10:48:11.092+00
e9e98a4e-38b3-4824-b686-afa6424d1283	3150b512-00be-4097-84e6-9d8d03aec50e	 หมู่บ้านเพฟ (ปิ่นเกล้า-ศาลายา)	\N	\N	95/329 หมู่บ้านเพฟ (ปิ่นเกล้า-ศาลายา) ศาลากลาง, บางกรวย, นนทบุรี 11130 -	\N	\N	\N	นนทบุรี	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-23 10:39:03.487+00	2026-01-23 10:39:03.487+00
19efdffb-327f-485c-bd02-10f4fb51ee3a	c0968a19-758d-42f5-a4b1-6228a7569e09	F.I.X Sarasin & The Lazy Bunch	\N	\N	187/7 ถนน ราชดำ ปทุมวัน ลุมพินี กรุงเทพมหานคร 10330	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-23 10:40:48.171+00	2026-01-23 10:40:48.171+00
44677818-d0b3-48e5-ba78-a8cb6764ed92	03c433d2-b412-4155-9696-2f1088f245fd	ซอยวัดลาดปลาดุก			 89 17 ม.8 		บางรักพัฒนา	บางรักพัฒนา	นนทบุรี	11110		\N	\N		f	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:21:30.475+00	2026-02-11 01:51:27.45687+00
c63e3ff7-0ec2-4f2f-b3ea-99f236b2bd64	03c433d2-b412-4155-9696-2f1088f245fd	ปากเกร็ด(วัดกู้)			 44/100			ปากเกร็ด	นนทบุรี	10110		\N	\N		f	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:22:41.938+00	2026-02-11 01:51:19.082631+00
5aafed37-8f32-4271-9fa6-392f40f14e3d	bf03f5ae-ea55-41f1-b603-0108f0d0b524	Perk Coffee Co. 	\N	\N	1st Floor, The Shoppes at Belle Grand Rama 9 131 Soi Rama 9 Soi 3 , Khwaeng Huai Khwang, Khet Huai Khwang, Bangkok 10310 - - - -	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-24 09:05:51.261+00	2026-01-24 09:05:51.261+00
7c235938-e057-4ecc-ab54-cebbc0ea8d3d	c25ec1ed-3f58-436d-a6b7-0d84c65041bc	three house	\N	\N	287 ซอยหน้าโรงเรียนสวนกุหลาบนนทบุรี	\N	\N	\N	นนทบุรี	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-24 09:08:12.533+00	2026-01-24 09:08:12.533+00
0182f0b0-db25-4e7f-a0d1-2ec2ab5b57ed	101dbc58-c138-4e52-b312-cf9f47b11344	โจ๊กสามย่าน อิสรภาพ	\N	\N	641/4 ถนน อิสรภาพ แขวงวัดท่าพระ เขตบางกอกใหญ่ กรุงเทพมหานคร 10600	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-25 01:27:59.123+00	2026-01-25 01:27:59.123+00
22e9d6e9-703b-42c0-b735-1b4146715bee	08645abb-26d8-4411-b686-bfca6d08d1c6	-	คุณกุณฑล 	0648935166	18/2 ถนนเย็นอากาศ ทุ่งมหาเมฆ สาทร กทม 10120	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-25 07:50:36.941+00	2026-01-25 07:50:36.941+00
86d1b2cb-2899-4f2a-8c37-607dcbd34a48	fc574bea-4e14-45c2-aae2-bc9a9229e2ce	-	\N	\N	58/2 ถ.ระนอง2 ต.ถนนนครไชยศรี อ.ดุสิต กทม.	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-26 10:04:14.053+00	2026-01-26 10:04:14.053+00
fe6d5c3c-c5c6-4737-b808-079e42356700	fc3f1c3e-727e-4dd6-bd43-6df1ea5b9979	ร้าน คราฟท์ 	\N	\N	372 เลขที่ 23/9 หมุ่2 ตำบลบางพูน  อำเภอเมืองปทุมธานี จังหวัดปทุมธานี  12000 -	\N	\N	\N	ปทุมธานี	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-27 02:54:38.709+00	2026-01-27 02:54:38.709+00
a55908f3-4848-4572-a126-0ed8966360bd	8b41abd9-cfd2-4895-8ccd-b0b430811ff8	บริษัท สุภัทรา ริเวอร์ เฮ้าส์ จำกัด	\N	\N	266 ซอยวัดระฆัง ถนนอรุณอมรินทร์ แขวงศิริราช เขตบางกอกใหญ่ กรุงเทพ 	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-27 02:58:17.638+00	2026-01-27 02:58:17.638+00
2faefdab-bcf6-4247-98c1-7b1e9d8b35bc	ee12bcd1-73ac-443f-97af-8f08ac6af0cb	-	\N	\N	288/70 เดอะริคโค้เรสซิเดนซ์ วงแหวน-จตุโชติ คลองสามวา สามวาตะวันตก กรุงเทพมหานคร 10510	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-28 10:30:30.57+00	2026-01-28 10:30:30.57+00
57bd335b-5e3d-4381-92c3-d746d2bb472c	10e16ee6-db10-4292-a367-97b478f93873	-	\N	\N	99/31 มัณฑนาอ่อนนุช สุขาภิบาล 2 ซอย 25 ประเวศ ดอกไม้ กรุงเทพมหานคร 10250	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-28 10:30:58.865+00	2026-01-28 10:30:58.865+00
a5de6b35-e138-46c0-8eba-b4fd9b344680	3ae90b99-cdcc-4310-9d78-1aaca6a51d5a	-	\N	\N	เลขที่ 269/190 หมู่บ้าน พฤกษาวิลล์ 50 ซอย 13 แขวงราษฎร์พัฒนา เขตสะพานสูง จังหวัดกรุงเทพมหานคร 10240 	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-28 10:32:31.768+00	2026-01-28 10:32:31.768+00
511e012f-d3e7-46ec-b011-57dbbabc3aea	23d2cddc-7783-4f7a-b30d-68f455f48f5a	-	\N	\N	139/3-4 ถนน นเรศวร ต.เขาสามยอด อ..เมือง จ.ลพบุรี 15000	\N	\N	\N	ลพบุรี	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-29 08:07:10.937+00	2026-01-29 08:07:10.937+00
29169281-3121-47b5-b3d9-310cd9cabe8d	6ef9f94a-6872-49b4-978d-4687294acc08	บ้านสวนบางแสน	\N	\N	 27/75 ซ.มอร์นิ่ง ถ.บางแสนสาย 4 ใต้ ต.แสนสุข อ.เมืองชลบุรี จ.ชลบุรี 20130	\N	\N	\N	ชลบุรี	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-30 10:05:47.516+00	2026-01-30 10:05:47.516+00
a0c9da56-cae8-4b2d-9196-6653e12dd736	101dbc58-c138-4e52-b312-cf9f47b11344	โจ๊กสามย่านพันท้าย 	\N	\N	44 16 หมู่ 5 พันท้ายนรสิงห์ เมือง สมุทรสาคร 74000	\N	\N	\N	สมุทรสาคร	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 09:57:29.055+00	2026-02-02 09:57:29.055+00
d9e204c0-09d3-47b4-9d7d-37992ec3ace9	101dbc58-c138-4e52-b312-cf9f47b11344	โจ๊กสามย่าน หมู่บ้านเศรษฐกิจ	\N	\N	150 แขวงบางแคเหนือ บางแค กรุงเทพมหานคร 10160	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 09:58:02.167+00	2026-02-02 09:58:02.167+00
fedd69f2-8eaa-4b38-bc43-df446740835e	0158a63d-29bd-4ed1-96ee-e9be6e97efcf	ร้าน joolz johnny	\N	\N	223-225 ซอยจุฬา 11 ถนนพระรามที่ ๔ ปทุมวัน วังใหม่ กรุงเทพมหานคร 10330	\N	\N	\N	กทม	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-02 10:17:04.787+00	2026-02-02 10:17:04.787+00
cb2f3fbc-82b8-4575-8d00-cefddd31e746	2c4ac07f-3a6d-4e89-a133-be7fdfce19a5	-	\N	\N	114/119 เฟส 5 ซอย 19 หมู่บ้านเดอะคัลเลอร์บางนา บางพลี บางพลีใหญ่ สมุทรปราการ 10540	\N	\N	\N	สมุทรปราการ	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-06 06:50:10.982+00	2026-02-06 06:50:10.982+00
eebfe034-f888-4b64-9f5a-1ef700f7bec0	d83f9e00-b451-419d-a041-4f311f5c8028	-	\N	\N	หม่าล่าปากซอย สาขาปากเกร็ด 	\N	\N	\N	นนทบุรี	\N	\N	\N	\N	\N	f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-06 07:06:10.385+00	2026-02-06 07:06:10.385+00
dbe10887-685c-44e8-b379-7c63ac292f33	d83f9e00-b451-419d-a041-4f311f5c8028	-			ชั้น 17 บรรษัทประกันสินเชื่ออุตสาหกรรมขนาดย่อม (บสย.) อาคารชาญอิสสระทาวเวอร์ 2 				กทม			\N	\N		f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-06 07:06:36.689+00	2026-02-06 07:06:45.521879+00
239b9ad5-a559-4dfd-b1fc-b4e85c7f4ec3	ab52c29d-a0c0-440c-8cd7-a5a71cd77b92	สาขาวังเด็ก	\N	\N	21/7 ถนนวิภาวดีรังสิต	\N	จอมพล 	จตุจักร	กรุงเทพ	10900	\N	\N	\N	มาถึงโทรหาน้องขวัญ	t	t	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 01:12:12.486+00	2026-02-10 01:12:12.486+00
b7eea5d3-aa20-478c-a8e0-c38caf8433df	ab52c29d-a0c0-440c-8cd7-a5a71cd77b92	พระราม 2	\N	\N	9 ถนนพระราม 2	\N	\N	\N	กรุงเทพ	\N	\N	\N	\N	ติดต่อน้องเนย	f	t	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 01:12:46.605+00	2026-02-10 01:12:46.605+00
3ade39c4-77d4-42db-9a17-9f7a05c37b2d	2155c7d2-2847-4658-9c2a-021d8d957715	บางขุนนนท์	คุณอุ๋ย	0653927356	115 4 ซอยกิตติชัย บางขุนนนท์ บางกอกน้อย บางขุนนนท์ กรุงเทพมหานคร 10700				กทม			\N	\N		f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-06 07:04:44.499+00	2026-02-10 22:42:22.701596+00
0629d403-a1f1-4658-9cb5-f45ba3f1ad3b	03c433d2-b412-4155-9696-2f1088f245fd	สำนักงานใหญ่		0895084022	48/5 หมู่ 3 Bangsrimuang Rd	\N	Mueang Nonthaburi	Mueang Nonthaburi	Nonthaburi	11000		\N	\N		t	t	634da19d-716f-4b48-8c44-0706303d0840	2026-01-05 08:20:03.705+00	2026-02-11 01:51:31.07536+00
f46120a9-d629-42d6-8d90-ee8769d5997a	03c433d2-b412-4155-9696-2f1088f245fd	บางกรวย			54 22 ถ. บางกรวย - ไทรน้อย		บางกรวย	บางกรวย	นนทบุรี	11130		\N	\N		f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-25 07:46:20.014+00	2026-02-11 01:50:59.123034+00
a71bd1c3-cbe1-4ba1-b615-0f88d5653821	03c433d2-b412-4155-9696-2f1088f245fd	ท่าน้ำนนท์			ใกล้ 48/5 หมู่ 3 ถนน บางศรีเมือง อำเภอเมืองนนทบุรี นนทบุรี 11000				นนทบุรี			\N	\N		f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-25 07:45:30.907+00	2026-02-11 01:35:27.573635+00
f18fc167-036f-45b7-9c54-449b9d1e90da	03c433d2-b412-4155-9696-2f1088f245fd	ท่าอิฐ			 90/119 ตำบล บางรักน้อย				นนทบุรี	11000		\N	\N		f	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-01-25 07:46:47.466+00	2026-02-11 01:41:19.845956+00
1d3ad581-e114-4187-be9a-6b0faf339c0e	6c4e86da-2dd1-45c1-829c-f4ebf6a40a0c	สำนักงานใหญ่	\N	\N	ชั้น 1 ห้อง 1C, อาคารวังเด็ก 1, 21, 7 ถนน วิภาวดีรังสิต 	\N	แขวงจอมพล 	จตุจักร	กรุงเทพมหานคร	10900	\N	\N	\N	\N	t	t	0d90fb2c-dfb6-4ebd-9b81-38909b601854	2026-02-13 04:18:01.108+00	2026-02-13 04:18:01.108+00
\.


--
-- Data for Name: stock_lot_usages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.stock_lot_usages (id, stock_lot_id, stock_transaction_id, production_batch_id, quantity_used, unit_cost, total_cost, usage_date, created_at) FROM stdin;
\.


--
-- Data for Name: stock_lots; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.stock_lots (id, raw_material_id, stock_transaction_id, lot_number, quantity_remaining, unit_price, purchase_date, created_at, updated_at) FROM stdin;
dbf69dbb-67b3-4f1b-9e0b-424c3e329c43	c7413ece-7b3a-48fc-ba6f-9e162345c6e0	1cb95b43-b292-44d5-a3ca-32eca70bd420	\N	1000	20	2025-12-01 02:58:59.666+00	2025-12-01 02:58:59.666+00	2025-12-01 02:58:59.666+00
cfacdbcb-c527-47a5-b200-e364d01edcca	c7413ece-7b3a-48fc-ba6f-9e162345c6e0	800244e9-a0f7-407a-9018-05ac4dcb25ca	\N	1000	0.02	2026-01-14 10:31:11.064+00	2026-01-14 10:31:11.064+00	2026-01-14 10:31:11.064+00
\.


--
-- Data for Name: supplier_materials; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.supplier_materials (supplier_id, raw_material_id, price_per_unit) FROM stdin;
\.


--
-- Data for Name: user_profiles; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.user_profiles (id, email, name, role, line_user_id, phone, avatar, is_active, created_at, updated_at) FROM stdin;
0d86f21f-20e4-474e-bb56-8e9ffd941a4e	kwamkid@gmail.com	Kwamkid Admin	admin	\N	\N	\N	t	2025-11-12 07:00:56.200197+00	2025-11-12 07:03:03.146684+00
24015529-2657-4091-a2e4-d100799f3d90	mimimi@gmail.com	Mi	operation	\N	\N	\N	t	2025-12-01 04:15:12.404708+00	2025-12-01 04:15:12.4817+00
0d90fb2c-dfb6-4ebd-9b81-38909b601854	kwankwan@gmail.com	Kwan	sales	\N	\N	\N	t	2025-12-09 05:35:59.51635+00	2025-12-09 05:35:59.655784+00
634da19d-716f-4b48-8c44-0706303d0840	nutprawee@gmail.com	Nutprawee	manager	\N		\N	t	2025-11-28 06:11:51.301539+00	2026-01-22 22:00:44.033677+00
\.


--
-- Data for Name: variation_types; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.variation_types (id, name, sort_order, is_active, created_at) FROM stdin;
0e7e1a1a-3c16-48e0-a8ec-18e640ec2fad	ความจุ	1	t	2026-02-10 05:38:47.581384+00
646fed62-45a4-4869-89f6-6a2fff4d6752	รูปทรง	2	t	2026-02-10 05:38:47.581384+00
28eb0647-b203-4abb-8c68-46589028b76b	สี	3	t	2026-02-10 05:38:47.581384+00
71fc8197-9420-420f-8cd5-3e0dbd9025e0	ไซซ์	4	t	2026-02-10 05:38:47.581384+00
6da5350a-cc0b-4f28-9c99-53580563018d	เจ้า	5	t	2026-02-10 06:54:55.030319+00
\.


--
-- Data for Name: messages_2026_02_10; Type: TABLE DATA; Schema: realtime; Owner: -
--

COPY realtime.messages_2026_02_10 (topic, extension, payload, event, private, updated_at, inserted_at, id) FROM stdin;
\.


--
-- Data for Name: messages_2026_02_11; Type: TABLE DATA; Schema: realtime; Owner: -
--

COPY realtime.messages_2026_02_11 (topic, extension, payload, event, private, updated_at, inserted_at, id) FROM stdin;
\.


--
-- Data for Name: messages_2026_02_12; Type: TABLE DATA; Schema: realtime; Owner: -
--

COPY realtime.messages_2026_02_12 (topic, extension, payload, event, private, updated_at, inserted_at, id) FROM stdin;
\.


--
-- Data for Name: messages_2026_02_13; Type: TABLE DATA; Schema: realtime; Owner: -
--

COPY realtime.messages_2026_02_13 (topic, extension, payload, event, private, updated_at, inserted_at, id) FROM stdin;
\.


--
-- Data for Name: messages_2026_02_14; Type: TABLE DATA; Schema: realtime; Owner: -
--

COPY realtime.messages_2026_02_14 (topic, extension, payload, event, private, updated_at, inserted_at, id) FROM stdin;
\.


--
-- Data for Name: messages_2026_02_15; Type: TABLE DATA; Schema: realtime; Owner: -
--

COPY realtime.messages_2026_02_15 (topic, extension, payload, event, private, updated_at, inserted_at, id) FROM stdin;
\.


--
-- Data for Name: messages_2026_02_16; Type: TABLE DATA; Schema: realtime; Owner: -
--

COPY realtime.messages_2026_02_16 (topic, extension, payload, event, private, updated_at, inserted_at, id) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: realtime; Owner: -
--

COPY realtime.schema_migrations (version, inserted_at) FROM stdin;
20211116024918	2025-11-07 02:21:16
20211116045059	2025-11-07 02:21:16
20211116050929	2025-11-07 02:21:16
20211116051442	2025-11-07 02:21:16
20211116212300	2025-11-07 02:21:16
20211116213355	2025-11-07 02:21:16
20211116213934	2025-11-07 02:21:16
20211116214523	2025-11-07 02:21:16
20211122062447	2025-11-07 02:21:16
20211124070109	2025-11-07 02:21:16
20211202204204	2025-11-07 02:21:16
20211202204605	2025-11-07 02:21:16
20211210212804	2025-11-07 02:21:16
20211228014915	2025-11-07 02:21:16
20220107221237	2025-11-07 02:21:16
20220228202821	2025-11-07 02:21:16
20220312004840	2025-11-07 02:21:16
20220603231003	2025-11-07 02:21:16
20220603232444	2025-11-07 02:21:16
20220615214548	2025-11-07 02:21:16
20220712093339	2025-11-07 02:21:16
20220908172859	2025-11-07 02:21:16
20220916233421	2025-11-07 02:21:16
20230119133233	2025-11-07 02:21:16
20230128025114	2025-11-07 02:21:16
20230128025212	2025-11-07 02:21:16
20230227211149	2025-11-07 02:21:16
20230228184745	2025-11-07 02:21:16
20230308225145	2025-11-07 02:21:16
20230328144023	2025-11-07 02:21:16
20231018144023	2025-11-07 02:21:16
20231204144023	2025-11-07 02:21:16
20231204144024	2025-11-07 02:21:16
20231204144025	2025-11-07 02:21:16
20240108234812	2025-11-07 02:21:16
20240109165339	2025-11-07 02:21:16
20240227174441	2025-11-07 02:21:16
20240311171622	2025-11-07 02:21:16
20240321100241	2025-11-07 02:21:16
20240401105812	2025-11-07 02:21:16
20240418121054	2025-11-07 02:21:16
20240523004032	2025-11-07 02:21:16
20240618124746	2025-11-07 02:21:16
20240801235015	2025-11-07 02:21:16
20240805133720	2025-11-07 02:21:16
20240827160934	2025-11-07 02:21:16
20240919163303	2025-11-07 02:21:16
20240919163305	2025-11-07 02:21:16
20241019105805	2025-11-07 02:21:16
20241030150047	2025-11-07 02:21:16
20241108114728	2025-11-07 02:21:16
20241121104152	2025-11-07 02:21:16
20241130184212	2025-11-07 02:21:16
20241220035512	2025-11-07 02:21:16
20241220123912	2025-11-07 02:21:16
20241224161212	2025-11-07 02:21:16
20250107150512	2025-11-07 02:21:16
20250110162412	2025-11-07 02:21:16
20250123174212	2025-11-07 02:21:16
20250128220012	2025-11-07 02:21:16
20250506224012	2025-11-07 02:21:16
20250523164012	2025-11-07 02:21:16
20250714121412	2025-11-07 02:21:17
20250905041441	2025-11-07 02:21:17
20251103001201	2025-11-12 05:05:51
20251120212548	2026-02-06 10:27:53
20251120215549	2026-02-06 10:27:53
\.


--
-- Data for Name: subscription; Type: TABLE DATA; Schema: realtime; Owner: -
--

COPY realtime.subscription (id, subscription_id, entity, filters, claims, created_at, action_filter) FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: -
--

COPY storage.buckets (id, name, owner, created_at, updated_at, public, avif_autodetection, file_size_limit, allowed_mime_types, owner_id, type) FROM stdin;
chat-media	chat-media	\N	2026-02-06 13:00:17.381271+00	2026-02-06 13:00:17.381271+00	t	f	\N	\N	\N	STANDARD
product-images	product-images	\N	2026-02-10 02:17:03.15115+00	2026-02-10 02:17:03.15115+00	t	f	\N	\N	\N	STANDARD
payment-slips	payment-slips	\N	2026-02-11 10:00:35.909247+00	2026-02-11 10:00:35.909247+00	t	f	\N	\N	\N	STANDARD
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: -
--

COPY storage.buckets_analytics (name, type, format, created_at, updated_at, id, deleted_at) FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: -
--

COPY storage.buckets_vectors (id, type, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: storage; Owner: -
--

COPY storage.migrations (id, name, hash, executed_at) FROM stdin;
0	create-migrations-table	e18db593bcde2aca2a408c4d1100f6abba2195df	2025-11-07 02:21:16.372947
1	initialmigration	6ab16121fbaa08bbd11b712d05f358f9b555d777	2025-11-07 02:21:16.38467
3	pathtoken-column	2cb1b0004b817b29d5b0a971af16bafeede4b70d	2025-11-07 02:21:16.41479
4	add-migrations-rls	427c5b63fe1c5937495d9c635c263ee7a5905058	2025-11-07 02:21:16.46062
5	add-size-functions	79e081a1455b63666c1294a440f8ad4b1e6a7f84	2025-11-07 02:21:16.467234
7	add-rls-to-buckets	e7e7f86adbc51049f341dfe8d30256c1abca17aa	2025-11-07 02:21:16.483824
8	add-public-to-buckets	fd670db39ed65f9d08b01db09d6202503ca2bab3	2025-11-07 02:21:16.490934
11	add-trigger-to-auto-update-updated_at-column	7425bdb14366d1739fa8a18c83100636d74dcaa2	2025-11-07 02:21:16.513915
12	add-automatic-avif-detection-flag	8e92e1266eb29518b6a4c5313ab8f29dd0d08df9	2025-11-07 02:21:16.523478
13	add-bucket-custom-limits	cce962054138135cd9a8c4bcd531598684b25e7d	2025-11-07 02:21:16.530317
14	use-bytes-for-max-size	941c41b346f9802b411f06f30e972ad4744dad27	2025-11-07 02:21:16.539592
15	add-can-insert-object-function	934146bc38ead475f4ef4b555c524ee5d66799e5	2025-11-07 02:21:16.585591
16	add-version	76debf38d3fd07dcfc747ca49096457d95b1221b	2025-11-07 02:21:16.594117
17	drop-owner-foreign-key	f1cbb288f1b7a4c1eb8c38504b80ae2a0153d101	2025-11-07 02:21:16.603009
18	add_owner_id_column_deprecate_owner	e7a511b379110b08e2f214be852c35414749fe66	2025-11-07 02:21:16.611168
19	alter-default-value-objects-id	02e5e22a78626187e00d173dc45f58fa66a4f043	2025-11-07 02:21:16.619233
20	list-objects-with-delimiter	cd694ae708e51ba82bf012bba00caf4f3b6393b7	2025-11-07 02:21:16.625938
21	s3-multipart-uploads	8c804d4a566c40cd1e4cc5b3725a664a9303657f	2025-11-07 02:21:16.634826
22	s3-multipart-uploads-big-ints	9737dc258d2397953c9953d9b86920b8be0cdb73	2025-11-07 02:21:16.663232
23	optimize-search-function	9d7e604cddc4b56a5422dc68c9313f4a1b6f132c	2025-11-07 02:21:16.690943
24	operation-function	8312e37c2bf9e76bbe841aa5fda889206d2bf8aa	2025-11-07 02:21:16.698926
25	custom-metadata	d974c6057c3db1c1f847afa0e291e6165693b990	2025-11-07 02:21:16.707381
37	add-bucket-name-length-trigger	3944135b4e3e8b22d6d4cbb568fe3b0b51df15c1	2025-11-07 02:21:17.478075
44	vector-bucket-type	99c20c0ffd52bb1ff1f32fb992f3b351e3ef8fb3	2025-11-17 22:37:41.897797
45	vector-buckets	049e27196d77a7cb76497a85afae669d8b230953	2025-11-17 22:37:41.93248
46	buckets-objects-grants	fedeb96d60fefd8e02ab3ded9fbde05632f84aed	2025-11-17 22:37:42.042516
47	iceberg-table-metadata	649df56855c24d8b36dd4cc1aeb8251aa9ad42c2	2025-11-17 22:37:42.048238
49	buckets-objects-grants-postgres	072b1195d0d5a2f888af6b2302a1938dd94b8b3d	2025-12-28 05:26:10.832944
2	storage-schema	f6a1fa2c93cbcd16d4e487b362e45fca157a8dbd	2025-11-07 02:21:16.393234
6	change-column-name-in-get-size	ded78e2f1b5d7e616117897e6443a925965b30d2	2025-11-07 02:21:16.47669
9	fix-search-function	af597a1b590c70519b464a4ab3be54490712796b	2025-11-07 02:21:16.498567
10	search-files-search-function	b595f05e92f7e91211af1bbfe9c6a13bb3391e16	2025-11-07 02:21:16.505961
26	objects-prefixes	215cabcb7f78121892a5a2037a09fedf9a1ae322	2025-11-07 02:21:16.715654
27	search-v2	859ba38092ac96eb3964d83bf53ccc0b141663a6	2025-11-07 02:21:16.73589
28	object-bucket-name-sorting	c73a2b5b5d4041e39705814fd3a1b95502d38ce4	2025-11-07 02:21:17.415938
29	create-prefixes	ad2c1207f76703d11a9f9007f821620017a66c21	2025-11-07 02:21:17.424982
30	update-object-levels	2be814ff05c8252fdfdc7cfb4b7f5c7e17f0bed6	2025-11-07 02:21:17.431632
31	objects-level-index	b40367c14c3440ec75f19bbce2d71e914ddd3da0	2025-11-07 02:21:17.438886
32	backward-compatible-index-on-objects	e0c37182b0f7aee3efd823298fb3c76f1042c0f7	2025-11-07 02:21:17.446367
33	backward-compatible-index-on-prefixes	b480e99ed951e0900f033ec4eb34b5bdcb4e3d49	2025-11-07 02:21:17.453829
34	optimize-search-function-v1	ca80a3dc7bfef894df17108785ce29a7fc8ee456	2025-11-07 02:21:17.456011
35	add-insert-trigger-prefixes	458fe0ffd07ec53f5e3ce9df51bfdf4861929ccc	2025-11-07 02:21:17.463362
36	optimise-existing-functions	6ae5fca6af5c55abe95369cd4f93985d1814ca8f	2025-11-07 02:21:17.469222
38	iceberg-catalog-flag-on-buckets	02716b81ceec9705aed84aa1501657095b32e5c5	2025-11-07 02:21:17.485022
39	add-search-v2-sort-support	6706c5f2928846abee18461279799ad12b279b78	2025-11-07 02:21:17.495411
40	fix-prefix-race-conditions-optimized	7ad69982ae2d372b21f48fc4829ae9752c518f6b	2025-11-07 02:21:17.502272
41	add-object-level-update-trigger	07fcf1a22165849b7a029deed059ffcde08d1ae0	2025-11-07 02:21:17.512481
42	rollback-prefix-triggers	771479077764adc09e2ea2043eb627503c034cd4	2025-11-07 02:21:17.519084
43	fix-object-level	84b35d6caca9d937478ad8a797491f38b8c2979f	2025-11-07 02:21:17.526554
48	iceberg-catalog-ids	e0e8b460c609b9999ccd0df9ad14294613eed939	2025-11-17 22:37:42.052546
50	search-v2-optimised	6323ac4f850aa14e7387eb32102869578b5bd478	2026-02-10 11:47:46.820619
51	index-backward-compatible-search	2ee395d433f76e38bcd3856debaf6e0e5b674011	2026-02-10 11:47:46.978943
52	drop-not-used-indexes-and-functions	5cc44c8696749ac11dd0dc37f2a3802075f3a171	2026-02-10 11:47:46.981274
53	drop-index-lower-name	d0cb18777d9e2a98ebe0bc5cc7a42e57ebe41854	2026-02-10 11:47:47.04938
54	drop-index-object-level	6289e048b1472da17c31a7eba1ded625a6457e67	2026-02-10 11:47:47.051215
55	prevent-direct-deletes	262a4798d5e0f2e7c8970232e03ce8be695d5819	2026-02-10 11:47:47.052683
56	fix-optimized-search-function	cb58526ebc23048049fd5bf2fd148d18b04a2073	2026-02-10 11:47:47.06528
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: -
--

COPY storage.objects (id, bucket_id, name, owner, created_at, updated_at, last_accessed_at, metadata, version, owner_id, user_metadata) FROM stdin;
159744b1-ee93-4f36-978f-3a2cadf85efe	chat-media	line-image/599872849653530802.jpg	\N	2026-02-06 13:09:49.178387+00	2026-02-06 13:09:49.178387+00	2026-02-06 13:09:49.178387+00	{"eTag": "\\"80e78c070ca51af392ece92860c78d85\\"", "size": 1665878, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-06T13:09:50.000Z", "contentLength": 1665878, "httpStatusCode": 200}	552a6983-8f40-4212-8d23-a3f5565e14a8	\N	{}
70cecc70-37ba-4acc-9071-2816c787128f	chat-media	admin-images/1770384368393-1.png	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-06 13:26:08.713295+00	2026-02-06 13:26:08.713295+00	2026-02-06 13:26:08.713295+00	{"eTag": "\\"b0655773a3bb1b68bdca55cfdd126b32\\"", "size": 20277, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-02-06T13:26:09.000Z", "contentLength": 20277, "httpStatusCode": 200}	64c8781d-6e75-4154-82d4-f45e4578ebad	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	{}
e058ca44-9926-447c-abdb-8b74e37694b0	chat-media	line-image/599964969152282648.jpg	\N	2026-02-07 04:24:55.076109+00	2026-02-07 04:24:55.076109+00	2026-02-07 04:24:55.076109+00	{"eTag": "\\"2a871f151b6784b1f71f7fb969b410a0\\"", "size": 162798, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-07T04:24:56.000Z", "contentLength": 162798, "httpStatusCode": 200}	84aff127-0c01-41da-bd42-c14d05ac6ea2	\N	{}
ca944237-bbe1-4e20-9615-8d2183160f3f	chat-media	line-image/599970797943521809.jpg	\N	2026-02-07 05:22:49.322889+00	2026-02-07 05:22:49.322889+00	2026-02-07 05:22:49.322889+00	{"eTag": "\\"4ef74fab5db9e6eb6841e31dd43ebe9f\\"", "size": 121269, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-07T05:22:50.000Z", "contentLength": 121269, "httpStatusCode": 200}	bb970da5-eb8c-4db2-9304-b54e7b5480ed	\N	{}
85a5093c-8dab-4ff8-ab98-b2710c19421d	chat-media	line-image/599970798698496359.jpg	\N	2026-02-07 05:22:50.372831+00	2026-02-07 05:22:50.372831+00	2026-02-07 05:22:50.372831+00	{"eTag": "\\"acff1fbf8357cf2d3ffaf0b779103e47\\"", "size": 121535, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-07T05:22:51.000Z", "contentLength": 121535, "httpStatusCode": 200}	a72b4e05-250e-491d-8e5a-cf88a0d7eabd	\N	{}
bd6c3cbc-bce7-498f-a541-822533b3a303	chat-media	line-image/600108145594859849.jpg	\N	2026-02-08 04:07:15.983733+00	2026-02-08 04:07:15.983733+00	2026-02-08 04:07:15.983733+00	{"eTag": "\\"bb896c89a1d88444cc20c8010260fcb8\\"", "size": 286517, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-08T04:07:16.000Z", "contentLength": 286517, "httpStatusCode": 200}	fe785d93-ffba-4243-961c-a7f57fe0bf74	\N	{}
0c56fe44-6a08-4782-b193-8b89338f5d49	chat-media	line-image/600111691728683521.jpg	\N	2026-02-08 04:42:29.633494+00	2026-02-08 04:42:29.633494+00	2026-02-08 04:42:29.633494+00	{"eTag": "\\"25ae8096a29402f07c7f417250293448\\"", "size": 163701, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-08T04:42:30.000Z", "contentLength": 163701, "httpStatusCode": 200}	b618977a-489c-49ea-aadc-84497d112a2f	\N	{}
a35362a3-6809-473f-9dd0-5d89a1fa72d9	chat-media	line-image/600113347488121071.jpg	\N	2026-02-08 04:58:56.482814+00	2026-02-08 04:58:56.482814+00	2026-02-08 04:58:56.482814+00	{"eTag": "\\"09516c2d2939cc1d8762fc28d116410c\\"", "size": 272705, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-08T04:58:57.000Z", "contentLength": 272705, "httpStatusCode": 200}	ca25295b-37dc-49ae-aa6c-50bbb5cbf45e	\N	{}
917dc855-f231-4234-88e0-fb1ea17c995a	chat-media	line-image/600113940630077552.jpg	\N	2026-02-08 05:04:50.542467+00	2026-02-08 05:04:50.542467+00	2026-02-08 05:04:50.542467+00	{"eTag": "\\"1a929cc6c6e501073a4b91e0e68dad6b\\"", "size": 142422, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-08T05:04:51.000Z", "contentLength": 142422, "httpStatusCode": 200}	80c005ea-2324-4552-b998-9ef951579b9b	\N	{}
8b5ff3c1-e34e-41b5-9940-d8b91e785dd4	chat-media	line-image/600114039129112715.jpg	\N	2026-02-08 05:05:48.181485+00	2026-02-08 05:05:48.181485+00	2026-02-08 05:05:48.181485+00	{"eTag": "\\"fead534184fc3246a0a8c9693ce729ab\\"", "size": 157598, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-08T05:05:49.000Z", "contentLength": 157598, "httpStatusCode": 200}	3ea814b0-b3fd-4647-81ff-dfc01c5225af	\N	{}
3fa0700c-e9b3-429c-85ba-2dfd4496686b	chat-media	line-image/600124704455655944.jpg	\N	2026-02-08 06:51:46.372074+00	2026-02-08 06:51:46.372074+00	2026-02-08 06:51:46.372074+00	{"eTag": "\\"0db2b41727a0e01fbe80423f5e77d845\\"", "size": 257531, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-08T06:51:47.000Z", "contentLength": 257531, "httpStatusCode": 200}	3f70fd21-9212-4fb0-bafe-d61d88167f6c	\N	{}
50d7dbff-b39a-4e60-9d51-d5e563235a52	chat-media	line-image/600137249719844970.jpg	\N	2026-02-08 08:56:23.749487+00	2026-02-08 08:56:23.749487+00	2026-02-08 08:56:23.749487+00	{"eTag": "\\"d6dbbbce401d5794f61458e2cd1ff75e\\"", "size": 139422, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-08T08:56:24.000Z", "contentLength": 139422, "httpStatusCode": 200}	b9649b5c-5bb9-4801-a090-5a3adfda8ed3	\N	{}
71c0c56d-64d7-4fc3-b80e-f3c206b17be2	chat-media	line-image/600145122495562137.jpg	\N	2026-02-08 10:14:35.756023+00	2026-02-08 10:14:35.756023+00	2026-02-08 10:14:35.756023+00	{"eTag": "\\"7d526c209b6b8414395ebc2d1556d41d\\"", "size": 290525, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-08T10:14:36.000Z", "contentLength": 290525, "httpStatusCode": 200}	3b8be03f-270a-4a1a-accf-75a9dda793a3	\N	{}
3e124d11-da46-4ddc-84f3-06cf6d9f69f2	chat-media	line-image/600245006690680854.jpg	\N	2026-02-09 02:46:51.728714+00	2026-02-09 02:46:51.728714+00	2026-02-09 02:46:51.728714+00	{"eTag": "\\"681c2f66f6c859ae24b0d78d1c1ed420\\"", "size": 334434, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-09T02:46:52.000Z", "contentLength": 334434, "httpStatusCode": 200}	0ed5b7ba-5c3c-4962-aab1-2901b2165b10	\N	{}
ad96b14e-a6fc-435c-850d-7553750bef61	chat-media	line-image/600245054841291246.jpg	\N	2026-02-09 02:47:18.893708+00	2026-02-09 02:47:18.893708+00	2026-02-09 02:47:18.893708+00	{"eTag": "\\"c84ae532dde0dfac617941bdd3464b0f\\"", "size": 313097, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-09T02:47:19.000Z", "contentLength": 313097, "httpStatusCode": 200}	d90e4644-c665-40aa-a7f2-554aac4d2689	\N	{}
6b6cb677-31b0-4c16-8d75-4c8f1e0b29f9	chat-media	line-image/600250526361977125.jpg	\N	2026-02-09 03:41:41.772494+00	2026-02-09 03:41:41.772494+00	2026-02-09 03:41:41.772494+00	{"eTag": "\\"1d8077a73d3dab860bdd40f3dcc68590\\"", "size": 137478, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-09T03:41:42.000Z", "contentLength": 137478, "httpStatusCode": 200}	8279cb4e-43a5-4081-9d1a-7e87abb9559a	\N	{}
5ddddc72-e28d-48e7-80bb-440d4aa88394	chat-media	line-image/600253473128710707.jpg	\N	2026-02-09 04:10:56.833396+00	2026-02-09 04:10:56.833396+00	2026-02-09 04:10:56.833396+00	{"eTag": "\\"df1e62d7ba844a87248ea52d51f48f2d\\"", "size": 115172, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-09T04:10:57.000Z", "contentLength": 115172, "httpStatusCode": 200}	3e079a8d-91e8-4ccb-ae81-44c60738cd52	\N	{}
ff7896e1-e1f0-448b-9e07-d21311fc5529	chat-media	line-image/600256376006246471.jpg	\N	2026-02-09 04:39:46.600805+00	2026-02-09 04:39:46.600805+00	2026-02-09 04:39:46.600805+00	{"eTag": "\\"e7e3994fcb1a83a1e365d4b1e6c4e71c\\"", "size": 155293, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-09T04:39:47.000Z", "contentLength": 155293, "httpStatusCode": 200}	b65bdb0a-604f-4fb7-86c4-4cf3a12d8b3b	\N	{}
12d922ba-fc18-49ae-abb6-80c6415b376e	chat-media	line-image/600258949212012971.jpg	\N	2026-02-09 05:05:20.549954+00	2026-02-09 05:05:20.549954+00	2026-02-09 05:05:20.549954+00	{"eTag": "\\"6fb94822ad290a2f0f9f5f67f2075ad5\\"", "size": 151156, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-09T05:05:21.000Z", "contentLength": 151156, "httpStatusCode": 200}	43e63ac6-dd2a-42a1-80d8-31a092b0c1fe	\N	{}
425524e0-730f-4789-8cc7-3d0aa1d01c22	chat-media	line-image/600292986123190801.jpg	\N	2026-02-09 10:43:29.741369+00	2026-02-09 10:43:29.741369+00	2026-02-09 10:43:29.741369+00	{"eTag": "\\"986709661878ac734a93f5f1710940e2\\"", "size": 163001, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-09T10:43:30.000Z", "contentLength": 163001, "httpStatusCode": 200}	ec72292e-49fc-46a2-837a-e4ee6d384a02	\N	{}
288fe698-a250-490b-a4e3-8aff87833e9e	chat-media	line-image/600385991089586654.jpg	\N	2026-02-10 02:07:23.827168+00	2026-02-10 02:07:23.827168+00	2026-02-10 02:07:23.827168+00	{"eTag": "\\"95f8ea17bb53c4fe95191f142e0b1b50\\"", "size": 654644, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-10T02:07:24.000Z", "contentLength": 654644, "httpStatusCode": 200}	5fe8e0e8-d07d-4851-b735-0e6c57a2156a	\N	{}
8218f8e8-426b-491a-8ab9-f778b9b646eb	chat-media	line-image/600386227799851131.jpg	\N	2026-02-10 02:09:44.252306+00	2026-02-10 02:09:44.252306+00	2026-02-10 02:09:44.252306+00	{"eTag": "\\"285c7917f610a45f65465ee35589b954\\"", "size": 220114, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-10T02:09:45.000Z", "contentLength": 220114, "httpStatusCode": 200}	cdb2d99a-f2f4-4c10-98d3-205c5836ee5b	\N	{}
422afc09-bce8-4676-8c03-42a5cacf22b5	chat-media	line-image/600388295456981437.jpg	\N	2026-02-10 02:30:17.676803+00	2026-02-10 02:30:17.676803+00	2026-02-10 02:30:17.676803+00	{"eTag": "\\"73ba7d65971886511fd187d9543f25ac\\"", "size": 265411, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-10T02:30:18.000Z", "contentLength": 265411, "httpStatusCode": 200}	6ece182a-1333-46ae-9ca5-f183bef275b6	\N	{}
91612b35-2fbd-4150-9082-eb44609c1675	product-images	products/34be98db-0f8c-45c4-9622-c6c7a76b942d/1770707834507-1.png	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 07:17:14.912441+00	2026-02-10 07:17:14.912441+00	2026-02-10 07:17:14.912441+00	{"eTag": "\\"9131a0f48e97df396f227411e775a2d4\\"", "size": 16986, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-02-10T07:17:15.000Z", "contentLength": 16986, "httpStatusCode": 200}	0dc4d1b9-bd0c-4fe2-a116-387a779c8ebc	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	{}
9cd1f262-2a68-4b60-bbc3-4a1b39f582e9	product-images	products/34be98db-0f8c-45c4-9622-c6c7a76b942d/1770707835159-2.png	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 07:17:15.362833+00	2026-02-10 07:17:15.362833+00	2026-02-10 07:17:15.362833+00	{"eTag": "\\"ba8d47780ff8f109be6b876c83b75e3b\\"", "size": 17794, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-02-10T07:17:16.000Z", "contentLength": 17794, "httpStatusCode": 200}	d4e43294-7888-42e1-8b00-15effb91ba18	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	{}
5b84123a-7941-4af6-8ad1-e58a022f12a0	product-images	products/34be98db-0f8c-45c4-9622-c6c7a76b942d/1770707835556-3.png	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 07:17:15.769353+00	2026-02-10 07:17:15.769353+00	2026-02-10 07:17:15.769353+00	{"eTag": "\\"33e52c6fe034fe4b6bd3dbdc8d608e2e\\"", "size": 21906, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-02-10T07:17:16.000Z", "contentLength": 21906, "httpStatusCode": 200}	2a46ef6e-b497-44ed-9c17-012bc7760234	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	{}
6b2a6869-a704-497c-9916-c19ebde3e58d	product-images	products/34be98db-0f8c-45c4-9622-c6c7a76b942d/1770707835953-4.png	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 07:17:16.188838+00	2026-02-10 07:17:16.188838+00	2026-02-10 07:17:16.188838+00	{"eTag": "\\"053bfb4182990d9665d7a871cff09eaa\\"", "size": 29129, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-02-10T07:17:17.000Z", "contentLength": 29129, "httpStatusCode": 200}	06910fb6-301d-49a1-96c9-02aefeaa12c8	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	{}
f1d66de6-a0a3-45b5-b110-8c717eebc8cb	product-images	products/34be98db-0f8c-45c4-9622-c6c7a76b942d/1770707836371-5.png	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 07:17:16.625725+00	2026-02-10 07:17:16.625725+00	2026-02-10 07:17:16.625725+00	{"eTag": "\\"a7637933a74988aa4fc0b049e7ae1f94\\"", "size": 16340, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-02-10T07:17:17.000Z", "contentLength": 16340, "httpStatusCode": 200}	0ada611d-9f8a-4a0b-b39b-022abd8469dd	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	{}
f2649ceb-4b68-4174-a3a2-9d217d7244ff	product-images	products/34be98db-0f8c-45c4-9622-c6c7a76b942d/1770707836848-6.png	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 07:17:17.070662+00	2026-02-10 07:17:17.070662+00	2026-02-10 07:17:17.070662+00	{"eTag": "\\"217154513130874050b0dde0cd9442de\\"", "size": 10573, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-02-10T07:17:18.000Z", "contentLength": 10573, "httpStatusCode": 200}	e8b1ec7b-51ed-4f96-a7c4-bdc6c5c6f079	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	{}
888a7e45-503f-4e48-a8fb-ce5650c9b8c5	product-images	products/5ab971b8-eeb8-4790-b980-ef239eec8698/1770708387097-Because_little_things_matter_big..png	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 07:26:27.684361+00	2026-02-10 07:26:27.684361+00	2026-02-10 07:26:27.684361+00	{"eTag": "\\"1c8b8995663380835f65f03c9af3f849\\"", "size": 54772, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-02-10T07:26:28.000Z", "contentLength": 54772, "httpStatusCode": 200}	f4fcde0b-9e5f-442d-a191-1ff198dbe6bc	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	{}
1b0965fe-13d0-485f-a1c3-e3dd4f6957bd	product-images	variations/ef92db89-e8f5-459d-9dcc-6f7ab132cda9/1770708387968-logo.png	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 07:26:28.142866+00	2026-02-10 07:26:28.142866+00	2026-02-10 07:26:28.142866+00	{"eTag": "\\"02dea750c42058255809522bc41300f6\\"", "size": 10786, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-02-10T07:26:29.000Z", "contentLength": 10786, "httpStatusCode": 200}	8d1be5c4-51b6-458b-afd9-6afdae5bb0bd	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	{}
abd5cc93-1616-4f67-91e9-269331f70459	product-images	variations/97effde6-7fe7-4f06-aa95-039219eb5c86/1770708388323-unnamed.png	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 07:26:28.548598+00	2026-02-10 07:26:28.548598+00	2026-02-10 07:26:28.548598+00	{"eTag": "\\"d38ee5470039bc2545e746246c54124b\\"", "size": 253493, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-02-10T07:26:29.000Z", "contentLength": 253493, "httpStatusCode": 200}	1f48eb8e-d752-4c81-a4c8-4cc24ba55fc3	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	{}
61555b3a-36b2-46bf-8e06-290c89bced89	product-images	products/c72b5c2a-a8e3-4653-9df0-9e2879a0d46e/1770708543797-1.png	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 07:29:04.082012+00	2026-02-10 07:29:04.082012+00	2026-02-10 07:29:04.082012+00	{"eTag": "\\"9aceec4d532ba4c969cf9f68fc5e41f8\\"", "size": 251761, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-02-10T07:29:05.000Z", "contentLength": 251761, "httpStatusCode": 200}	c460b199-f6b1-4b5f-a3ba-b95573fb0497	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	{}
d0317514-a6de-400d-ad81-2eab68ee15f0	product-images	variations/51963800-0124-4dd4-ade7-901bc25b6487/1770708649715-1.png	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 07:30:50.006502+00	2026-02-10 07:30:50.006502+00	2026-02-10 07:30:50.006502+00	{"eTag": "\\"669adc5bfa610ee8029d4c9c6ff9233d\\"", "size": 251497, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-02-10T07:30:50.000Z", "contentLength": 251497, "httpStatusCode": 200}	8e4f549c-29ac-438f-a2a1-6474eacd4705	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	{}
3a58a636-d1c5-419e-b775-19133c4d1b2b	product-images	variations/8238eabc-9506-495a-b2b4-c8e821e61faf/1770708655923-7.png	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 07:30:56.401466+00	2026-02-10 07:30:56.401466+00	2026-02-10 07:30:56.401466+00	{"eTag": "\\"0147576f59f4965872e994b4691e45ad\\"", "size": 184195, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-02-10T07:30:57.000Z", "contentLength": 184195, "httpStatusCode": 200}	ebb37566-5553-416f-b222-91a8ab61c647	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	{}
6df1fd60-863a-4129-b069-3c5a736162b1	product-images	variations/2cbcb25a-d4c2-467c-8289-058111d109e0/1770708660579-8.png	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 07:31:00.804649+00	2026-02-10 07:31:00.804649+00	2026-02-10 07:31:00.804649+00	{"eTag": "\\"b82a431397c32389796683f6fd78526f\\"", "size": 198832, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-02-10T07:31:01.000Z", "contentLength": 198832, "httpStatusCode": 200}	a69eab1b-e061-4f85-bde6-a2c870dbee05	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	{}
2f92cd20-b6de-460a-98d1-ff329daf5e4a	product-images	variations/6b08e982-d5a5-4236-a6c6-9f0e53b5b581/1770708847834-6.png	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 07:34:08.336475+00	2026-02-10 07:34:08.336475+00	2026-02-10 07:34:08.336475+00	{"eTag": "\\"425b70f3377a3dfd8fcc86835011df0d\\"", "size": 223614, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-02-10T07:34:09.000Z", "contentLength": 223614, "httpStatusCode": 200}	54d6a663-7f7e-4726-a0eb-8cc7a8a99fc3	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	{}
8c8ed1df-39c6-4a0c-81c5-4f01f0f21a07	product-images	variations/471c0674-15e4-4db6-b2a8-4bfb08dbfe7e/1770709485552-3.png	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 07:44:46.757777+00	2026-02-10 07:44:46.757777+00	2026-02-10 07:44:46.757777+00	{"eTag": "\\"93612db8d456976b2e7e3059c5acbf00\\"", "size": 162363, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-02-10T07:44:47.000Z", "contentLength": 162363, "httpStatusCode": 200}	49bf042b-2641-47ce-b253-e0349b557866	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	{}
beea40bf-9d33-4a49-937d-33189f24962d	product-images	variations/7567d2b1-7525-4005-bf09-40e50db4e8b3/1770709720559-9.png	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 07:48:41.195985+00	2026-02-10 07:48:41.195985+00	2026-02-10 07:48:41.195985+00	{"eTag": "\\"398a572f38af4babb3f4802dc7b5375f\\"", "size": 189908, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-02-10T07:48:42.000Z", "contentLength": 189908, "httpStatusCode": 200}	955f5a21-7512-485f-ac11-b258626fe40a	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	{}
e5868b37-2973-466c-90a5-eab1a126173a	product-images	variations/ad4501b4-3ef4-4280-90eb-f3d044cef700/1770709746663-5.png	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	2026-02-10 07:49:07.065392+00	2026-02-10 07:49:07.065392+00	2026-02-10 07:49:07.065392+00	{"eTag": "\\"5f9b0eaacd93c1d6b01a6429793a9e73\\"", "size": 201135, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2026-02-10T07:49:08.000Z", "contentLength": 201135, "httpStatusCode": 200}	d4bba543-317f-4b29-9f6d-9ff584242f54	0d86f21f-20e4-474e-bb56-8e9ffd941a4e	{}
06f14a5a-ce50-4ea4-af67-8c6818d12858	chat-media	line-image/600538706638012963.jpg	\N	2026-02-11 03:24:29.478409+00	2026-02-11 03:24:29.478409+00	2026-02-11 03:24:29.478409+00	{"eTag": "\\"07a3d41d7a3bad05d96a9a091f4bd987\\"", "size": 98127, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-11T03:24:30.000Z", "contentLength": 98127, "httpStatusCode": 200}	e0623903-b679-488b-8aae-d05d6a1634e5	\N	{}
6bc10beb-20cb-4af6-a2bd-8b5970de2cb9	chat-media	line-image/600538709624619519.jpg	\N	2026-02-11 03:24:30.534131+00	2026-02-11 03:24:30.534131+00	2026-02-11 03:24:30.534131+00	{"eTag": "\\"32a9d241b9fac0735cb6637056aff096\\"", "size": 193607, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-11T03:24:31.000Z", "contentLength": 193607, "httpStatusCode": 200}	58944a41-c7c3-4aad-bd48-0244b00cf5fb	\N	{}
0f41d8a7-79af-4ccd-8a49-6f11816d5c46	chat-media	line-image/600542411802280194.jpg	\N	2026-02-11 04:01:18.64333+00	2026-02-11 04:01:18.64333+00	2026-02-11 04:01:18.64333+00	{"eTag": "\\"f911aca0358da3de4d67e3db1b2cac12\\"", "size": 257329, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-11T04:01:19.000Z", "contentLength": 257329, "httpStatusCode": 200}	c421651f-fe68-4a35-899e-c8fe26af5182	\N	{}
d429bf16-90ab-414a-a1fa-d20739acd114	chat-media	line-image/600545895389855984.jpg	\N	2026-02-11 04:35:54.638365+00	2026-02-11 04:35:54.638365+00	2026-02-11 04:35:54.638365+00	{"eTag": "\\"e7878f24e20cfdabc4c5a306d083ab10\\"", "size": 104404, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-11T04:35:55.000Z", "contentLength": 104404, "httpStatusCode": 200}	ccee0854-9fd7-4ed2-b575-62f34226e730	\N	{}
1e0fe665-9b05-441b-9b29-3d056689d0c2	chat-media	line-image/600571298527576423.jpg	\N	2026-02-11 08:48:17.22759+00	2026-02-11 08:48:17.22759+00	2026-02-11 08:48:17.22759+00	{"eTag": "\\"05b736dfb0460ea4daf217dbaab429ba\\"", "size": 259135, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-11T08:48:18.000Z", "contentLength": 259135, "httpStatusCode": 200}	ace2af13-19ce-43fd-b935-7ea5441e16be	\N	{}
7f112cc1-099c-4e5e-be77-32da2b439593	payment-slips	859bb6a1-0891-47d7-9060-c4afc3968785/1770804197787.blob	\N	2026-02-11 10:03:18.722204+00	2026-02-11 10:03:18.722204+00	2026-02-11 10:03:18.722204+00	{"eTag": "\\"9e5b21bd006b0ecceb74fd488a7227a1\\"", "size": 52429, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-11T10:03:19.000Z", "contentLength": 52429, "httpStatusCode": 200}	4bfaa1eb-60cd-4cc8-9a13-07dba39c6e09	\N	{}
9326f57e-3a43-4d63-90dc-5c638d8faa84	payment-slips	859bb6a1-0891-47d7-9060-c4afc3968785/1770804255556.blob	\N	2026-02-11 10:04:16.541105+00	2026-02-11 10:04:16.541105+00	2026-02-11 10:04:16.541105+00	{"eTag": "\\"9e5b21bd006b0ecceb74fd488a7227a1\\"", "size": 52429, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-11T10:04:17.000Z", "contentLength": 52429, "httpStatusCode": 200}	f92a5671-2f22-462c-95bd-2f93beeb8f9e	\N	{}
bdcd56bd-faaf-4153-8f5d-4c41293ffa22	chat-media	line-image/600594143256773036.jpg	\N	2026-02-11 12:35:13.377799+00	2026-02-11 12:35:13.377799+00	2026-02-11 12:35:13.377799+00	{"eTag": "\\"d65c0c620575d6797891d400a850a39c\\"", "size": 333438, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-11T12:35:14.000Z", "contentLength": 333438, "httpStatusCode": 200}	a0ef15e0-65be-4c54-9786-548053541340	\N	{}
7082cf3e-ef26-4e9d-898b-d67af1252643	chat-media	line-image/600691673290768572.jpg	\N	2026-02-12 04:44:04.675377+00	2026-02-12 04:44:04.675377+00	2026-02-12 04:44:04.675377+00	{"eTag": "\\"766fa46249cd24f85735511f5d321fb1\\"", "size": 137285, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-12T04:44:05.000Z", "contentLength": 137285, "httpStatusCode": 200}	7f3c670d-0c7e-4706-99c4-876bd951ce18	\N	{}
9eb6f6b6-35c5-4c4e-b319-f700b4eb9c04	chat-media	line-image/600712618453500302.jpg	\N	2026-02-12 08:12:08.896022+00	2026-02-12 08:12:08.896022+00	2026-02-12 08:12:08.896022+00	{"eTag": "\\"423562209b3fcc66bbefe475c7ced9d7\\"", "size": 131139, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-12T08:12:09.000Z", "contentLength": 131139, "httpStatusCode": 200}	789eece1-fa6a-4965-a15e-ad31e6fdf285	\N	{}
3e7c0677-3575-4650-8be3-f52aa69d201b	chat-media	line-image/600722731943592611.jpg	\N	2026-02-12 09:52:37.173247+00	2026-02-12 09:52:37.173247+00	2026-02-12 09:52:37.173247+00	{"eTag": "\\"eedf33609c8928a23989858b6a398f65\\"", "size": 148317, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-12T09:52:38.000Z", "contentLength": 148317, "httpStatusCode": 200}	7c76cfe7-22f7-48a2-a94d-4d61ccb5987b	\N	{}
5373e404-7347-4099-a79a-1c968ce2332c	chat-media	line-image/600723523442835763.jpg	\N	2026-02-12 10:00:28.356253+00	2026-02-12 10:00:28.356253+00	2026-02-12 10:00:28.356253+00	{"eTag": "\\"841814b55101b40cc21ce7761816c5c4\\"", "size": 180915, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-12T10:00:29.000Z", "contentLength": 180915, "httpStatusCode": 200}	c047754e-7533-4091-aac8-4ba3ff2ba6a0	\N	{}
25273976-f4db-4cd7-9f04-6fe4f7b6b17c	chat-media	line-image/600723559597211684.jpg	\N	2026-02-12 10:00:49.740061+00	2026-02-12 10:00:49.740061+00	2026-02-12 10:00:49.740061+00	{"eTag": "\\"0748671169a592a7a4957523a6e404f3\\"", "size": 22116, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-12T10:00:50.000Z", "contentLength": 22116, "httpStatusCode": 200}	b1adf00b-2de9-4971-a92c-609e673896ef	\N	{}
ad22511d-6d23-4094-8dbb-5ea4440575c6	chat-media	line-image/600747855858631082.jpg	\N	2026-02-12 14:02:12.777455+00	2026-02-12 14:02:12.777455+00	2026-02-12 14:02:12.777455+00	{"eTag": "\\"d40b35ded47cd281ceed6e81ecf71c2d\\"", "size": 277833, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-12T14:02:13.000Z", "contentLength": 277833, "httpStatusCode": 200}	fc465073-e1d9-4b41-9c05-86e46a4cbfe1	\N	{}
d93c476c-4360-42e7-85b0-af2f61a7da84	chat-media	line-image/600761481206169720.jpg	\N	2026-02-12 16:17:35.372419+00	2026-02-12 16:17:35.372419+00	2026-02-12 16:17:35.372419+00	{"eTag": "\\"7e8114c9fe4dbc81922b7fe6ed646a6c\\"", "size": 265510, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-12T16:17:36.000Z", "contentLength": 265510, "httpStatusCode": 200}	9dfe7713-0e68-4f8e-a896-33ba4dd98f14	\N	{}
1956dcfe-486b-4c91-8468-04ca1ccbfd5a	chat-media	line-image/600837789923410113.jpg	\N	2026-02-13 04:55:37.475674+00	2026-02-13 04:55:37.475674+00	2026-02-13 04:55:37.475674+00	{"eTag": "\\"aafc9c960fac7a2af73cc5b1b461f676\\"", "size": 71952, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-13T04:55:38.000Z", "contentLength": 71952, "httpStatusCode": 200}	ed7c2f12-a949-4f01-8eb2-bc2397532c76	\N	{}
85722470-0b3f-443e-8a69-eab24a812eb1	chat-media	line-image/600839392903037202.jpg	\N	2026-02-13 05:11:32.813493+00	2026-02-13 05:11:32.813493+00	2026-02-13 05:11:32.813493+00	{"eTag": "\\"5b48b7362e6dd4dbe96147a8ac821496\\"", "size": 100969, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-13T05:11:33.000Z", "contentLength": 100969, "httpStatusCode": 200}	36f541b2-1b0e-49db-b249-8834fb2de75d	\N	{}
1518e854-c335-42e6-b71a-83abe76a2881	chat-media	line-image/600842871943463117.jpg	\N	2026-02-13 05:46:06.002961+00	2026-02-13 05:46:06.002961+00	2026-02-13 05:46:06.002961+00	{"eTag": "\\"c49c01a7fef609616c92b2ec7028cf7e\\"", "size": 119913, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-13T05:46:07.000Z", "contentLength": 119913, "httpStatusCode": 200}	4126cea0-b32c-4964-8616-b7b1b6d1b5d0	\N	{}
57ca163e-12c8-4eed-997a-75051168c315	chat-media	line-image/600848197400920776.jpg	\N	2026-02-13 06:38:59.827677+00	2026-02-13 06:38:59.827677+00	2026-02-13 06:38:59.827677+00	{"eTag": "\\"07cc8410b55095f86b5a0edbbe15ecc8\\"", "size": 146937, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-13T06:39:00.000Z", "contentLength": 146937, "httpStatusCode": 200}	baf0c3af-c03a-446e-abfe-4b3bb1eebf30	\N	{}
37a19312-582e-4699-bff9-5b1ec440858c	chat-media	line-image/600863953421861122.jpg	\N	2026-02-13 09:15:31.922463+00	2026-02-13 09:15:31.922463+00	2026-02-13 09:15:31.922463+00	{"eTag": "\\"be4447d14557a79338a2e0b5fa7f8eab\\"", "size": 155738, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2026-02-13T09:15:32.000Z", "contentLength": 155738, "httpStatusCode": 200}	5eeadc63-8d2b-4f85-be7c-950e0a430165	\N	{}
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: -
--

COPY storage.s3_multipart_uploads (id, in_progress_size, upload_signature, bucket_id, key, version, owner_id, created_at, user_metadata) FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: -
--

COPY storage.s3_multipart_uploads_parts (id, upload_id, size, part_number, bucket_id, key, etag, owner_id, version, created_at) FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: -
--

COPY storage.vector_indexes (id, name, bucket_id, data_type, dimension, distance_metric, metadata_configuration, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: -
--

COPY vault.secrets (id, name, description, secret, key_id, nonce, created_at, updated_at) FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: -
--

SELECT pg_catalog.setval('auth.refresh_tokens_id_seq', 434, true);


--
-- Name: subscription_id_seq; Type: SEQUENCE SET; Schema: realtime; Owner: -
--

SELECT pg_catalog.setval('realtime.subscription_id_seq', 1221, true);


--
-- Name: mfa_amr_claims amr_id_pk; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT amr_id_pk PRIMARY KEY (id);


--
-- Name: audit_log_entries audit_log_entries_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.audit_log_entries
    ADD CONSTRAINT audit_log_entries_pkey PRIMARY KEY (id);


--
-- Name: flow_state flow_state_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.flow_state
    ADD CONSTRAINT flow_state_pkey PRIMARY KEY (id);


--
-- Name: identities identities_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_pkey PRIMARY KEY (id);


--
-- Name: identities identities_provider_id_provider_unique; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_provider_id_provider_unique UNIQUE (provider_id, provider);


--
-- Name: instances instances_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.instances
    ADD CONSTRAINT instances_pkey PRIMARY KEY (id);


--
-- Name: mfa_amr_claims mfa_amr_claims_session_id_authentication_method_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT mfa_amr_claims_session_id_authentication_method_pkey UNIQUE (session_id, authentication_method);


--
-- Name: mfa_challenges mfa_challenges_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.mfa_challenges
    ADD CONSTRAINT mfa_challenges_pkey PRIMARY KEY (id);


--
-- Name: mfa_factors mfa_factors_last_challenged_at_key; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_last_challenged_at_key UNIQUE (last_challenged_at);


--
-- Name: mfa_factors mfa_factors_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_pkey PRIMARY KEY (id);


--
-- Name: oauth_authorizations oauth_authorizations_authorization_code_key; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.oauth_authorizations
    ADD CONSTRAINT oauth_authorizations_authorization_code_key UNIQUE (authorization_code);


--
-- Name: oauth_authorizations oauth_authorizations_authorization_id_key; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.oauth_authorizations
    ADD CONSTRAINT oauth_authorizations_authorization_id_key UNIQUE (authorization_id);


--
-- Name: oauth_authorizations oauth_authorizations_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.oauth_authorizations
    ADD CONSTRAINT oauth_authorizations_pkey PRIMARY KEY (id);


--
-- Name: oauth_client_states oauth_client_states_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.oauth_client_states
    ADD CONSTRAINT oauth_client_states_pkey PRIMARY KEY (id);


--
-- Name: oauth_clients oauth_clients_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.oauth_clients
    ADD CONSTRAINT oauth_clients_pkey PRIMARY KEY (id);


--
-- Name: oauth_consents oauth_consents_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.oauth_consents
    ADD CONSTRAINT oauth_consents_pkey PRIMARY KEY (id);


--
-- Name: oauth_consents oauth_consents_user_client_unique; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.oauth_consents
    ADD CONSTRAINT oauth_consents_user_client_unique UNIQUE (user_id, client_id);


--
-- Name: one_time_tokens one_time_tokens_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.one_time_tokens
    ADD CONSTRAINT one_time_tokens_pkey PRIMARY KEY (id);


--
-- Name: refresh_tokens refresh_tokens_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_pkey PRIMARY KEY (id);


--
-- Name: refresh_tokens refresh_tokens_token_unique; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_token_unique UNIQUE (token);


--
-- Name: saml_providers saml_providers_entity_id_key; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_entity_id_key UNIQUE (entity_id);


--
-- Name: saml_providers saml_providers_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_pkey PRIMARY KEY (id);


--
-- Name: saml_relay_states saml_relay_states_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: sso_domains sso_domains_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.sso_domains
    ADD CONSTRAINT sso_domains_pkey PRIMARY KEY (id);


--
-- Name: sso_providers sso_providers_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.sso_providers
    ADD CONSTRAINT sso_providers_pkey PRIMARY KEY (id);


--
-- Name: users users_phone_key; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: crm_settings crm_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.crm_settings
    ADD CONSTRAINT crm_settings_pkey PRIMARY KEY (id);


--
-- Name: crm_settings crm_settings_setting_key_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.crm_settings
    ADD CONSTRAINT crm_settings_setting_key_key UNIQUE (setting_key);


--
-- Name: customer_activities customer_activities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customer_activities
    ADD CONSTRAINT customer_activities_pkey PRIMARY KEY (id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: finished_goods finished_goods_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.finished_goods
    ADD CONSTRAINT finished_goods_pkey PRIMARY KEY (id);


--
-- Name: inventory_batches inventory_batches_batch_number_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.inventory_batches
    ADD CONSTRAINT inventory_batches_batch_number_key UNIQUE (batch_number);


--
-- Name: inventory_batches inventory_batches_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.inventory_batches
    ADD CONSTRAINT inventory_batches_pkey PRIMARY KEY (id);


--
-- Name: line_contacts line_contacts_line_user_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.line_contacts
    ADD CONSTRAINT line_contacts_line_user_id_key UNIQUE (line_user_id);


--
-- Name: line_contacts line_contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.line_contacts
    ADD CONSTRAINT line_contacts_pkey PRIMARY KEY (id);


--
-- Name: line_groups line_groups_group_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.line_groups
    ADD CONSTRAINT line_groups_group_id_key UNIQUE (line_group_id);


--
-- Name: line_groups line_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.line_groups
    ADD CONSTRAINT line_groups_pkey PRIMARY KEY (id);


--
-- Name: line_message_logs line_message_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.line_message_logs
    ADD CONSTRAINT line_message_logs_pkey PRIMARY KEY (id);


--
-- Name: line_message_templates line_message_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.line_message_templates
    ADD CONSTRAINT line_message_templates_pkey PRIMARY KEY (id);


--
-- Name: line_messages line_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.line_messages
    ADD CONSTRAINT line_messages_pkey PRIMARY KEY (id);


--
-- Name: line_users line_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.line_users
    ADD CONSTRAINT line_users_pkey PRIMARY KEY (id);


--
-- Name: line_users line_users_user_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.line_users
    ADD CONSTRAINT line_users_user_id_key UNIQUE (line_user_id);


--
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (id);


--
-- Name: order_shipments order_shipments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_shipments
    ADD CONSTRAINT order_shipments_pkey PRIMARY KEY (id);


--
-- Name: orders orders_order_number_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_order_number_key UNIQUE (order_number);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: payment_channels payment_channels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_channels
    ADD CONSTRAINT payment_channels_pkey PRIMARY KEY (id);


--
-- Name: payment_records payment_records_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_records
    ADD CONSTRAINT payment_records_pkey PRIMARY KEY (id);


--
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- Name: price_lists price_lists_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.price_lists
    ADD CONSTRAINT price_lists_pkey PRIMARY KEY (id);


--
-- Name: price_lists price_lists_product_id_bottle_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.price_lists
    ADD CONSTRAINT price_lists_product_id_bottle_id_key UNIQUE (product_id, bottle_id);


--
-- Name: product_images product_images_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_pkey PRIMARY KEY (id);


--
-- Name: quality_tests quality_tests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.quality_tests
    ADD CONSTRAINT quality_tests_pkey PRIMARY KEY (id);


--
-- Name: sales_order_items sales_order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sales_order_items
    ADD CONSTRAINT sales_order_items_pkey PRIMARY KEY (id);


--
-- Name: sales_orders sales_orders_order_number_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sales_orders
    ADD CONSTRAINT sales_orders_order_number_key UNIQUE (order_number);


--
-- Name: sales_orders sales_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sales_orders
    ADD CONSTRAINT sales_orders_pkey PRIMARY KEY (id);


--
-- Name: product_variations sellable_product_variations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_variations
    ADD CONSTRAINT sellable_product_variations_pkey PRIMARY KEY (id);


--
-- Name: products sellable_products_code_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT sellable_products_code_key UNIQUE (code);


--
-- Name: products sellable_products_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT sellable_products_pkey PRIMARY KEY (id);


--
-- Name: shipping_addresses shipping_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shipping_addresses
    ADD CONSTRAINT shipping_addresses_pkey PRIMARY KEY (id);


--
-- Name: stock_lot_usages stock_lot_usages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_lot_usages
    ADD CONSTRAINT stock_lot_usages_pkey PRIMARY KEY (id);


--
-- Name: stock_lots stock_lots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_lots
    ADD CONSTRAINT stock_lots_pkey PRIMARY KEY (id);


--
-- Name: supplier_materials supplier_materials_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.supplier_materials
    ADD CONSTRAINT supplier_materials_pkey PRIMARY KEY (supplier_id, raw_material_id);


--
-- Name: user_profiles user_profiles_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_profiles
    ADD CONSTRAINT user_profiles_email_key UNIQUE (email);


--
-- Name: user_profiles user_profiles_line_user_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_profiles
    ADD CONSTRAINT user_profiles_line_user_id_key UNIQUE (line_user_id);


--
-- Name: user_profiles user_profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_profiles
    ADD CONSTRAINT user_profiles_pkey PRIMARY KEY (id);


--
-- Name: variation_types variation_types_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variation_types
    ADD CONSTRAINT variation_types_name_key UNIQUE (name);


--
-- Name: variation_types variation_types_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.variation_types
    ADD CONSTRAINT variation_types_pkey PRIMARY KEY (id);


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: realtime; Owner: -
--

ALTER TABLE ONLY realtime.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id, inserted_at);


--
-- Name: messages_2026_02_10 messages_2026_02_10_pkey; Type: CONSTRAINT; Schema: realtime; Owner: -
--

ALTER TABLE ONLY realtime.messages_2026_02_10
    ADD CONSTRAINT messages_2026_02_10_pkey PRIMARY KEY (id, inserted_at);


--
-- Name: messages_2026_02_11 messages_2026_02_11_pkey; Type: CONSTRAINT; Schema: realtime; Owner: -
--

ALTER TABLE ONLY realtime.messages_2026_02_11
    ADD CONSTRAINT messages_2026_02_11_pkey PRIMARY KEY (id, inserted_at);


--
-- Name: messages_2026_02_12 messages_2026_02_12_pkey; Type: CONSTRAINT; Schema: realtime; Owner: -
--

ALTER TABLE ONLY realtime.messages_2026_02_12
    ADD CONSTRAINT messages_2026_02_12_pkey PRIMARY KEY (id, inserted_at);


--
-- Name: messages_2026_02_13 messages_2026_02_13_pkey; Type: CONSTRAINT; Schema: realtime; Owner: -
--

ALTER TABLE ONLY realtime.messages_2026_02_13
    ADD CONSTRAINT messages_2026_02_13_pkey PRIMARY KEY (id, inserted_at);


--
-- Name: messages_2026_02_14 messages_2026_02_14_pkey; Type: CONSTRAINT; Schema: realtime; Owner: -
--

ALTER TABLE ONLY realtime.messages_2026_02_14
    ADD CONSTRAINT messages_2026_02_14_pkey PRIMARY KEY (id, inserted_at);


--
-- Name: messages_2026_02_15 messages_2026_02_15_pkey; Type: CONSTRAINT; Schema: realtime; Owner: -
--

ALTER TABLE ONLY realtime.messages_2026_02_15
    ADD CONSTRAINT messages_2026_02_15_pkey PRIMARY KEY (id, inserted_at);


--
-- Name: messages_2026_02_16 messages_2026_02_16_pkey; Type: CONSTRAINT; Schema: realtime; Owner: -
--

ALTER TABLE ONLY realtime.messages_2026_02_16
    ADD CONSTRAINT messages_2026_02_16_pkey PRIMARY KEY (id, inserted_at);


--
-- Name: subscription pk_subscription; Type: CONSTRAINT; Schema: realtime; Owner: -
--

ALTER TABLE ONLY realtime.subscription
    ADD CONSTRAINT pk_subscription PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: realtime; Owner: -
--

ALTER TABLE ONLY realtime.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: buckets_analytics buckets_analytics_pkey; Type: CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.buckets_analytics
    ADD CONSTRAINT buckets_analytics_pkey PRIMARY KEY (id);


--
-- Name: buckets buckets_pkey; Type: CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.buckets
    ADD CONSTRAINT buckets_pkey PRIMARY KEY (id);


--
-- Name: buckets_vectors buckets_vectors_pkey; Type: CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.buckets_vectors
    ADD CONSTRAINT buckets_vectors_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_name_key; Type: CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.migrations
    ADD CONSTRAINT migrations_name_key UNIQUE (name);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: objects objects_pkey; Type: CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.objects
    ADD CONSTRAINT objects_pkey PRIMARY KEY (id);


--
-- Name: s3_multipart_uploads_parts s3_multipart_uploads_parts_pkey; Type: CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_pkey PRIMARY KEY (id);


--
-- Name: s3_multipart_uploads s3_multipart_uploads_pkey; Type: CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.s3_multipart_uploads
    ADD CONSTRAINT s3_multipart_uploads_pkey PRIMARY KEY (id);


--
-- Name: vector_indexes vector_indexes_pkey; Type: CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.vector_indexes
    ADD CONSTRAINT vector_indexes_pkey PRIMARY KEY (id);


--
-- Name: audit_logs_instance_id_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX audit_logs_instance_id_idx ON auth.audit_log_entries USING btree (instance_id);


--
-- Name: confirmation_token_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE UNIQUE INDEX confirmation_token_idx ON auth.users USING btree (confirmation_token) WHERE ((confirmation_token)::text !~ '^[0-9 ]*$'::text);


--
-- Name: email_change_token_current_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE UNIQUE INDEX email_change_token_current_idx ON auth.users USING btree (email_change_token_current) WHERE ((email_change_token_current)::text !~ '^[0-9 ]*$'::text);


--
-- Name: email_change_token_new_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE UNIQUE INDEX email_change_token_new_idx ON auth.users USING btree (email_change_token_new) WHERE ((email_change_token_new)::text !~ '^[0-9 ]*$'::text);


--
-- Name: factor_id_created_at_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX factor_id_created_at_idx ON auth.mfa_factors USING btree (user_id, created_at);


--
-- Name: flow_state_created_at_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX flow_state_created_at_idx ON auth.flow_state USING btree (created_at DESC);


--
-- Name: identities_email_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX identities_email_idx ON auth.identities USING btree (email text_pattern_ops);


--
-- Name: INDEX identities_email_idx; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON INDEX auth.identities_email_idx IS 'Auth: Ensures indexed queries on the email column';


--
-- Name: identities_user_id_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX identities_user_id_idx ON auth.identities USING btree (user_id);


--
-- Name: idx_auth_code; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX idx_auth_code ON auth.flow_state USING btree (auth_code);


--
-- Name: idx_oauth_client_states_created_at; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX idx_oauth_client_states_created_at ON auth.oauth_client_states USING btree (created_at);


--
-- Name: idx_user_id_auth_method; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX idx_user_id_auth_method ON auth.flow_state USING btree (user_id, authentication_method);


--
-- Name: mfa_challenge_created_at_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX mfa_challenge_created_at_idx ON auth.mfa_challenges USING btree (created_at DESC);


--
-- Name: mfa_factors_user_friendly_name_unique; Type: INDEX; Schema: auth; Owner: -
--

CREATE UNIQUE INDEX mfa_factors_user_friendly_name_unique ON auth.mfa_factors USING btree (friendly_name, user_id) WHERE (TRIM(BOTH FROM friendly_name) <> ''::text);


--
-- Name: mfa_factors_user_id_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX mfa_factors_user_id_idx ON auth.mfa_factors USING btree (user_id);


--
-- Name: oauth_auth_pending_exp_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX oauth_auth_pending_exp_idx ON auth.oauth_authorizations USING btree (expires_at) WHERE (status = 'pending'::auth.oauth_authorization_status);


--
-- Name: oauth_clients_deleted_at_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX oauth_clients_deleted_at_idx ON auth.oauth_clients USING btree (deleted_at);


--
-- Name: oauth_consents_active_client_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX oauth_consents_active_client_idx ON auth.oauth_consents USING btree (client_id) WHERE (revoked_at IS NULL);


--
-- Name: oauth_consents_active_user_client_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX oauth_consents_active_user_client_idx ON auth.oauth_consents USING btree (user_id, client_id) WHERE (revoked_at IS NULL);


--
-- Name: oauth_consents_user_order_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX oauth_consents_user_order_idx ON auth.oauth_consents USING btree (user_id, granted_at DESC);


--
-- Name: one_time_tokens_relates_to_hash_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX one_time_tokens_relates_to_hash_idx ON auth.one_time_tokens USING hash (relates_to);


--
-- Name: one_time_tokens_token_hash_hash_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX one_time_tokens_token_hash_hash_idx ON auth.one_time_tokens USING hash (token_hash);


--
-- Name: one_time_tokens_user_id_token_type_key; Type: INDEX; Schema: auth; Owner: -
--

CREATE UNIQUE INDEX one_time_tokens_user_id_token_type_key ON auth.one_time_tokens USING btree (user_id, token_type);


--
-- Name: reauthentication_token_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE UNIQUE INDEX reauthentication_token_idx ON auth.users USING btree (reauthentication_token) WHERE ((reauthentication_token)::text !~ '^[0-9 ]*$'::text);


--
-- Name: recovery_token_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE UNIQUE INDEX recovery_token_idx ON auth.users USING btree (recovery_token) WHERE ((recovery_token)::text !~ '^[0-9 ]*$'::text);


--
-- Name: refresh_tokens_instance_id_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX refresh_tokens_instance_id_idx ON auth.refresh_tokens USING btree (instance_id);


--
-- Name: refresh_tokens_instance_id_user_id_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX refresh_tokens_instance_id_user_id_idx ON auth.refresh_tokens USING btree (instance_id, user_id);


--
-- Name: refresh_tokens_parent_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX refresh_tokens_parent_idx ON auth.refresh_tokens USING btree (parent);


--
-- Name: refresh_tokens_session_id_revoked_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX refresh_tokens_session_id_revoked_idx ON auth.refresh_tokens USING btree (session_id, revoked);


--
-- Name: refresh_tokens_updated_at_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX refresh_tokens_updated_at_idx ON auth.refresh_tokens USING btree (updated_at DESC);


--
-- Name: saml_providers_sso_provider_id_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX saml_providers_sso_provider_id_idx ON auth.saml_providers USING btree (sso_provider_id);


--
-- Name: saml_relay_states_created_at_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX saml_relay_states_created_at_idx ON auth.saml_relay_states USING btree (created_at DESC);


--
-- Name: saml_relay_states_for_email_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX saml_relay_states_for_email_idx ON auth.saml_relay_states USING btree (for_email);


--
-- Name: saml_relay_states_sso_provider_id_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX saml_relay_states_sso_provider_id_idx ON auth.saml_relay_states USING btree (sso_provider_id);


--
-- Name: sessions_not_after_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX sessions_not_after_idx ON auth.sessions USING btree (not_after DESC);


--
-- Name: sessions_oauth_client_id_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX sessions_oauth_client_id_idx ON auth.sessions USING btree (oauth_client_id);


--
-- Name: sessions_user_id_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX sessions_user_id_idx ON auth.sessions USING btree (user_id);


--
-- Name: sso_domains_domain_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE UNIQUE INDEX sso_domains_domain_idx ON auth.sso_domains USING btree (lower(domain));


--
-- Name: sso_domains_sso_provider_id_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX sso_domains_sso_provider_id_idx ON auth.sso_domains USING btree (sso_provider_id);


--
-- Name: sso_providers_resource_id_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE UNIQUE INDEX sso_providers_resource_id_idx ON auth.sso_providers USING btree (lower(resource_id));


--
-- Name: sso_providers_resource_id_pattern_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX sso_providers_resource_id_pattern_idx ON auth.sso_providers USING btree (resource_id text_pattern_ops);


--
-- Name: unique_phone_factor_per_user; Type: INDEX; Schema: auth; Owner: -
--

CREATE UNIQUE INDEX unique_phone_factor_per_user ON auth.mfa_factors USING btree (user_id, phone);


--
-- Name: user_id_created_at_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX user_id_created_at_idx ON auth.sessions USING btree (user_id, created_at);


--
-- Name: users_email_partial_key; Type: INDEX; Schema: auth; Owner: -
--

CREATE UNIQUE INDEX users_email_partial_key ON auth.users USING btree (email) WHERE (is_sso_user = false);


--
-- Name: INDEX users_email_partial_key; Type: COMMENT; Schema: auth; Owner: -
--

COMMENT ON INDEX auth.users_email_partial_key IS 'Auth: A partial unique index that applies only when is_sso_user is false';


--
-- Name: users_instance_id_email_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX users_instance_id_email_idx ON auth.users USING btree (instance_id, lower((email)::text));


--
-- Name: users_instance_id_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX users_instance_id_idx ON auth.users USING btree (instance_id);


--
-- Name: users_is_anonymous_idx; Type: INDEX; Schema: auth; Owner: -
--

CREATE INDEX users_is_anonymous_idx ON auth.users USING btree (is_anonymous);


--
-- Name: finished_goods_bottle_type_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX finished_goods_bottle_type_id_idx ON public.finished_goods USING btree (bottle_type_id);


--
-- Name: finished_goods_manufactured_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX finished_goods_manufactured_date_idx ON public.finished_goods USING btree (manufactured_date);


--
-- Name: finished_goods_product_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX finished_goods_product_id_idx ON public.finished_goods USING btree (product_id);


--
-- Name: finished_goods_production_batch_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX finished_goods_production_batch_id_idx ON public.finished_goods USING btree (production_batch_id);


--
-- Name: idx_customer_activities_customer; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_customer_activities_customer ON public.customer_activities USING btree (customer_id);


--
-- Name: idx_customer_activities_follow_up; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_customer_activities_follow_up ON public.customer_activities USING btree (follow_up_date) WHERE (is_completed = false);


--
-- Name: idx_customers_active; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_customers_active ON public.customers USING btree (is_active);


--
-- Name: idx_customers_churn_risk; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_customers_churn_risk ON public.customers USING btree (churn_risk);


--
-- Name: idx_customers_code; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_customers_code ON public.customers USING btree (customer_code);


--
-- Name: idx_customers_code_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX idx_customers_code_unique ON public.customers USING btree (customer_code);


--
-- Name: idx_customers_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_customers_name ON public.customers USING btree (name);


--
-- Name: idx_customers_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_customers_status ON public.customers USING btree (status);


--
-- Name: idx_customers_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_customers_type ON public.customers USING btree (customer_type_new);


--
-- Name: idx_inventory_batches_material; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_inventory_batches_material ON public.inventory_batches USING btree (raw_material_id);


--
-- Name: idx_inventory_batches_remaining; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_inventory_batches_remaining ON public.inventory_batches USING btree (remaining_quantity);


--
-- Name: idx_line_contacts_customer_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_line_contacts_customer_id ON public.line_contacts USING btree (customer_id);


--
-- Name: idx_line_contacts_line_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_line_contacts_line_user_id ON public.line_contacts USING btree (line_user_id);


--
-- Name: idx_line_groups_customer; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_line_groups_customer ON public.line_groups USING btree (customer_id);


--
-- Name: idx_line_groups_line_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_line_groups_line_id ON public.line_groups USING btree (line_group_id);


--
-- Name: idx_line_message_logs_group; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_line_message_logs_group ON public.line_message_logs USING btree (line_group_id);


--
-- Name: idx_line_message_logs_order; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_line_message_logs_order ON public.line_message_logs USING btree (order_id);


--
-- Name: idx_line_message_logs_user; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_line_message_logs_user ON public.line_message_logs USING btree (line_user_id);


--
-- Name: idx_line_messages_contact_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_line_messages_contact_id ON public.line_messages USING btree (line_contact_id);


--
-- Name: idx_line_users_customer; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_line_users_customer ON public.line_users USING btree (customer_id);


--
-- Name: idx_line_users_line_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_line_users_line_id ON public.line_users USING btree (line_user_id);


--
-- Name: idx_order_items_order; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_order_items_order ON public.order_items USING btree (order_id);


--
-- Name: idx_order_items_sellable_product_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_order_items_sellable_product_id ON public.order_items USING btree (product_id);


--
-- Name: idx_order_items_variation_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_order_items_variation_id ON public.order_items USING btree (variation_id);


--
-- Name: idx_order_shipments_address; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_order_shipments_address ON public.order_shipments USING btree (shipping_address_id);


--
-- Name: idx_order_shipments_item; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_order_shipments_item ON public.order_shipments USING btree (order_item_id);


--
-- Name: idx_order_shipments_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_order_shipments_status ON public.order_shipments USING btree (delivery_status);


--
-- Name: idx_orders_customer; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_orders_customer ON public.orders USING btree (customer_id);


--
-- Name: idx_orders_date; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_orders_date ON public.orders USING btree (order_date);


--
-- Name: idx_orders_number; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_orders_number ON public.orders USING btree (order_number);


--
-- Name: idx_orders_order_date; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_orders_order_date ON public.orders USING btree (order_date DESC);


--
-- Name: idx_orders_order_number; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_orders_order_number ON public.orders USING btree (order_number);


--
-- Name: idx_orders_order_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_orders_order_status ON public.orders USING btree (order_status);


--
-- Name: idx_orders_payment_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_orders_payment_status ON public.orders USING btree (payment_status);


--
-- Name: idx_payment_records_order_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_payment_records_order_id ON public.payment_records USING btree (order_id);


--
-- Name: idx_payment_records_payment_date; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_payment_records_payment_date ON public.payment_records USING btree (payment_date);


--
-- Name: idx_payments_date; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_payments_date ON public.payments USING btree (payment_date);


--
-- Name: idx_payments_order; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_payments_order ON public.payments USING btree (order_id);


--
-- Name: idx_price_lists_product; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_price_lists_product ON public.price_lists USING btree (product_id);


--
-- Name: idx_product_images_product; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_product_images_product ON public.product_images USING btree (product_id);


--
-- Name: idx_product_images_variation; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_product_images_variation ON public.product_images USING btree (variation_id);


--
-- Name: idx_sales_orders_customer; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_sales_orders_customer ON public.sales_orders USING btree (customer_id);


--
-- Name: idx_sales_orders_payment_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_sales_orders_payment_status ON public.sales_orders USING btree (payment_status);


--
-- Name: idx_sales_orders_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_sales_orders_status ON public.sales_orders USING btree (status);


--
-- Name: idx_sellable_products_active; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_sellable_products_active ON public.products USING btree (is_active);


--
-- Name: idx_sellable_products_code; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_sellable_products_code ON public.products USING btree (code);


--
-- Name: idx_shipping_addresses_active; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_shipping_addresses_active ON public.shipping_addresses USING btree (is_active) WHERE (is_active = true);


--
-- Name: idx_shipping_addresses_customer; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_shipping_addresses_customer ON public.shipping_addresses USING btree (customer_id);


--
-- Name: idx_shipping_addresses_default; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_shipping_addresses_default ON public.shipping_addresses USING btree (customer_id, is_default) WHERE (is_default = true);


--
-- Name: idx_variations_active; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_variations_active ON public.product_variations USING btree (is_active);


--
-- Name: idx_variations_sellable; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_variations_sellable ON public.product_variations USING btree (product_id);


--
-- Name: stock_lot_usages_production_batch_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX stock_lot_usages_production_batch_id_idx ON public.stock_lot_usages USING btree (production_batch_id);


--
-- Name: stock_lot_usages_stock_lot_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX stock_lot_usages_stock_lot_id_idx ON public.stock_lot_usages USING btree (stock_lot_id);


--
-- Name: stock_lots_purchase_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX stock_lots_purchase_date_idx ON public.stock_lots USING btree (purchase_date);


--
-- Name: stock_lots_raw_material_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX stock_lots_raw_material_id_idx ON public.stock_lots USING btree (raw_material_id);


--
-- Name: ix_realtime_subscription_entity; Type: INDEX; Schema: realtime; Owner: -
--

CREATE INDEX ix_realtime_subscription_entity ON realtime.subscription USING btree (entity);


--
-- Name: messages_inserted_at_topic_index; Type: INDEX; Schema: realtime; Owner: -
--

CREATE INDEX messages_inserted_at_topic_index ON ONLY realtime.messages USING btree (inserted_at DESC, topic) WHERE ((extension = 'broadcast'::text) AND (private IS TRUE));


--
-- Name: messages_2026_02_10_inserted_at_topic_idx; Type: INDEX; Schema: realtime; Owner: -
--

CREATE INDEX messages_2026_02_10_inserted_at_topic_idx ON realtime.messages_2026_02_10 USING btree (inserted_at DESC, topic) WHERE ((extension = 'broadcast'::text) AND (private IS TRUE));


--
-- Name: messages_2026_02_11_inserted_at_topic_idx; Type: INDEX; Schema: realtime; Owner: -
--

CREATE INDEX messages_2026_02_11_inserted_at_topic_idx ON realtime.messages_2026_02_11 USING btree (inserted_at DESC, topic) WHERE ((extension = 'broadcast'::text) AND (private IS TRUE));


--
-- Name: messages_2026_02_12_inserted_at_topic_idx; Type: INDEX; Schema: realtime; Owner: -
--

CREATE INDEX messages_2026_02_12_inserted_at_topic_idx ON realtime.messages_2026_02_12 USING btree (inserted_at DESC, topic) WHERE ((extension = 'broadcast'::text) AND (private IS TRUE));


--
-- Name: messages_2026_02_13_inserted_at_topic_idx; Type: INDEX; Schema: realtime; Owner: -
--

CREATE INDEX messages_2026_02_13_inserted_at_topic_idx ON realtime.messages_2026_02_13 USING btree (inserted_at DESC, topic) WHERE ((extension = 'broadcast'::text) AND (private IS TRUE));


--
-- Name: messages_2026_02_14_inserted_at_topic_idx; Type: INDEX; Schema: realtime; Owner: -
--

CREATE INDEX messages_2026_02_14_inserted_at_topic_idx ON realtime.messages_2026_02_14 USING btree (inserted_at DESC, topic) WHERE ((extension = 'broadcast'::text) AND (private IS TRUE));


--
-- Name: messages_2026_02_15_inserted_at_topic_idx; Type: INDEX; Schema: realtime; Owner: -
--

CREATE INDEX messages_2026_02_15_inserted_at_topic_idx ON realtime.messages_2026_02_15 USING btree (inserted_at DESC, topic) WHERE ((extension = 'broadcast'::text) AND (private IS TRUE));


--
-- Name: messages_2026_02_16_inserted_at_topic_idx; Type: INDEX; Schema: realtime; Owner: -
--

CREATE INDEX messages_2026_02_16_inserted_at_topic_idx ON realtime.messages_2026_02_16 USING btree (inserted_at DESC, topic) WHERE ((extension = 'broadcast'::text) AND (private IS TRUE));


--
-- Name: subscription_subscription_id_entity_filters_action_filter_key; Type: INDEX; Schema: realtime; Owner: -
--

CREATE UNIQUE INDEX subscription_subscription_id_entity_filters_action_filter_key ON realtime.subscription USING btree (subscription_id, entity, filters, action_filter);


--
-- Name: bname; Type: INDEX; Schema: storage; Owner: -
--

CREATE UNIQUE INDEX bname ON storage.buckets USING btree (name);


--
-- Name: bucketid_objname; Type: INDEX; Schema: storage; Owner: -
--

CREATE UNIQUE INDEX bucketid_objname ON storage.objects USING btree (bucket_id, name);


--
-- Name: buckets_analytics_unique_name_idx; Type: INDEX; Schema: storage; Owner: -
--

CREATE UNIQUE INDEX buckets_analytics_unique_name_idx ON storage.buckets_analytics USING btree (name) WHERE (deleted_at IS NULL);


--
-- Name: idx_multipart_uploads_list; Type: INDEX; Schema: storage; Owner: -
--

CREATE INDEX idx_multipart_uploads_list ON storage.s3_multipart_uploads USING btree (bucket_id, key, created_at);


--
-- Name: idx_objects_bucket_id_name; Type: INDEX; Schema: storage; Owner: -
--

CREATE INDEX idx_objects_bucket_id_name ON storage.objects USING btree (bucket_id, name COLLATE "C");


--
-- Name: idx_objects_bucket_id_name_lower; Type: INDEX; Schema: storage; Owner: -
--

CREATE INDEX idx_objects_bucket_id_name_lower ON storage.objects USING btree (bucket_id, lower(name) COLLATE "C");


--
-- Name: name_prefix_search; Type: INDEX; Schema: storage; Owner: -
--

CREATE INDEX name_prefix_search ON storage.objects USING btree (name text_pattern_ops);


--
-- Name: vector_indexes_name_bucket_id_idx; Type: INDEX; Schema: storage; Owner: -
--

CREATE UNIQUE INDEX vector_indexes_name_bucket_id_idx ON storage.vector_indexes USING btree (name, bucket_id);


--
-- Name: messages_2026_02_10_inserted_at_topic_idx; Type: INDEX ATTACH; Schema: realtime; Owner: -
--

ALTER INDEX realtime.messages_inserted_at_topic_index ATTACH PARTITION realtime.messages_2026_02_10_inserted_at_topic_idx;


--
-- Name: messages_2026_02_10_pkey; Type: INDEX ATTACH; Schema: realtime; Owner: -
--

ALTER INDEX realtime.messages_pkey ATTACH PARTITION realtime.messages_2026_02_10_pkey;


--
-- Name: messages_2026_02_11_inserted_at_topic_idx; Type: INDEX ATTACH; Schema: realtime; Owner: -
--

ALTER INDEX realtime.messages_inserted_at_topic_index ATTACH PARTITION realtime.messages_2026_02_11_inserted_at_topic_idx;


--
-- Name: messages_2026_02_11_pkey; Type: INDEX ATTACH; Schema: realtime; Owner: -
--

ALTER INDEX realtime.messages_pkey ATTACH PARTITION realtime.messages_2026_02_11_pkey;


--
-- Name: messages_2026_02_12_inserted_at_topic_idx; Type: INDEX ATTACH; Schema: realtime; Owner: -
--

ALTER INDEX realtime.messages_inserted_at_topic_index ATTACH PARTITION realtime.messages_2026_02_12_inserted_at_topic_idx;


--
-- Name: messages_2026_02_12_pkey; Type: INDEX ATTACH; Schema: realtime; Owner: -
--

ALTER INDEX realtime.messages_pkey ATTACH PARTITION realtime.messages_2026_02_12_pkey;


--
-- Name: messages_2026_02_13_inserted_at_topic_idx; Type: INDEX ATTACH; Schema: realtime; Owner: -
--

ALTER INDEX realtime.messages_inserted_at_topic_index ATTACH PARTITION realtime.messages_2026_02_13_inserted_at_topic_idx;


--
-- Name: messages_2026_02_13_pkey; Type: INDEX ATTACH; Schema: realtime; Owner: -
--

ALTER INDEX realtime.messages_pkey ATTACH PARTITION realtime.messages_2026_02_13_pkey;


--
-- Name: messages_2026_02_14_inserted_at_topic_idx; Type: INDEX ATTACH; Schema: realtime; Owner: -
--

ALTER INDEX realtime.messages_inserted_at_topic_index ATTACH PARTITION realtime.messages_2026_02_14_inserted_at_topic_idx;


--
-- Name: messages_2026_02_14_pkey; Type: INDEX ATTACH; Schema: realtime; Owner: -
--

ALTER INDEX realtime.messages_pkey ATTACH PARTITION realtime.messages_2026_02_14_pkey;


--
-- Name: messages_2026_02_15_inserted_at_topic_idx; Type: INDEX ATTACH; Schema: realtime; Owner: -
--

ALTER INDEX realtime.messages_inserted_at_topic_index ATTACH PARTITION realtime.messages_2026_02_15_inserted_at_topic_idx;


--
-- Name: messages_2026_02_15_pkey; Type: INDEX ATTACH; Schema: realtime; Owner: -
--

ALTER INDEX realtime.messages_pkey ATTACH PARTITION realtime.messages_2026_02_15_pkey;


--
-- Name: messages_2026_02_16_inserted_at_topic_idx; Type: INDEX ATTACH; Schema: realtime; Owner: -
--

ALTER INDEX realtime.messages_inserted_at_topic_index ATTACH PARTITION realtime.messages_2026_02_16_inserted_at_topic_idx;


--
-- Name: messages_2026_02_16_pkey; Type: INDEX ATTACH; Schema: realtime; Owner: -
--

ALTER INDEX realtime.messages_pkey ATTACH PARTITION realtime.messages_2026_02_16_pkey;


--
-- Name: order_summary _RETURN; Type: RULE; Schema: public; Owner: -
--

CREATE OR REPLACE VIEW public.order_summary WITH (security_invoker='on') AS
 SELECT o.id,
    o.order_number,
    o.order_date,
    o.delivery_date,
    o.total_amount,
    o.payment_status,
    o.order_status,
    c.id AS customer_id,
    c.customer_code,
    c.name AS customer_name,
    c.contact_person,
    c.phone AS customer_phone,
    count(DISTINCT oi.id) AS item_count,
    count(DISTINCT os.shipping_address_id) AS branch_count
   FROM (((public.orders o
     LEFT JOIN public.customers c ON ((o.customer_id = c.id)))
     LEFT JOIN public.order_items oi ON ((o.id = oi.order_id)))
     LEFT JOIN public.order_shipments os ON ((oi.id = os.order_item_id)))
  GROUP BY o.id, c.id;


--
-- Name: users on_auth_user_created; Type: TRIGGER; Schema: auth; Owner: -
--

CREATE TRIGGER on_auth_user_created AFTER INSERT ON auth.users FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();


--
-- Name: order_items trg_update_order_totals; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trg_update_order_totals AFTER INSERT OR DELETE OR UPDATE ON public.order_items FOR EACH ROW EXECUTE FUNCTION public.update_order_totals();


--
-- Name: orders trigger_auto_update_customer_stats; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trigger_auto_update_customer_stats AFTER INSERT OR DELETE OR UPDATE ON public.orders FOR EACH ROW EXECUTE FUNCTION public.trigger_update_customer_stats();


--
-- Name: shipping_addresses trigger_ensure_one_default_address; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trigger_ensure_one_default_address BEFORE INSERT OR UPDATE ON public.shipping_addresses FOR EACH ROW EXECUTE FUNCTION public.ensure_one_default_address();


--
-- Name: order_items trigger_update_order_totals_delete; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trigger_update_order_totals_delete AFTER DELETE ON public.order_items FOR EACH ROW EXECUTE FUNCTION public.update_order_totals();


--
-- Name: order_items trigger_update_order_totals_insert; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trigger_update_order_totals_insert AFTER INSERT ON public.order_items FOR EACH ROW EXECUTE FUNCTION public.update_order_totals();


--
-- Name: order_items trigger_update_order_totals_update; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trigger_update_order_totals_update AFTER UPDATE ON public.order_items FOR EACH ROW EXECUTE FUNCTION public.update_order_totals();


--
-- Name: payments trigger_update_payment_status_delete; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trigger_update_payment_status_delete AFTER DELETE ON public.payments FOR EACH ROW EXECUTE FUNCTION public.update_payment_status();


--
-- Name: payments trigger_update_payment_status_insert; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trigger_update_payment_status_insert AFTER INSERT ON public.payments FOR EACH ROW EXECUTE FUNCTION public.update_payment_status();


--
-- Name: payments trigger_update_payment_status_update; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trigger_update_payment_status_update AFTER UPDATE ON public.payments FOR EACH ROW EXECUTE FUNCTION public.update_payment_status();


--
-- Name: order_shipments trigger_validate_shipment_quantities; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER trigger_validate_shipment_quantities BEFORE INSERT OR UPDATE ON public.order_shipments FOR EACH ROW EXECUTE FUNCTION public.validate_shipment_quantities();


--
-- Name: customer_activities update_customer_activities_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_customer_activities_updated_at BEFORE UPDATE ON public.customer_activities FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();


--
-- Name: customers update_customers_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_customers_updated_at BEFORE UPDATE ON public.customers FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();


--
-- Name: inventory_batches update_inventory_batches_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_inventory_batches_updated_at BEFORE UPDATE ON public.inventory_batches FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();


--
-- Name: line_groups update_line_groups_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_line_groups_updated_at BEFORE UPDATE ON public.line_groups FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();


--
-- Name: line_message_templates update_line_message_templates_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_line_message_templates_updated_at BEFORE UPDATE ON public.line_message_templates FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();


--
-- Name: line_users update_line_users_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_line_users_updated_at BEFORE UPDATE ON public.line_users FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();


--
-- Name: order_items update_order_items_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_order_items_updated_at BEFORE UPDATE ON public.order_items FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();


--
-- Name: order_shipments update_order_shipments_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_order_shipments_updated_at BEFORE UPDATE ON public.order_shipments FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();


--
-- Name: orders update_orders_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_orders_updated_at BEFORE UPDATE ON public.orders FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();


--
-- Name: payments update_payments_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_payments_updated_at BEFORE UPDATE ON public.payments FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();


--
-- Name: price_lists update_price_lists_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_price_lists_updated_at BEFORE UPDATE ON public.price_lists FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();


--
-- Name: sales_orders update_sales_orders_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_sales_orders_updated_at BEFORE UPDATE ON public.sales_orders FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();


--
-- Name: products update_sellable_products_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_sellable_products_updated_at BEFORE UPDATE ON public.products FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();


--
-- Name: shipping_addresses update_shipping_addresses_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_shipping_addresses_updated_at BEFORE UPDATE ON public.shipping_addresses FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();


--
-- Name: user_profiles update_user_profiles_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_user_profiles_updated_at BEFORE UPDATE ON public.user_profiles FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();


--
-- Name: product_variations update_variations_updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER update_variations_updated_at BEFORE UPDATE ON public.product_variations FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();


--
-- Name: subscription tr_check_filters; Type: TRIGGER; Schema: realtime; Owner: -
--

CREATE TRIGGER tr_check_filters BEFORE INSERT OR UPDATE ON realtime.subscription FOR EACH ROW EXECUTE FUNCTION realtime.subscription_check_filters();


--
-- Name: buckets enforce_bucket_name_length_trigger; Type: TRIGGER; Schema: storage; Owner: -
--

CREATE TRIGGER enforce_bucket_name_length_trigger BEFORE INSERT OR UPDATE OF name ON storage.buckets FOR EACH ROW EXECUTE FUNCTION storage.enforce_bucket_name_length();


--
-- Name: buckets protect_buckets_delete; Type: TRIGGER; Schema: storage; Owner: -
--

CREATE TRIGGER protect_buckets_delete BEFORE DELETE ON storage.buckets FOR EACH STATEMENT EXECUTE FUNCTION storage.protect_delete();


--
-- Name: objects protect_objects_delete; Type: TRIGGER; Schema: storage; Owner: -
--

CREATE TRIGGER protect_objects_delete BEFORE DELETE ON storage.objects FOR EACH STATEMENT EXECUTE FUNCTION storage.protect_delete();


--
-- Name: objects update_objects_updated_at; Type: TRIGGER; Schema: storage; Owner: -
--

CREATE TRIGGER update_objects_updated_at BEFORE UPDATE ON storage.objects FOR EACH ROW EXECUTE FUNCTION storage.update_updated_at_column();


--
-- Name: identities identities_user_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.identities
    ADD CONSTRAINT identities_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: mfa_amr_claims mfa_amr_claims_session_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.mfa_amr_claims
    ADD CONSTRAINT mfa_amr_claims_session_id_fkey FOREIGN KEY (session_id) REFERENCES auth.sessions(id) ON DELETE CASCADE;


--
-- Name: mfa_challenges mfa_challenges_auth_factor_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.mfa_challenges
    ADD CONSTRAINT mfa_challenges_auth_factor_id_fkey FOREIGN KEY (factor_id) REFERENCES auth.mfa_factors(id) ON DELETE CASCADE;


--
-- Name: mfa_factors mfa_factors_user_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.mfa_factors
    ADD CONSTRAINT mfa_factors_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: oauth_authorizations oauth_authorizations_client_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.oauth_authorizations
    ADD CONSTRAINT oauth_authorizations_client_id_fkey FOREIGN KEY (client_id) REFERENCES auth.oauth_clients(id) ON DELETE CASCADE;


--
-- Name: oauth_authorizations oauth_authorizations_user_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.oauth_authorizations
    ADD CONSTRAINT oauth_authorizations_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: oauth_consents oauth_consents_client_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.oauth_consents
    ADD CONSTRAINT oauth_consents_client_id_fkey FOREIGN KEY (client_id) REFERENCES auth.oauth_clients(id) ON DELETE CASCADE;


--
-- Name: oauth_consents oauth_consents_user_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.oauth_consents
    ADD CONSTRAINT oauth_consents_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: one_time_tokens one_time_tokens_user_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.one_time_tokens
    ADD CONSTRAINT one_time_tokens_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: refresh_tokens refresh_tokens_session_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.refresh_tokens
    ADD CONSTRAINT refresh_tokens_session_id_fkey FOREIGN KEY (session_id) REFERENCES auth.sessions(id) ON DELETE CASCADE;


--
-- Name: saml_providers saml_providers_sso_provider_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.saml_providers
    ADD CONSTRAINT saml_providers_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;


--
-- Name: saml_relay_states saml_relay_states_flow_state_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_flow_state_id_fkey FOREIGN KEY (flow_state_id) REFERENCES auth.flow_state(id) ON DELETE CASCADE;


--
-- Name: saml_relay_states saml_relay_states_sso_provider_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.saml_relay_states
    ADD CONSTRAINT saml_relay_states_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;


--
-- Name: sessions sessions_oauth_client_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.sessions
    ADD CONSTRAINT sessions_oauth_client_id_fkey FOREIGN KEY (oauth_client_id) REFERENCES auth.oauth_clients(id) ON DELETE CASCADE;


--
-- Name: sessions sessions_user_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.sessions
    ADD CONSTRAINT sessions_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: sso_domains sso_domains_sso_provider_id_fkey; Type: FK CONSTRAINT; Schema: auth; Owner: -
--

ALTER TABLE ONLY auth.sso_domains
    ADD CONSTRAINT sso_domains_sso_provider_id_fkey FOREIGN KEY (sso_provider_id) REFERENCES auth.sso_providers(id) ON DELETE CASCADE;


--
-- Name: customer_activities customer_activities_created_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customer_activities
    ADD CONSTRAINT customer_activities_created_by_fkey FOREIGN KEY (created_by) REFERENCES auth.users(id);


--
-- Name: customer_activities customer_activities_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customer_activities
    ADD CONSTRAINT customer_activities_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- Name: customers customers_assigned_salesperson_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_assigned_salesperson_fkey FOREIGN KEY (assigned_salesperson) REFERENCES auth.users(id);


--
-- Name: customers customers_created_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_created_by_fkey FOREIGN KEY (created_by) REFERENCES auth.users(id);


--
-- Name: line_contacts line_contacts_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.line_contacts
    ADD CONSTRAINT line_contacts_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON DELETE SET NULL;


--
-- Name: line_groups line_groups_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.line_groups
    ADD CONSTRAINT line_groups_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- Name: line_groups line_groups_mapped_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.line_groups
    ADD CONSTRAINT line_groups_mapped_by_fkey FOREIGN KEY (mapped_by) REFERENCES auth.users(id);


--
-- Name: line_message_logs line_message_logs_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.line_message_logs
    ADD CONSTRAINT line_message_logs_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE SET NULL;


--
-- Name: line_message_logs line_message_logs_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.line_message_logs
    ADD CONSTRAINT line_message_logs_template_id_fkey FOREIGN KEY (template_id) REFERENCES public.line_message_templates(id) ON DELETE SET NULL;


--
-- Name: line_message_templates line_message_templates_created_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.line_message_templates
    ADD CONSTRAINT line_message_templates_created_by_fkey FOREIGN KEY (created_by) REFERENCES auth.users(id);


--
-- Name: line_messages line_messages_line_contact_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.line_messages
    ADD CONSTRAINT line_messages_line_contact_id_fkey FOREIGN KEY (line_contact_id) REFERENCES public.line_contacts(id) ON DELETE CASCADE;


--
-- Name: line_messages line_messages_sent_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.line_messages
    ADD CONSTRAINT line_messages_sent_by_fkey FOREIGN KEY (sent_by) REFERENCES public.user_profiles(id) ON DELETE SET NULL;


--
-- Name: line_users line_users_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.line_users
    ADD CONSTRAINT line_users_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- Name: line_users line_users_mapped_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.line_users
    ADD CONSTRAINT line_users_mapped_by_fkey FOREIGN KEY (mapped_by) REFERENCES auth.users(id);


--
-- Name: order_items order_items_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE CASCADE;


--
-- Name: order_items order_items_sellable_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_sellable_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE RESTRICT;


--
-- Name: order_items order_items_variation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_variation_id_fkey FOREIGN KEY (variation_id) REFERENCES public.product_variations(id) ON DELETE RESTRICT;


--
-- Name: order_shipments order_shipments_order_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_shipments
    ADD CONSTRAINT order_shipments_order_item_id_fkey FOREIGN KEY (order_item_id) REFERENCES public.order_items(id) ON DELETE CASCADE;


--
-- Name: order_shipments order_shipments_shipping_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_shipments
    ADD CONSTRAINT order_shipments_shipping_address_id_fkey FOREIGN KEY (shipping_address_id) REFERENCES public.shipping_addresses(id) ON DELETE RESTRICT;


--
-- Name: orders orders_created_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_created_by_fkey FOREIGN KEY (created_by) REFERENCES auth.users(id);


--
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON DELETE RESTRICT;


--
-- Name: payment_records payment_records_created_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_records
    ADD CONSTRAINT payment_records_created_by_fkey FOREIGN KEY (created_by) REFERENCES auth.users(id);


--
-- Name: payment_records payment_records_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payment_records
    ADD CONSTRAINT payment_records_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE CASCADE;


--
-- Name: payments payments_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE CASCADE;


--
-- Name: payments payments_received_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_received_by_fkey FOREIGN KEY (received_by) REFERENCES auth.users(id);


--
-- Name: product_images product_images_sellable_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_sellable_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: product_images product_images_variation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_variation_id_fkey FOREIGN KEY (variation_id) REFERENCES public.product_variations(id) ON DELETE CASCADE;


--
-- Name: quality_tests quality_tests_tested_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.quality_tests
    ADD CONSTRAINT quality_tests_tested_by_fkey FOREIGN KEY (tested_by) REFERENCES public.user_profiles(id);


--
-- Name: sales_order_items sales_order_items_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sales_order_items
    ADD CONSTRAINT sales_order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.sales_orders(id) ON DELETE CASCADE;


--
-- Name: sales_orders sales_orders_created_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sales_orders
    ADD CONSTRAINT sales_orders_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.user_profiles(id);


--
-- Name: sales_orders sales_orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sales_orders
    ADD CONSTRAINT sales_orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- Name: product_variations sellable_product_variations_sellable_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product_variations
    ADD CONSTRAINT sellable_product_variations_sellable_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(id) ON DELETE CASCADE;


--
-- Name: shipping_addresses shipping_addresses_created_by_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shipping_addresses
    ADD CONSTRAINT shipping_addresses_created_by_fkey FOREIGN KEY (created_by) REFERENCES auth.users(id);


--
-- Name: shipping_addresses shipping_addresses_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shipping_addresses
    ADD CONSTRAINT shipping_addresses_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON DELETE CASCADE;


--
-- Name: stock_lot_usages stock_lot_usages_stock_lot_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stock_lot_usages
    ADD CONSTRAINT stock_lot_usages_stock_lot_id_fkey FOREIGN KEY (stock_lot_id) REFERENCES public.stock_lots(id) ON DELETE CASCADE;


--
-- Name: user_profiles user_profiles_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_profiles
    ADD CONSTRAINT user_profiles_id_fkey FOREIGN KEY (id) REFERENCES auth.users(id) ON DELETE CASCADE;


--
-- Name: objects objects_bucketId_fkey; Type: FK CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.objects
    ADD CONSTRAINT "objects_bucketId_fkey" FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);


--
-- Name: s3_multipart_uploads s3_multipart_uploads_bucket_id_fkey; Type: FK CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.s3_multipart_uploads
    ADD CONSTRAINT s3_multipart_uploads_bucket_id_fkey FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);


--
-- Name: s3_multipart_uploads_parts s3_multipart_uploads_parts_bucket_id_fkey; Type: FK CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_bucket_id_fkey FOREIGN KEY (bucket_id) REFERENCES storage.buckets(id);


--
-- Name: s3_multipart_uploads_parts s3_multipart_uploads_parts_upload_id_fkey; Type: FK CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.s3_multipart_uploads_parts
    ADD CONSTRAINT s3_multipart_uploads_parts_upload_id_fkey FOREIGN KEY (upload_id) REFERENCES storage.s3_multipart_uploads(id) ON DELETE CASCADE;


--
-- Name: vector_indexes vector_indexes_bucket_id_fkey; Type: FK CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.vector_indexes
    ADD CONSTRAINT vector_indexes_bucket_id_fkey FOREIGN KEY (bucket_id) REFERENCES storage.buckets_vectors(id);


--
-- Name: audit_log_entries; Type: ROW SECURITY; Schema: auth; Owner: -
--

ALTER TABLE auth.audit_log_entries ENABLE ROW LEVEL SECURITY;

--
-- Name: flow_state; Type: ROW SECURITY; Schema: auth; Owner: -
--

ALTER TABLE auth.flow_state ENABLE ROW LEVEL SECURITY;

--
-- Name: identities; Type: ROW SECURITY; Schema: auth; Owner: -
--

ALTER TABLE auth.identities ENABLE ROW LEVEL SECURITY;

--
-- Name: instances; Type: ROW SECURITY; Schema: auth; Owner: -
--

ALTER TABLE auth.instances ENABLE ROW LEVEL SECURITY;

--
-- Name: mfa_amr_claims; Type: ROW SECURITY; Schema: auth; Owner: -
--

ALTER TABLE auth.mfa_amr_claims ENABLE ROW LEVEL SECURITY;

--
-- Name: mfa_challenges; Type: ROW SECURITY; Schema: auth; Owner: -
--

ALTER TABLE auth.mfa_challenges ENABLE ROW LEVEL SECURITY;

--
-- Name: mfa_factors; Type: ROW SECURITY; Schema: auth; Owner: -
--

ALTER TABLE auth.mfa_factors ENABLE ROW LEVEL SECURITY;

--
-- Name: one_time_tokens; Type: ROW SECURITY; Schema: auth; Owner: -
--

ALTER TABLE auth.one_time_tokens ENABLE ROW LEVEL SECURITY;

--
-- Name: refresh_tokens; Type: ROW SECURITY; Schema: auth; Owner: -
--

ALTER TABLE auth.refresh_tokens ENABLE ROW LEVEL SECURITY;

--
-- Name: saml_providers; Type: ROW SECURITY; Schema: auth; Owner: -
--

ALTER TABLE auth.saml_providers ENABLE ROW LEVEL SECURITY;

--
-- Name: saml_relay_states; Type: ROW SECURITY; Schema: auth; Owner: -
--

ALTER TABLE auth.saml_relay_states ENABLE ROW LEVEL SECURITY;

--
-- Name: schema_migrations; Type: ROW SECURITY; Schema: auth; Owner: -
--

ALTER TABLE auth.schema_migrations ENABLE ROW LEVEL SECURITY;

--
-- Name: sessions; Type: ROW SECURITY; Schema: auth; Owner: -
--

ALTER TABLE auth.sessions ENABLE ROW LEVEL SECURITY;

--
-- Name: sso_domains; Type: ROW SECURITY; Schema: auth; Owner: -
--

ALTER TABLE auth.sso_domains ENABLE ROW LEVEL SECURITY;

--
-- Name: sso_providers; Type: ROW SECURITY; Schema: auth; Owner: -
--

ALTER TABLE auth.sso_providers ENABLE ROW LEVEL SECURITY;

--
-- Name: users; Type: ROW SECURITY; Schema: auth; Owner: -
--

ALTER TABLE auth.users ENABLE ROW LEVEL SECURITY;

--
-- Name: inventory_batches Admin and Manager can manage inventory; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Admin and Manager can manage inventory" ON public.inventory_batches USING ((EXISTS ( SELECT 1
   FROM public.user_profiles
  WHERE ((user_profiles.id = auth.uid()) AND (user_profiles.role = ANY (ARRAY['admin'::public.user_role, 'manager'::public.user_role]))))));


--
-- Name: supplier_materials Admin and Manager can manage supplier materials; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Admin and Manager can manage supplier materials" ON public.supplier_materials USING ((EXISTS ( SELECT 1
   FROM public.user_profiles
  WHERE ((user_profiles.id = auth.uid()) AND (user_profiles.role = ANY (ARRAY['admin'::public.user_role, 'manager'::public.user_role]))))));


--
-- Name: crm_settings Allow admin to insert crm_settings; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow admin to insert crm_settings" ON public.crm_settings FOR INSERT WITH CHECK (true);


--
-- Name: crm_settings Allow admin to update crm_settings; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow admin to update crm_settings" ON public.crm_settings FOR UPDATE USING (true) WITH CHECK (true);


--
-- Name: finished_goods Allow admin/manager/operation write finished_goods; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow admin/manager/operation write finished_goods" ON public.finished_goods TO authenticated USING ((EXISTS ( SELECT 1
   FROM public.user_profiles
  WHERE ((user_profiles.id = auth.uid()) AND (user_profiles.role = ANY (ARRAY['admin'::public.user_role, 'manager'::public.user_role, 'operation'::public.user_role]))))));


--
-- Name: stock_lot_usages Allow admin/manager/operation write stock_lot_usages; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow admin/manager/operation write stock_lot_usages" ON public.stock_lot_usages TO authenticated USING ((EXISTS ( SELECT 1
   FROM public.user_profiles
  WHERE ((user_profiles.id = auth.uid()) AND (user_profiles.role = ANY (ARRAY['admin'::public.user_role, 'manager'::public.user_role, 'operation'::public.user_role]))))));


--
-- Name: stock_lots Allow admin/manager/operation write stock_lots; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow admin/manager/operation write stock_lots" ON public.stock_lots TO authenticated USING ((EXISTS ( SELECT 1
   FROM public.user_profiles
  WHERE ((user_profiles.id = auth.uid()) AND (user_profiles.role = ANY (ARRAY['admin'::public.user_role, 'manager'::public.user_role, 'operation'::public.user_role]))))));


--
-- Name: product_variations Allow admin/manager/sales write sellable_product_variations; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow admin/manager/sales write sellable_product_variations" ON public.product_variations TO authenticated USING ((EXISTS ( SELECT 1
   FROM public.user_profiles
  WHERE ((user_profiles.id = auth.uid()) AND (user_profiles.role = ANY (ARRAY['admin'::public.user_role, 'manager'::public.user_role, 'sales'::public.user_role]))))));


--
-- Name: products Allow admin/manager/sales write sellable_products; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow admin/manager/sales write sellable_products" ON public.products TO authenticated USING ((EXISTS ( SELECT 1
   FROM public.user_profiles
  WHERE ((user_profiles.id = auth.uid()) AND (user_profiles.role = ANY (ARRAY['admin'::public.user_role, 'manager'::public.user_role, 'sales'::public.user_role]))))));


--
-- Name: line_contacts Allow all for line_contacts; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow all for line_contacts" ON public.line_contacts USING (true) WITH CHECK (true);


--
-- Name: line_messages Allow all for line_messages; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow all for line_messages" ON public.line_messages USING (true) WITH CHECK (true);


--
-- Name: variation_types Allow all for service role; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow all for service role" ON public.variation_types USING (true);


--
-- Name: payment_channels Allow all for service role payment_channels; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow all for service role payment_channels" ON public.payment_channels USING (true);


--
-- Name: finished_goods Allow authenticated read finished_goods; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated read finished_goods" ON public.finished_goods FOR SELECT TO authenticated USING (true);


--
-- Name: payment_channels Allow authenticated read payment_channels; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated read payment_channels" ON public.payment_channels FOR SELECT USING (true);


--
-- Name: product_variations Allow authenticated read sellable_product_variations; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated read sellable_product_variations" ON public.product_variations FOR SELECT TO authenticated USING (true);


--
-- Name: products Allow authenticated read sellable_products; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated read sellable_products" ON public.products FOR SELECT TO authenticated USING (true);


--
-- Name: stock_lot_usages Allow authenticated read stock_lot_usages; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated read stock_lot_usages" ON public.stock_lot_usages FOR SELECT TO authenticated USING (true);


--
-- Name: stock_lots Allow authenticated read stock_lots; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated read stock_lots" ON public.stock_lots FOR SELECT TO authenticated USING (true);


--
-- Name: customers Allow authenticated users to delete customers; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to delete customers" ON public.customers FOR DELETE TO authenticated USING (true);


--
-- Name: line_message_templates Allow authenticated users to delete line_message_templates; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to delete line_message_templates" ON public.line_message_templates FOR DELETE TO authenticated USING (true);


--
-- Name: order_items Allow authenticated users to delete order_items; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to delete order_items" ON public.order_items FOR DELETE TO authenticated USING (true);


--
-- Name: order_shipments Allow authenticated users to delete order_shipments; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to delete order_shipments" ON public.order_shipments FOR DELETE TO authenticated USING (true);


--
-- Name: orders Allow authenticated users to delete orders; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to delete orders" ON public.orders FOR DELETE TO authenticated USING (true);


--
-- Name: payments Allow authenticated users to delete payments; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to delete payments" ON public.payments FOR DELETE TO authenticated USING (true);


--
-- Name: price_lists Allow authenticated users to delete price_lists; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to delete price_lists" ON public.price_lists FOR DELETE TO authenticated USING (true);


--
-- Name: shipping_addresses Allow authenticated users to delete shipping_addresses; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to delete shipping_addresses" ON public.shipping_addresses FOR DELETE TO authenticated USING (true);


--
-- Name: customers Allow authenticated users to insert customers; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to insert customers" ON public.customers FOR INSERT TO authenticated WITH CHECK (true);


--
-- Name: line_message_logs Allow authenticated users to insert line_message_logs; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to insert line_message_logs" ON public.line_message_logs FOR INSERT TO authenticated WITH CHECK (true);


--
-- Name: line_message_templates Allow authenticated users to insert line_message_templates; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to insert line_message_templates" ON public.line_message_templates FOR INSERT TO authenticated WITH CHECK (true);


--
-- Name: order_items Allow authenticated users to insert order_items; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to insert order_items" ON public.order_items FOR INSERT TO authenticated WITH CHECK (true);


--
-- Name: order_shipments Allow authenticated users to insert order_shipments; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to insert order_shipments" ON public.order_shipments FOR INSERT TO authenticated WITH CHECK (true);


--
-- Name: orders Allow authenticated users to insert orders; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to insert orders" ON public.orders FOR INSERT TO authenticated WITH CHECK (true);


--
-- Name: payments Allow authenticated users to insert payments; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to insert payments" ON public.payments FOR INSERT TO authenticated WITH CHECK (true);


--
-- Name: price_lists Allow authenticated users to insert price_lists; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to insert price_lists" ON public.price_lists FOR INSERT TO authenticated WITH CHECK (true);


--
-- Name: shipping_addresses Allow authenticated users to insert shipping_addresses; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to insert shipping_addresses" ON public.shipping_addresses FOR INSERT TO authenticated WITH CHECK (true);


--
-- Name: crm_settings Allow authenticated users to read crm_settings; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to read crm_settings" ON public.crm_settings FOR SELECT USING (true);


--
-- Name: customers Allow authenticated users to update customers; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to update customers" ON public.customers FOR UPDATE TO authenticated USING (true);


--
-- Name: line_message_templates Allow authenticated users to update line_message_templates; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to update line_message_templates" ON public.line_message_templates FOR UPDATE TO authenticated USING (true);


--
-- Name: order_items Allow authenticated users to update order_items; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to update order_items" ON public.order_items FOR UPDATE TO authenticated USING (true);


--
-- Name: order_shipments Allow authenticated users to update order_shipments; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to update order_shipments" ON public.order_shipments FOR UPDATE TO authenticated USING (true);


--
-- Name: orders Allow authenticated users to update orders; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to update orders" ON public.orders FOR UPDATE TO authenticated USING (true);


--
-- Name: payments Allow authenticated users to update payments; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to update payments" ON public.payments FOR UPDATE TO authenticated USING (true);


--
-- Name: price_lists Allow authenticated users to update price_lists; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to update price_lists" ON public.price_lists FOR UPDATE TO authenticated USING (true);


--
-- Name: shipping_addresses Allow authenticated users to update shipping_addresses; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to update shipping_addresses" ON public.shipping_addresses FOR UPDATE TO authenticated USING (true);


--
-- Name: customers Allow authenticated users to view customers; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to view customers" ON public.customers FOR SELECT TO authenticated USING (true);


--
-- Name: line_message_logs Allow authenticated users to view line_message_logs; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to view line_message_logs" ON public.line_message_logs FOR SELECT TO authenticated USING (true);


--
-- Name: line_message_templates Allow authenticated users to view line_message_templates; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to view line_message_templates" ON public.line_message_templates FOR SELECT TO authenticated USING (true);


--
-- Name: order_items Allow authenticated users to view order_items; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to view order_items" ON public.order_items FOR SELECT TO authenticated USING (true);


--
-- Name: order_shipments Allow authenticated users to view order_shipments; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to view order_shipments" ON public.order_shipments FOR SELECT TO authenticated USING (true);


--
-- Name: orders Allow authenticated users to view orders; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to view orders" ON public.orders FOR SELECT TO authenticated USING (true);


--
-- Name: payments Allow authenticated users to view payments; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to view payments" ON public.payments FOR SELECT TO authenticated USING (true);


--
-- Name: price_lists Allow authenticated users to view price_lists; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to view price_lists" ON public.price_lists FOR SELECT TO authenticated USING (true);


--
-- Name: shipping_addresses Allow authenticated users to view shipping_addresses; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow authenticated users to view shipping_addresses" ON public.shipping_addresses FOR SELECT TO authenticated USING (true);


--
-- Name: variation_types Allow read variation_types; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Allow read variation_types" ON public.variation_types FOR SELECT USING (true);


--
-- Name: user_profiles Authenticated users can view all profiles; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Authenticated users can view all profiles" ON public.user_profiles FOR SELECT TO authenticated USING (true);


--
-- Name: sales_orders Manager can view orders; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Manager can view orders" ON public.sales_orders FOR SELECT USING ((EXISTS ( SELECT 1
   FROM public.user_profiles
  WHERE ((user_profiles.id = auth.uid()) AND (user_profiles.role = 'manager'::public.user_role)))));


--
-- Name: supplier_materials Manager up can view supplier materials; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Manager up can view supplier materials" ON public.supplier_materials FOR SELECT USING ((EXISTS ( SELECT 1
   FROM public.user_profiles
  WHERE ((user_profiles.id = auth.uid()) AND (user_profiles.role = ANY (ARRAY['admin'::public.user_role, 'manager'::public.user_role]))))));


--
-- Name: quality_tests Production team can manage QC; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Production team can manage QC" ON public.quality_tests USING ((EXISTS ( SELECT 1
   FROM public.user_profiles
  WHERE ((user_profiles.id = auth.uid()) AND (user_profiles.role = ANY (ARRAY['admin'::public.user_role, 'manager'::public.user_role, 'operation'::public.user_role]))))));


--
-- Name: inventory_batches Production team can view inventory; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Production team can view inventory" ON public.inventory_batches FOR SELECT USING ((EXISTS ( SELECT 1
   FROM public.user_profiles
  WHERE ((user_profiles.id = auth.uid()) AND (user_profiles.role = ANY (ARRAY['admin'::public.user_role, 'manager'::public.user_role, 'operation'::public.user_role]))))));


--
-- Name: line_groups Sales and Admin can manage LINE groups; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Sales and Admin can manage LINE groups" ON public.line_groups USING ((EXISTS ( SELECT 1
   FROM public.user_profiles
  WHERE ((user_profiles.id = auth.uid()) AND (user_profiles.role = ANY (ARRAY['admin'::public.user_role, 'sales'::public.user_role]))))));


--
-- Name: line_users Sales and Admin can manage LINE users; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Sales and Admin can manage LINE users" ON public.line_users USING ((EXISTS ( SELECT 1
   FROM public.user_profiles
  WHERE ((user_profiles.id = auth.uid()) AND (user_profiles.role = ANY (ARRAY['admin'::public.user_role, 'sales'::public.user_role]))))));


--
-- Name: customer_activities Sales and Admin can manage activities; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Sales and Admin can manage activities" ON public.customer_activities USING ((EXISTS ( SELECT 1
   FROM public.user_profiles
  WHERE ((user_profiles.id = auth.uid()) AND (user_profiles.role = ANY (ARRAY['admin'::public.user_role, 'sales'::public.user_role]))))));


--
-- Name: customers Sales and Admin can manage customers; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Sales and Admin can manage customers" ON public.customers USING ((EXISTS ( SELECT 1
   FROM public.user_profiles
  WHERE ((user_profiles.id = auth.uid()) AND (user_profiles.role = ANY (ARRAY['admin'::public.user_role, 'sales'::public.user_role]))))));


--
-- Name: sales_order_items Sales and Admin can manage order items; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Sales and Admin can manage order items" ON public.sales_order_items USING ((EXISTS ( SELECT 1
   FROM public.user_profiles
  WHERE ((user_profiles.id = auth.uid()) AND (user_profiles.role = ANY (ARRAY['admin'::public.user_role, 'sales'::public.user_role]))))));


--
-- Name: sales_orders Sales and Admin can manage orders; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Sales and Admin can manage orders" ON public.sales_orders USING ((EXISTS ( SELECT 1
   FROM public.user_profiles
  WHERE ((user_profiles.id = auth.uid()) AND (user_profiles.role = ANY (ARRAY['admin'::public.user_role, 'sales'::public.user_role]))))));


--
-- Name: finished_goods Service role bypass finished_goods; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Service role bypass finished_goods" ON public.finished_goods TO service_role USING (true) WITH CHECK (true);


--
-- Name: product_variations Service role bypass sellable_product_variations; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Service role bypass sellable_product_variations" ON public.product_variations TO service_role USING (true) WITH CHECK (true);


--
-- Name: products Service role bypass sellable_products; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Service role bypass sellable_products" ON public.products TO service_role USING (true) WITH CHECK (true);


--
-- Name: stock_lot_usages Service role bypass stock_lot_usages; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Service role bypass stock_lot_usages" ON public.stock_lot_usages TO service_role USING (true) WITH CHECK (true);


--
-- Name: stock_lots Service role bypass stock_lots; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Service role bypass stock_lots" ON public.stock_lots TO service_role USING (true) WITH CHECK (true);


--
-- Name: user_profiles Service role has full access; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Service role has full access" ON public.user_profiles TO service_role USING (true) WITH CHECK (true);


--
-- Name: payment_records Users can insert payment records; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Users can insert payment records" ON public.payment_records FOR INSERT TO authenticated WITH CHECK (true);


--
-- Name: user_profiles Users can update own profile; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Users can update own profile" ON public.user_profiles FOR UPDATE TO authenticated USING ((auth.uid() = id)) WITH CHECK ((auth.uid() = id));


--
-- Name: payment_records Users can update payment records; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Users can update payment records" ON public.payment_records FOR UPDATE TO authenticated USING (true);


--
-- Name: payment_records Users can view payment records; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY "Users can view payment records" ON public.payment_records FOR SELECT TO authenticated USING (true);


--
-- Name: user_profiles admin_all_access; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY admin_all_access ON public.user_profiles TO authenticated USING ((auth.uid() IN ( SELECT user_profiles_1.id
   FROM public.user_profiles user_profiles_1
  WHERE ((user_profiles_1.id = auth.uid()) AND (user_profiles_1.role = 'admin'::public.user_role))
 LIMIT 1))) WITH CHECK ((auth.uid() IN ( SELECT user_profiles_1.id
   FROM public.user_profiles user_profiles_1
  WHERE ((user_profiles_1.id = auth.uid()) AND (user_profiles_1.role = 'admin'::public.user_role))
 LIMIT 1)));


--
-- Name: user_profiles allow_insert_own_profile; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY allow_insert_own_profile ON public.user_profiles FOR INSERT TO authenticated WITH CHECK ((auth.uid() = id));


--
-- Name: user_profiles allow_read_all_profiles; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY allow_read_all_profiles ON public.user_profiles FOR SELECT TO authenticated USING (true);


--
-- Name: user_profiles allow_update_own_profile; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY allow_update_own_profile ON public.user_profiles FOR UPDATE TO authenticated USING ((auth.uid() = id)) WITH CHECK ((auth.uid() = id));


--
-- Name: crm_settings; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.crm_settings ENABLE ROW LEVEL SECURITY;

--
-- Name: customer_activities; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.customer_activities ENABLE ROW LEVEL SECURITY;

--
-- Name: customers; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.customers ENABLE ROW LEVEL SECURITY;

--
-- Name: finished_goods; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.finished_goods ENABLE ROW LEVEL SECURITY;

--
-- Name: inventory_batches; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.inventory_batches ENABLE ROW LEVEL SECURITY;

--
-- Name: line_contacts; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.line_contacts ENABLE ROW LEVEL SECURITY;

--
-- Name: line_groups; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.line_groups ENABLE ROW LEVEL SECURITY;

--
-- Name: line_message_logs; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.line_message_logs ENABLE ROW LEVEL SECURITY;

--
-- Name: line_message_templates; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.line_message_templates ENABLE ROW LEVEL SECURITY;

--
-- Name: line_messages; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.line_messages ENABLE ROW LEVEL SECURITY;

--
-- Name: line_users; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.line_users ENABLE ROW LEVEL SECURITY;

--
-- Name: order_items; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.order_items ENABLE ROW LEVEL SECURITY;

--
-- Name: order_shipments; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.order_shipments ENABLE ROW LEVEL SECURITY;

--
-- Name: orders; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.orders ENABLE ROW LEVEL SECURITY;

--
-- Name: payment_channels; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.payment_channels ENABLE ROW LEVEL SECURITY;

--
-- Name: payment_records; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.payment_records ENABLE ROW LEVEL SECURITY;

--
-- Name: payments; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.payments ENABLE ROW LEVEL SECURITY;

--
-- Name: price_lists; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.price_lists ENABLE ROW LEVEL SECURITY;

--
-- Name: product_variations; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.product_variations ENABLE ROW LEVEL SECURITY;

--
-- Name: products; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.products ENABLE ROW LEVEL SECURITY;

--
-- Name: quality_tests; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.quality_tests ENABLE ROW LEVEL SECURITY;

--
-- Name: sales_order_items; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.sales_order_items ENABLE ROW LEVEL SECURITY;

--
-- Name: sales_orders; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.sales_orders ENABLE ROW LEVEL SECURITY;

--
-- Name: user_profiles service_role_all_access; Type: POLICY; Schema: public; Owner: -
--

CREATE POLICY service_role_all_access ON public.user_profiles TO service_role USING (true) WITH CHECK (true);


--
-- Name: shipping_addresses; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.shipping_addresses ENABLE ROW LEVEL SECURITY;

--
-- Name: stock_lot_usages; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.stock_lot_usages ENABLE ROW LEVEL SECURITY;

--
-- Name: stock_lots; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.stock_lots ENABLE ROW LEVEL SECURITY;

--
-- Name: supplier_materials; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.supplier_materials ENABLE ROW LEVEL SECURITY;

--
-- Name: user_profiles; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.user_profiles ENABLE ROW LEVEL SECURITY;

--
-- Name: variation_types; Type: ROW SECURITY; Schema: public; Owner: -
--

ALTER TABLE public.variation_types ENABLE ROW LEVEL SECURITY;

--
-- Name: messages; Type: ROW SECURITY; Schema: realtime; Owner: -
--

ALTER TABLE realtime.messages ENABLE ROW LEVEL SECURITY;

--
-- Name: objects Anyone can upload payment slips; Type: POLICY; Schema: storage; Owner: -
--

CREATE POLICY "Anyone can upload payment slips" ON storage.objects FOR INSERT WITH CHECK ((bucket_id = 'payment-slips'::text));


--
-- Name: objects Authenticated users can delete product images; Type: POLICY; Schema: storage; Owner: -
--

CREATE POLICY "Authenticated users can delete product images" ON storage.objects FOR DELETE USING (((bucket_id = 'product-images'::text) AND (auth.role() = 'authenticated'::text)));


--
-- Name: objects Authenticated users can update product images; Type: POLICY; Schema: storage; Owner: -
--

CREATE POLICY "Authenticated users can update product images" ON storage.objects FOR UPDATE USING (((bucket_id = 'product-images'::text) AND (auth.role() = 'authenticated'::text)));


--
-- Name: objects Authenticated users can upload product images; Type: POLICY; Schema: storage; Owner: -
--

CREATE POLICY "Authenticated users can upload product images" ON storage.objects FOR INSERT WITH CHECK (((bucket_id = 'product-images'::text) AND (auth.role() = 'authenticated'::text)));


--
-- Name: objects Public read access for chat media; Type: POLICY; Schema: storage; Owner: -
--

CREATE POLICY "Public read access for chat media" ON storage.objects FOR SELECT USING ((bucket_id = 'chat-media'::text));


--
-- Name: objects Public read access for product images; Type: POLICY; Schema: storage; Owner: -
--

CREATE POLICY "Public read access for product images" ON storage.objects FOR SELECT USING ((bucket_id = 'product-images'::text));


--
-- Name: objects Public read payment slips; Type: POLICY; Schema: storage; Owner: -
--

CREATE POLICY "Public read payment slips" ON storage.objects FOR SELECT USING ((bucket_id = 'payment-slips'::text));


--
-- Name: objects Service role can delete chat media; Type: POLICY; Schema: storage; Owner: -
--

CREATE POLICY "Service role can delete chat media" ON storage.objects FOR DELETE USING ((bucket_id = 'chat-media'::text));


--
-- Name: objects Service role can manage chat media; Type: POLICY; Schema: storage; Owner: -
--

CREATE POLICY "Service role can manage chat media" ON storage.objects FOR UPDATE USING ((bucket_id = 'chat-media'::text));


--
-- Name: objects Service role can upload chat media; Type: POLICY; Schema: storage; Owner: -
--

CREATE POLICY "Service role can upload chat media" ON storage.objects FOR INSERT WITH CHECK ((bucket_id = 'chat-media'::text));


--
-- Name: buckets; Type: ROW SECURITY; Schema: storage; Owner: -
--

ALTER TABLE storage.buckets ENABLE ROW LEVEL SECURITY;

--
-- Name: buckets_analytics; Type: ROW SECURITY; Schema: storage; Owner: -
--

ALTER TABLE storage.buckets_analytics ENABLE ROW LEVEL SECURITY;

--
-- Name: buckets_vectors; Type: ROW SECURITY; Schema: storage; Owner: -
--

ALTER TABLE storage.buckets_vectors ENABLE ROW LEVEL SECURITY;

--
-- Name: migrations; Type: ROW SECURITY; Schema: storage; Owner: -
--

ALTER TABLE storage.migrations ENABLE ROW LEVEL SECURITY;

--
-- Name: objects; Type: ROW SECURITY; Schema: storage; Owner: -
--

ALTER TABLE storage.objects ENABLE ROW LEVEL SECURITY;

--
-- Name: s3_multipart_uploads; Type: ROW SECURITY; Schema: storage; Owner: -
--

ALTER TABLE storage.s3_multipart_uploads ENABLE ROW LEVEL SECURITY;

--
-- Name: s3_multipart_uploads_parts; Type: ROW SECURITY; Schema: storage; Owner: -
--

ALTER TABLE storage.s3_multipart_uploads_parts ENABLE ROW LEVEL SECURITY;

--
-- Name: vector_indexes; Type: ROW SECURITY; Schema: storage; Owner: -
--

ALTER TABLE storage.vector_indexes ENABLE ROW LEVEL SECURITY;

--
-- Name: supabase_realtime; Type: PUBLICATION; Schema: -; Owner: -
--

CREATE PUBLICATION supabase_realtime WITH (publish = 'insert, update, delete, truncate');


--
-- Name: supabase_realtime_messages_publication; Type: PUBLICATION; Schema: -; Owner: -
--

CREATE PUBLICATION supabase_realtime_messages_publication WITH (publish = 'insert, update, delete, truncate');


--
-- Name: supabase_realtime line_contacts; Type: PUBLICATION TABLE; Schema: public; Owner: -
--

ALTER PUBLICATION supabase_realtime ADD TABLE ONLY public.line_contacts;


--
-- Name: supabase_realtime line_messages; Type: PUBLICATION TABLE; Schema: public; Owner: -
--

ALTER PUBLICATION supabase_realtime ADD TABLE ONLY public.line_messages;


--
-- Name: supabase_realtime_messages_publication messages; Type: PUBLICATION TABLE; Schema: realtime; Owner: -
--

ALTER PUBLICATION supabase_realtime_messages_publication ADD TABLE ONLY realtime.messages;


--
-- Name: issue_graphql_placeholder; Type: EVENT TRIGGER; Schema: -; Owner: -
--

CREATE EVENT TRIGGER issue_graphql_placeholder ON sql_drop
         WHEN TAG IN ('DROP EXTENSION')
   EXECUTE FUNCTION extensions.set_graphql_placeholder();


--
-- Name: issue_pg_cron_access; Type: EVENT TRIGGER; Schema: -; Owner: -
--

CREATE EVENT TRIGGER issue_pg_cron_access ON ddl_command_end
         WHEN TAG IN ('CREATE EXTENSION')
   EXECUTE FUNCTION extensions.grant_pg_cron_access();


--
-- Name: issue_pg_graphql_access; Type: EVENT TRIGGER; Schema: -; Owner: -
--

CREATE EVENT TRIGGER issue_pg_graphql_access ON ddl_command_end
         WHEN TAG IN ('CREATE FUNCTION')
   EXECUTE FUNCTION extensions.grant_pg_graphql_access();


--
-- Name: issue_pg_net_access; Type: EVENT TRIGGER; Schema: -; Owner: -
--

CREATE EVENT TRIGGER issue_pg_net_access ON ddl_command_end
         WHEN TAG IN ('CREATE EXTENSION')
   EXECUTE FUNCTION extensions.grant_pg_net_access();


--
-- Name: pgrst_ddl_watch; Type: EVENT TRIGGER; Schema: -; Owner: -
--

CREATE EVENT TRIGGER pgrst_ddl_watch ON ddl_command_end
   EXECUTE FUNCTION extensions.pgrst_ddl_watch();


--
-- Name: pgrst_drop_watch; Type: EVENT TRIGGER; Schema: -; Owner: -
--

CREATE EVENT TRIGGER pgrst_drop_watch ON sql_drop
   EXECUTE FUNCTION extensions.pgrst_drop_watch();


--
-- PostgreSQL database dump complete
--

\unrestrict 6gbV7pRSEEIpMBPAMgmwUhePE9xO3pJfgZf1AlwCA0naaLT4PTBlvRv920OTVH0

