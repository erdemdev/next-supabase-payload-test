SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6
-- Dumped by pg_dump version 15.7 (Ubuntu 15.7-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', 'e7a5ed66-1449-4828-97a5-edc7678de822', 'authenticated', 'authenticated', 'test@gmail.com', '$2a$10$IbJOZdlvtnk2EJAgULBWW.foYOb.7vqxKEqxoGtllOGOLZvQQnphC', '2024-11-21 12:25:10.551173+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-11-23 18:40:57.824457+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "e7a5ed66-1449-4828-97a5-edc7678de822", "email": "test@gmail.com", "email_verified": false, "phone_verified": false}', NULL, '2024-11-21 12:25:10.540508+00', '2024-11-23 18:40:57.827507+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('e7a5ed66-1449-4828-97a5-edc7678de822', 'e7a5ed66-1449-4828-97a5-edc7678de822', '{"sub": "e7a5ed66-1449-4828-97a5-edc7678de822", "email": "test@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2024-11-21 12:25:10.547281+00', '2024-11-21 12:25:10.547329+00', '2024-11-21 12:25:10.547329+00', '23bae1c0-dd89-445a-a2ac-1f1a9871ece4');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: activity; Type: TABLE DATA; Schema: payload; Owner: postgres
--

INSERT INTO "payload"."activity" ("id", "updated_at", "created_at", "url", "thumbnail_u_r_l", "filename", "mime_type", "filesize", "width", "height", "focal_x", "focal_y") VALUES
	(34, '2024-11-23 19:13:10+00', '2024-11-23 19:13:10+00', NULL, NULL, '1634636111.jpg', 'image/jpeg', 48771, 401, 436, 50, 50),
	(35, '2024-11-23 19:13:10.156+00', '2024-11-23 19:13:10.156+00', NULL, NULL, '1635178707.jpg', 'image/jpeg', 299281, 794, 913, 50, 50),
	(36, '2024-11-23 19:13:10.279+00', '2024-11-23 19:13:10.279+00', NULL, NULL, '1637265322.jpg', 'image/jpeg', 209557, 1228, 784, 50, 50),
	(37, '2024-11-23 19:13:10.407+00', '2024-11-23 19:13:10.407+00', NULL, NULL, '1641065408.jpg', 'image/jpeg', 152211, 592, 589, 50, 50),
	(38, '2024-11-23 19:13:10.528+00', '2024-11-23 19:13:10.528+00', NULL, NULL, '1642003719.jpg', 'image/jpeg', 54151, 229, 281, 50, 50),
	(39, '2024-11-23 19:13:10.652+00', '2024-11-23 19:13:10.652+00', NULL, NULL, '1643556355.jpg', 'image/jpeg', 65748, 369, 386, 50, 50);


--
-- Data for Name: payload_locked_documents; Type: TABLE DATA; Schema: payload; Owner: postgres
--



--
-- Data for Name: present; Type: TABLE DATA; Schema: payload; Owner: postgres
--

INSERT INTO "payload"."present" ("id", "description", "title", "updated_at", "created_at") VALUES
	(1, 'test', 'test', '2024-11-23 19:18:36.592+00', '2024-11-23 19:18:36.592+00'),
	(2, 'tesdfdfd', 'testses', '2024-11-23 19:23:30.832+00', '2024-11-23 19:23:30.832+00'),
	(3, 'test', 'testtest', '2024-11-23 19:23:56.387+00', '2024-11-23 19:23:56.387+00'),
	(4, 'testt', 'sdtest', '2024-11-23 19:28:35.066+00', '2024-11-23 19:28:35.066+00');


--
-- Data for Name: service; Type: TABLE DATA; Schema: payload; Owner: postgres
--

INSERT INTO "payload"."service" ("id", "updated_at", "created_at", "url", "thumbnail_u_r_l", "filename", "mime_type", "filesize", "width", "height", "focal_x", "focal_y") VALUES
	(36, '2024-11-23 18:45:37.165+00', '2024-11-23 18:45:37.165+00', NULL, NULL, '17806724_10155211804433417_1043610072_n.gif', 'image/gif', 1294611, 194, 228, 50, 50),
	(37, '2024-11-23 19:12:41.649+00', '2024-11-23 19:12:41.649+00', NULL, NULL, '3ac.jpg', 'image/jpeg', 13821, 409, 509, 50, 50);


