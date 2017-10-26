--package.path="C:/Users/wakanawakana/AppData/Roaming/luarocks/share/lua/5.1/?.lua;C:/Users/wakanawakana/AppData/Roaming/luarocks/share/lua/5.1/?/init.lua;C:/Users/wakanawakana/mLearn/Torch7/distro-win/install/luarocks/systree/share/lua/5.1/?.lua;C:/Users/wakanawakana/mLearn/Torch7/distro-win/install/luarocks/systree/share/lua/5.1/?/init.lua;C:/Users/wakanawakana/mLearn/Torch7/distro-win/install/luarocks/lua/?.lua;C:/Users/wakanawakana/mLearn/Torch7/istro-win/install/luarocks/lua/?.lua;C:/Users/wakanawakana/mLearn/Torch7/distro-win/install/luarocks/lua/?/init.lua;C:/Users/wakanawakana/mLearn/Torch7/distro-win/install/luarocks/systree/share/lua/5.1/?.lua;C:/Users/wakanawakana/mLearn/Torch7/distro-win/install/luarocks/systree/share/lua/5.1/?/init.lua;"
--package.cpath="C:/Users/wakanawakana/AppData/Roaming/luarocks/lib/lua/5.1/?.dll;C:/Users/wakanawakana/mLearn/Torch7/distro-win/install/luarocks/systree/lib/lua/5.1/?.dll;C:/Users/wakanawakana/mLearn/Torch7/distro-win/install/luarocks/systree/lib/lua/5.1/?.dll;"
--require 'luarocks.loader'

require 'torch'
spynet = require 'spynet'
flowX = require 'flowExtensions'

easyComputeFlow = spynet.easy_setup()
im1 = image.load(arg[1])
im2 = image.load(arg[2])
flow = easyComputeFlow(im1, im2)
--flowX.writeFLO('./spynet-pred-0000000.flo',flow)
flowX.writeFLO(arg[3],flow)
