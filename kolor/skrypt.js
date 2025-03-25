function Round(n, k)
{
    var factor = Math.pow(10, k);
    return Math.round(n*factor)/factor;
}
function oblicz() {
    let liczbaOgloszen = document.getElementById("ilosc-ogloszen").value;
    let upust = document.getElementById('upust').value;
    let kosztEl = document.getElementById('koszt');

    let cena = 2;
    if(liczbaOgloszen > 50) cena = 1;
    if(upust) cena -= 0.2;
    let koszt = liczbaOgloszen * cena;
    console.log(koszt);
    kosztEl.innerText = `Koszt ogłoszeń: ${Round(koszt, 2)} PLN`;
}
document.getElementById('oblicz').addEventListener('click', oblicz);