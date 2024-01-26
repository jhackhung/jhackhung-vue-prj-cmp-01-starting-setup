<template>
    <the-heading title="RememberME"></the-heading>
    <the-resources></the-resources>
</template>

<script>
import TheHeading from './components/layouts/TheHeading.vue';
import TheResources from './components/learning-resources/TheResources.vue';

export default {
    components: {
        TheHeading,
        TheResources,
    },
    data() {
        return {
            
        }
    }
}
</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap');

* {
    box-sizing: border-box;
}

html {
    font-family: 'Roboto', sans-serif;
}

body {
    margin: 0;
}

</style>