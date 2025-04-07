const templateFile = await fetch("./component/Grid/template.html");
const template = await templateFile.text();

const templateFile2 = await fetch("./component/Grid/templateCard.html");
const templateCard = await templateFile2.text();

let Grid = {};

Grid.formatOneCard = function (handler, id, name, image) {
    let html = templateCard;
    html = html.replace("{{handler}}", handler);
    html = html.replace("{{id}}", id);
    html = html.replace("{{name}}", name);
    html = html.replace("{{image}}", image);
    return html;
};

Grid.format = function(handler, movie){
    let html = template;
    let crd = "";
    for(let cr of movie){
        crd = crd + Grid.formatOneCard(handler, cr.id, cr.name, cr.image);
    }
    html = html.replace("{{cards}}", crd);

    return html
}

export {Grid};