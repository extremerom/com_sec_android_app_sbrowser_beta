.class public abstract Lr4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:Ljava/util/ArrayList;


# virtual methods
.method public final a()V
    .locals 10

    iget-object v0, p0, Lr4/d;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, -0x800001

    iput v1, p0, Lr4/d;->a:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    iput v2, p0, Lr4/d;->b:F

    iput v1, p0, Lr4/d;->c:F

    iput v2, p0, Lr4/d;->d:F

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv4/c;

    iget v5, p0, Lr4/d;->a:F

    move-object v6, v4

    check-cast v6, Lr4/b;

    iget v7, v6, Lr4/b;->p:F

    cmpg-float v5, v5, v7

    if-gez v5, :cond_2

    iput v7, p0, Lr4/d;->a:F

    :cond_2
    iget v5, p0, Lr4/d;->b:F

    iget v8, v6, Lr4/b;->q:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_3

    iput v8, p0, Lr4/d;->b:F

    :cond_3
    iget v5, p0, Lr4/d;->c:F

    iget v9, v6, Lr4/b;->r:F

    cmpg-float v5, v5, v9

    if-gez v5, :cond_4

    iput v9, p0, Lr4/d;->c:F

    :cond_4
    iget v5, p0, Lr4/d;->d:F

    iget v6, v6, Lr4/b;->s:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    iput v6, p0, Lr4/d;->d:F

    :cond_5
    check-cast v4, Lr4/b;

    sget-object v5, Lq4/p;->LEFT:Lq4/p;

    iget-object v4, v4, Lr4/b;->d:Lq4/p;

    if-ne v4, v5, :cond_7

    iget v4, p0, Lr4/d;->e:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_6

    iput v7, p0, Lr4/d;->e:F

    :cond_6
    iget v4, p0, Lr4/d;->f:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_1

    iput v8, p0, Lr4/d;->f:F

    goto :goto_0

    :cond_7
    iget v4, p0, Lr4/d;->g:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_8

    iput v7, p0, Lr4/d;->g:F

    :cond_8
    iget v4, p0, Lr4/d;->h:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_1

    iput v8, p0, Lr4/d;->h:F

    goto :goto_0

    :cond_9
    iput v1, p0, Lr4/d;->e:F

    iput v2, p0, Lr4/d;->f:F

    iput v1, p0, Lr4/d;->g:F

    iput v2, p0, Lr4/d;->h:F

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/c;

    move-object v4, v2

    check-cast v4, Lr4/b;

    iget-object v4, v4, Lr4/b;->d:Lq4/p;

    sget-object v5, Lq4/p;->LEFT:Lq4/p;

    if-ne v4, v5, :cond_a

    goto :goto_1

    :cond_b
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_e

    check-cast v2, Lr4/b;

    iget v1, v2, Lr4/b;->p:F

    iput v1, p0, Lr4/d;->e:F

    iget v1, v2, Lr4/b;->q:F

    iput v1, p0, Lr4/d;->f:F

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/c;

    move-object v4, v2

    check-cast v4, Lr4/b;

    iget-object v4, v4, Lr4/b;->d:Lq4/p;

    sget-object v5, Lq4/p;->LEFT:Lq4/p;

    if-ne v4, v5, :cond_c

    check-cast v2, Lr4/b;

    iget v4, v2, Lr4/b;->q:F

    iget v5, p0, Lr4/d;->f:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_d

    iput v4, p0, Lr4/d;->f:F

    :cond_d
    iget v2, v2, Lr4/b;->p:F

    iget v4, p0, Lr4/d;->e:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_c

    iput v2, p0, Lr4/d;->e:F

    goto :goto_2

    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv4/c;

    move-object v4, v2

    check-cast v4, Lr4/b;

    iget-object v4, v4, Lr4/b;->d:Lq4/p;

    sget-object v5, Lq4/p;->RIGHT:Lq4/p;

    if-ne v4, v5, :cond_f

    move-object v3, v2

    :cond_10
    if-eqz v3, :cond_13

    check-cast v3, Lr4/b;

    iget v1, v3, Lr4/b;->p:F

    iput v1, p0, Lr4/d;->g:F

    iget v1, v3, Lr4/b;->q:F

    iput v1, p0, Lr4/d;->h:F

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv4/c;

    move-object v2, v1

    check-cast v2, Lr4/b;

    iget-object v2, v2, Lr4/b;->d:Lq4/p;

    sget-object v3, Lq4/p;->RIGHT:Lq4/p;

    if-ne v2, v3, :cond_11

    check-cast v1, Lr4/b;

    iget v2, v1, Lr4/b;->q:F

    iget v3, p0, Lr4/d;->h:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_12

    iput v2, p0, Lr4/d;->h:F

    :cond_12
    iget v1, v1, Lr4/b;->p:F

    iget v2, p0, Lr4/d;->g:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_11

    iput v1, p0, Lr4/d;->g:F

    goto :goto_3

    :cond_13
    return-void
.end method

.method public final b(I)Lv4/c;
    .locals 1

    iget-object p0, p0, Lr4/d;->i:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv4/c;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget-object p0, p0, Lr4/d;->i:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final d()I
    .locals 2

    iget-object p0, p0, Lr4/d;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv4/c;

    check-cast v1, Lr4/b;

    iget-object v1, v1, Lr4/b;->o:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final e(Lq4/p;)F
    .locals 2

    sget-object v0, Lq4/p;->LEFT:Lq4/p;

    const v1, -0x800001

    if-ne p1, v0, :cond_1

    iget p1, p0, Lr4/d;->e:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    iget p0, p0, Lr4/d;->g:F

    return p0

    :cond_0
    return p1

    :cond_1
    iget p1, p0, Lr4/d;->g:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    iget p0, p0, Lr4/d;->e:F

    return p0

    :cond_2
    return p1
.end method

.method public final f(Lq4/p;)F
    .locals 2

    sget-object v0, Lq4/p;->LEFT:Lq4/p;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-ne p1, v0, :cond_1

    iget p1, p0, Lr4/d;->f:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    iget p0, p0, Lr4/d;->h:F

    return p0

    :cond_0
    return p1

    :cond_1
    iget p1, p0, Lr4/d;->h:F

    cmpl-float v0, p1, v1

    if-nez v0, :cond_2

    iget p0, p0, Lr4/d;->f:F

    return p0

    :cond_2
    return p1
.end method
