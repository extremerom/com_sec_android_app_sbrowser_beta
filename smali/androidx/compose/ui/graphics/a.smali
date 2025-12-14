.class public abstract Landroidx/compose/ui/graphics/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lm0/m;Ls0/g;I)Lm0/m;
    .locals 22

    move/from16 v0, p2

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    move v5, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    sget-wide v13, Ls0/i;->a:J

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1

    sget-object v0, Ls0/e;->a:LE5/v;

    move-object v15, v0

    goto :goto_2

    :cond_1
    move-object/from16 v15, p1

    :goto_2
    sget-wide v19, Ls0/d;->a:J

    new-instance v0, Landroidx/compose/ui/graphics/GraphicsLayerElement;

    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x41000000    # 8.0f

    const/16 v16, 0x1

    const/16 v21, 0x0

    move-wide/from16 v17, v19

    invoke-direct/range {v2 .. v21}, Landroidx/compose/ui/graphics/GraphicsLayerElement;-><init>(FFFFFFFFFFJLs0/g;ZJJI)V

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object v0

    return-object v0
.end method
