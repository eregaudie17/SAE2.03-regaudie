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

NavBar.formatProfiles = function (id, name, avatar, min_age, selected = "") {
  let html = templateProfiles;
  html = html.replaceAll("{{id}}", id);
  html = html.replaceAll("{{name}}", name);
  html = html.replace("{{avatar}}", avatar);
  html = html.replace("{{handler1}}", `C.handlerProfile(${id}, ${min_age})`);
  
  if (selected) {
      const selectedDisplay = `
          <img class="navbar__profile-img" src="../server/images/avatar/${avatar}" alt="Avatar de ${name}">
          <span class="navbar__profilename">${name}</span>
      `;
      setTimeout(() => {
          document.querySelector('.navbar__profiles-selected').innerHTML = selectedDisplay;
      }, 0);
  }
  
  return html;
}

NavBar.formatMany = function (logo, hHome, profiles, selectedId) {
  let html = template;
  let profilesList = "";
  for (let profile of profiles) {
      let selected = (profile.id == selectedId) ? " selected" : "";
      profilesList = profilesList + NavBar.formatProfiles(profile.id, profile.name, profile.avatar, profile.min_age, selected);
  }
  html = html.replace("{{logo}}", logo);
  html = html.replace("{{items}}", NavBar.formatHome(hHome));
  html = html.replace("{{profiles}}", profilesList);
  return html;
}

export { NavBar };
