.class public final LH3/e;
.super LH3/c;
.source "SourceFile"


# instance fields
.field public C:LC3/e;

.field public final D:Ljava/util/ArrayList;

.field public final E:Landroid/graphics/RectF;

.field public final F:Landroid/graphics/RectF;

.field public final G:Landroid/graphics/Paint;

.field public H:Z


# direct methods
.method public constructor <init>(Lz3/t;LH3/i;Ljava/util/List;Lz3/g;)V
    .locals 9

    invoke-direct {p0, p1, p2}, LH3/c;-><init>(Lz3/t;LH3/i;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LH3/e;->D:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LH3/e;->E:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, LH3/e;->F:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LH3/e;->G:Landroid/graphics/Paint;

    const/4 v0, 0x1

    iput-boolean v0, p0, LH3/e;->H:Z

    const/4 v1, 0x0

    iget-object p2, p2, LH3/i;->s:LF3/b;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, LF3/b;->f0()LC3/e;

    move-result-object p2

    iput-object p2, p0, LH3/e;->C:LC3/e;

    invoke-virtual {p0, p2}, LH3/c;->g(LC3/e;)V

    iget-object p2, p0, LH3/e;->C:LC3/e;

    invoke-virtual {p2, p0}, LC3/e;->a(LC3/a;)V

    goto :goto_0

    :cond_0
    iput-object v1, p0, LH3/e;->C:LC3/e;

    :goto_0
    new-instance p2, LN/k;

    iget-object v2, p4, Lz3/g;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p2, v2}, LN/k;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    move-object v3, v1

    :goto_1
    const/4 v4, 0x0

    if-ltz v2, :cond_4

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LH3/i;

    sget-object v6, LH3/b;->a:[I

    iget-object v7, v5, LH3/i;->e:LH3/g;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown layer type "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v5, LH3/i;->e:LH3/g;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LL3/b;->b(Ljava/lang/String;)V

    move-object v6, v1

    goto :goto_2

    :pswitch_0
    new-instance v6, LH3/n;

    invoke-direct {v6, p1, v5}, LH3/n;-><init>(Lz3/t;LH3/i;)V

    goto :goto_2

    :pswitch_1
    new-instance v6, LH3/j;

    invoke-direct {v6, p1, v5}, LH3/c;-><init>(Lz3/t;LH3/i;)V

    goto :goto_2

    :pswitch_2
    new-instance v6, LH3/f;

    const/4 v7, 0x0

    invoke-direct {v6, p1, v5, v7}, LH3/f;-><init>(Lz3/t;LH3/i;I)V

    goto :goto_2

    :pswitch_3
    new-instance v6, LH3/f;

    const/4 v7, 0x1

    invoke-direct {v6, p1, v5, v7}, LH3/f;-><init>(Lz3/t;LH3/i;I)V

    goto :goto_2

    :pswitch_4
    new-instance v6, LH3/e;

    iget-object v7, p4, Lz3/g;->c:Ljava/util/HashMap;

    iget-object v8, v5, LH3/i;->g:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-direct {v6, p1, v5, v7, p4}, LH3/e;-><init>(Lz3/t;LH3/i;Ljava/util/List;Lz3/g;)V

    goto :goto_2

    :pswitch_5
    new-instance v6, LH3/k;

    invoke-direct {v6, p1, v5, p0, p4}, LH3/k;-><init>(Lz3/t;LH3/i;LH3/e;Lz3/g;)V

    :goto_2
    if-nez v6, :cond_1

    goto :goto_3

    :cond_1
    iget-object v7, v6, LH3/c;->p:LH3/i;

    iget-wide v7, v7, LH3/i;->d:J

    invoke-virtual {p2, v7, v8, v6}, LN/k;->e(JLjava/lang/Object;)V

    if-eqz v3, :cond_2

    iput-object v6, v3, LH3/c;->s:LH3/c;

    move-object v3, v1

    goto :goto_3

    :cond_2
    iget-object v7, p0, LH3/e;->D:Ljava/util/ArrayList;

    invoke-virtual {v7, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v4, LH3/d;->a:[I

    iget-object v5, v5, LH3/i;->u:LH3/h;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v0, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v6

    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    :cond_4
    :goto_4
    invoke-virtual {p2}, LN/k;->g()I

    move-result p0

    if-ge v4, p0, :cond_7

    invoke-virtual {p2, v4}, LN/k;->d(I)J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, LN/k;->b(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LH3/c;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    iget-object p1, p0, LH3/c;->p:LH3/i;

    iget-wide p3, p1, LH3/i;->f:J

    invoke-virtual {p2, p3, p4}, LN/k;->b(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LH3/c;

    if-eqz p1, :cond_6

    iput-object p1, p0, LH3/c;->t:LH3/c;

    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final d(Landroid/graphics/ColorFilter;Lo3/e;)V
    .locals 1

    invoke-super {p0, p1, p2}, LH3/c;->d(Landroid/graphics/ColorFilter;Lo3/e;)V

    sget-object v0, Lz3/w;->z:Ljava/lang/Float;

    if-ne p1, v0, :cond_0

    new-instance p1, LC3/r;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, LC3/r;-><init>(Lo3/e;Ljava/lang/Object;)V

    iput-object p1, p0, LH3/e;->C:LC3/e;

    invoke-virtual {p1, p0}, LC3/e;->a(LC3/a;)V

    iget-object p1, p0, LH3/e;->C:LC3/e;

    invoke-virtual {p0, p1}, LH3/c;->g(LC3/e;)V

    :cond_0
    return-void
.end method

.method public final f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, LH3/c;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, LH3/e;->D:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    :goto_0
    if-ltz p3, :cond_0

    iget-object v1, p0, LH3/e;->E:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LH3/c;

    iget-object v3, p0, LH3/c;->n:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v3, v0}, LH3/c;->f(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    invoke-virtual {p1, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final k(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 7

    iget-object v0, p0, LH3/e;->F:Landroid/graphics/RectF;

    iget-object v1, p0, LH3/c;->p:LH3/i;

    iget v2, v1, LH3/i;->o:F

    const/4 v3, 0x0

    iget v4, v1, LH3/i;->p:F

    invoke-virtual {v0, v3, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v2, p0, LH3/c;->o:Lz3/t;

    iget-boolean v2, v2, Lz3/t;->t:Z

    iget-object v3, p0, LH3/e;->D:Ljava/util/ArrayList;

    const/16 v4, 0xff

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_0

    if-eq p3, v4, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iget-object v6, p0, LH3/e;->G:Landroid/graphics/Paint;

    invoke-virtual {v6, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-static {p1, v0, v6}, LL3/g;->e(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_1
    if-eqz v2, :cond_2

    move p3, v4

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v5

    :goto_2
    if-ltz v2, :cond_6

    iget-boolean v4, p0, LH3/e;->H:Z

    if-nez v4, :cond_3

    iget-object v4, v1, LH3/i;->c:Ljava/lang/String;

    const-string v6, "__container"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v4

    goto :goto_4

    :cond_4
    :goto_3
    move v4, v5

    :goto_4
    if-eqz v4, :cond_5

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LH3/c;

    invoke-virtual {v4, p1, p2, p3}, LH3/c;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {}, LG5/b3;->b()V

    return-void
.end method

.method public final q(LE3/f;ILjava/util/ArrayList;LE3/f;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LH3/e;->D:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LH3/c;

    invoke-virtual {v1, p1, p2, p3, p4}, LH3/c;->c(LE3/f;ILjava/util/ArrayList;LE3/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r(Z)V
    .locals 1

    invoke-super {p0, p1}, LH3/c;->r(Z)V

    iget-object p0, p0, LH3/e;->D:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH3/c;

    invoke-virtual {v0, p1}, LH3/c;->r(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final s(F)V
    .locals 4

    invoke-super {p0, p1}, LH3/c;->s(F)V

    iget-object v0, p0, LH3/e;->C:LC3/e;

    iget-object v1, p0, LH3/c;->p:LH3/i;

    if-eqz v0, :cond_0

    iget-object p1, p0, LH3/c;->o:Lz3/t;

    iget-object p1, p1, Lz3/t;->a:Lz3/g;

    iget v2, p1, Lz3/g;->l:F

    iget p1, p1, Lz3/g;->k:F

    sub-float/2addr v2, p1

    const p1, 0x3c23d70a    # 0.01f

    add-float/2addr v2, p1

    iget-object p1, v1, LH3/i;->b:Lz3/g;

    iget p1, p1, Lz3/g;->k:F

    invoke-virtual {v0}, LC3/e;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v3, v1, LH3/i;->b:Lz3/g;

    iget v3, v3, Lz3/g;->m:F

    mul-float/2addr v0, v3

    sub-float/2addr v0, p1

    div-float p1, v0, v2

    :cond_0
    iget-object v0, p0, LH3/e;->C:LC3/e;

    if-nez v0, :cond_1

    iget-object v0, v1, LH3/i;->b:Lz3/g;

    iget v2, v0, Lz3/g;->l:F

    iget v0, v0, Lz3/g;->k:F

    sub-float/2addr v2, v0

    iget v0, v1, LH3/i;->n:F

    div-float/2addr v0, v2

    sub-float/2addr p1, v0

    :cond_1
    iget v0, v1, LH3/i;->m:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, v1, LH3/i;->c:Ljava/lang/String;

    const-string v2, "__container"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, v1, LH3/i;->m:F

    div-float/2addr p1, v0

    :cond_2
    iget-object p0, p0, LH3/e;->D:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LH3/c;

    invoke-virtual {v1, p1}, LH3/c;->s(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method
