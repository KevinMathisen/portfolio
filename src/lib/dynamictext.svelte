<script>
	import { afterUpdate, onMount } from 'svelte';
	import '../global.css';

	export let text = "";

	let textArray = text.split('');
	let currentIndex = 0;
	let currentText = '';
	let cursorClass = 'blinking-text-cursor';

    let textVisible = false;
    /**
     * @type {IntersectionObserver}
     */
    let observer;
    /**
     * @type {Element}
     */
    let element;

	onMount(() => {
        // Create observer to check if the text is visible
		observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    textVisible = true;
                    observer.unobserve(entry.target);
                }
            });
        });
	});

    afterUpdate(() => {
        // Observe the element if it exists and the observer is created
        if (observer && element) {
            observer.observe(element);
        }
    });

    // Start typing the text when it is visible
    $: if (textVisible) {
        typeNextCharacter();
    }

    // Function to type the characters one by one
    const typeNextCharacter = () => {
        if (currentIndex < textArray.length) {
            currentText += textArray[currentIndex];
            currentIndex++;
            let interval = Math.random() * 90 + 30;
            setTimeout(typeNextCharacter, interval);
        } else {
            setTimeout(() => {
                cursorClass = 'non-blinking-text-cursor';
            }, 3000);
        }
    };

    // Function to get a reference to the element
    const getElement = (/** @type {Element} */ el) => {
        element = el
    }
</script>

<h1 use:getElement>{currentText}<span class={cursorClass}>|</span></h1>

<style>
    h1 {
        font-size: 1.6em;
        text-align: left;
        color: var(--PCOLOR);
		margin: 0.2em 0;
		letter-spacing: -2%;
    }

    .blinking-text-cursor {
        font-weight: 100;
        font-size: 1.3em;
        color: var(--PCOLOR);
        -webkit-animation: blinkingTextCursor 1s steps(1, start) infinite;
        -moz-animation: blinkingTextCursor 1s steps(1, start) infinite;
        animation: blinkingTextCursor 1s steps(1, start) infinite;
    }

	.non-blinking-text-cursor {
		font-weight: 100;
        font-size: 1.3em;
        color: var(--BCOLOR);
	}

    @keyframes blinkingTextCursor {
        0%, 49% { opacity: 1; }
        50%, 100% { opacity: 0; }
    }

    @-webkit-keyframes blinkingTextCursor {
        0%, 49% { opacity: 1; }
        50%, 100% { opacity: 0; }
    }

    @-moz-keyframes blinkingTextCursor {
        0%, 49% { opacity: 1; }
        50%, 100% { opacity: 0; }
    }
</style>