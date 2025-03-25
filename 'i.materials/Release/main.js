let darkened = false;

const THEME_PROPERTIES = ["terp-fg", "terp-bg", "terp-input", "header-color", "body-fg", "body-bg", "link-normal", "link-visited", "link-hover", "user-1"];

function toggleDarkness() {
	const theme = (darkened ? "light" : "dark");
	THEME_PROPERTIES.forEach(property => {
		document.documentElement.style.setProperty("--" + property, "var(--" + theme + "-" + property + ")");
	});
	darkened = !darkened;
};

window.addEventListener("scroll", () => {
	document.getElementById("gameport").style.setProperty("height", "auto");
});
