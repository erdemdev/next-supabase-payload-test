import type { CollectionConfig } from "payload";

export const Service: CollectionConfig = {
  admin: {
    group: "Media",
  },
  slug: "service",
  access: {
    read: () => true,
    create: () => true,
    update: () => true,
    delete: () => true,
  },
  fields: [],
  upload: true,
};
