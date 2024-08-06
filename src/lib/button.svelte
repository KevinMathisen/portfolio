<script>
	export let text;
	export let iconPath;
	export let href = "#";
</script>

<style>
	.button {
		width: fit-content;
		background-color: var(--B2COLOR);
		color: var(--PCOLOR);
		padding: 12px 16px;
		display: flex;
		align-items: center;
		justify-content: center;
		gap: 8px;
		border: none;
		border-radius: 20px;
		cursor: pointer;
		font-size: 0.9em;
		text-decoration: none;
		transition: background-color 0.3s ease, transform 0.3s ease;
	}

	.button:hover {
		background-color: var(--B3COLOR);
		transform: scale(1.03);
	}

	.button:active {
		transform: scale(0.98);
	}

	.icon {
		width: 18px;
		height: 18px;
	}
</style>

<a href={href} class="button">
	{#if iconPath}
		<img class="icon" src={iconPath} alt="Icon" />
	{/if}
	{text}
</a>