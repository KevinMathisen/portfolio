<script>
	import Imagebox from "./imagebox.svelte";

	/**
     * @type {string[]}
     */
	export let titles = [];
	
	/**
	 * @type {string[]}
	 */
	export let svgPaths = [];

	export let path = "";
</script>

<div class="grid">
	{#each titles as title, i}
		<Imagebox title={title} svgPath={path+svgPaths[i]} />
	{/each}
</div>

<style>
	.grid {
		display: grid;
		grid-template-columns: repeat(auto-fit, minmax(120px, 1fr));
		grid-gap: 1em;
		padding: 1em;
	}
</style>

