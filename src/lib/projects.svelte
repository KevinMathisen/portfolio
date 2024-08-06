<script>
	import Contentbox from "./contentbox.svelte";

	let projects = [
		{
			title: "Webapp for displaying environmental data",
			link: "https://github.com/KevinMathisen/interactive-database-for-environmental-data",
			content: "A custom, interactive web application for displaying environmental data for scientists",
			svgPaths: ["technologies/svelte.svg", "languages/javascript.svg", "technologies/nginx.svg", "technologies/docker.svg", "technologies/postgres.svg"]
		},
		{
			title: "Violetmedia",
			link: "https://github.com/KevinMathisen/VioletMedia",
			content: "An android application for streaming and playing videoes from other devices and servers over a local network",
			svgPaths: ["languages/kotlin.svg"]
		},
		{
			title: "Renewables API ",
			link: "https://github.com/KevinMathisen/renewable-energy-for-countries-api",
			content: "An API serving current and historic percentage of renewables in various countries",
			svgPaths: ["languages/golang.svg", "technologies/docker.svg"]
		},
		{
			title: "Portfolio",
			link: "",
			content: "Personal portfolio developed with Svelte and SvelteKit",
			svgPaths: ["languages/javascript.svg", "technologies/svelte.svg", "technologies/nginx.svg"]
		}
	];
</script>

<div class="grid">
	{#each projects as project}
		<Contentbox title={project.title} content={project.content} svgPaths={project.svgPaths} link={project.link} />
	{/each}
</div>

<style>
	.grid {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
		grid-gap: 1em;
		padding: 1em;
	}
</style>
