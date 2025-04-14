// URL où se trouve le répertoire "server" sur mmi.unilim.fr
let HOST_URL = "https://mmi.unilim.fr/~regaudie4/SAE2.03-regaudie";

let DataProfile = {};

 /**
     * Fetches data from the server based on the specified day.
     *
     * @param {*} fdata
     * @returns The response from the server.
     
     */
DataProfile.add = async function(fdata){
    
    let config = {
        method: "POST",
        body: fdata
    };
    let answer = await fetch(HOST_URL + "/server/script.php?todo=addProfile", config);
    let data = await answer.json();
    return data;
}

DataProfile.update = async function(fdata){
    let config = {
        method: "POST",
        body: fdata
    };
    let answer = await fetch(HOST_URL + "/server/script.php?todo=updateProfile", config);
    let data = await answer.json();
    return data;
}

DataProfile.request = async function(userId){
    let answer = await fetch(HOST_URL + "/server/script.php?todo=getProfile&id=" + userId);  
    let data = await answer.json();
    return data;
}

export {DataProfile};