// Copied the config from https://johndalesandro.com/blog/how-to-add-math-equations-to-astro-with-katex/

import { defineConfig } from "astro/config";
import { unified } from "@astrojs/markdown-remark";
import remarkMath from "remark-math";
import rehypeKatex from "rehype-katex";
import mdx from "@astrojs/mdx";

export default defineConfig({
    markdown: {
        processor: unified({
            remarkPlugins: [remarkMath],
            rehypePlugins: [
                [
                    rehypeKatex,
                    {
                        macros: {
                            "\\P": "\\mathbb{P}",
							"\\RR": "\\mathbb{R}",
							"\\NN": "\\mathbb{N}",
							"\\ZZ": "\\mathbb{Z}",
							"\\QQ": "\\mathbb{Q}",
							"\\ol": "\\overline",
                        },
                    },
                ],
            ],
        }),
    },

    integrations: [mdx()],
});
