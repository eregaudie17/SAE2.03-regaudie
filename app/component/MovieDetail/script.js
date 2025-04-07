const templateFile = await fetch("./component/MovieDetail/template.html");
const template = await templateFile.text();

let MovieDetail = {};

MovieDetail.format = function(d){
    let html = template;
    html = html.replace("{{image}}", d.image);
    html = html.replace("{{titre}}", d.name);
    html = html.replace("{{realisateur}}", d.director);
    html = html.replace("{{annee}}", d.year);
    html = html.replace("{{categorie}}", d.category);
    html = html.replace("{{age}}", d.min_age);
    html = html.replace("{{description}}", d.description)

    return html
}

export {MovieDetail};