console.log("replace")

const elements = document.querySelectorAll("[src], [href]");

elements.forEach(el => {
    if (el.src && el.src.includes("../static")) {
        el.src = el.src.replace("../static", "/static");
    }
    if (el.href && el.href.includes("../static")) {
        el.href = el.href.replace("../static", "/static");
    }
});