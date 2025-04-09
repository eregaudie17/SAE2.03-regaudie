let templateFile = await fetch("./component/NavBar/template.html");
let template = await templateFile.text();

let NavBar = {};

NavBar.format = function (logo, hMovie, hProfile) {
  let html = template;
  html = html.replace("{{logo}}", logo);
  html = html.replace("{{hMovie}}", hMovie);
  html = html.replace("{{hProfile}}", hProfile);
  return html;
};

export { NavBar };
