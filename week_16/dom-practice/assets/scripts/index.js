console.log("Hello! This is working!")

console.log("This is the value of document", document);

console.log("This is the value of an element with the ID goodHeader", document.getElementById("goodHeader"))

const goodHeaderEl = document.getElementById("goodHeader")

console.log("good headers text content", goodHeaderEl.textContent);

setTimeout(1000);

goodHeaderEl.textContent = "Surprise! This is a a new header";

const colorfulSectionEl = document.getElementById("colorfulSection");

colorfulSectionEl.className = "red"

const newSectionEl = document.createElement("section");

newSectionEl.textContent = "great new section";

newSectionEl.className = "blue";

colorfulSectionEl.appendChild(newSectionEl);

colorfulSectionEl.addEventListener("click", (event) => {
  alert("hey");
  // console.log("a click on the colorful section did in fact happen")
  // console.log("event", event)
});

document.addEventListener("click", (event) => {
  console.log("click")
})
