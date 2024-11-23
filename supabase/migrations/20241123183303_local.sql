create schema if not exists "payload";

create sequence "payload"."activity_id_seq";

create sequence "payload"."payload_locked_documents_id_seq";

create sequence "payload"."payload_locked_documents_rels_id_seq";

create sequence "payload"."payload_migrations_id_seq";

create sequence "payload"."payload_preferences_id_seq";

create sequence "payload"."payload_preferences_rels_id_seq";

create sequence "payload"."service_id_seq";

create sequence "payload"."users_id_seq";

create table "payload"."activity" (
    "id" integer not null default nextval('payload.activity_id_seq'::regclass),
    "updated_at" timestamp(3) with time zone not null default now(),
    "created_at" timestamp(3) with time zone not null default now(),
    "url" character varying,
    "thumbnail_u_r_l" character varying,
    "filename" character varying,
    "mime_type" character varying,
    "filesize" numeric,
    "width" numeric,
    "height" numeric,
    "focal_x" numeric,
    "focal_y" numeric
);


create table "payload"."payload_locked_documents" (
    "id" integer not null default nextval('payload.payload_locked_documents_id_seq'::regclass),
    "global_slug" character varying,
    "updated_at" timestamp(3) with time zone not null default now(),
    "created_at" timestamp(3) with time zone not null default now()
);


create table "payload"."payload_locked_documents_rels" (
    "id" integer not null default nextval('payload.payload_locked_documents_rels_id_seq'::regclass),
    "order" integer,
    "parent_id" integer not null,
    "path" character varying not null,
    "users_id" integer,
    "service_id" integer,
    "activity_id" integer
);


create table "payload"."payload_migrations" (
    "id" integer not null default nextval('payload.payload_migrations_id_seq'::regclass),
    "name" character varying,
    "batch" numeric,
    "updated_at" timestamp(3) with time zone not null default now(),
    "created_at" timestamp(3) with time zone not null default now()
);


create table "payload"."payload_preferences" (
    "id" integer not null default nextval('payload.payload_preferences_id_seq'::regclass),
    "key" character varying,
    "value" jsonb,
    "updated_at" timestamp(3) with time zone not null default now(),
    "created_at" timestamp(3) with time zone not null default now()
);


create table "payload"."payload_preferences_rels" (
    "id" integer not null default nextval('payload.payload_preferences_rels_id_seq'::regclass),
    "order" integer,
    "parent_id" integer not null,
    "path" character varying not null,
    "users_id" integer
);


create table "payload"."service" (
    "id" integer not null default nextval('payload.service_id_seq'::regclass),
    "updated_at" timestamp(3) with time zone not null default now(),
    "created_at" timestamp(3) with time zone not null default now(),
    "url" character varying,
    "thumbnail_u_r_l" character varying,
    "filename" character varying,
    "mime_type" character varying,
    "filesize" numeric,
    "width" numeric,
    "height" numeric,
    "focal_x" numeric,
    "focal_y" numeric
);


create table "payload"."users" (
    "id" integer not null default nextval('payload.users_id_seq'::regclass),
    "updated_at" timestamp(3) with time zone not null default now(),
    "created_at" timestamp(3) with time zone not null default now(),
    "email" character varying not null
);


alter sequence "payload"."activity_id_seq" owned by "payload"."activity"."id";

alter sequence "payload"."payload_locked_documents_id_seq" owned by "payload"."payload_locked_documents"."id";

alter sequence "payload"."payload_locked_documents_rels_id_seq" owned by "payload"."payload_locked_documents_rels"."id";

alter sequence "payload"."payload_migrations_id_seq" owned by "payload"."payload_migrations"."id";

alter sequence "payload"."payload_preferences_id_seq" owned by "payload"."payload_preferences"."id";

alter sequence "payload"."payload_preferences_rels_id_seq" owned by "payload"."payload_preferences_rels"."id";

alter sequence "payload"."service_id_seq" owned by "payload"."service"."id";

alter sequence "payload"."users_id_seq" owned by "payload"."users"."id";

CREATE INDEX activity_created_at_10_idx ON payload.activity USING btree (created_at);

CREATE INDEX activity_created_at_11_idx ON payload.activity USING btree (created_at);

CREATE INDEX activity_created_at_12_idx ON payload.activity USING btree (created_at);

CREATE INDEX activity_created_at_13_idx ON payload.activity USING btree (created_at);

CREATE INDEX activity_created_at_14_idx ON payload.activity USING btree (created_at);

CREATE INDEX activity_created_at_15_idx ON payload.activity USING btree (created_at);

CREATE INDEX activity_created_at_16_idx ON payload.activity USING btree (created_at);

CREATE INDEX activity_created_at_1_idx ON payload.activity USING btree (created_at);

CREATE INDEX activity_created_at_2_idx ON payload.activity USING btree (created_at);

CREATE INDEX activity_created_at_3_idx ON payload.activity USING btree (created_at);

CREATE INDEX activity_created_at_4_idx ON payload.activity USING btree (created_at);

CREATE INDEX activity_created_at_5_idx ON payload.activity USING btree (created_at);

CREATE INDEX activity_created_at_6_idx ON payload.activity USING btree (created_at);

CREATE INDEX activity_created_at_7_idx ON payload.activity USING btree (created_at);

CREATE INDEX activity_created_at_8_idx ON payload.activity USING btree (created_at);

CREATE INDEX activity_created_at_9_idx ON payload.activity USING btree (created_at);

CREATE INDEX activity_created_at_idx ON payload.activity USING btree (created_at);

CREATE UNIQUE INDEX activity_filename_10_idx ON payload.activity USING btree (filename);

CREATE UNIQUE INDEX activity_filename_11_idx ON payload.activity USING btree (filename);

CREATE UNIQUE INDEX activity_filename_12_idx ON payload.activity USING btree (filename);

CREATE UNIQUE INDEX activity_filename_13_idx ON payload.activity USING btree (filename);

