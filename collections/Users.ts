import { createClient } from "@/utils/supabase/server";
import { redirect } from "next/navigation";
import type { AuthStrategyResult, CollectionConfig } from "payload";

export const Users: CollectionConfig = {
  slug: "users",
  admin: {
    useAsTitle: "email",
  },
  auth: {
    disableLocalStrategy: true,
    strategies: [
      {
        name: "supabase",
        authenticate: async ({ payload }) => {
          const supabase = await createClient();

          let user: AuthStrategyResult["user"] = null;

          const {
            data: { user: supabaseUser },
          } = await supabase.auth.getUser();

          if (supabaseUser) {
            const payloadUser = (
              await payload.find({
                collection: "users",
                where: { email: { equals: supabaseUser.email } },
              })
            ).docs[0];

            if (payloadUser)
              user = {
                id: payloadUser.id,
                email: payloadUser.email,
                collection: "users",
              };
          }

          return { user };
        },
      },
    ],
  },
  hooks: {
    afterLogout: [
      async () => {
        const supabase = await createClient();
        await supabase.auth.signOut();
        redirect("/");
      },
    ],
  },
  fields: [
    {
      name: "email",
      type: "email",
      required: true,
      unique: true,
      admin: {
        readOnly: true,
      },
    },
  ],
};
