<template>
    <base-card>
        <base-button :mode="storedResButtonMode" @click="setSelectedTab('stored-resources')">Stored Resources</base-button>
        <base-button :mode="addResButtonMode" @click="setSelectedTab('add-resources')">Add Resources</base-button>
    </base-card>
    <keep-alive>    
        <component :is="selectedTab"></component>
    </keep-alive>
</template>

<script>
import StoredResources from './StoredResources.vue';
import AddResources from './AddResources.vue';

export default {
    components: {
        StoredResources,
        AddResources,
    },
    data() {
        return {
            selectedTab: 'stored-resources',
            storedResources: [
                {
                    id: 'official-guide',
                    title: 'Official Guide',
                    description: 'The official Vue.js documentation',
                    link: 'https://vuejs.org'
                },
                {
                    id: 'google',
                    title: 'Google',
                    description: 'Learn to Google...',
                    link: 'https://google.com'
                }
            ]
        }
    },
    provide() {
        return {
            resources: this.storedResources,
            addResource: this.addResource,
            removeResource: this.removeResource,
        };
    },
    computed: {
        storedResButtonMode() {
            return this.selectedTab === 'stored-resources' ? null : 'flat';
        },
        addResButtonMode() {
            return this.selectedTab === 'add-resources' ? null : 'flat';
        }
    },
    methods: {
        setSelectedTab(tab) {
            this.selectedTab = tab;
        },
        addResource(title, description, url) {
            const newResource = {
                id: new Date().toISOString(),
                title: title,
                description: description,
                link: url
            };
            this.storedResources.unshift(newResource);
            this.selectedTab = 'stored-resources';
        },
        removeResource(resID) {
            const resIndex = this.storedResources.findIndex(res => res.id === resID);
            this.storedResources.splice(resIndex, 1);
        }
    }
}
</script>