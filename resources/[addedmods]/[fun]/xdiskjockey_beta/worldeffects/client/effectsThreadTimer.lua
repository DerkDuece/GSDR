CreateThread(function()
    while true do
        Wait(0)
        if #CloseEffects == 0 then
            Wait(1000)
        end

        for k, v in pairs(CloseEffects) do
            if v.name == Effects.RGB then
                for _, _val in pairs(v.position) do
                    for _k, _v in pairs(_val.particlesPosition) do
                        local r, g, b = RainbowLerp(_v.lerpColor)
                        DrawLightWithRangeAndShadow(_v.pos.x, _v.pos.y, _v.pos.z, r, g, b, 10.0, _v.intensity, 1.0)
                    end
                end
            end
        end
    end
end)