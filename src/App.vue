<template>
  <div id="app">
    <ul>
      <li v-for="user in users" :key="user.id">
        {{ item.id }} -- {{ user.name }} ~~~
      </li>
    </ul>
  </div>
</template>

<script>
import axios from "axios";
export default {
  name: "App",
  data() {
    return {
      users: [],
    };
  },
  mounted() {
    axios.get("/api/users").then((res) => {
      this.users = res.data;
    });
  },
};
</script>

<style></style>
