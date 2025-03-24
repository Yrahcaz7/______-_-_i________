let darkened = false;

function setProperty(property, value) {
	document.documentElement.style.setProperty(property, value);
};

const THEME_PROPERTIES = ["body-fg", "body-bg", "link-normal", "link-visited", "link-hover", "user-1"];

function toggleDarkness() {
	const key = "var(--" + (darkened ? "light" : "dark");
	setProperty("--terp-fg", key + "-fg)");
	setProperty("--terp-bg", key + "-bg)");
	setProperty("--terp-input", key + "-input)");
	setProperty("--header-color", key + "-header)");
	THEME_PROPERTIES.forEach(property => {
		setProperty("--" + property, key + "-" + property + ")");
	});
	darkened = !darkened;
};

window.addEventListener("scroll", () => {
	document.getElementById("gameport").style.setProperty("height", "auto");
});
