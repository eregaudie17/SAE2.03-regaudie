const templateFile = await fetch("./component/Cards/template.html");
const template = await templateFile.text();

let Cards = {};

Cards.format = function (movie){
      let html = template;
      html = html.replace("{{handler}}", `C.handlerMovie(${movie.id})`);
      html = html.replace("{{category}}", movie.category);
      html = html.replace("{{name}}", movie.name);
      html = html.replace("{{image}}", movie.image);
      
      return html
    }

    Cards.formatMany = function (movies){
      let html = "";
      for(const movie of movies){
        html = html + Cards.format(movie);
      }
      
      return html
    }

export {Cards};