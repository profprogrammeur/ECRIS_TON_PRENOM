
document.addEventListener("DOMContentLoaded", function () {
  // alert("assets/javascripts/game1.js")
  // console.log("DOM Loaded !")
  function message(mes) {
    document.getElementById("message").textContent = mes
    document.querySelectorAll('.word').forEach(el => el.classList.add("bg-danger"))
    document.getElementById("child_name").classList.add('bg-success')
  }
  document.getElementById("child_name").addEventListener("click", () => {
    message("GAGNÉ");
    let smiles = document.querySelectorAll(".unactivated");
    if (smiles.length > 0) {
      smiles[smiles.length - 1].classList.toggle("unactivated")
      document.getElementById("score").textContent = 4-smiles.length
    }
    else console.log("CONGRATULATION!");
    
  })
  document.querySelectorAll('.word').forEach(el => el.addEventListener("click", () => message("PERDU")))
  // document.getElementById("child_name").classList.add('bg-success')
  // document.getElementById("btn1").addEventListener("click", () => message("PERDU"))
  // document.getElementById("btn3").addEventListener("click", () => message("PERDU"))
})