--
-- Data for Name: users; Type: TABLE DATA; Schema: payload; Owner: postgres
--

INSERT INTO "payload"."users" ("id", "updated_at", "created_at", "email") VALUES
	(2, '2024-11-21 18:57:17.187+00', '2024-11-21 18:57:17.187+00', 'test@gmail.com');


--
-- Data for Name: payload_locked_documents_rels; Type: TABLE DATA; Schema: payload; Owner: postgres
--



--
-- Data for Name: payload_migrations; Type: TABLE DATA; Schema: payload; Owner: postgres
--

INSERT INTO "payload"."payload_migrations" ("id", "name", "batch", "updated_at", "created_at") VALUES
	(1, 'dev', -1, '2024-11-23 19:18:28.531+00', '2024-11-21 12:35:17.585+00');


--
-- Data for Name: payload_preferences; Type: TABLE DATA; Schema: payload; Owner: postgres
--



--
-- Data for Name: payload_preferences_rels; Type: TABLE DATA; Schema: payload; Owner: postgres
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") VALUES
	('activity', 'activity', NULL, '2024-11-21 12:31:55.74185+00', '2024-11-21 12:31:55.74185+00', true, false, NULL, NULL, NULL),
	('service', 'service', NULL, '2024-11-21 12:31:58.409716+00', '2024-11-21 12:31:58.409716+00', true, false, NULL, NULL, NULL);


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") VALUES
	('53a00554-b036-44c8-bc02-20d2d6e9bc3a', 'service', '17806724_10155211804433417_1043610072_n.gif', NULL, '2024-11-23 18:45:38.198607+00', '2024-11-23 18:45:38.198607+00', '2024-11-23 18:45:38.198607+00', '{"eTag": "\"281ae73b94766949b5593aad0c0ed2b3\"", "size": 1294611, "mimetype": "image/gif", "cacheControl": "no-cache", "lastModified": "2024-11-23T18:45:38.168Z", "contentLength": 1294611, "httpStatusCode": 200}', '584f937b-d305-4d59-8f69-bde09108cfa6', NULL, '{}'),
	('23796f9d-b6d2-48fa-805d-f28413e28ef8', 'service', '3ac.jpg', NULL, '2024-11-23 19:12:41.707001+00', '2024-11-23 19:12:41.707001+00', '2024-11-23 19:12:41.707001+00', '{"eTag": "\"808ebd5fe9556d0da33f3b51597ea877\"", "size": 13821, "mimetype": "image/jpeg", "cacheControl": "no-cache", "lastModified": "2024-11-23T19:12:41.701Z", "contentLength": 13821, "httpStatusCode": 200}', 'f3c031d2-2205-4118-8f62-d99ace38f221', NULL, '{}'),
	('308d76c7-1d73-42db-bbfb-ee1133b60da2', 'activity', '1634636111.jpg', NULL, '2024-11-23 19:13:10.032205+00', '2024-11-23 19:13:10.032205+00', '2024-11-23 19:13:10.032205+00', '{"eTag": "\"0473214ec77ce0eb35469fbbb02030b0\"", "size": 48771, "mimetype": "image/jpeg", "cacheControl": "no-cache", "lastModified": "2024-11-23T19:13:10.026Z", "contentLength": 48771, "httpStatusCode": 200}', 'f123b089-206e-46ac-b473-885c3030a898', NULL, '{}'),
	('cda087a2-c3eb-48ea-b7e9-d38e96a23aaf', 'activity', '1635178707.jpg', NULL, '2024-11-23 19:13:10.186815+00', '2024-11-23 19:13:10.186815+00', '2024-11-23 19:13:10.186815+00', '{"eTag": "\"b84a3833d70c5087a173619fc087c842\"", "size": 299281, "mimetype": "image/jpeg", "cacheControl": "no-cache", "lastModified": "2024-11-23T19:13:10.177Z", "contentLength": 299281, "httpStatusCode": 200}', '8aa679d1-fefe-4f27-883e-e361eb160ed3', NULL, '{}'),
	('933acfdc-33b7-47e2-9bc8-27a525069d28', 'activity', '1637265322.jpg', NULL, '2024-11-23 19:13:10.317846+00', '2024-11-23 19:13:10.317846+00', '2024-11-23 19:13:10.317846+00', '{"eTag": "\"394b73f95211f01236cdb532c4e75ccb\"", "size": 209557, "mimetype": "image/jpeg", "cacheControl": "no-cache", "lastModified": "2024-11-23T19:13:10.301Z", "contentLength": 209557, "httpStatusCode": 200}', 'b24b3308-dbdc-4bf2-8f7e-ad1b14753ef7', NULL, '{}'),
	('b23ef543-14da-483f-90c6-bc7a58a44fd3', 'activity', '1641065408.jpg', NULL, '2024-11-23 19:13:10.430661+00', '2024-11-23 19:13:10.430661+00', '2024-11-23 19:13:10.430661+00', '{"eTag": "\"f0d756201ac4bf610cb6b42bf5031fbe\"", "size": 152211, "mimetype": "image/jpeg", "cacheControl": "no-cache", "lastModified": "2024-11-23T19:13:10.425Z", "contentLength": 152211, "httpStatusCode": 200}', '75f301f0-2dd4-4af3-9656-df018050dcde', NULL, '{}'),
	('1b8b9687-5c42-44ca-9b06-e30cbadff5d1', 'activity', '1642003719.jpg', NULL, '2024-11-23 19:13:10.551473+00', '2024-11-23 19:13:10.551473+00', '2024-11-23 19:13:10.551473+00', '{"eTag": "\"8e5198d8ea0728645e09071da6005258\"", "size": 54151, "mimetype": "image/jpeg", "cacheControl": "no-cache", "lastModified": "2024-11-23T19:13:10.548Z", "contentLength": 54151, "httpStatusCode": 200}', 'c6856818-3799-4f99-a6d0-822ea2c381cd', NULL, '{}'),
	('8dbd9a58-dbaf-4cea-9fb6-b1dced2af152', 'activity', '1643556355.jpg', NULL, '2024-11-23 19:13:10.679337+00', '2024-11-23 19:13:10.679337+00', '2024-11-23 19:13:10.679337+00', '{"eTag": "\"3660df47ff51e94613c91e9dc0c4de82\"", "size": 65748, "mimetype": "image/jpeg", "cacheControl": "no-cache", "lastModified": "2024-11-23T19:13:10.676Z", "contentLength": 65748, "httpStatusCode": 200}', '13a9e7eb-6437-44c3-a463-8448ef11857a', NULL, '{}');


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 12, true);


