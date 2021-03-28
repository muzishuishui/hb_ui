<template>
  <div class="home">
    <TopNav/>
    <div>
      <section class="banner">
        <h1>hbUI 官网</h1>
        <h3>打工就是人上人</h3>
        <div class="actions">
          <a target="_blank" href="https://github.com/muzishuishui">GitHub</a>
          <router-link to="/doc">开始</router-link>
        </div>
      </section>
      <div class="features">
        <ul>
          <li>
            <svg class="icon">
              <use xlink:href="#icon-hb_vue"></use>
            </svg>
            <h3>基于 Vue 3</h3>
            <p>使用了 Vue 3 Composition API</p>
          </li>
          <li>
            <svg class="icon">
              <use xlink:href="#icon-hb_ts"></use>
            </svg>
            <h3>基于 TypeScript </h3>
            <p>源代码采用 TypeScript 书写（非严格检查）</p>
          </li>
          <li>
            <svg class="icon">
              <use xlink:href="#icon-hb_light"></use>
            </svg>
            <h3>代码易读</h3>
            <p>每个组件的源代码都极其简洁</p>
          </li>
        </ul>
      </div>
    </div>
  </div>

</template>

<script lang="ts">
import TopNav from '../components/TopNav.vue';

export default {
  name: 'Home',
  components: {TopNav},
};
</script>

<style lang="scss" scoped>
$buttonColor: #ffcd00;
$textColor: #000000;

.home {
  ::v-deep(.top_nav) {
    background: #fff;
  }

  @media (max-width: 500px) {
    ::v-deep(.top_nav) {
      background: #fff;
    }
  }

  .banner {
    padding: 180px 0 150px;
    color: $textColor;
    background: #82675a;
    background: linear-gradient(146deg, rgba(255,247,165,1) 0%, rgba(255,241,107,1) 100%);
    clip-path: ellipse(80% 60% at 50% 40%);
    margin: 0 auto;

    h1 {
      text-align: center;
      font-size: 34px;
      line-height: 52px;
    }

    h3 {
      text-align: right;
      padding-right: 100px;
      margin-top: 12px;
      font-size: 20px;
      line-height: 26px;
    }

    > .actions {
      padding: 8px 0;
      font-size: 18px;
      margin-top: 16px;
      text-align: center;

      a {
        margin: 0 8px;
        background: $buttonColor;
        padding: 8px 26px;
        color: #fff;
        border-radius: 20px;
        border: none;
      }

      a:hover {
          background: #ffc306;
      }

    }
  }

  .features {

    margin: 64px auto;
    width: 300px;
    @media (min-width: 800px) {
      width: 800px;
      h3 {
        font-size: 20px;
      }

      p {
        font-size: 14px;
      }
    }
    @media (min-width: 1200px) {
      width: 1200px;
    }

    > ul {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-around;

      > li {

        width: 300px;
        margin: 16px 0;
        display: grid;
        justify-content: start;
        align-content: space-between;
        grid-template-areas:
        "icon title"
        "icon text";
        grid-template-columns: 80px auto;
        grid-template-rows: 1fr auto;

        > svg {
          grid-area: icon;
          width: 64px;
          height: 64px;
        }

        > h3 {
          grid-area: title;
          font-size: 28px;
        }

        > p {
          grid-area: text;
          font-size: 18px;
        }
      }
    }
  }
}


</style>