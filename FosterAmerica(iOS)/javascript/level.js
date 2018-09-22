function setQuestionCookie(cname, new_question) {
    document.cookie = cname + "=" +  new_question + ";";
}

function questionWasPressed(q_number) {
    var cname = "question";
    setQuestionCookie(cname, q_number);
}

function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    console.log("document cookie is " + document.cookie);
    for(var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        console.log(cname + " = " + c);
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

function questionClick(e){
	var targ;
    targ=e.srcElement;
    targID = targ.id;
    console.log("targID = " + targID);
    console.log(typeof targID);
    questionWasPressed(targID);
    window.location = 'question.html';
}
