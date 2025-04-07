const templateFile = await fetch("./component/MovieDetail/template.html");
const template = await templateFile.text();

let MovieDetail = {};

MovieDetail.format = function (movies) {
    let html = "";
    movies.forEach((movie) => {
        let movieHtml = template;
        movieHtml = movieHtml.replace("{{image}}", movie.image);
        movieHtml = movieHtml.replace("{{name}}", movie.name);
        movieHtml = movieHtml.replace("{{director}}", movie.director);
        movieHtml = movieHtml.replace("{{year}}", movie.year);
        movieHtml = movieHtml.replace("{{category}}", movie.category);
        movieHtml = movieHtml.replace("{{min_age}}", movie.min_age);
        movieHtml = movieHtml.replace("{{length}}", movie.length);
        movieHtml = movieHtml.replace("{{description}}", movie.description);
        movieHtml = movieHtml.replace("{{trailer}}", movie.trailer);
        html += movieHtml;
      });
  
    return html;
  };

export {MovieDetail};
    