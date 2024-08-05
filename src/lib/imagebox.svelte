<script>
	export let title = "";
	export let svgPath = "";
</script>

<div class="imagebox">
	<img src={svgPath} alt="SVG" />
	<p>{title}</p>
</div>

<style>
	.imagebox {
		display: flex;
		flex-direction: column;
		align-items: center;
		gap: 8px;
		background-color: var(--B2COLOR);
		border-radius: 10px;
		padding: 1em;
	}

	img {
		width: 50px;
		height: 50px;
	}

	p {
		color: var(--PCOLOR);
		font-size: 1em;
		margin: 0.2em;
	}
</style>