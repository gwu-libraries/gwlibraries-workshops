TEXT = ` 
An organization that connects African leaders to cybersecurity education announced a partnership with the GW School of Business last month, aiming to enhance leaders’ understanding of cybersecurity and cyber diplomacy practices.

Pape Cissé, an adjunct professor of information technology and cofounder of the Center for Cyber Diplomacy and Leadership, said the partnership between the CCDL and GWSB will include conferences and seminars about cybersecurity and policymaking with African leaders and GWSB community members during the academic year. Cissé said as technology rapidly advances, the partnership aims to help African heads of state, ambassadors, ministers and government officials shape policy, prepare and defend against cyberattacks, while also providing GWSB students the opportunity to help solve real-world problems.
`
TOKENIZED_TEXT = `
African African African An Business CCDL Center Cissé Cissé Cyber Diplomacy GW GWSB GWSB GWSB Leadership Pape School a about academic adjunct advances against aiming aims also ambassadors an and and and and and and and and and announced as between cofounder community conferences connects cyber cyberattacks cybersecurity cybersecurity cybersecurity defend diplomacy during education enhance for government heads help help include information last leaders leaders leaders members ministers month of of of of of officials opportunity organization partnership partnership partnership policy policymaking practices prepare problems professor providing rapidly real said said seminars shape solve state students technology technology that the the the the the the the to to to to understanding while will with with world year
`

function createP(text, div) {
    let p = document.createElement('p');
    p.innerHTML = text;
    div.appendChild(p);
}

function addText(e) {
    let textDiv = document.getElementById('text');
    textDiv.innerHTML = "";
    TEXT.split('\n\n').forEach(paragraph => createP(paragraph, textDiv));
    textDiv.removeEventListener("click", addText);
}

function textDisplay() {
    let tokensDiv =  document.getElementById('tokens');
    createP(TOKENIZED_TEXT, tokensDiv)
    let textDiv = document.getElementById('text');
    textDiv.addEventListener("click", addText);
}

window.onload = textDisplay;