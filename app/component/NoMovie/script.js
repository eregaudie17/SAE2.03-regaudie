const templateFile = await fetch("./component/NoMovie/template.html");
const template = await templateFile.text();

let NoMovie = {};

NoMovie.format = function (titre, subtitle) {
    let html = template;
    html = html.replace("{{titre}}", titre);
    html = html.replace("{{subtitle}}", subtitle);
    return html;
};

export {NoMovie}