CREATE UNIQUE INDEX activity_filename_14_idx ON payload.activity USING btree (filename);

CREATE UNIQUE INDEX activity_filename_15_idx ON payload.activity USING btree (filename);

CREATE UNIQUE INDEX activity_filename_16_idx ON payload.activity USING btree (filename);

CREATE UNIQUE INDEX activity_filename_1_idx ON payload.activity USING btree (filename);

CREATE UNIQUE INDEX activity_filename_2_idx ON payload.activity USING btree (filename);

CREATE UNIQUE INDEX activity_filename_3_idx ON payload.activity USING btree (filename);

CREATE UNIQUE INDEX activity_filename_4_idx ON payload.activity USING btree (filename);

CREATE UNIQUE INDEX activity_filename_5_idx ON payload.activity USING btree (filename);

CREATE UNIQUE INDEX activity_filename_6_idx ON payload.activity USING btree (filename);

CREATE UNIQUE INDEX activity_filename_7_idx ON payload.activity USING btree (filename);

CREATE UNIQUE INDEX activity_filename_8_idx ON payload.activity USING btree (filename);

CREATE UNIQUE INDEX activity_filename_9_idx ON payload.activity USING btree (filename);

CREATE UNIQUE INDEX activity_filename_idx ON payload.activity USING btree (filename);

CREATE UNIQUE INDEX activity_pkey ON payload.activity USING btree (id);

CREATE INDEX activity_updated_at_10_idx ON payload.activity USING btree (updated_at);

CREATE INDEX activity_updated_at_11_idx ON payload.activity USING btree (updated_at);

CREATE INDEX activity_updated_at_12_idx ON payload.activity USING btree (updated_at);

CREATE INDEX activity_updated_at_13_idx ON payload.activity USING btree (updated_at);

CREATE INDEX activity_updated_at_14_idx ON payload.activity USING btree (updated_at);

CREATE INDEX activity_updated_at_15_idx ON payload.activity USING btree (updated_at);

CREATE INDEX activity_updated_at_16_idx ON payload.activity USING btree (updated_at);

CREATE INDEX activity_updated_at_1_idx ON payload.activity USING btree (updated_at);

CREATE INDEX activity_updated_at_2_idx ON payload.activity USING btree (updated_at);

CREATE INDEX activity_updated_at_3_idx ON payload.activity USING btree (updated_at);

CREATE INDEX activity_updated_at_4_idx ON payload.activity USING btree (updated_at);

CREATE INDEX activity_updated_at_5_idx ON payload.activity USING btree (updated_at);

CREATE INDEX activity_updated_at_6_idx ON payload.activity USING btree (updated_at);

CREATE INDEX activity_updated_at_7_idx ON payload.activity USING btree (updated_at);

CREATE INDEX activity_updated_at_8_idx ON payload.activity USING btree (updated_at);

CREATE INDEX activity_updated_at_9_idx ON payload.activity USING btree (updated_at);

CREATE INDEX activity_updated_at_idx ON payload.activity USING btree (updated_at);

CREATE INDEX payload_locked_documents_created_at_10_idx ON payload.payload_locked_documents USING btree (created_at);

CREATE INDEX payload_locked_documents_created_at_11_idx ON payload.payload_locked_documents USING btree (created_at);

CREATE INDEX payload_locked_documents_created_at_12_idx ON payload.payload_locked_documents USING btree (created_at);

CREATE INDEX payload_locked_documents_created_at_13_idx ON payload.payload_locked_documents USING btree (created_at);

CREATE INDEX payload_locked_documents_created_at_14_idx ON payload.payload_locked_documents USING btree (created_at);

CREATE INDEX payload_locked_documents_created_at_15_idx ON payload.payload_locked_documents USING btree (created_at);

CREATE INDEX payload_locked_documents_created_at_16_idx ON payload.payload_locked_documents USING btree (created_at);

CREATE INDEX payload_locked_documents_created_at_1_idx ON payload.payload_locked_documents USING btree (created_at);

CREATE INDEX payload_locked_documents_created_at_2_idx ON payload.payload_locked_documents USING btree (created_at);

CREATE INDEX payload_locked_documents_created_at_3_idx ON payload.payload_locked_documents USING btree (created_at);

CREATE INDEX payload_locked_documents_created_at_4_idx ON payload.payload_locked_documents USING btree (created_at);

CREATE INDEX payload_locked_documents_created_at_5_idx ON payload.payload_locked_documents USING btree (created_at);

CREATE INDEX payload_locked_documents_created_at_6_idx ON payload.payload_locked_documents USING btree (created_at);

CREATE INDEX payload_locked_documents_created_at_7_idx ON payload.payload_locked_documents USING btree (created_at);

CREATE INDEX payload_locked_documents_created_at_8_idx ON payload.payload_locked_documents USING btree (created_at);

CREATE INDEX payload_locked_documents_created_at_9_idx ON payload.payload_locked_documents USING btree (created_at);

CREATE INDEX payload_locked_documents_created_at_idx ON payload.payload_locked_documents USING btree (created_at);

CREATE INDEX payload_locked_documents_global_slug_10_idx ON payload.payload_locked_documents USING btree (global_slug);

CREATE INDEX payload_locked_documents_global_slug_11_idx ON payload.payload_locked_documents USING btree (global_slug);

CREATE INDEX payload_locked_documents_global_slug_12_idx ON payload.payload_locked_documents USING btree (global_slug);

CREATE INDEX payload_locked_documents_global_slug_13_idx ON payload.payload_locked_documents USING btree (global_slug);

CREATE INDEX payload_locked_documents_global_slug_14_idx ON payload.payload_locked_documents USING btree (global_slug);

CREATE INDEX payload_locked_documents_global_slug_15_idx ON payload.payload_locked_documents USING btree (global_slug);

