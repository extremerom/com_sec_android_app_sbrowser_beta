.class public abstract synthetic Lj9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic A(Lo9/g;F)V
    .locals 1

    const-string v0, "in_sparkle_strength"

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    return-void
.end method

.method public static bridge synthetic B(Lo9/g;F)V
    .locals 1

    const-string v0, "in_fadeSparkle"

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    return-void
.end method

.method public static bridge synthetic C(Lo9/g;F)V
    .locals 1

    const-string v0, "in_fadeRing"

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    return-void
.end method

.method public static bridge synthetic D(Lo9/g;F)V
    .locals 1

    const-string v0, "in_fadeFill"

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    return-void
.end method

.method public static bridge synthetic a(Landroid/graphics/RuntimeShader;)Landroid/graphics/RenderEffect;
    .locals 1

    const-string v0, "inputShader"

    invoke-static {p0, v0}, Landroid/graphics/RenderEffect;->createRuntimeShaderEffect(Landroid/graphics/RuntimeShader;Ljava/lang/String;)Landroid/graphics/RenderEffect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b()Landroid/graphics/RuntimeShader;
    .locals 2

    new-instance v0, Landroid/graphics/RuntimeShader;

    const-string v1, "\n            \n            uniform shader tintShader;\n            uniform half2 uTintShaderSize;\n            // TODO possible for any transforming with mat3 for trs, but currently just for flipping since there\'s no requirements at least now.\n            uniform half2 uTintFlipDirection; \n\n            half useTint() {\n                return step(0.01, abs(uTintShaderSize.x * uTintShaderSize.y)); \n            }\n                \n            half4 texTint(half2 uv) {\n                uv = mix(uv, half2(1 - uv.x, uv.y), step(0.5, uTintFlipDirection.x));\n                return tintShader.eval(uv * uTintShaderSize);\n            }\n            \n            // get tint color aligned center\n            half3 getTintColor(half2 uv, half2 resolution) {\n                half2 guv = uv;\n                half asp = resolution.x / resolution.y;\n                if (asp > 1) {\n                    guv.y /= asp;\n                    guv.y += 0.5 * (1 - 1 / asp);\n                } else {\n                    guv.x *= asp;\n                    guv.x += 0.5 * (1 - asp);\n                }\n                return clamp(texTint(guv).rgb, half3(0), half3(1));\n            }\n            \n            // get tint color aligned center\n            half4 getTintColorAlpha(half2 uv, half2 resolution) {\n                half2 guv = uv;\n                half asp = resolution.x / resolution.y;\n                if (asp > 1) {\n                    guv.y /= asp;\n                    guv.y += 0.5 * (1 - 1 / asp);\n                } else {\n                    guv.x *= asp;\n                    guv.x += 0.5 * (1 - asp);\n                }\n                half4 tint = texTint(guv);\n                return clamp(tint, half4(0), half4(1));\n            }\n        \n            uniform shader inputShader;\n            uniform shader lightMapShader;\n            uniform shader lightMapGlowShader;\n            \n            uniform half2 uSize;\n            uniform half uProgress;\n            \n            uniform half2 uLightMapSize;\n            uniform half2 uLightMapGlowSize;\n            \n            uniform half uDitherVariation;\n            \n            // for view shape\n            uniform half2 uViewCenter; // normalized value\n            uniform half uViewAlpha;\n            uniform int uRoundRectShape;\n            uniform half uCornerRadius;\n            uniform half uOutlineThickness;\n            uniform half2 uRoundRectDirection;\n            uniform half uCircleRadius;\n            uniform half2 uBorderWidth; // inset\n            \n            // directional light \n            uniform half2 uLightPos;\n            uniform half uLightRadius;\n            uniform half4 uLightColor;\n            uniform half uLightIntensity;\n\n            // glow light\n            uniform half uGlowIntensity;\n            uniform half uGlowRadius;\n            uniform half uGlowSharpness;\n            \n            // reflection light\n            uniform half uReflRadius;\n            uniform half uReflLightIntensity;\n            uniform half uReflAlbedo;\n            \n            uniform half uGlobalLuminance;\n            uniform half uOuterSaturation;\n            uniform half uSaturation;\n            \n            uniform half uStretch;\n            uniform half uStretchDirLit;\n            \n            // get relative uv based on longer length among width and height of the view. \n            half2 relativeUv(half2 uv, half2 pos, half scale, half stretch) {\n                half asp = uSize.x / uSize.y;\n                asp = mix(asp, stretch, step(0.01, stretch));\n                if (asp > 1) {\n                    pos.y /= asp;\n                    uv.y /= asp;\n                } else {\n                    pos.x *= asp;\n                    uv.x *= asp;\n                }\n                pos /= scale;\n                uv /= scale;\n                uv -= pos - half2(0.5); // translate\n                return uv;\n            }\n            \n            half4 texView(half2 uv) {\n                return inputShader.eval(uv * uSize);\n            }\n            \n            half rand(half2 uv) {\n                return fract(sin(dot(uv, half2(12.9898, 78.233))) * 43758.5453);\n            }\n            \n            half dither(half2 uv, half variation) {\n                return 1 + variation * 2 * (rand(uv * 10.0) - 0.5);\n            }\n\n            half sdRoundRect(half2 fragCoord, half2 center, half2 size, half radius) {\n                return length(max(abs(fragCoord - center) - size + radius, 0.0)) - radius;\n            }\n            \n            half sdCircle(half2 fragCoord, vec2 center, half2 size, half radius) {\n                return length(fragCoord - center) - radius;\n            }\n        \n            half lightmap(half2 uv, half2 pos, half scale, half intensity, half stretch) {\n                uv = relativeUv(uv, pos, scale, stretch);\n                return length(lightMapShader.eval(uv * uLightMapSize).rgb) / sqrt(3) * intensity;\n            }\n        \n            half lightmapGlow(half2 uv, half2 pos, half scale, half intensity, half stretch) {\n                uv = relativeUv(uv, pos, scale, stretch);\n                return length(lightMapGlowShader.eval(uv * uLightMapGlowSize).rgb) / sqrt(3) * intensity;\n            }\n            \n            // normalized sdf\n            half sdf(half2 fragCoord, half2 viewSize) {\n                half shape = half(uRoundRectShape);\n\n                // detect rounded direction\n                half2 signedQuadrant = fragCoord - uViewCenter * uSize;\n                half2 dv = uRoundRectDirection * signedQuadrant;\n                half useDirection = step(0.1, length(uRoundRectDirection));\n                half isCornerDirection = step(1, dv.x + dv.y);\n                half radius = mix(uCornerRadius, mix(0.01, uCornerRadius, isCornerDirection), useDirection);\n                \n                half dist = mix(sdCircle(fragCoord, uViewCenter * uSize, viewSize, uCircleRadius),\n                                 sdRoundRect(fragCoord, uViewCenter * uSize, viewSize, radius),\n                                 shape);\n                return dist / mix(uCircleRadius, uOutlineThickness, shape);\n            }\n            \n            half4 main(vec2 fragCoord) {\n                vec2 uv = fragCoord / uSize;\n                \n                half4 view = texView(uv);\n                half2 viewSize = 0.5 * uSize - uBorderWidth;\n                half aspectRatio = uSize.x / uSize.y;\n                half minSizeLength = mix(uSize.x, uSize.y, step(1, aspectRatio));\n                \n                // use proper sdf by primitive type of the view.\n                half dist = sdf(fragCoord, viewSize);\n                half isOut = step(0, dist);\n\n                // compute light\n                half lit = lightmap(uv, uLightPos, uLightRadius, uLightIntensity, uStretchDirLit);\n                \n                // compute glow\n                // Note that RoundedRect using direction should have disabled the glow light because of limitation of the sdf.\n                half useDirection = step(0.1, length(uRoundRectDirection));\n                half glowLit = lightmapGlow(uv, uLightPos, uGlowRadius, uGlowIntensity, uStretch);\n                half glow = (1 - useDirection) * smoothstep(glowLit, 0, abs(dist));\n                glow = pow(glow, uGlowSharpness);\n                \n                // compute fakey light reflection by sdf\n                half reflLit = lightmapGlow(uv, uLightPos, uReflRadius, uReflLightIntensity, uStretch);\n                half distForOut = clamp(0, 0.99, dist);\n                half outerReflLit = reflLit * clamp(pow(1 - distForOut, 4.5) + 0.1 * (1 - distForOut), 0, 1);\n                half innerReflLit = uReflAlbedo * reflLit;\n                reflLit = mix(innerReflLit, outerReflLit, isOut);\n                half refl = smoothstep(uReflRadius, 0, dist);\n                \n                // build lights\n                half luminance = max(glow * glowLit, refl * reflLit);\n                luminance += (1 - isOut) * lit; // add directional light on the view\n                half alpha = mix(luminance * uGlobalLuminance, view.a, view.a);\n                const half epsilon = 0.0001;\n                if (alpha < epsilon) {\n                    return half4(0,0,0,0);\n                }\n                luminance = clamp(luminance, 0, 1);\n                \n                half4 litColor = half4(0.0);\n                litColor.rgb += luminance * uLightColor.rgb; \n                litColor.rgb *= dither(fract(uv * uProgress), uDitherVariation);\n                litColor.rgb = clamp(litColor.rgb, half3(0), half3(1));\n                \n                // apply color tint\n                half4 tintColor = getTintColorAlpha(uv, uSize);\n                litColor.rgb = mix(litColor.rgb, litColor.rgb * tintColor.rgb, useTint()) * uSaturation;\n                litColor.rgb = mix(litColor.rgb, litColor.rgb * uOuterSaturation, isOut);\n                luminance *= tintColor.a;\n                litColor.a = luminance * uGlobalLuminance;\n                \n                half3 color = litColor.rgb * uGlobalLuminance + view.rgb * view.a * (1 - litColor.a);\n                // use premult as default btw lighting and view\n                return half4(color, alpha);\n            }\n        "

    invoke-direct {v0, v1}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic c(Ljava/lang/String;)Landroid/graphics/RuntimeShader;
    .locals 1

    new-instance v0, Landroid/graphics/RuntimeShader;

    invoke-direct {v0, p0}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic d(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Ljava/lang/Object;)Landroid/window/OnBackInvokedDispatcher;
    .locals 0

    check-cast p0, Landroid/window/OnBackInvokedDispatcher;

    return-object p0
