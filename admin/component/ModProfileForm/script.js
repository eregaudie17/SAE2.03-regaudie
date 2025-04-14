const templateFile = await fetch('./component/ModProfileForm/template.html');
const template = await templateFile.text();

let ModProfileForm = {};

ModProfileForm.format = function(handler1, handler2){
    let html = template;
    html = html.replace('{{handler1}}', handler1);
    html = html.replace('{{handler2}}', handler2);
    return html;
}

ModProfileForm.autoFill = function(profile){
    // Sélectionner le formulaire avec la classe modProfile__form
    const form = document.querySelector('.modProfile__form');
    if (!form) return;

    // Remplir les champs avec les données du profil
    form.querySelector('input[name="name"]').value = profile.name;
    form.querySelector('input[name="avatar"]').value = profile.avatar;
    form.querySelector('input[name="min_age"]').value = profile.min_age;
}

export {ModProfileForm};