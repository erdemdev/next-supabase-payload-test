import type { CollectionConfig } from "payload";

export const Activity: CollectionConfig = {
  admin: {
    group: "Media",
  },
  slug: "activity",
  access: {
    read: () => true,
    create: () => true,
    update: () => true,
    delete: () => true,
  },
  fields: [],
  upload: true,
};
