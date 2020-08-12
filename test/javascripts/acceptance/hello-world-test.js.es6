import { acceptance } from "helpers/qunit-helpers";

acceptance("hello-world", { loggedIn: true });

test("hello-world works", async assert => {
  await visit("/admin/plugins/hello-world");

  assert.ok(false, "it shows the hello-world button");
});
