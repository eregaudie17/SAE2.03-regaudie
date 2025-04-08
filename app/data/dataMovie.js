// URL où se trouve le répertoire "server" sur mmi.unilim.fr
let HOST_URL = "https://mmi.unilim.fr/~regaudie4/SAE2.03-regaudie";

let DataMovie = {};

DataMovie.request = async function(){
    let answer = await fetch(HOST_URL + "/server/script.php?todo=readmovies");  
    let data = await answer.json();
    return data;
}

DataMovie.categories = async function(){
    let answer = await fetch(HOST_URL + "/server/script.php?todo=getCategories");  
    let data = await answer.json();
    return data;
}

DataMovie.requestMovieByCategory = async function(category){
    let answer = await fetch(HOST_URL + "/server/script.php?todo=readMoviesByCategories&category=" + category);  
    let data = await answer.json();
    return data;
}

DataMovie.detail = async function(id){
    let answer = await fetch(HOST_URL + "/server/script.php?todo=seeMovie&id=" + id);
    let data = await answer.json();
    return data
}

/* C'EST QUOI async/await ?
    
   Il y a des instructions qui prennent du temps sans qu'on puisse prédire combien.
   fetch (et answer.json() ) en font partie.
   Il n'est en effet pas possible de savoir combien de temps le serveur prendra à nous répondre.
   Peut-être même qu'il est en panne et ne répondra pas du tout !
   Le mot clé await permet de dire à javascript qu'il faut ATTENDRE la réponse du serveur avant de 
   poursuivre l'exécution du code (sinon on va vouloir lire les données avant de les avoir reçues).
   Et pour pouvoir utiliser await, il faut ajouter le mot clé async à la fonction.

*/

export {DataMovie};