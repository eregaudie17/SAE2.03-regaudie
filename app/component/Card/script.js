let templateFile = await fetch("./component/Card/template.html");
let template = await templateFile.text();

let Card = {};

Card.format = function (titre) {
    let html = template;
    html = html.replace("{{titre}}", titre);
    return html;
};

export {Card};