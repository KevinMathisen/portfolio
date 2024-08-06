<header>
	<nav>
		<a class="homelink" href="/"><img src="/root.svg" alt="Home" width="70" /></a>
		<a class="resumelink" href="/resume.pdf">Resume</a>
	</nav>
</header>

<style>
	header {
		padding: 2em;
		text-align: center;
	}

	nav {
		display: flex;
		justify-content: space-between;
		align-items: center;
	}

	.homelink {
		display: flex;
		align-items: center;
	}

	.resumelink {
		text-decoration: none;
		font-weight: bold;
		font-size: 1.5em;
		color: var(--PCOLOR);

		background-position-y: -0%;
		background-image: linear-gradient(180deg, transparent 50%, #EBE8DD 50%) !important;
		transition: all 0.15s ease;
		background-size: 2px;
		background-size: auto 190%;
	}

	.resumelink:hover, .resumelink:focus {
		background-position-y: 100%;
		color: black;
		transition: all 0.15s ease;
	}

	.resumelink:active {
		background-position-y: 90%;
	}
</style>