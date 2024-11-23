import type { CollectionConfig } from "payload";

export const Present: CollectionConfig = {
  admin: {
    group: "Content",
  },
  slug: "present",
  access: {
    read: () => true,
    create: () => true,
    update: () => true,
    delete: () => true,
  },
  fields: [
    {
      name: "description",
      type: "textarea",
      required: true,
    },
    {
      name: "title",
      type: "text",
      required: true,
    },
  ],
};
