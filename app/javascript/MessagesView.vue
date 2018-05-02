<template>
    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col-10">
                    <ul class="list-group list-group-flush text-wrapper" >
                        <li class="list-group-item" v-for="message in messages">  {{message.text}}</li>
                    </ul>
                </div>

            </div>
            <form @submit.prevent="sendComment" >
            <div class="row" id="comment_form">
                    <div class="col-10">
                            <div class="input-group ">
                                <input v-model="message" type="text" class="form-control" id="comment_input" placeholder="Ваш текст">
                            </div>

                    </div>
                    <div class="col-2">
                        <button type="submit" class="btn btn-outline-primary mb-2">Отправить</button>
                    </div>

            </div>
            </form>
        </div>
    </div>
</template>

<script>
    export default {
        name: "messages-view",
        props: ['messages'],
        data: () => {
            return {
                message: '',

            }
        },
        methods: {
            sendComment() {
                let msg = this.message;
                this.message = '';
                this.$emit('new_message', msg)
                console.log('message sended');
            }
        }

    }
</script>

<style scoped>
#comment_form {
    width: 90%;
    padding-top: 20px;
}
.text-wrapper {
    padding: 5px;
}
</style>