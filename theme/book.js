document.getElementById("toc-toggle").addEventListener("click", () => {
  document.body.classList.toggle("sidebar-visible");
});

document.getElementById("toc-close").addEventListener("click", () => {
  document.body.classList.remove("sidebar-visible");
});

document.body.addEventListener("click", (e) => {
  if (e.target.id == "sidebar-overlay") {
    document.body.classList.remove("sidebar-visible");
  }
});
