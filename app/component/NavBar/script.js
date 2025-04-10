const templateFile = await fetch("./component/NavBar/template.html");
const template = await templateFile.text();

const templateFile2 = await fetch("./component/NavBar/templateItem.html");
const templateItem = await templateFile2.text();

const templateFile3 = await fetch("./component/NavBar/templateProfiles.html");
const templateProfiles = await templateFile3.text();

let NavBar = {};

NavBar.formatHome = function (hHome) {
  let html = templateItem;
  html = html.replace("{{handler}}", hHome);
  html = html.replace("{{item}}", "Home");
  return html;
};

NavBar.formatProfiles = function (id, name, avatar) {
  let html = templateProfiles;
  html = html.replaceAll("{{id}}", id);
  html = html.replaceAll("{{name}}", name);
  html = html.replace("{{avatar}}", avatar);
  return html;
};

NavBar.formatMany = function (logo, hHome, profiles) {
  let html = template;
  let profilesList = "";
  for (let profile of profiles) {
    profilesList = profilesList + NavBar.formatProfiles(profile.id, profile.name, profile.avatar);
  }
  html = html.replace("{{logo}}", logo);
  html = html.replace("{{items}}", NavBar.formatHome(hHome));
  html = html.replace("{{profiles}}", profilesList);
  return html;
}

export { NavBar };