CREATE INDEX payload_locked_documents_global_slug_16_idx ON payload.payload_locked_documents USING btree (global_slug);

CREATE INDEX payload_locked_documents_global_slug_1_idx ON payload.payload_locked_documents USING btree (global_slug);

CREATE INDEX payload_locked_documents_global_slug_2_idx ON payload.payload_locked_documents USING btree (global_slug);

CREATE INDEX payload_locked_documents_global_slug_3_idx ON payload.payload_locked_documents USING btree (global_slug);

CREATE INDEX payload_locked_documents_global_slug_4_idx ON payload.payload_locked_documents USING btree (global_slug);

CREATE INDEX payload_locked_documents_global_slug_5_idx ON payload.payload_locked_documents USING btree (global_slug);

CREATE INDEX payload_locked_documents_global_slug_6_idx ON payload.payload_locked_documents USING btree (global_slug);

CREATE INDEX payload_locked_documents_global_slug_7_idx ON payload.payload_locked_documents USING btree (global_slug);

CREATE INDEX payload_locked_documents_global_slug_8_idx ON payload.payload_locked_documents USING btree (global_slug);

CREATE INDEX payload_locked_documents_global_slug_9_idx ON payload.payload_locked_documents USING btree (global_slug);

CREATE INDEX payload_locked_documents_global_slug_idx ON payload.payload_locked_documents USING btree (global_slug);

CREATE UNIQUE INDEX payload_locked_documents_pkey ON payload.payload_locked_documents USING btree (id);

CREATE INDEX payload_locked_documents_rels_activity_id_10_idx ON payload.payload_locked_documents_rels USING btree (activity_id);

CREATE INDEX payload_locked_documents_rels_activity_id_11_idx ON payload.payload_locked_documents_rels USING btree (activity_id);

CREATE INDEX payload_locked_documents_rels_activity_id_12_idx ON payload.payload_locked_documents_rels USING btree (activity_id);

CREATE INDEX payload_locked_documents_rels_activity_id_13_idx ON payload.payload_locked_documents_rels USING btree (activity_id);

CREATE INDEX payload_locked_documents_rels_activity_id_14_idx ON payload.payload_locked_documents_rels USING btree (activity_id);

CREATE INDEX payload_locked_documents_rels_activity_id_15_idx ON payload.payload_locked_documents_rels USING btree (activity_id);

CREATE INDEX payload_locked_documents_rels_activity_id_16_idx ON payload.payload_locked_documents_rels USING btree (activity_id);

CREATE INDEX payload_locked_documents_rels_activity_id_1_idx ON payload.payload_locked_documents_rels USING btree (activity_id);

CREATE INDEX payload_locked_documents_rels_activity_id_2_idx ON payload.payload_locked_documents_rels USING btree (activity_id);

CREATE INDEX payload_locked_documents_rels_activity_id_3_idx ON payload.payload_locked_documents_rels USING btree (activity_id);

CREATE INDEX payload_locked_documents_rels_activity_id_4_idx ON payload.payload_locked_documents_rels USING btree (activity_id);

CREATE INDEX payload_locked_documents_rels_activity_id_5_idx ON payload.payload_locked_documents_rels USING btree (activity_id);

CREATE INDEX payload_locked_documents_rels_activity_id_6_idx ON payload.payload_locked_documents_rels USING btree (activity_id);

CREATE INDEX payload_locked_documents_rels_activity_id_7_idx ON payload.payload_locked_documents_rels USING btree (activity_id);

CREATE INDEX payload_locked_documents_rels_activity_id_8_idx ON payload.payload_locked_documents_rels USING btree (activity_id);

CREATE INDEX payload_locked_documents_rels_activity_id_9_idx ON payload.payload_locked_documents_rels USING btree (activity_id);

CREATE INDEX payload_locked_documents_rels_activity_id_idx ON payload.payload_locked_documents_rels USING btree (activity_id);

CREATE INDEX payload_locked_documents_rels_order_idx ON payload.payload_locked_documents_rels USING btree ("order");

CREATE INDEX payload_locked_documents_rels_parent_idx ON payload.payload_locked_documents_rels USING btree (parent_id);

CREATE INDEX payload_locked_documents_rels_path_idx ON payload.payload_locked_documents_rels USING btree (path);

CREATE UNIQUE INDEX payload_locked_documents_rels_pkey ON payload.payload_locked_documents_rels USING btree (id);

CREATE INDEX payload_locked_documents_rels_service_id_10_idx ON payload.payload_locked_documents_rels USING btree (service_id);

CREATE INDEX payload_locked_documents_rels_service_id_11_idx ON payload.payload_locked_documents_rels USING btree (service_id);

CREATE INDEX payload_locked_documents_rels_service_id_12_idx ON payload.payload_locked_documents_rels USING btree (service_id);

CREATE INDEX payload_locked_documents_rels_service_id_13_idx ON payload.payload_locked_documents_rels USING btree (service_id);

CREATE INDEX payload_locked_documents_rels_service_id_14_idx ON payload.payload_locked_documents_rels USING btree (service_id);

CREATE INDEX payload_locked_documents_rels_service_id_15_idx ON payload.payload_locked_documents_rels USING btree (service_id);

CREATE INDEX payload_locked_documents_rels_service_id_16_idx ON payload.payload_locked_documents_rels USING btree (service_id);

CREATE INDEX payload_locked_documents_rels_service_id_1_idx ON payload.payload_locked_documents_rels USING btree (service_id);

CREATE INDEX payload_locked_documents_rels_service_id_2_idx ON payload.payload_locked_documents_rels USING btree (service_id);

CREATE INDEX payload_locked_documents_rels_service_id_3_idx ON payload.payload_locked_documents_rels USING btree (service_id);

CREATE INDEX payload_locked_documents_rels_service_id_4_idx ON payload.payload_locked_documents_rels USING btree (service_id);

CREATE INDEX payload_locked_documents_rels_service_id_5_idx ON payload.payload_locked_documents_rels USING btree (service_id);

