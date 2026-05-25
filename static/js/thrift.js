(function () {
  function init() {
    // decorate section headers with anchors
    document.querySelectorAll("h2, h3, h4, h5, h6").forEach(function (el) {
      const id = el.getAttribute("id");
      const icon = "¶";
      if (id && !el.querySelector(":scope > .headerlink")) {
        const a = document.createElement("a");
        a.classList.add("headerlink");
        a.setAttribute("href", "#" + id);
        a.setAttribute("aria-label", "Link to this section");
        a.textContent = icon;
        el.appendChild(a);
      }
    });

    document.querySelectorAll("div.tabbable").forEach(function (tabbable) {
      tabbable.querySelectorAll('[data-toggle="tab"]').forEach(function (link) {
        link.addEventListener("click", function (e) {
          e.preventDefault();

          tabbable
            .querySelectorAll('[data-toggle="tab"]')
            .forEach(function (l) {
              l.parentElement.classList.remove("active");
            });
          tabbable.querySelectorAll(".tab-pane").forEach(function (p) {
            p.classList.remove("active");
          });

          link.parentElement.classList.add("active");
          const href = link.getAttribute("href");
          if (!href) {
            return;
          }
          const id = href.replace("#", "");
          const targetPane = tabbable.querySelector(`[id="${id}"]`);
          if (targetPane) {
            targetPane.classList.add("active");
          }
        });
      });

      // activate initial tab on load
      tabbable.querySelector("li.active a[data-toggle='tab']")?.click();
    });
  }

  if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", init);
  } else {
    init();
  }
})();
