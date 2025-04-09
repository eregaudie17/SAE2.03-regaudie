const templateFile = await fetch("./component/Profiles/template.html");
const template = await templateFile.text();

const templateFile2 = await fetch("./component/Profiles/templateProfile.html");
const templateProfile = await templateFile2.text();

let Profiles = {};

Profiles.format = function (handler, avatar, name) {
    let html = templateProfile;
    html = html.replace("{{handler}}", handler);
    html = html.replace("{{avatar}}", avatar);
    html = html.replace("{{name}}", name);

    return html;
}

Profiles.formatMany = function (handler, profiles) {
    let html = template;
    let profilesList = "";
    for (let profile of profiles) {
        profilesList = profilesList + Profiles.format(handler, profile.avatar, profile.name);
    }
    html = html.replace("{{profiles}}", profilesList);
    return html;
}

export { Profiles };