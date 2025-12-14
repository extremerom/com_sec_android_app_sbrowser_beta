.class public final LC3/f;
.super LC3/k;
.source "SourceFile"


# instance fields
.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    iput p1, p0, LC3/f;->i:I

    invoke-direct {p0, p2}, LC3/e;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final g(LM3/a;F)Ljava/lang/Object;
    .locals 9

    iget v0, p0, LC3/f;->i:I

    packed-switch v0, :pswitch_data_0

    iget-object v1, p0, LC3/e;->e:Lo3/e;

    iget-object v0, p1, LM3/a;->b:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v2, p1, LM3/a;->h:Ljava/lang/Float;

    if-nez v2, :cond_0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    :goto_0
    move v3, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_0

    :goto_1
    move-object v4, v0

    check-cast v4, LE3/c;

    iget-object v0, p1, LM3/a;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    move-object v5, v4

    goto :goto_2

    :cond_1
    check-cast v0, LE3/c;

    move-object v5, v0

    :goto_2
    invoke-virtual {p0}, LC3/e;->d()F

    move-result v7

    iget v8, p0, LC3/e;->d:F

    iget v2, p1, LM3/a;->g:F

    move v6, p2

    invoke-virtual/range {v1 .. v8}, Lo3/e;->k(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LE3/c;

    goto :goto_4

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-nez p0, :cond_4

    iget-object p0, p1, LM3/a;->c:Ljava/lang/Object;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    check-cast p0, LE3/c;

    goto :goto_4

    :cond_4
    :goto_3
    move-object p0, v0

    check-cast p0, LE3/c;

    :goto_4
    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, LC3/f;->l(LM3/a;F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, LC3/f;->l(LM3/a;F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public l(LM3/a;F)I
    .locals 10

    const-string v0, "Missing values for keyframe."

    iget v1, p0, LC3/f;->i:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p1, LM3/a;->b:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p1, LM3/a;->c:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v2, p0, LC3/e;->e:Lo3/e;

    iget-object v0, p1, LM3/a;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v1, p1, LM3/a;->h:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    iget-object v1, p1, LM3/a;->c:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {p0}, LC3/e;->e()F

    move-result v8

    iget v9, p0, LC3/e;->d:F

    iget v3, p1, LM3/a;->g:F

    move v7, p2

    invoke-virtual/range {v2 .. v9}, Lo3/e;->k(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p1, LM3/a;->k:I

    const v1, 0x2ec8fb09

    if-ne p0, v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, LM3/a;->k:I

    :cond_1
    iget p0, p1, LM3/a;->k:I

    iget v0, p1, LM3/a;->l:I

    if-ne v0, v1, :cond_2

    iget-object v0, p1, LM3/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, LM3/a;->l:I

    :cond_2
    iget p1, p1, LM3/a;->l:I

    sget-object v0, LL3/e;->a:Landroid/graphics/PointF;

    int-to-float v0, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p2, p0

    add-float/2addr p2, v0

    float-to-int p0, p2

    :goto_0
    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object v1, p1, LM3/a;->b:Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget-object v1, p1, LM3/a;->c:Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget-object v2, p0, LC3/e;->e:Lo3/e;

    iget-object v0, p1, LM3/a;->b:Ljava/lang/Object;

    if-eqz v2, :cond_4

    iget-object v1, p1, LM3/a;->h:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    iget-object v1, p1, LM3/a;->c:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {p0}, LC3/e;->e()F

    move-result v8

    iget v9, p0, LC3/e;->d:F

    iget v3, p1, LM3/a;->g:F

    move v7, p2

    invoke-virtual/range {v2 .. v9}, Lo3/e;->k(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p2, p0, v1}, LL3/e;->b(FFF)F

    move-result p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p1, p1, LM3/a;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p2, p1}, LG5/b4;->f(FII)I

    move-result p0

    :goto_1
    return p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
