<script>
	import Contentbox from "./contentbox.svelte";

	let projects = [
		{
			title: "Webapp for displaying environmental data",
			content: "A custom, interactive web application for displaying environmental data for scientists",
			svgPaths: ["technologies/svelte.svg", "languages/javascript.svg", "technologies/nginx.svg", "technologies/docker.svg", "technologies/postgres.svg"]
		},
		{
			title: "Violetmedia",
			content: "An android application for streaming and playing videoes from other devices and servers over a local network",
			svgPaths: ["languages/kotlin.svg"]
		},
		{
			title: "Renewables API ",
			content: "An API serving current and historic percentage of renewables in various countries",
			svgPaths: ["languages/golang.svg", "technologies/docker.svg"]
		},
		{
			title: "Portfolio",
			content: "Personal portfolio developed with Svelte and SvelteKit",
			svgPaths: ["languages/javascript.svg", "technologies/svelte.svg", "technologies/nginx.svg"]
		}
	];
</script>

<div class="grid">
	{#each projects as project}
		<Contentbox title={project.title} content={project.content} svgPaths={project.svgPaths} />
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
