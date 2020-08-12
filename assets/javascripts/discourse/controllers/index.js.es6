import discourseComputed from "discourse-common/utils/decorators";
import Controller from "@ember/controller";
export default Controller.extend({
  cook: "Add some cookies in your browser dev console to test reading cookies.",
  @discourseComputed()
  allcookies() {
    var ca = document.cookie.split(";");
    var j = 0;
    const regex = RegExp("env=.*");
    while (j < ca.length) {
      if (regex.test(ca[j])) ca.splice(j, 1);
      else j++;
    }
    return ca;
  },
  @discourseComputed()
  allenv() {
    var name = "env=";
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(";");
    for (var i = 0; i < ca.length; i++) {
      var c = ca[i];
      while (c.charAt(0) == " ") {
        c = c.substring(1);
      }
      if (c.indexOf(name) == 0) {
        return Object.entries(JSON.parse(c.substring(name.length, c.length)));
      }
    }
    return "";
  },
});
