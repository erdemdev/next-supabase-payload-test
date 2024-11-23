create sequence "payload"."present_id_seq";

create table "payload"."present" (
    "id" integer not null default nextval('payload.present_id_seq'::regclass),
    "description" character varying not null,
    "title" character varying not null,
    "updated_at" timestamp(3) with time zone not null default now(),
    "created_at" timestamp(3) with time zone not null default now()
);


alter table "payload"."payload_locked_documents_rels" add column "present_id" integer;

alter sequence "payload"."present_id_seq" owned by "payload"."present"."id";

CREATE INDEX payload_locked_documents_rels_present_id_1_idx ON payload.payload_locked_documents_rels USING btree (present_id);

CREATE INDEX payload_locked_documents_rels_present_id_2_idx ON payload.payload_locked_documents_rels USING btree (present_id);

CREATE INDEX payload_locked_documents_rels_present_id_idx ON payload.payload_locked_documents_rels USING btree (present_id);

CREATE INDEX present_created_at_1_idx ON payload.present USING btree (created_at);

CREATE INDEX present_created_at_2_idx ON payload.present USING btree (created_at);

CREATE INDEX present_created_at_idx ON payload.present USING btree (created_at);

CREATE UNIQUE INDEX present_pkey ON payload.present USING btree (id);

CREATE INDEX present_updated_at_1_idx ON payload.present USING btree (updated_at);

CREATE INDEX present_updated_at_2_idx ON payload.present USING btree (updated_at);

CREATE INDEX present_updated_at_idx ON payload.present USING btree (updated_at);

alter table "payload"."present" add constraint "present_pkey" PRIMARY KEY using index "present_pkey";

alter table "payload"."payload_locked_documents_rels" add constraint "payload_locked_documents_rels_present_fk" FOREIGN KEY (present_id) REFERENCES payload.present(id) ON DELETE CASCADE not valid;

alter table "payload"."payload_locked_documents_rels" validate constraint "payload_locked_documents_rels_present_fk";


