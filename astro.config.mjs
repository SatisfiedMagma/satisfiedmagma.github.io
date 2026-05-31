import { defineConfig } from 'astro/config';
import remarkMath from 'remark-math';
import rehypeKatex from 'rehype-katex';
import mdx from '@astrojs/mdx';

export default defineConfig({
  site: 'https://satisfiedmagma.github.io',
  base: '/personal-website',
  markdown: {
      remarkPlugins: [remarkMath],
      rehypePlugins: [rehypeKatex],
  },

  integrations: [mdx()],
});
