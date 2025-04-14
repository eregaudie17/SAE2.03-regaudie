let templateFile = await fetch('./component/AddProfileForm/template.html');
let template = await templateFile.text();

let AddProfileForm = {};

AddProfileForm.format = function(handler1){
    let html = template;
    html = html.replace('{{handler1}}', handler1);
    return html;
}

export {AddProfileForm};