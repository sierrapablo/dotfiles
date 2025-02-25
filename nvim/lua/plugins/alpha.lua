return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.header.val = {
      [[                                                                         ]],
      [[                                         -`                              ]],
      [[                                  .o+`                                   ]],
      [[                                 `ooo/                                   ]],
      [[                                `+oooo:                                  ]],
      [[                               `+oooooo:                                 ]],
      [[                               -+oooooo+:                                ]],
      [[                             `/:-:++oooo+:                               ]],
      [[                            `/++++/+++++++:`                             ]],
      [[                           `/++++++++++++++:                             ]],
      [[                          `/+++ooooooooooooo/`                           ]],
      [[                         ./ooosssso++osssssso+`                          ]],
      [[                        .oossssso-````/ossssss+`                         ]],
      [[                       -osssssso.      :ssssssso.                        ]],
      [[                      :osssssss/        osssso+++.                       ]],
      [[                     /ossssssss/        +ssssooo/-                       ]],
      [[                   `/ossssso+/:-        -:/+osssso+-                     ]],
      [[                  `+sso+:-`                 `.-/+oso:                    ]],
      [[                 `++:.                           `-/+/                   ]],
      [[                  .`                                 `/                  ]],
      [[                                                                         ]],
      [[                                                                         ]],
    }
    alpha.setup(dashboard.opts)
  end
}
