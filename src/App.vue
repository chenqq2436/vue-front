<template>
  <div id="app">
    hello CI/CD
    <ul>
      <li v-for="user in users" :key="user.id">
        {{ user.id }} -- {{ user.name }} ~~~
      </li>
    </ul>
    <h2>docker 真香+++</h2>
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
