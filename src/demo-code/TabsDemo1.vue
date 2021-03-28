<demo>
基础用法
</demo>
<template>
  <Tabs v-model:selected="title">
    <tab-item title="打工人">打工人</tab-item>
    <tab-item title="打工魂">打工魂</tab-item>
    <tab-item title="打工就是人上人">打工就是人上人</tab-item>
  </Tabs>
</template>

<script lang="ts">

import Tabs from '../lib/Tabs.vue';
import TabItem from '../lib/TabItem.vue';
import {ref} from 'vue';

export default {
  name: 'TabsDemo1',
  components: {TabItem, Tabs},
  setup() {
    const title = ref('打工人');


    return {title};
  }
};
</script>

<style lang="scss" scoped>

</style>