CREATE INDEX payload_locked_documents_rels_service_id_6_idx ON payload.payload_locked_documents_rels USING btree (service_id);

CREATE INDEX payload_locked_documents_rels_service_id_7_idx ON payload.payload_locked_documents_rels USING btree (service_id);

CREATE INDEX payload_locked_documents_rels_service_id_8_idx ON payload.payload_locked_documents_rels USING btree (service_id);

CREATE INDEX payload_locked_documents_rels_service_id_9_idx ON payload.payload_locked_documents_rels USING btree (service_id);

CREATE INDEX payload_locked_documents_rels_service_id_idx ON payload.payload_locked_documents_rels USING btree (service_id);

CREATE INDEX payload_locked_documents_rels_users_id_10_idx ON payload.payload_locked_documents_rels USING btree (users_id);

CREATE INDEX payload_locked_documents_rels_users_id_11_idx ON payload.payload_locked_documents_rels USING btree (users_id);

CREATE INDEX payload_locked_documents_rels_users_id_12_idx ON payload.payload_locked_documents_rels USING btree (users_id);

CREATE INDEX payload_locked_documents_rels_users_id_13_idx ON payload.payload_locked_documents_rels USING btree (users_id);

CREATE INDEX payload_locked_documents_rels_users_id_14_idx ON payload.payload_locked_documents_rels USING btree (users_id);

CREATE INDEX payload_locked_documents_rels_users_id_15_idx ON payload.payload_locked_documents_rels USING btree (users_id);

CREATE INDEX payload_locked_documents_rels_users_id_16_idx ON payload.payload_locked_documents_rels USING btree (users_id);

CREATE INDEX payload_locked_documents_rels_users_id_1_idx ON payload.payload_locked_documents_rels USING btree (users_id);

CREATE INDEX payload_locked_documents_rels_users_id_2_idx ON payload.payload_locked_documents_rels USING btree (users_id);

CREATE INDEX payload_locked_documents_rels_users_id_3_idx ON payload.payload_locked_documents_rels USING btree (users_id);

CREATE INDEX payload_locked_documents_rels_users_id_4_idx ON payload.payload_locked_documents_rels USING btree (users_id);

CREATE INDEX payload_locked_documents_rels_users_id_5_idx ON payload.payload_locked_documents_rels USING btree (users_id);

CREATE INDEX payload_locked_documents_rels_users_id_6_idx ON payload.payload_locked_documents_rels USING btree (users_id);

CREATE INDEX payload_locked_documents_rels_users_id_7_idx ON payload.payload_locked_documents_rels USING btree (users_id);

CREATE INDEX payload_locked_documents_rels_users_id_8_idx ON payload.payload_locked_documents_rels USING btree (users_id);

CREATE INDEX payload_locked_documents_rels_users_id_9_idx ON payload.payload_locked_documents_rels USING btree (users_id);

CREATE INDEX payload_locked_documents_rels_users_id_idx ON payload.payload_locked_documents_rels USING btree (users_id);

CREATE INDEX payload_locked_documents_updated_at_10_idx ON payload.payload_locked_documents USING btree (updated_at);

CREATE INDEX payload_locked_documents_updated_at_11_idx ON payload.payload_locked_documents USING btree (updated_at);

CREATE INDEX payload_locked_documents_updated_at_12_idx ON payload.payload_locked_documents USING btree (updated_at);

CREATE INDEX payload_locked_documents_updated_at_13_idx ON payload.payload_locked_documents USING btree (updated_at);

CREATE INDEX payload_locked_documents_updated_at_14_idx ON payload.payload_locked_documents USING btree (updated_at);

CREATE INDEX payload_locked_documents_updated_at_15_idx ON payload.payload_locked_documents USING btree (updated_at);

CREATE INDEX payload_locked_documents_updated_at_16_idx ON payload.payload_locked_documents USING btree (updated_at);

CREATE INDEX payload_locked_documents_updated_at_1_idx ON payload.payload_locked_documents USING btree (updated_at);

CREATE INDEX payload_locked_documents_updated_at_2_idx ON payload.payload_locked_documents USING btree (updated_at);

CREATE INDEX payload_locked_documents_updated_at_3_idx ON payload.payload_locked_documents USING btree (updated_at);

CREATE INDEX payload_locked_documents_updated_at_4_idx ON payload.payload_locked_documents USING btree (updated_at);

CREATE INDEX payload_locked_documents_updated_at_5_idx ON payload.payload_locked_documents USING btree (updated_at);

CREATE INDEX payload_locked_documents_updated_at_6_idx ON payload.payload_locked_documents USING btree (updated_at);

CREATE INDEX payload_locked_documents_updated_at_7_idx ON payload.payload_locked_documents USING btree (updated_at);

CREATE INDEX payload_locked_documents_updated_at_8_idx ON payload.payload_locked_documents USING btree (updated_at);

CREATE INDEX payload_locked_documents_updated_at_9_idx ON payload.payload_locked_documents USING btree (updated_at);

CREATE INDEX payload_locked_documents_updated_at_idx ON payload.payload_locked_documents USING btree (updated_at);

CREATE INDEX payload_migrations_created_at_10_idx ON payload.payload_migrations USING btree (created_at);

CREATE INDEX payload_migrations_created_at_11_idx ON payload.payload_migrations USING btree (created_at);

CREATE INDEX payload_migrations_created_at_12_idx ON payload.payload_migrations USING btree (created_at);

CREATE INDEX payload_migrations_created_at_13_idx ON payload.payload_migrations USING btree (created_at);

CREATE INDEX payload_migrations_created_at_14_idx ON payload.payload_migrations USING btree (created_at);

CREATE INDEX payload_migrations_created_at_15_idx ON payload.payload_migrations USING btree (created_at);

CREATE INDEX payload_migrations_created_at_16_idx ON payload.payload_migrations USING btree (created_at);

