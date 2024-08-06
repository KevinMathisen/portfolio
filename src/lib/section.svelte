<script>
	import Dynamictext from "./dynamictext.svelte";
	import '../global.css';

	export let title = "";
</script>

<section>
	<Dynamictext text={title} />

	<div class="content">
		<slot />
	</div>
</section>

<style>
	section {
		margin: 1em;
		border-bottom: 1px solid var(--PCOLOR);
	}

	.content {
		padding: 0 0.2em;
		padding-bottom: 1em;
	}

</style>