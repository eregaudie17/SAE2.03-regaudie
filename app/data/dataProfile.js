// URL où se trouve le répertoire "server" sur mmi.unilim.fr
let HOST_URL = "https://mmi.unilim.fr/~regaudie4/SAE2.03-regaudie";

let DataProfile = {};

DataProfile.request = async function(userId){
    let answer = await fetch(HOST_URL + "/server/script.php?todo=getProfile&id=" + userId);  
    let data = await answer.json();
    return data;
}

DataProfile.requestAll = async function(userId){
    let answer = await fetch(HOST_URL + "/server/script.php?todo=getProfiles)");  
    let data = await answer.json();
    return data;
}

export {DataProfile};