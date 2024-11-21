import type { CollectionConfig } from "payload";

export const Activity: CollectionConfig = {
  admin: {
    group: "Media",
  },
  slug: "activity",
  access: {
    read: () => true,
  },
  fields: [],
  upload: true,
};
