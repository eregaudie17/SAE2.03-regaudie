const templateFile = await fetch("./component/AccProfiles/template.html");
const template = await templateFile.text();

const templateFile2 = await fetch("./component/AccProfiles/templateProfile.html");
const templateProfile = await templateFile2.text();

let Profiles = {};

Profiles.format = function (id, avatar, name, min_age) {
    let html = templateProfile;
    html = html.replace("{{handler}}", `C.getPage(${id}, ${min_age})`);
    html = html.replace("{{avatar}}", avatar);
    html = html.replace("{{name}}", name);

    return html;
}

Profiles.formatMany = function (profiles) {
    let html = template;
    let profilesList = "";
    for (let profile of profiles) {
        profilesList = profilesList + Profiles.format(profile.id, profile.avatar, profile.name, profile.min_age);
    }
    html = html.replace("{{profiles}}", profilesList);
    return html;
}

export { Profiles };