let templateFile = await fetch('./component/AddProfileForm/template.html');
let template = await templateFile.text();

let AddProfileForm = {};

AddProfileForm.format = function(handler){
    let html = template;
    html = html.replace('{{handler}}', handler);
    return html;
}

export {AddProfileForm};