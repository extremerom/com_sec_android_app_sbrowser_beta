.class public final LC3/j;
.super LC3/k;
.source "SourceFile"


# instance fields
.field public final synthetic i:I

.field public final j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1

    iput p1, p0, LC3/j;->i:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, p2}, LC3/e;-><init>(Ljava/util/List;)V

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LM3/a;

    iget-object p2, p2, LM3/a;->b:Ljava/lang/Object;

    check-cast p2, LG3/c;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p2, LG3/c;->b:[I

    array-length p1, p1

    :goto_0
    new-instance p2, LG3/c;

    new-array v0, p1, [F

    new-array p1, p1, [I

    invoke-direct {p2, v0, p1}, LG3/c;-><init>([F[I)V

    iput-object p2, p0, LC3/j;->j:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0, p2}, LC3/e;-><init>(Ljava/util/List;)V

    new-instance p1, LM3/b;

    invoke-direct {p1}, LM3/b;-><init>()V

    iput-object p1, p0, LC3/j;->j:Ljava/lang/Object;

    return-void

    :pswitch_1
    invoke-direct {p0, p2}, LC3/e;-><init>(Ljava/util/List;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, LC3/j;->j:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final g(LM3/a;F)Ljava/lang/Object;
    .locals 10

    iget v0, p0, LC3/j;->i:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, LM3/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p1, LM3/a;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast v0, LM3/b;

    check-cast v1, LM3/b;

    iget-object v2, p0, LC3/e;->e:Lo3/e;

    if-eqz v2, :cond_0

    iget-object v3, p1, LM3/a;->h:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0}, LC3/e;->e()F

    move-result v8

    iget v9, p0, LC3/e;->d:F

    iget v3, p1, LM3/a;->g:F

    move-object v5, v0

    move-object v6, v1

    move v7, p2

    invoke-virtual/range {v2 .. v9}, Lo3/e;->k(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM3/b;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, v0, LM3/b;->a:F

    iget v2, v1, LM3/b;->a:F

    invoke-static {p1, v2, p2}, LL3/e;->d(FFF)F

    move-result p1

    iget v0, v0, LM3/b;->b:F

    iget v1, v1, LM3/b;->b:F

    invoke-static {v0, v1, p2}, LL3/e;->d(FFF)F

    move-result p2

    iget-object p0, p0, LC3/j;->j:Ljava/lang/Object;

    check-cast p0, LM3/b;

    iput p1, p0, LM3/b;->a:F

    iput p2, p0, LM3/b;->b:F

    move-object p1, p0

    :goto_0
    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0, p1, p2, p2, p2}, LC3/j;->l(LM3/a;FFF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p1, LM3/a;->b:Ljava/lang/Object;

    check-cast v0, LG3/c;

    iget-object p1, p1, LM3/a;->c:Ljava/lang/Object;

    check-cast p1, LG3/c;

    iget-object p0, p0, LC3/j;->j:Ljava/lang/Object;

    check-cast p0, LG3/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, LG3/c;->b:[I

    array-length v2, v1

    iget-object v3, p1, LG3/c;->b:[I

    array-length v4, v3

    if-ne v2, v4, :cond_3

    const/4 v2, 0x0

    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_2

    iget-object v4, v0, LG3/c;->a:[F

    aget v4, v4, v2

    iget-object v5, p1, LG3/c;->a:[F

    aget v5, v5, v2

    invoke-static {v4, v5, p2}, LL3/e;->d(FFF)F

    move-result v4

    iget-object v5, p0, LG3/c;->a:[F

    aput v4, v5, v2

    aget v4, v1, v2

    aget v5, v3, v2

    invoke-static {p2, v4, v5}, LG5/b4;->f(FII)I

    move-result v4

    iget-object v5, p0, LG3/c;->b:[I

    aput v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot interpolate between gradients. Lengths vary ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, v1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " vs "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, v3

    const-string v0, ")"

    invoke-static {p1, p2, v0}, LB/e;->p(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic h(LM3/a;FFF)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LC3/j;->i:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, LC3/e;->h(LM3/a;FFF)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2, p3, p4}, LC3/j;->l(LM3/a;FFF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public l(LM3/a;FFF)Landroid/graphics/PointF;
    .locals 10

    iget-object v0, p1, LM3/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p1, LM3/a;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/graphics/PointF;

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, p0, LC3/e;->e:Lo3/e;

    if-eqz v2, :cond_0

    iget-object v3, p1, LM3/a;->h:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p0}, LC3/e;->e()F

    move-result v8

    iget v9, p0, LC3/e;->d:F

    iget v3, p1, LM3/a;->g:F

    move-object v5, v0

    move-object v6, v1

    move v7, p2

    invoke-virtual/range {v2 .. v9}, Lo3/e;->k(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    iget-object p0, p0, LC3/j;->j:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    iget p1, v0, Landroid/graphics/PointF;->x:F

    iget p2, v1, Landroid/graphics/PointF;->x:F

    invoke-static {p2, p1, p3, p1}, LB/e;->a(FFFF)F

    move-result p1

    iget p2, v0, Landroid/graphics/PointF;->y:F

    iget p3, v1, Landroid/graphics/PointF;->y:F

    invoke-static {p3, p2, p4, p2}, LB/e;->a(FFFF)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
