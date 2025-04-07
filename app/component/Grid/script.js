const templateFile = await fetch("./component/Grid/template.html");
const template = await templateFile.text();

let Grid = {};

Grid.format = function (movies) {
    let html = "";
    movies.forEach((movie) => {
      let movieHtml = template;
      movieHtml = movieHtml.replace("{{handler}}", `C.handlerMovie(${movie.id})`);
      movieHtml = movieHtml.replace("{{name}}", movie.name);
      movieHtml = movieHtml.replace("{{image}}", movie.image);
      html += movieHtml;
    });

    return html
}

export {Grid};