.end method

.method public static synthetic f()V
    .locals 1

    new-instance v0, Landroid/graphics/RuntimeShader;

    return-void
.end method

.method public static bridge synthetic g(Landroid/app/ActivityOptions;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    return-void
.end method

.method public static bridge synthetic h(Landroid/graphics/RuntimeShader;FF)V
    .locals 1

    const-string v0, "uTintShaderSize"

    invoke-virtual {p0, v0, p1, p2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    return-void
.end method

.method public static bridge synthetic i(Landroid/graphics/RuntimeShader;Landroid/graphics/BitmapShader;)V
    .locals 1

    const-string v0, "tintShader"

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setInputShader(Ljava/lang/String;Landroid/graphics/Shader;)V

    return-void
.end method

.method public static bridge synthetic j(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public static bridge synthetic k(Landroid/window/OnBackInvokedDispatcher;Landroidx/activity/x;)V
    .locals 1

    const v0, 0xf4240

    invoke-interface {p0, v0, p1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public static bridge synthetic l(Lo9/g;F)V
    .locals 1

    const-string v0, "in_distort_radial"

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    return-void
.end method

.method public static bridge synthetic m(Lo9/g;FF)V
    .locals 1

    const-string v0, "in_size"

    invoke-virtual {p0, v0, p1, p2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    return-void
.end method

.method public static bridge synthetic n(Lo9/g;FFF)V
    .locals 6

    const-string v1, "in_sparkleColor"

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FFFF)V

    return-void
.end method

.method public static bridge synthetic o(Lo9/g;I)V
    .locals 1

    const-string v0, "in_color"

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setColorUniform(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic p()Z
    .locals 1

    invoke-static {}, Landroid/os/Process;->isSdkSandbox()Z

    move-result v0

    return v0
.end method

.method public static synthetic q()Landroid/graphics/RuntimeShader;
    .locals 2

    new-instance v0, Landroid/graphics/RuntimeShader;

    const-string v1, "\n            const int MaxSpots = 5;\n                \n            uniform shader inputShader;\n            uniform shader spotLightMapShader;\n            uniform half2 uLightMapSize;\n            \n            uniform half2 uSize;\n            uniform half uTime;\n            \n            uniform half4 uBaseColor;\n            uniform int uSpotCount;\n            \n            uniform half uSpotEnabled[MaxSpots];\n            uniform half4 uSpotColors[MaxSpots];\n            uniform half2 uSpotPositions[MaxSpots];\n            uniform half uSpotScales[MaxSpots];\n            \n            const half QPI = 3.141592 * 0.25;\n            \n            half4 spotData(half2 uv, half4 color, half2 pos, half scale) {\n                half asp = uSize.x / uSize.y;\n                \n                pos.x *= asp;\n                pos /= scale;\n                pos -= half2(0.5, 0.5);\n                uv.x *= asp;\n                uv /= scale; // scale by radius\n                uv -= pos; // translate\n                half4 spot = spotLightMapShader.eval(uv * uLightMapSize);\n                half alpha = color.a * length(spot.rgb) / sqrt(3); // TODO use actual alpha channel in future.\n                return half4(color.a * spot.rgb * color.rgb, alpha);\n            }\n            \n            half4 main(vec2 fragCoord) {\n                vec2 uv = fragCoord / uSize;\n                half4 spots = uBaseColor;\n                for (int i = 0; i < MaxSpots; i++) { // AGSL not support conditional loop with uniform at least now\n                    if (uSpotCount == i) {\n                        break;\n                    }\n                    if (uSpotEnabled[i] > 0) {\n                        half4 s = spotData(uv, uSpotColors[i], uSpotPositions[i], uSpotScales[i]);\n                        spots.rgb = s.rgb + spots.rgb * (1 - s.a); // using premult\n                        spots.a += s.a * (1 - spots.a);\n                    }\n                }\n                half4 view = inputShader.eval(fragCoord);\n                half useView = step(0.01, view.a);\n                \n                return mix(spots, view * spots, useView); // tint if there is alpha on the view \n            }\n        "

    invoke-direct {v0, v1}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic r(Lo9/g;F)V
    .locals 1

    const-string v0, "in_distort_xy"

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    return-void
.end method

.method public static bridge synthetic s(Lo9/g;FF)V
    .locals 1

    const-string v0, "in_center"

    invoke-virtual {p0, v0, p1, p2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    return-void
.end method

.method public static bridge synthetic t(Lo9/g;F)V
    .locals 1

    const-string v0, "in_time"

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    return-void
.end method

.method public static synthetic u()Landroid/graphics/RuntimeShader;
    .locals 2

    new-instance v0, Landroid/graphics/RuntimeShader;

    const-string v1, "\n            uniform shader inputShader;\n            uniform shader transitionMapShader;\n            uniform shader imageBitmapShader;\n            \n            uniform int uRevealMode;\n            uniform vec2 uTransitionMapSize;\n            uniform half uStretch;\n            uniform vec2 uImageBitmapSize;\n            \n            uniform shader tintShader;\n            uniform half2 uTintShaderSize;\n            // TODO possible for any transforming with mat3 for trs, but currently just for flipping since there\'s no requirements at least now.\n            uniform half2 uTintFlipDirection; \n\n            half useTint() {\n                return step(0.01, abs(uTintShaderSize.x * uTintShaderSize.y)); \n            }\n                \n            half4 texTint(half2 uv) {\n                uv = mix(uv, half2(1 - uv.x, uv.y), step(0.5, uTintFlipDirection.x));\n                return tintShader.eval(uv * uTintShaderSize);\n            }\n            \n            // get tint color aligned center\n            half3 getTintColor(half2 uv, half2 resolution) {\n                half2 guv = uv;\n                half asp = resolution.x / resolution.y;\n                if (asp > 1) {\n                    guv.y /= asp;\n                    guv.y += 0.5 * (1 - 1 / asp);\n                } else {\n                    guv.x *= asp;\n                    guv.x += 0.5 * (1 - asp);\n                }\n                return clamp(texTint(guv).rgb, half3(0), half3(1));\n            }\n            \n            // get tint color aligned center\n            half4 getTintColorAlpha(half2 uv, half2 resolution) {\n                half2 guv = uv;\n                half asp = resolution.x / resolution.y;\n                if (asp > 1) {\n                    guv.y /= asp;\n                    guv.y += 0.5 * (1 - 1 / asp);\n                } else {\n                    guv.x *= asp;\n                    guv.x += 0.5 * (1 - asp);\n                }\n                half4 tint = texTint(guv);\n                return clamp(tint, half4(0), half4(1));\n            }\n        \n            uniform float uTintIntensity;\n            uniform float uTintSaturation;\n            \n            uniform vec2 uSize;\n            uniform float uProgress;\n            \n            uniform vec2 uTransPosition;\n            uniform float uTransScale;\n            uniform float uTransAlpha;\n            \n            vec4 texView(vec2 uv) {\n                return inputShader.eval(uv * uSize);\n            }\n            \n            vec4 texImage(vec2 uv) {\n                // it is natural that the size of reveal bitmap should equal to current view size.\n                // but it could be updated in future though.\n                return imageBitmapShader.eval(uv * uImageBitmapSize);\n            }\n\n            // get relative uv based on longer length among width and height of the view. \n            vec2 relativeUv(vec2 uv, vec2 pos, float scale, half stretch) {\n                float asp = uSize.x / uSize.y;\n                asp = mix(asp, stretch, step(0.01, stretch));\n                if (asp > 1) {\n                    pos.y /= asp;\n                    uv.y /= asp;\n                } else {\n                    pos.x *= asp;\n                    uv.x *= asp;\n                }\n                pos /= scale;\n                uv /= scale;\n                uv -= pos - vec2(0.5); // translate\n                return uv;\n            }\n        \n            vec4 texTrans(vec2 uv, vec2 pos, float scale, half stretch) {\n                vec2 ruv = relativeUv(uv, pos, scale, stretch);\n                vec4 map = transitionMapShader.eval(ruv * uTransitionMapSize);\n                \n                float alpha = length(map.rgb) / sqrt(3);\n                return vec4(map.rgb, alpha);\n            }\n            \n            half getTintAlpha(half alpha) {\n                float tintAlpha = useTint() * alpha;\n                tintAlpha = uTintIntensity * smoothstep(0.5, 0, abs(0.5 - tintAlpha));\n                return min(tintAlpha, smoothstep(1, 0.8, uProgress));  \n            }\n\n            vec4 main(in vec2 fragCoord) {\n                vec2 uv = fragCoord / uSize;\n                // view color\n                vec4 viewColor = texView(uv);\n                // image color to reveal\n                vec4 imageColor = texImage(uv);\n                // trans color\n                vec4 transColor = texTrans(uv, uTransPosition, uTransScale, uStretch);\n                float alpha = max(uTransAlpha * transColor.a, smoothstep(0.8, 1, uProgress));\n                vec4 color = vec4(0);\n                float tintAlpha = getTintAlpha(transColor.a); \n                if (uRevealMode == 0) {\n                    color = mix(viewColor, imageColor, alpha);\n                    color = mix(color, vec4(imageColor.rgb, imageColor.a * alpha), step(viewColor.a, 0));\n                    color.rgb = mix(color.rgb, getTintColor(uv, uSize) * tintAlpha * uTintSaturation + color.rgb * (1 - tintAlpha), useTint()); \n                } else if (uRevealMode == 1) {\n                    color = mix(color, viewColor, alpha); \n                    color = mix(color, vec4(getTintColor(uv, uSize) * uTintSaturation, 1) + color * (1 - tintAlpha), tintAlpha);                    \n                }\n                return color;\n            }\n        "

    invoke-direct {v0, v1}, Landroid/graphics/RuntimeShader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic v(Lo9/g;F)V
    .locals 1

    const-string v0, "in_thickness"

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    return-void
.end method

.method public static bridge synthetic w(Lo9/g;FF)V
    .locals 1

    const-string v0, "in_rippleMove"

    invoke-virtual {p0, v0, p1, p2}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;FF)V

    return-void
.end method

.method public static bridge synthetic x(Lo9/g;F)V
    .locals 1

    const-string v0, "in_cornerRadius"

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    return-void
.end method

.method public static bridge synthetic y(Lo9/g;F)V
    .locals 1

    const-string v0, "in_blur"

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    return-void
.end method

.method public static bridge synthetic z(Lo9/g;F)V
    .locals 1

    const-string v0, "in_pixelDensity"

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    return-void
.end method