CREATE INDEX payload_migrations_created_at_1_idx ON payload.payload_migrations USING btree (created_at);

CREATE INDEX payload_migrations_created_at_2_idx ON payload.payload_migrations USING btree (created_at);

CREATE INDEX payload_migrations_created_at_3_idx ON payload.payload_migrations USING btree (created_at);

CREATE INDEX payload_migrations_created_at_4_idx ON payload.payload_migrations USING btree (created_at);

CREATE INDEX payload_migrations_created_at_5_idx ON payload.payload_migrations USING btree (created_at);

CREATE INDEX payload_migrations_created_at_6_idx ON payload.payload_migrations USING btree (created_at);

CREATE INDEX payload_migrations_created_at_7_idx ON payload.payload_migrations USING btree (created_at);

CREATE INDEX payload_migrations_created_at_8_idx ON payload.payload_migrations USING btree (created_at);

CREATE INDEX payload_migrations_created_at_9_idx ON payload.payload_migrations USING btree (created_at);

CREATE INDEX payload_migrations_created_at_idx ON payload.payload_migrations USING btree (created_at);

CREATE UNIQUE INDEX payload_migrations_pkey ON payload.payload_migrations USING btree (id);

CREATE INDEX payload_migrations_updated_at_10_idx ON payload.payload_migrations USING btree (updated_at);

CREATE INDEX payload_migrations_updated_at_11_idx ON payload.payload_migrations USING btree (updated_at);

CREATE INDEX payload_migrations_updated_at_12_idx ON payload.payload_migrations USING btree (updated_at);

CREATE INDEX payload_migrations_updated_at_13_idx ON payload.payload_migrations USING btree (updated_at);

CREATE INDEX payload_migrations_updated_at_14_idx ON payload.payload_migrations USING btree (updated_at);

CREATE INDEX payload_migrations_updated_at_15_idx ON payload.payload_migrations USING btree (updated_at);

CREATE INDEX payload_migrations_updated_at_16_idx ON payload.payload_migrations USING btree (updated_at);

CREATE INDEX payload_migrations_updated_at_1_idx ON payload.payload_migrations USING btree (updated_at);

CREATE INDEX payload_migrations_updated_at_2_idx ON payload.payload_migrations USING btree (updated_at);

CREATE INDEX payload_migrations_updated_at_3_idx ON payload.payload_migrations USING btree (updated_at);

CREATE INDEX payload_migrations_updated_at_4_idx ON payload.payload_migrations USING btree (updated_at);

CREATE INDEX payload_migrations_updated_at_5_idx ON payload.payload_migrations USING btree (updated_at);

CREATE INDEX payload_migrations_updated_at_6_idx ON payload.payload_migrations USING btree (updated_at);

CREATE INDEX payload_migrations_updated_at_7_idx ON payload.payload_migrations USING btree (updated_at);

CREATE INDEX payload_migrations_updated_at_8_idx ON payload.payload_migrations USING btree (updated_at);

CREATE INDEX payload_migrations_updated_at_9_idx ON payload.payload_migrations USING btree (updated_at);

CREATE INDEX payload_migrations_updated_at_idx ON payload.payload_migrations USING btree (updated_at);

CREATE INDEX payload_preferences_created_at_10_idx ON payload.payload_preferences USING btree (created_at);

CREATE INDEX payload_preferences_created_at_11_idx ON payload.payload_preferences USING btree (created_at);

CREATE INDEX payload_preferences_created_at_12_idx ON payload.payload_preferences USING btree (created_at);

CREATE INDEX payload_preferences_created_at_13_idx ON payload.payload_preferences USING btree (created_at);

CREATE INDEX payload_preferences_created_at_14_idx ON payload.payload_preferences USING btree (created_at);

CREATE INDEX payload_preferences_created_at_15_idx ON payload.payload_preferences USING btree (created_at);

CREATE INDEX payload_preferences_created_at_16_idx ON payload.payload_preferences USING btree (created_at);

CREATE INDEX payload_preferences_created_at_1_idx ON payload.payload_preferences USING btree (created_at);

CREATE INDEX payload_preferences_created_at_2_idx ON payload.payload_preferences USING btree (created_at);

CREATE INDEX payload_preferences_created_at_3_idx ON payload.payload_preferences USING btree (created_at);

CREATE INDEX payload_preferences_created_at_4_idx ON payload.payload_preferences USING btree (created_at);

CREATE INDEX payload_preferences_created_at_5_idx ON payload.payload_preferences USING btree (created_at);

CREATE INDEX payload_preferences_created_at_6_idx ON payload.payload_preferences USING btree (created_at);

CREATE INDEX payload_preferences_created_at_7_idx ON payload.payload_preferences USING btree (created_at);

CREATE INDEX payload_preferences_created_at_8_idx ON payload.payload_preferences USING btree (created_at);

CREATE INDEX payload_preferences_created_at_9_idx ON payload.payload_preferences USING btree (created_at);

CREATE INDEX payload_preferences_created_at_idx ON payload.payload_preferences USING btree (created_at);

CREATE INDEX payload_preferences_key_10_idx ON payload.payload_preferences USING btree (key);

CREATE INDEX payload_preferences_key_11_idx ON payload.payload_preferences USING btree (key);

CREATE INDEX payload_preferences_key_12_idx ON payload.payload_preferences USING btree (key);

CREATE INDEX payload_preferences_key_13_idx ON payload.payload_preferences USING btree (key);

CREATE INDEX payload_preferences_key_14_idx ON payload.payload_preferences USING btree (key);

CREATE INDEX payload_preferences_key_15_idx ON payload.payload_preferences USING btree (key);

CREATE INDEX payload_preferences_key_16_idx ON payload.payload_preferences USING btree (key);

CREATE INDEX payload_preferences_key_1_idx ON payload.payload_preferences USING btree (key);

CREATE INDEX payload_preferences_key_2_idx ON payload.payload_preferences USING btree (key);

