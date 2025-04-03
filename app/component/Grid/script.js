const templateFile = await fetch("./component/Grid/template.html");
const template = await templateFile.text();

const templateFile2 = await fetch("./component/Grid/templateCard.html");
const templateCard = await templateFile2.text();

let Grid = {};

Grid.formatOneCard = function (name, image) {
    let html = templateCard;
    html = html.replace("{{name}}", name);
    html = html.replace("{{image}}", image);
    return html;
};

Grid.format = function(movie){
    let html = template;
    let crd = "";
    for(let cr of movie){
        crd = crd + Grid.formatOneCard(cr.name, cr.image);
    }
    html = html.replace("{{cards}}", crd);

    return html
}

export {Grid};