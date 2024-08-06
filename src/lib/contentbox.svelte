<script>
	export let title = "";
	export let link = "";
	export let content = "";
	/**
	 * @type {string[]}
	 */
	export let svgPaths = [];
</script>

<div class="contentbox">
	<div class="header">
		<p>{title}</p>
		<a href={link}>
			<img src="arrow.svg" alt="arrow" />
		</a>
		
	</div>

	<p class="content">
		{content}
	</p>

	<div class="footer">
		{#each svgPaths as svgPath}
			<img src={svgPath} alt="SVG" />
		{/each}
	</div>
</div>

<style>
	.contentbox {
		border-radius: 10px;
		padding: 1em;
		display: flex;
		flex-direction: column;
		align-items: flex-start;
		gap: 8px;
		background-color: var(--B2COLOR);
	}

	.header {
		width: 100%;
		display: flex;
		justify-content: space-between;
		align-items: flex-start;
	}

	.header img {
		width: 20px;
		height: 20px;
	}

	.footer {
		width: 100%;
		display: flex;
		justify-content: start;
		align-items: center;
		gap: 8px;
	}

	.footer img {
		width: 20px;
		height: 20px;
	}

	.header p {
		margin: 0;
		color: var(--PCOLOR);
		font-size: 1em;
	}

	.content {
		flex-grow: 1;
		margin: 0.5em 0;
		color: var(--SCOLOR);
		line-height: 150%;		
	}
</style>