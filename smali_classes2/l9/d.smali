.class public final Ll9/d;
.super Li9/a;
.source "SourceFile"


# instance fields
.field public e:F

.field public f:Landroid/graphics/PointF;


# virtual methods
.method public final b(Landroid/content/Context;Lbc/d;)Ldb/j;
    .locals 5

    check-cast p2, Ll9/b;

    const-string p0, "appContext"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "config"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ll9/j;

    iget-boolean p1, p2, Ll9/b;->b:Z

    iget-object v0, p2, Ll9/b;->c:Ll9/a;

    const-string v1, "blendMode"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lj9/h;-><init>()V

    invoke-static {}, Lj9/b;->f()V

    const-string v1, ""

    if-eqz p1, :cond_0

    const-string p1, " lightColor *= 1.15 - 0.5 * abs(tintLightness - viewLightness); "

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    sget-object v2, Ll9/a;->PREMULT:Ll9/a;

    if-ne v0, v2, :cond_1

    const-string v1, " if (viewColor.a < epsilon) return half4(0, 0, 0, 0); "

    :cond_1
    if-ne v0, v2, :cond_2

    const-string v0, "\n                        color *= viewColor.a;\n                        color += viewColor.rgb * (1 - lightColor.a);\n                        color = clamp(color, half3(0), half3(1));\n                        return half4(color, viewColor.a);\n                    "

    goto :goto_1

    :cond_2
    const-string v0, "\n                        float alpha = max(length(color) / sqrt(3), viewColor.a);\n                        color += viewColor.rgb * (1 - lightColor.a);\n                        color = clamp(color, half3(0), half3(1));\n                        return half4(color, alpha);\n                    "

    :goto_1
    const-string v2, "\n                uniform shader inputShader;\n                uniform shader lightMapShader;\n                \n            uniform shader tintShader;\n            uniform half2 uTintShaderSize;\n            // TODO possible for any transforming with mat3 for trs, but currently just for flipping since there\'s no requirements at least now.\n            uniform half2 uTintFlipDirection; \n\n            half useTint() {\n                return step(0.01, abs(uTintShaderSize.x * uTintShaderSize.y)); \n            }\n                \n            half4 texTint(half2 uv) {\n                uv = mix(uv, half2(1 - uv.x, uv.y), step(0.5, uTintFlipDirection.x));\n                return tintShader.eval(uv * uTintShaderSize);\n            }\n            \n            // get tint color aligned center\n            half3 getTintColor(half2 uv, half2 resolution) {\n                half2 guv = uv;\n                half asp = resolution.x / resolution.y;\n                if (asp > 1) {\n                    guv.y /= asp;\n                    guv.y += 0.5 * (1 - 1 / asp);\n                } else {\n                    guv.x *= asp;\n                    guv.x += 0.5 * (1 - asp);\n                }\n                return clamp(texTint(guv).rgb, half3(0), half3(1));\n            }\n            \n            // get tint color aligned center\n            half4 getTintColorAlpha(half2 uv, half2 resolution) {\n                half2 guv = uv;\n                half asp = resolution.x / resolution.y;\n                if (asp > 1) {\n                    guv.y /= asp;\n                    guv.y += 0.5 * (1 - 1 / asp);\n                } else {\n                    guv.x *= asp;\n                    guv.x += 0.5 * (1 - asp);\n                }\n                half4 tint = texTint(guv);\n                return clamp(tint, half4(0), half4(1));\n            }\n        \n\n                uniform half2 uLightMapSize;\n                uniform half uStretch;\n                uniform int uLightPositionStretch;\n                uniform half2 uSize;\n                \n                uniform half2 uLightPosition;\n                uniform half uLightRotation;\n                uniform half uLightScale;\n                uniform half4 uLightColor; // TODO for dev phase. use tint shader\n                uniform half uLightIntensity;\n                uniform half uLightSaturation;\n \n                uniform half4 uDomainColor;\n                uniform half uDomainStrength;\n                uniform half uDomainDeltaRatio;\n\n                uniform half uDitherVariation;\n\n                half rand(half2 uv) {\n                    return fract(sin(dot(uv, half2(12.9898, 78.233))) * 43758.5453);\n                }\n\n                half dither(half2 uv, half variation) {\n                    return 1 + variation * 2 * (rand(uv * 10.0) - 0.5);\n                }\n\n                half2 rotate(half2 p, half angle) {\n                    half r = radians(angle);\n                    half s = sin(r);\n                    half c = cos(r);\n                    return mat2(c, -s, s, c) * p;\n                }\n\n                half4 texView(half2 uv) {\n                    return inputShader.eval(uv * uSize);\n                }\n\n                // get relative uv based on longer length among width and height of the view. \n                half2 relativeUv(half2 uv, half2 pos, half scale, half stretch) {\n                    half asp = uSize.x / uSize.y;\n                    asp = mix(asp, stretch, step(0.01, stretch));\n                    if (asp > 1) {\n                        pos.y /= asp;\n                        uv.y /= asp;\n                    } else {\n                        pos.x *= asp;\n                        uv.x *= asp;\n                    }\n                    pos /= scale;\n                    uv /= scale;\n                    uv -= pos - half2(0.5); // translate\n                    return uv;\n                }\n\n                half4 texLight(half2 uv, half2 pos, half rotation, half scale, half stretch) {\n                    half2 ruv = relativeUv(rotate(uv, rotation), rotate(pos, rotation), scale, stretch);\n                    half4 map = lightMapShader.eval(ruv * uLightMapSize);\n                    // TODO alpha should be the actual alpha of the map in future.\n                    return half4(map.rgb, length(map.rgb) / sqrt(3));\n                }\n\n                half2 stretchedPos(half2 pos, half scale) {\n                    half aspectRatio = uSize.x / uSize.y;\n                    half2 dPos = 0.5 * half2(pos - half2(0.5, 0.5));\n                    if (scale > 1) {\n                        dPos *= scale;\n                    }\n                    half asp = aspectRatio;\n                    dPos.x *= step(aspectRatio, 1);\n                    dPos.y *= step(1, aspectRatio);\n                    asp = mix(asp, 1 / aspectRatio, step(aspectRatio, 1));\n                    return half2(pos + (asp - 1) * dPos);\n                }\n\n                const half epsilon = 0.0001;\n                half3 rgb2hsl(half3 rgb) {\n                    half minColor = min(rgb.r, min(rgb.g, rgb.b));\n                    half maxColor = max(rgb.r, max(rgb.g, rgb.b));\n                    half3 mask = step(rgb.grr, rgb.rgb) * step(rgb.bbg, rgb.rgb);\n                    half3 hue = mask * (half3(0, 2, 4) + (rgb.gbr - rgb.brg) / (maxColor - minColor + epsilon)) / 6;\n                    return half3(\n                            fract(1 + hue.x + hue.y + hue.z), // h \n                            (maxColor - minColor) / (1 - abs(minColor + maxColor - 1) + epsilon), // s\n                            (minColor + maxColor) * 0.5 // l\n                    );\n                }\n\n                half triangular(half x) {\n                    half dbx = 2 * x;\n                    return mix(dbx, 2 - dbx, step(1, dbx));\n                }\n\n                // a simple way to compute color delta using HSL Color Space. Imagine a HSL cylinder for deep understanding.\n                // TODO do a test with CIELAB color model to mimic human eyes, not just using this model. \n                half computeColorDelta(half4 c1, half4 c2) {\n                    half3 hsl1 = rgb2hsl(c1.rgb * c1.a);\n                    half3 hsl2 = rgb2hsl(c2.rgb * c2.a);\n                    half dl = abs(hsl1.z - hsl2.z);\n                    half ds = abs(hsl1.y - hsl2.y);\n                    half dh = abs(hsl1.x - hsl2.x);\n                    dh = mix(dh, 1 - dh, step(0.5, dh)) * 2; // for closer angle with normalization\n\n                    // apply weights for each channel. this would be a tune point of the color delta model.\n                    half w = abs(1 - dl) * smoothstep(0.6, 1, triangular(hsl1.z) * triangular(hsl2.z)); // weight based on delta lightness.\n                    ds *= 0.1 * smoothstep(0.1, 0, dh * dl); // apply delta saturation only if other delta is almost zero.                \n                    dh *= w; // apply delta lightness as a weight of the hue.\n                    return max(dh, max(ds, dl));\n                }\n                \n                half4 main(in vec2 fragCoord) {\n                    vec2 uv = fragCoord / uSize;\n                    half4 viewColor = texView(uv);\n                    "

    const-string v3, "\n                    half2 pos = mix(uLightPosition, stretchedPos(uLightPosition, uLightScale), step(1, half(uLightPositionStretch)));\n\n                    // light color\n                    half4 lightColor = texLight(uv, pos, uLightRotation, uLightScale, uStretch);\n                    lightColor *= uLightIntensity;\n                    lightColor = clamp(lightColor, half4(0), half4(1));\n                    half3 tintColor = mix(uLightColor.rgb, getTintColor(uv, uSize), useTint());\n                    lightColor.rgb *= tintColor;\n                    lightColor.rgb *= dither(uv, uDitherVariation);\n                    \n                    half useDomain = step(0.1, uDomainColor.a);\n                    half domainLuminance = clamp(max(computeColorDelta(viewColor, uDomainColor), uDomainDeltaRatio) * uDomainStrength, 0.0, 1.0);\n                    lightColor.a = mix(lightColor.a, lightColor.a * domainLuminance, useDomain);\n                    lightColor.a = clamp(lightColor.a, 0, 1);\n\n                    // reduce tinting light by delta lightness btw tint and view pixels.\n                    half tintLightness = length(tintColor.rgb) / sqrt(3);\n                    half viewLightness = length(viewColor.rgb * viewColor.a) / sqrt(3);\n                    "

    const-string v4, "\n\n                    half3 color = mix(lightColor.rgb, lightColor.rgb * domainLuminance, useDomain);\n                    "

    invoke-static {v2, v1, v3, p1, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n                }\n                "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lj9/b;->c(Ljava/lang/String;)Landroid/graphics/RuntimeShader;

    move-result-object p1

    iput-object p1, p0, Ll9/j;->l:Landroid/graphics/RuntimeShader;

    new-instance p1, Ll9/g;

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, v1}, Ll9/g;-><init>(ILl9/j;I)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    sget-object p1, Ll9/i;->c:Landroid/graphics/PointF;

    const-string v0, "pos"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lk9/s;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lk9/s;-><init>(Lj9/h;Ljava/lang/Object;I)V

    invoke-virtual {p0, v1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Ll9/f;

    const v1, 0x40033333    # 2.05f

    const/4 v2, 0x4

    invoke-direct {p1, p0, v1, v2}, Ll9/f;-><init>(Ll9/j;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Ll9/f;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    invoke-direct {p1, p0, v1, v2}, Ll9/f;-><init>(Ll9/j;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Lk9/t;

    const/4 v2, 0x2

    invoke-direct {p1, p0, v2}, Lk9/t;-><init>(Lj9/h;I)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Ll9/f;

    const/4 v2, 0x5

    invoke-direct {p1, p0, v1, v2}, Ll9/f;-><init>(Ll9/j;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Ll9/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v1, p0, v2}, Ll9/g;-><init>(ILl9/j;I)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Ll9/f;

    const v1, 0x3f947ae1    # 1.16f

    const/4 v2, 0x3

    invoke-direct {p1, p0, v1, v2}, Ll9/f;-><init>(Ll9/j;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Ll9/f;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Ll9/f;-><init>(Ll9/j;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget p1, p2, Ll9/b;->h:I

    new-instance v1, Ll9/g;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p0, v2}, Ll9/g;-><init>(ILl9/j;I)V

    invoke-virtual {p0, v1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget-object p1, p2, Ll9/b;->d:Landroid/graphics/PointF;

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lk9/s;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lk9/s;-><init>(Lj9/h;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance p1, Ll9/f;

    iget v0, p2, Ll9/b;->e:F

    const/4 v1, 0x2

    invoke-direct {p1, p0, v0, v1}, Ll9/f;-><init>(Ll9/j;FI)V

    invoke-virtual {p0, p1}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget p1, p2, Ll9/b;->f:F

    new-instance v0, Ll9/f;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Ll9/f;-><init>(Ll9/j;FI)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget p1, p2, Ll9/b;->i:F

    new-instance v0, Ll9/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ll9/f;-><init>(Ll9/j;FI)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget-object p1, p2, Ll9/b;->j:Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-instance v0, Ll9/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Ll9/g;-><init>(ILl9/j;I)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    :cond_3
    iget p1, p2, Ll9/b;->k:F

    new-instance v0, Ll9/f;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Ll9/f;-><init>(Ll9/j;FI)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget p1, p2, Ll9/b;->l:F

    new-instance v0, Ll9/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ll9/f;-><init>(Ll9/j;FI)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget p1, p2, Ll9/b;->g:F

    new-instance v0, Ll9/f;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1}, Ll9/f;-><init>(Ll9/j;FI)V

    invoke-virtual {p0, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget p1, p2, Ll9/b;->q:F

    invoke-virtual {p0, p1}, Lj9/h;->g(F)V

    new-instance p1, Ldb/j;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
