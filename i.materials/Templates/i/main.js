let darkened = false;

function setProperty(property, value) {
	document.documentElement.style.setProperty(property, value);
};

function toggleDarkness() {
	const key = "var(--" + (darkened ? "light" : "dark");
	setProperty("transition", "all 1s ease");
	setProperty("--terp-fg", key + "-fg)");
	setProperty("--terp-bg", key + "-bg)");
	setProperty("--terp-input", key + "-input)");
	setProperty("--header-color", key + "-header)");
	setProperty("--body-fg", key + "-body-fg)");
	setProperty("--body-bg", key + "-body-bg)");
	setProperty("--user-1", key + "-user-1)");
	darkened = !darkened;
};

window.addEventListener("scroll", () => {
	document.getElementById("gameport").style.setProperty("height", "auto");
});
