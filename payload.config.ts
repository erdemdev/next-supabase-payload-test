import path from "path";
import { fileURLToPath } from "url";
import { buildConfig } from "payload";
import { postgresAdapter } from "@payloadcms/db-postgres";
import { lexicalEditor } from "@payloadcms/richtext-lexical";
import { s3Storage } from "@payloadcms/storage-s3";
import sharp from "sharp";
import { Users } from "./collections/Users";
import { Service } from "./collections/Service";
import { Activity } from "./collections/Activity";

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
  collections: [Users, Service, Activity],
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
    s3Storage({
      collections: {
        service: true,
      },
      bucket: "service",
      config: getStorageConfig(),
    }),
    s3Storage({
      collections: {
        activity: true,
      },
      bucket: "activity",
      config: getStorageConfig(),
    }),
  ],
});

function getStorageConfig() {
  return {
    credentials: {
      accessKeyId: process.env.S3_ACCESS_KEY_ID!,
      secretAccessKey: process.env.S3_SECRET_ACCESS_KEY!,
    },
    region: process.env.S3_REGION,
    endpoint: process.env.S3_ENDPOINT,
    forcePathStyle: true,
  };
}
