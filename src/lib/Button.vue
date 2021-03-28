<template>
  <button class="hb-button" :class="classes" :disabled="disabled">
    <span class="hb-button-spin" v-if="loading"></span>
    <span><slot /></span>
  </button>
</template>

<script lang="ts">
import { computed } from "vue";

export default {
  name: "Button",
  props: {
    theme: {
      type: String,
      default: "default",
    },
    size: {
      type: String,
      default: "normal",
    },
    disabled: {
      type: Boolean,
      default: false,
    },
    loading: {
      type: Boolean,
      default: false,
    },
  },
  setup(props) {
    const { theme, size, loading } = props;

    const classes = computed(() => {
      const loadingClass = loading ? " hb-button-loading" : "";

      return `hb-button-theme-${theme} hb-button-size-${size}${loadingClass}`;
    });

    return { classes };
  },
};
</script>

<style lang="scss">
$border-color: #d9d9d9;
$color: #40a9ff;
$blue: #40a9ff;
$radius: 4px;

.hb-button {
  border-radius: $radius;
  line-height: 1;
  color: $color;
  padding: 0 12px;
  cursor: pointer;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  white-space: nowrap;
  box-sizing: border-box;
  font-size: 14px;
  margin: 8px;

  &:focus {
    outline: none;
  }

  &::-moz-focus-inner {
    border: 0;
  }

  // 主题
  &.hb-button-theme-default {
    background: #fff;
    border: 1px solid #dcdfe6;
    color: #606266;

    &:hover,
    &:focus {
      color: #409eff;
      border-color: #c6e2ff;
      background-color: #ecf5ff;
    }

    &:active {
      border-color: #409eff;
    }
  }

  &.hb-button-theme-primary {
    background: linear-gradient(to right, #ffc306, #ff9900);
    border: 1px solid #dcdfe6;
    color: #fff;

    &:hover,
    &:focus {
      color: #fff;
      border-color: #dcdfe6;
      background: #ffc306;
    }

    &:active {
      background: #ff9900;
    }
  }

  &.hb-button-theme-warning {
    background: #fdf6ec;
    border: 1px solid #f5dab1;
    color: #e6a23c;

    &:hover,
    &:focus {
      background: #f3cb8f;
      color: #fff;
    }

    &:active {
      background: #e6a23c;
      color: #fff;
    }
  }

  &.hb-button-theme-success {
    background: #85ce61;
    border: 1px solid #28a745;
    color: #fff;

    &:hover,
    &:focus {
      background-color: #67c23a;
    }

    &:active {
      background: #28a745;
    }
  }

  &.hb-button-theme-danger {
    background: #f56c6c;
    border: 1px solid #f56c6c;
    color: #fff;

    &:hover,
    &:focus {
      color: #fff;
      background-color: #f78989;
    }

    &:active {
      background: #f56c6c;
    }
  }

  &.hb-button-theme-info {
    background: #909399;
    border: 1px solid #909399;
    color: #eeeeee;

    &:hover,
    &:focus {
      color: #fff;
      background-color: #52616b;
    }

    &:active {
      background: #222831;
    }
  }

  &.hb-button-theme-link {
    border: none;
    background: inherit;
    color: #222831;

    &:hover,
    &:focus {
      > span {
        color: #40a9ff;
      }
    }

    &:active {
      > span {
        border-bottom: 1px solid #222831;
      }
    }
  }

  // 尺寸
  &.hb-button-size-small {
    padding: 10px 20px;
    font-size: 14px;
    border-radius: 4px;
  }

  &.hb-button-size-normal {
    padding: 12px 24px;
  }

  &.hb-button-size-large {
    padding: 14px 28px;
    font-size: 18px;
    border-radius: 4px;
  }

  // 禁用
  &.hb-button {
    &[disabled] {
      cursor: not-allowed;
      color: #fff;
      background: #eeeeee;

      &:hover {
        border-color: #fff;
      }
    }
  }

  &.hb-button-theme-link,
  &.hb-button-theme-text {
    &[disabled] {
      cursor: not-allowed;
      color: #fff;
    }
  }

  &.hb-button-loading {
    pointer-events: none;

    .hb-button-spin {
      width: 14px;
      height: 14px;
      display: inline-block;
      margin-right: 4px;
      border-radius: 8px;
      border-color: $blue $blue $blue transparent;
      border-style: solid;
      border-width: 2px;
      animation: z-spin 1s infinite linear;
    }
  }
}

@keyframes z-spin {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}
</style>