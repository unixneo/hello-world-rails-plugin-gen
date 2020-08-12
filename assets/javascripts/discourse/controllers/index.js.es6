import discourseComputed from "discourse-common/utils/decorators";
import Controller from "@ember/controller";
export default Controller.extend({
  cook: "Chef Joe",
  @discourseComputed()
  allcookies() {
    var ca = document.cookie.split(";");
    return ca;
  },
});