CREATE INDEX payload_preferences_key_3_idx ON payload.payload_preferences USING btree (key);

CREATE INDEX payload_preferences_key_4_idx ON payload.payload_preferences USING btree (key);

CREATE INDEX payload_preferences_key_5_idx ON payload.payload_preferences USING btree (key);

CREATE INDEX payload_preferences_key_6_idx ON payload.payload_preferences USING btree (key);

CREATE INDEX payload_preferences_key_7_idx ON payload.payload_preferences USING btree (key);

CREATE INDEX payload_preferences_key_8_idx ON payload.payload_preferences USING btree (key);

CREATE INDEX payload_preferences_key_9_idx ON payload.payload_preferences USING btree (key);

CREATE INDEX payload_preferences_key_idx ON payload.payload_preferences USING btree (key);

CREATE UNIQUE INDEX payload_preferences_pkey ON payload.payload_preferences USING btree (id);

CREATE INDEX payload_preferences_rels_order_idx ON payload.payload_preferences_rels USING btree ("order");

CREATE INDEX payload_preferences_rels_parent_idx ON payload.payload_preferences_rels USING btree (parent_id);

CREATE INDEX payload_preferences_rels_path_idx ON payload.payload_preferences_rels USING btree (path);

CREATE UNIQUE INDEX payload_preferences_rels_pkey ON payload.payload_preferences_rels USING btree (id);

CREATE INDEX payload_preferences_rels_users_id_10_idx ON payload.payload_preferences_rels USING btree (users_id);

CREATE INDEX payload_preferences_rels_users_id_11_idx ON payload.payload_preferences_rels USING btree (users_id);

CREATE INDEX payload_preferences_rels_users_id_12_idx ON payload.payload_preferences_rels USING btree (users_id);

CREATE INDEX payload_preferences_rels_users_id_13_idx ON payload.payload_preferences_rels USING btree (users_id);

CREATE INDEX payload_preferences_rels_users_id_14_idx ON payload.payload_preferences_rels USING btree (users_id);

CREATE INDEX payload_preferences_rels_users_id_15_idx ON payload.payload_preferences_rels USING btree (users_id);

CREATE INDEX payload_preferences_rels_users_id_16_idx ON payload.payload_preferences_rels USING btree (users_id);

CREATE INDEX payload_preferences_rels_users_id_1_idx ON payload.payload_preferences_rels USING btree (users_id);

CREATE INDEX payload_preferences_rels_users_id_2_idx ON payload.payload_preferences_rels USING btree (users_id);

CREATE INDEX payload_preferences_rels_users_id_3_idx ON payload.payload_preferences_rels USING btree (users_id);

CREATE INDEX payload_preferences_rels_users_id_4_idx ON payload.payload_preferences_rels USING btree (users_id);

CREATE INDEX payload_preferences_rels_users_id_5_idx ON payload.payload_preferences_rels USING btree (users_id);

CREATE INDEX payload_preferences_rels_users_id_6_idx ON payload.payload_preferences_rels USING btree (users_id);

CREATE INDEX payload_preferences_rels_users_id_7_idx ON payload.payload_preferences_rels USING btree (users_id);

CREATE INDEX payload_preferences_rels_users_id_8_idx ON payload.payload_preferences_rels USING btree (users_id);

CREATE INDEX payload_preferences_rels_users_id_9_idx ON payload.payload_preferences_rels USING btree (users_id);

CREATE INDEX payload_preferences_rels_users_id_idx ON payload.payload_preferences_rels USING btree (users_id);

CREATE INDEX payload_preferences_updated_at_10_idx ON payload.payload_preferences USING btree (updated_at);

CREATE INDEX payload_preferences_updated_at_11_idx ON payload.payload_preferences USING btree (updated_at);

CREATE INDEX payload_preferences_updated_at_12_idx ON payload.payload_preferences USING btree (updated_at);

CREATE INDEX payload_preferences_updated_at_13_idx ON payload.payload_preferences USING btree (updated_at);

CREATE INDEX payload_preferences_updated_at_14_idx ON payload.payload_preferences USING btree (updated_at);

CREATE INDEX payload_preferences_updated_at_15_idx ON payload.payload_preferences USING btree (updated_at);

CREATE INDEX payload_preferences_updated_at_16_idx ON payload.payload_preferences USING btree (updated_at);

CREATE INDEX payload_preferences_updated_at_1_idx ON payload.payload_preferences USING btree (updated_at);

CREATE INDEX payload_preferences_updated_at_2_idx ON payload.payload_preferences USING btree (updated_at);

CREATE INDEX payload_preferences_updated_at_3_idx ON payload.payload_preferences USING btree (updated_at);

CREATE INDEX payload_preferences_updated_at_4_idx ON payload.payload_preferences USING btree (updated_at);

CREATE INDEX payload_preferences_updated_at_5_idx ON payload.payload_preferences USING btree (updated_at);

CREATE INDEX payload_preferences_updated_at_6_idx ON payload.payload_preferences USING btree (updated_at);

CREATE INDEX payload_preferences_updated_at_7_idx ON payload.payload_preferences USING btree (updated_at);

CREATE INDEX payload_preferences_updated_at_8_idx ON payload.payload_preferences USING btree (updated_at);

CREATE INDEX payload_preferences_updated_at_9_idx ON payload.payload_preferences USING btree (updated_at);

CREATE INDEX payload_preferences_updated_at_idx ON payload.payload_preferences USING btree (updated_at);

CREATE INDEX service_created_at_10_idx ON payload.service USING btree (created_at);

CREATE INDEX service_created_at_11_idx ON payload.service USING btree (created_at);

CREATE INDEX service_created_at_12_idx ON payload.service USING btree (created_at);

CREATE INDEX service_created_at_13_idx ON payload.service USING btree (created_at);

CREATE INDEX service_created_at_14_idx ON payload.service USING btree (created_at);

