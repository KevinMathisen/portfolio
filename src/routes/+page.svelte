<script>
	import Section from "$lib/section.svelte";
	import General from "$lib/general.svelte";
	import Boxes from "$lib/boxes.svelte";
	import '../global.css';

	let languages = ['C', 'C++', 'HTML', 'CSS', 'Javascript', 'Python', 'Golang', 'Kotlin', 'Powershell', 'Bash', 'SQL'];
	let svgPaths = ['c.svg', 'cpp.svg', 'html.svg', 'css.svg', 'javascript.svg', 'python.svg', 'golang.svg', 'kotlin.svg', 'powershell.svg', 'bash.svg', 'sql.svg'];
</script>

<Section title="Kevin Nikolai Mathisen">
	<General />
</Section>

<Section title="Programming Languages">
	<Boxes titles={languages} {svgPaths} />
</Section>

