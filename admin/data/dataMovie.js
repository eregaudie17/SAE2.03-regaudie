// URL où se trouve le répertoire "server" sur mmi.unilim.fr
let HOST_URL = "https://mmi.unilim.fr/~regaudie4/SAE2.03-regaudie";
//let HOST_URL = "https://regaudie-sae203.mmi-limoges.fr";
//let HOST_URL = ".."; 


let DataMovie = {};

 /**
     * Fetches data from the server based on the specified day.
     *
     * @param {*} fdata
     * @returns The response from the server.
     
     */
DataMovie.add = async function(fdata){
    
    let config = {
        method: "POST",
        body: fdata
    };
    let answer = await fetch(HOST_URL + "/server/script.php?todo=addMovie", config);
    let data = await answer.json();
    return data;
}

export {DataMovie};