CREATE INDEX service_created_at_15_idx ON payload.service USING btree (created_at);

CREATE INDEX service_created_at_16_idx ON payload.service USING btree (created_at);

CREATE INDEX service_created_at_1_idx ON payload.service USING btree (created_at);

CREATE INDEX service_created_at_2_idx ON payload.service USING btree (created_at);

CREATE INDEX service_created_at_3_idx ON payload.service USING btree (created_at);

CREATE INDEX service_created_at_4_idx ON payload.service USING btree (created_at);

CREATE INDEX service_created_at_5_idx ON payload.service USING btree (created_at);

CREATE INDEX service_created_at_6_idx ON payload.service USING btree (created_at);

CREATE INDEX service_created_at_7_idx ON payload.service USING btree (created_at);

CREATE INDEX service_created_at_8_idx ON payload.service USING btree (created_at);

CREATE INDEX service_created_at_9_idx ON payload.service USING btree (created_at);

CREATE INDEX service_created_at_idx ON payload.service USING btree (created_at);

CREATE UNIQUE INDEX service_filename_10_idx ON payload.service USING btree (filename);

CREATE UNIQUE INDEX service_filename_11_idx ON payload.service USING btree (filename);

CREATE UNIQUE INDEX service_filename_12_idx ON payload.service USING btree (filename);

CREATE UNIQUE INDEX service_filename_13_idx ON payload.service USING btree (filename);

CREATE UNIQUE INDEX service_filename_14_idx ON payload.service USING btree (filename);

CREATE UNIQUE INDEX service_filename_15_idx ON payload.service USING btree (filename);

CREATE UNIQUE INDEX service_filename_16_idx ON payload.service USING btree (filename);

CREATE UNIQUE INDEX service_filename_1_idx ON payload.service USING btree (filename);

CREATE UNIQUE INDEX service_filename_2_idx ON payload.service USING btree (filename);

CREATE UNIQUE INDEX service_filename_3_idx ON payload.service USING btree (filename);

CREATE UNIQUE INDEX service_filename_4_idx ON payload.service USING btree (filename);

CREATE UNIQUE INDEX service_filename_5_idx ON payload.service USING btree (filename);

CREATE UNIQUE INDEX service_filename_6_idx ON payload.service USING btree (filename);

CREATE UNIQUE INDEX service_filename_7_idx ON payload.service USING btree (filename);

CREATE UNIQUE INDEX service_filename_8_idx ON payload.service USING btree (filename);

CREATE UNIQUE INDEX service_filename_9_idx ON payload.service USING btree (filename);

CREATE UNIQUE INDEX service_filename_idx ON payload.service USING btree (filename);

CREATE UNIQUE INDEX service_pkey ON payload.service USING btree (id);

CREATE INDEX service_updated_at_10_idx ON payload.service USING btree (updated_at);

CREATE INDEX service_updated_at_11_idx ON payload.service USING btree (updated_at);

CREATE INDEX service_updated_at_12_idx ON payload.service USING btree (updated_at);

CREATE INDEX service_updated_at_13_idx ON payload.service USING btree (updated_at);

CREATE INDEX service_updated_at_14_idx ON payload.service USING btree (updated_at);

CREATE INDEX service_updated_at_15_idx ON payload.service USING btree (updated_at);

CREATE INDEX service_updated_at_16_idx ON payload.service USING btree (updated_at);

CREATE INDEX service_updated_at_1_idx ON payload.service USING btree (updated_at);

CREATE INDEX service_updated_at_2_idx ON payload.service USING btree (updated_at);

CREATE INDEX service_updated_at_3_idx ON payload.service USING btree (updated_at);

CREATE INDEX service_updated_at_4_idx ON payload.service USING btree (updated_at);

CREATE INDEX service_updated_at_5_idx ON payload.service USING btree (updated_at);

CREATE INDEX service_updated_at_6_idx ON payload.service USING btree (updated_at);

CREATE INDEX service_updated_at_7_idx ON payload.service USING btree (updated_at);

CREATE INDEX service_updated_at_8_idx ON payload.service USING btree (updated_at);

CREATE INDEX service_updated_at_9_idx ON payload.service USING btree (updated_at);

CREATE INDEX service_updated_at_idx ON payload.service USING btree (updated_at);

CREATE INDEX users_created_at_10_idx ON payload.users USING btree (created_at);

CREATE INDEX users_created_at_11_idx ON payload.users USING btree (created_at);

CREATE INDEX users_created_at_12_idx ON payload.users USING btree (created_at);

CREATE INDEX users_created_at_13_idx ON payload.users USING btree (created_at);

CREATE INDEX users_created_at_14_idx ON payload.users USING btree (created_at);

CREATE INDEX users_created_at_15_idx ON payload.users USING btree (created_at);

CREATE INDEX users_created_at_16_idx ON payload.users USING btree (created_at);

CREATE INDEX users_created_at_1_idx ON payload.users USING btree (created_at);

CREATE INDEX users_created_at_2_idx ON payload.users USING btree (created_at);

CREATE INDEX users_created_at_3_idx ON payload.users USING btree (created_at);

CREATE INDEX users_created_at_4_idx ON payload.users USING btree (created_at);

CREATE INDEX users_created_at_5_idx ON payload.users USING btree (created_at);

CREATE INDEX users_created_at_6_idx ON payload.users USING btree (created_at);

CREATE INDEX users_created_at_7_idx ON payload.users USING btree (created_at);

CREATE INDEX users_created_at_8_idx ON payload.users USING btree (created_at);

CREATE INDEX users_created_at_9_idx ON payload.users USING btree (created_at);

CREATE INDEX users_created_at_idx ON payload.users USING btree (created_at);

CREATE UNIQUE INDEX users_email_10_idx ON payload.users USING btree (email);

CREATE UNIQUE INDEX users_email_11_idx ON payload.users USING btree (email);

