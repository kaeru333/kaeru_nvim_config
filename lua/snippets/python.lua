
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {
    -- numpy + pandas
    s("numpan", {
        t({
            "import numpy as np",
            "import pandas as pd",
            "", 
        }),
    }),

    -- matplotlib + japanize_matplotlib
    s("matja", {
        t({
            "import matplotlib.pyplot as plt",
            "import japanize_matplotlib",
            "", 
        }),
    }),
    -- rich logger
    s("logger", {
        t({
          "import logging",
          "from rich.logging import RichHandler",
          "",
          "logger = logging.getLogger(__name__)",
          "logging.basicConfig(",
          "    level=logging.INFO,",
          '    format="%(message)s",',
          '    datefmt="[%X]",',
          "    handlers=[RichHandler(markup=True, rich_tracebacks=True)]",
          ")",
          "",
        }),
    }),
    -- main
    s("main", {
        t({
          "if __name__ == '__main__':",
          "    params = {", 
          "        ", 
        }),
        i(1), 
        t({
          "", 
          "    }",
          "    main(**params)",
        }),
    }),
}