--
-- Name: activity_id_seq; Type: SEQUENCE SET; Schema: payload; Owner: postgres
--

SELECT pg_catalog.setval('"payload"."activity_id_seq"', 39, true);


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE SET; Schema: payload; Owner: postgres
--

SELECT pg_catalog.setval('"payload"."payload_locked_documents_id_seq"', 1, false);


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE SET; Schema: payload; Owner: postgres
--

SELECT pg_catalog.setval('"payload"."payload_locked_documents_rels_id_seq"', 1, false);


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE SET; Schema: payload; Owner: postgres
--

SELECT pg_catalog.setval('"payload"."payload_migrations_id_seq"', 1, true);


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE SET; Schema: payload; Owner: postgres
--

SELECT pg_catalog.setval('"payload"."payload_preferences_id_seq"', 1, false);


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE SET; Schema: payload; Owner: postgres
--

SELECT pg_catalog.setval('"payload"."payload_preferences_rels_id_seq"', 1, false);


--
-- Name: present_id_seq; Type: SEQUENCE SET; Schema: payload; Owner: postgres
--

SELECT pg_catalog.setval('"payload"."present_id_seq"', 4, true);


--
-- Name: service_id_seq; Type: SEQUENCE SET; Schema: payload; Owner: postgres
--

SELECT pg_catalog.setval('"payload"."service_id_seq"', 37, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: payload; Owner: postgres
--

SELECT pg_catalog.setval('"payload"."users_id_seq"', 2, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
