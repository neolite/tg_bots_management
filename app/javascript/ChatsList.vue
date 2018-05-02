<template>
    <div class="list-group">
        <a v-for="chat in chats" @click="selectChat(chat.id)"
           class="list-group-item list-group-item-action"
           :class="{ active: selected_chat === chat.id }">
            {{ chat.name }}
        </a>
    </div>
</template>

<script>
    export default {
        name: "chats-list",
        props: ['chats', 'selected_chat'],
        methods:{
            selectChat(chat_id) {
                console.log('chat', chat_id)
                this.$emit('selected', chat_id)
            }
        }
    }
</script>

<style scoped>

</style>