<script>
	import Header from "$lib/header.svelte";
	import '../global.css';
</script>

<Header />
<main>
	<slot />
</main>

<style>
	main {
		padding: 1em;
	}
</style>