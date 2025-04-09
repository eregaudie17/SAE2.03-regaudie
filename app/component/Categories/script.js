import { Cards } from "../Cards/script.js";
import { DataMovie } from "../../data/dataMovie.js";

const templateFile = await fetch("./component/Categories/template.html");
const template = await templateFile.text();

let Category = {};

Category.format = function (category, movies) {
    let html = template;
    html = html.replace("{{category}}", category);
    let cards = Cards.formatMany(movies);
    html = html.replace("{{cards}}", cards);
    return html; 
}

Category.formatMany = async function (categories){
    let html = "";
    for(const elt of categories){
        let movies = await DataMovie.requestMovieByCategory(elt.id);
        if(movies.length == 0){
          continue;
        }
        else{
          html += Category.format(elt.name, movies);
        }
    }
    return html;
}

export {Category};