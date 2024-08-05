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
		margin: 1em;
	}

	@media (min-width: 600px) {
		main {
			width: 600px;
			margin: 1em auto;
		}
	}
</style>