const templateFile = await fetch("./component/MovieDetail/template.html");
const template = await templateFile.text();

let MovieDetail = {};

MovieDetail.format = function (movie) {
  let html = template;
  
  html = html.replace("{{image}}", movie.image);
  html = html.replace("{{titre}}", movie.name);
  html = html.replace("{{realisateur}}", movie.director);
  html = html.replace("{{annee}}", movie.year);
  html = html.replace("{{categorie}}", movie.category);
  html = html.replace("{{age}}", movie.min_age);
  html = html.replace("{{duree}}", movie.length);
  html = html.replace("{{description}}", movie.description);
  html = html.replace("{{trailer}}", movie.trailer);

  return html;
};

export {MovieDetail};