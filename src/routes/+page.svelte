<script>
	import Section from "$lib/section.svelte";
	import General from "$lib/general.svelte";
	import Boxes from "$lib/boxes.svelte";
	import Timeline from "$lib/timeline.svelte";
	import Projects from "$lib/projects.svelte";
	import Button from "$lib/button.svelte";
	import '../global.css';

	let languages = ['C', 'C++', 'HTML', 'CSS', 'Javascript', 'Python', 'Golang', 'Kotlin', 'Powershell', 'Bash', 'SQL'];
	let svgPathsLang = ['c.svg', 'cpp.svg', 'html.svg', 'css.svg', 'javascript.svg', 'python.svg', 'golang.svg', 'kotlin.svg', 'powershell.svg', 'bash.svg', 'sql.svg'];

	let technologies = ['Git', 'Node.js', 'Express', 'Svelte', 'MongoDB', 'MySQL', 'PostgreSQL', 'Docker', 'Haproxy', 'Apache', 'Nginx', 'Cisco IOS'];
	let svgPathsTech = ['git.svg', 'nodejs.svg', 'express.svg', 'svelte.svg', 'mongodb.svg', 'mysql.svg', 'postgres.svg', 'docker.svg', 'haproxy.svg', 'apache.svg', 'nginx.svg', 'cisco.svg'];
	
	function scrollToTop() {
		window.scrollTo({
			top: 0,
			behavior: 'smooth'
		});
	}
</script>

<Section title="Kevin Nikolai Mathisen">
	<General />
</Section>

<Section title="Projects">
	<Projects />
</Section>

<Section title="Programming Languages">
	<Boxes titles={languages} svgPaths={svgPathsLang} path="languages/" />
</Section>

<Section title="Technologies">
	<Boxes titles={technologies} svgPaths={svgPathsTech} path="technologies/"/>
</Section>

<Section title="Timeline">
	<Timeline />
</Section>

<div class="buttonContainer">
	<Button text="Back to top" iconPath="uparrow.svg" on:click={scrollToTop}/> 
</div>

<style>
	.buttonContainer {
		display: flex;
		justify-content: center;
		margin: 2em;
	}
</style>