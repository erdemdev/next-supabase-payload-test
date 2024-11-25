import path from "path";
import { fileURLToPath } from "url";
import { buildConfig } from "payload";
import { postgresAdapter } from "@payloadcms/db-postgres";
import { lexicalEditor } from "@payloadcms/richtext-lexical";
import { s3Storage, S3StorageOptions } from "@payloadcms/storage-s3";
import sharp from "sharp";
import { Users } from "./collections/Users";
import { Service } from "./collections/Service";
import { Activity } from "./collections/Activity";
import { Present } from "./collections/Present";

const filename = fileURLToPath(import.meta.url);
const dirname = path.dirname(filename);

export default buildConfig({
  admin: {
    user: Users.slug,
    importMap: {
      baseDir: path.resolve(dirname),
    },
    routes: {
      login: "/../sign-in",
    },
    avatar: {
      Component: "/components/null",
    },
    components: {
      logout: {
        Button: "/components/null",
      },
    },
  },
  collections: [Users, Service, Activity, Present],
  editor: lexicalEditor(),
  secret: process.env.PAYLOAD_SECRET!,
  typescript: {
    outputFile: path.resolve(dirname, "payload-types.ts"),
  },
  db: postgresAdapter({
    schemaName: "payload",
    pool: {
      connectionString: process.env.DATABASE_URI!,
    },
  }),
  sharp,
  plugins: [
    s3Storage(
      getStorageConfig({
        bucket: "service",
        collections: {
          service: true,
          // service: {
          //   generateFileURL: ({ filename }) => {
          //     return `${process.env.NEXT_PUBLIC_SUPABASE_URL}/storage/v1/object/public/service/${filename}`;
          //   },
          // },
        },
      }),
    ),
    s3Storage(
      getStorageConfig({
        bucket: "activity",
        collections: {
          activity: true,
        },
      }),
    ),
  ],
});

function getStorageConfig(
  overrides: Pick<S3StorageOptions, "bucket" | "collections">,
): S3StorageOptions {
  return {
    config: {
      credentials: {
        accessKeyId: process.env.S3_ACCESS_KEY_ID!,
        secretAccessKey: process.env.S3_SECRET_ACCESS_KEY!,
      },
      region: process.env.S3_REGION,
      endpoint: process.env.S3_ENDPOINT,
      forcePathStyle: true,
    },
    ...overrides,
  };
}
