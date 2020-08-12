export default function() {
  this.route("hello-world", function() {
    this.route("actions", function() {
      this.route("show", { path: "/:id" });
    });
  });
};
