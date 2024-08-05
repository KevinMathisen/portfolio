<script>
	import '../global.css';
	import Button from './button.svelte';
</script>

<div class="main">
	<p>
		Passionate developer and student, studying CyberSecurity and Software Development. Experience with Front-end and Back-end Development, Servers, Networking, Databases, and CyberSecurity.  
	</p>

	<img src="/8557684.png" alt="Potrait"/>
</div>

<div class="links">
	<Button text="GitHub" iconPath="/github.svg" href="https://github.com/KevinMathisen/"/>
	<Button text="LinkedIn" iconPath="/linkedin.svg" href="https://www.linkedin.com/in/kevin-nikolai-mathisen-826633289/"/>
	<Button text="Email" iconPath="/email.svg" href="mailto:kevin.nikolai.mathisen@gmail.com"/>
</div>

<style>
	.main {
		display: flex;
		align-items: center;
		flex-direction: column;
	}

	.links {
		display: flex;
		align-items: space-between;
		gap: 1em;
		flex-wrap: wrap;
		padding: 1em 0;
	}

	p {
		color: var(--SCOLOR);
		line-height: 150%;
		margin: 0.5em 0;
	}

	img {
		width: 100px;
		border-radius: 50%;
	}

	@media (min-width: 400px) {
		.main {
			flex-direction: row;
		}
	}
</style>