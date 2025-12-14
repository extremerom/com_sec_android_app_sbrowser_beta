.class public final Lk9/g;
.super Li9/a;
.source "SourceFile"


# virtual methods
.method public final b(Landroid/content/Context;Lbc/d;)Ldb/j;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    check-cast v1, Lk9/f;

    const-string v2, "appContext"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "config"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lk9/z;

    iget-object v3, v1, Lk9/f;->b:Lk9/e;

    sget-object v4, Lk9/e;->RoundRect:Lk9/e;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v2, v3}, Lk9/z;-><init>(Z)V

    iget-object v3, v0, Li9/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Li9/a;->c()Lj9/h;

    move-result-object v3

    check-cast v3, Lk9/z;

    if-eqz v3, :cond_1

    iget-object v4, v1, Lk9/f;->d:Landroid/graphics/PointF;

    invoke-virtual {v3, v4}, Lk9/z;->m(Landroid/graphics/PointF;)V

    iget v4, v1, Lk9/f;->e:F

    new-instance v5, Lk9/u;

    const/16 v6, 0xd

    invoke-direct {v5, v3, v4, v6}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {v3, v5}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget v5, v1, Lk9/f;->g:F

    new-instance v6, Lk9/u;

    const/16 v7, 0xa

    invoke-direct {v6, v3, v5, v7}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {v3, v6}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget v6, v1, Lk9/f;->f:I

    invoke-static {v6}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v6

    const-string v7, "valueOf(...)"

    invoke-static {v6, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lk9/s;

    const/4 v8, 0x0

    invoke-direct {v7, v3, v6, v8}, Lk9/s;-><init>(Lj9/h;Ljava/lang/Object;I)V

    invoke-virtual {v3, v7}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget v6, v1, Lk9/f;->i:F

    new-instance v7, Lk9/u;

    const/16 v8, 0xc

    invoke-direct {v7, v3, v6, v8}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {v3, v7}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget v7, v1, Lk9/f;->h:F

    new-instance v8, Lk9/u;

    const/16 v9, 0xb

    invoke-direct {v8, v3, v7, v9}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {v3, v8}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget v8, v1, Lk9/f;->j:F

    new-instance v9, Lk9/u;

    const/4 v10, 0x1

    invoke-direct {v9, v3, v8, v10}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {v3, v9}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget v9, v1, Lk9/f;->l:F

    new-instance v10, Lk9/u;

    const/16 v11, 0x8

    invoke-direct {v10, v3, v9, v11}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {v3, v10}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget v10, v1, Lk9/f;->k:F

    new-instance v11, Lk9/u;

    const/16 v12, 0x10

    invoke-direct {v11, v3, v10, v12}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {v3, v11}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget v11, v1, Lk9/f;->m:F

    new-instance v12, Lk9/u;

    const/4 v13, 0x3

    invoke-direct {v12, v3, v11, v13}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {v3, v12}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget v12, v1, Lk9/f;->v:F

    invoke-virtual {v3, v12}, Lj9/h;->g(F)V

    iget v13, v1, Lk9/f;->n:F

    invoke-virtual {v3, v13}, Lk9/z;->l(F)V

    iget v14, v1, Lk9/f;->p:F

    new-instance v15, Lk9/u;

    move-object/from16 p1, v2

    const/16 v2, 0xf

    invoke-direct {v15, v3, v14, v2}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {v3, v15}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance v2, Lk9/u;

    iget v14, v1, Lk9/f;->r:F

    const/4 v15, 0x5

    invoke-direct {v2, v3, v14, v15}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {v3, v2}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget v2, v1, Lk9/f;->q:F

    new-instance v15, Lk9/u;

    const/4 v0, 0x2

    invoke-direct {v15, v3, v2, v0}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {v3, v15}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    new-instance v0, Lk9/u;

    iget v15, v1, Lk9/f;->s:F

    move/from16 p2, v14

    const/16 v14, 0xe

    invoke-direct {v0, v3, v15, v14}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {v3, v0}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget v0, v1, Lk9/f;->w:F

    new-instance v14, Lk9/u;

    move/from16 v16, v15

    const/16 v15, 0x9

    invoke-direct {v14, v3, v0, v15}, Lk9/u;-><init>(Lk9/z;FI)V

    invoke-virtual {v3, v14}, Lj9/h;->k(Ljava/util/function/Consumer;)V

    iget-object v0, v1, Lk9/f;->b:Lk9/e;

    iget v3, v1, Lk9/f;->p:F

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "GuidingLightConfig shape:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " radius:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " intensity:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " frameRate:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " glowIntensity:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " glowRadius:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " glowSharpness:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " refIntensity:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " refRadius:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " refAlbedo: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "  gLuminance:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " saturation:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " outerSaturation:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " stretch:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " stretchDirLit: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GuidingLightConfig"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object/from16 p1, v2

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lbc/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh9/a;

    move-object/from16 v3, p0

    invoke-virtual {v2, v3}, Lh9/a;->a(Li9/a;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v1, Ldb/j;

    move-object/from16 v2, p1

    invoke-direct {v1, v2, v0}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
