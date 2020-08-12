import discourseComputed from "discourse-common/utils/decorators";
import Controller from "@ember/controller";
export default Controller.extend({
  cook: "Add some cookies in your browser dev console to test reading cookies.",
  @discourseComputed()
  allcookies() {
    var ca = document.cookie.split(";");
    return ca;
  },
});
