import DiscourseRoute from "discourse/routes/discourse";

export default DiscourseRoute.extend({
  controllerName: "index",

  model(params) {
    return this.store.findAll("action");
  },

  renderTemplate() {
    this.render("index");
  },
});