CREATE UNIQUE INDEX users_email_12_idx ON payload.users USING btree (email);

CREATE UNIQUE INDEX users_email_13_idx ON payload.users USING btree (email);

CREATE UNIQUE INDEX users_email_14_idx ON payload.users USING btree (email);

CREATE UNIQUE INDEX users_email_15_idx ON payload.users USING btree (email);

CREATE UNIQUE INDEX users_email_1_idx ON payload.users USING btree (email);

CREATE UNIQUE INDEX users_email_2_idx ON payload.users USING btree (email);

CREATE UNIQUE INDEX users_email_3_idx ON payload.users USING btree (email);

CREATE UNIQUE INDEX users_email_4_idx ON payload.users USING btree (email);

CREATE UNIQUE INDEX users_email_5_idx ON payload.users USING btree (email);

CREATE UNIQUE INDEX users_email_6_idx ON payload.users USING btree (email);

CREATE UNIQUE INDEX users_email_7_idx ON payload.users USING btree (email);

CREATE UNIQUE INDEX users_email_8_idx ON payload.users USING btree (email);

CREATE UNIQUE INDEX users_email_9_idx ON payload.users USING btree (email);

CREATE UNIQUE INDEX users_email_idx ON payload.users USING btree (email);

CREATE UNIQUE INDEX users_pkey ON payload.users USING btree (id);

CREATE INDEX users_updated_at_10_idx ON payload.users USING btree (updated_at);

CREATE INDEX users_updated_at_11_idx ON payload.users USING btree (updated_at);

CREATE INDEX users_updated_at_12_idx ON payload.users USING btree (updated_at);

CREATE INDEX users_updated_at_13_idx ON payload.users USING btree (updated_at);

CREATE INDEX users_updated_at_14_idx ON payload.users USING btree (updated_at);

CREATE INDEX users_updated_at_15_idx ON payload.users USING btree (updated_at);

CREATE INDEX users_updated_at_16_idx ON payload.users USING btree (updated_at);

CREATE INDEX users_updated_at_1_idx ON payload.users USING btree (updated_at);

CREATE INDEX users_updated_at_2_idx ON payload.users USING btree (updated_at);

CREATE INDEX users_updated_at_3_idx ON payload.users USING btree (updated_at);

CREATE INDEX users_updated_at_4_idx ON payload.users USING btree (updated_at);

CREATE INDEX users_updated_at_5_idx ON payload.users USING btree (updated_at);

CREATE INDEX users_updated_at_6_idx ON payload.users USING btree (updated_at);

CREATE INDEX users_updated_at_7_idx ON payload.users USING btree (updated_at);

CREATE INDEX users_updated_at_8_idx ON payload.users USING btree (updated_at);

CREATE INDEX users_updated_at_9_idx ON payload.users USING btree (updated_at);

CREATE INDEX users_updated_at_idx ON payload.users USING btree (updated_at);

alter table "payload"."activity" add constraint "activity_pkey" PRIMARY KEY using index "activity_pkey";

alter table "payload"."payload_locked_documents" add constraint "payload_locked_documents_pkey" PRIMARY KEY using index "payload_locked_documents_pkey";

alter table "payload"."payload_locked_documents_rels" add constraint "payload_locked_documents_rels_pkey" PRIMARY KEY using index "payload_locked_documents_rels_pkey";

alter table "payload"."payload_migrations" add constraint "payload_migrations_pkey" PRIMARY KEY using index "payload_migrations_pkey";

alter table "payload"."payload_preferences" add constraint "payload_preferences_pkey" PRIMARY KEY using index "payload_preferences_pkey";

alter table "payload"."payload_preferences_rels" add constraint "payload_preferences_rels_pkey" PRIMARY KEY using index "payload_preferences_rels_pkey";

alter table "payload"."service" add constraint "service_pkey" PRIMARY KEY using index "service_pkey";

alter table "payload"."users" add constraint "users_pkey" PRIMARY KEY using index "users_pkey";

alter table "payload"."payload_locked_documents_rels" add constraint "payload_locked_documents_rels_activity_fk" FOREIGN KEY (activity_id) REFERENCES payload.activity(id) ON DELETE CASCADE not valid;

alter table "payload"."payload_locked_documents_rels" validate constraint "payload_locked_documents_rels_activity_fk";

alter table "payload"."payload_locked_documents_rels" add constraint "payload_locked_documents_rels_parent_fk" FOREIGN KEY (parent_id) REFERENCES payload.payload_locked_documents(id) ON DELETE CASCADE not valid;

alter table "payload"."payload_locked_documents_rels" validate constraint "payload_locked_documents_rels_parent_fk";

alter table "payload"."payload_locked_documents_rels" add constraint "payload_locked_documents_rels_service_fk" FOREIGN KEY (service_id) REFERENCES payload.service(id) ON DELETE CASCADE not valid;

alter table "payload"."payload_locked_documents_rels" validate constraint "payload_locked_documents_rels_service_fk";

alter table "payload"."payload_locked_documents_rels" add constraint "payload_locked_documents_rels_users_fk" FOREIGN KEY (users_id) REFERENCES payload.users(id) ON DELETE CASCADE not valid;

alter table "payload"."payload_locked_documents_rels" validate constraint "payload_locked_documents_rels_users_fk";

alter table "payload"."payload_preferences_rels" add constraint "payload_preferences_rels_parent_fk" FOREIGN KEY (parent_id) REFERENCES payload.payload_preferences(id) ON DELETE CASCADE not valid;

alter table "payload"."payload_preferences_rels" validate constraint "payload_preferences_rels_parent_fk";

alter table "payload"."payload_preferences_rels" add constraint "payload_preferences_rels_users_fk" FOREIGN KEY (users_id) REFERENCES payload.users(id) ON DELETE CASCADE not valid;

alter table "payload"."payload_preferences_rels" validate constraint "payload_preferences_rels_users_fk";


