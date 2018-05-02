<template>
  <div id="app">
    <div class="row">
      <div class="col-2">
        <chats-list :chats="chats" :selected_chat="selected_chat" v-on:selected="setActiveChat"></chats-list>
      </div>
      <div class="col">
        <message-view :messages="getSelectedMessages" :new_message="processNewMessage"></message-view>
      </div>
    </div>
  </div>
</template>

<script>
import ChatsList from 'ChatsList'
import MessageView from 'MessagesView'

export default {
  components:{
      ChatsList,
      MessageView
  },
  computed: {
      getSelectedChat: () => {
          return Array.from(this.chats.filter(c => c.id === this.selected_chat)).pop();
      },
      getSelectedMessages: () => {
        return this.getSelectedChat ? this.getSelectedChat.messages : [];
      }
  },
  data: function () {
    return {
      message: "Hello Vue!",
      selected_chat: 22324,
      chats: [
          {
              id: 1213123,
              name: 'Vasya',
              messages: [
                  {id: 1212, date: 121231231, text: 'Ниче че', from: 'Peta', to: 'Vasya'},
                  {id: 2355, date: 121231231, text: 'Лол, кек', from: 'Misha', to: 'Elena'},
                  {id: 4234, date: 121231231, text: 'Ога', from: 'Cate', to: 'Vera'},
              ]
          },
          {
              id: 22324,
              name: 'Petya',
              messages: [
                  {id: 1212, date: 121231231, text: 'Привет от Васи', from: 'Vasya', to: 'Petya'},
                  {id: 324, date: 121231231, text: 'Ниче че', from: 'Peta', to: 'Vasya'},
                  {id: 3455, date: 121231231, text: 'Лол, кек', from: 'Misha', to: 'Elena'},
                  {id: 3234, date: 121231231, text: 'Ога', from: 'Cate', to: 'Vera'},
              ]
          }
      ]
    }
  },
  mounted() {

  },
  methods: {
      setActiveChat(id) {
          console.log(`select chat # ${id}`)
          this.selected_chat = id;
      },
      processNewMessage(msg) {
          let msgs = getSelectedChat.messages;
          msgs.push(msg);

      }
  }
}
</script>

<style scoped>
p {

}
  #app {
    padding: 20px;
  }
</style>
