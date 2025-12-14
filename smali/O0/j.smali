.class public final LO0/j;
.super LO0/t;
.source "SourceFile"


# virtual methods
.method public final a(LO0/d;)V
    .locals 2

    iget-object p1, p0, LO0/t;->h:LO0/g;

    iget-boolean v0, p1, LO0/g;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, LO0/g;->j:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, LO0/g;->l:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO0/g;

    iget-object p0, p0, LO0/t;->b:LN0/h;

    check-cast p0, LN0/m;

    iget v0, v0, LO0/g;->g:I

    int-to-float v0, v0

    iget p0, p0, LN0/m;->k0:F

    mul-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    invoke-virtual {p1, p0}, LO0/g;->d(I)V

    return-void
.end method

.method public final d()V
    .locals 7

    iget-object v0, p0, LO0/t;->b:LN0/h;

    move-object v1, v0

    check-cast v1, LN0/m;

    iget v2, v1, LN0/m;->l0:I

    iget v3, v1, LN0/m;->m0:I

    iget v1, v1, LN0/m;->o0:I

    iget-object v4, p0, LO0/t;->h:LO0/g;

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-ne v1, v5, :cond_2

    if-eq v2, v6, :cond_0

    iget-object v1, v4, LO0/g;->l:Ljava/util/ArrayList;

    iget-object v0, v0, LN0/h;->O:LN0/h;

    iget-object v0, v0, LN0/h;->d:LO0/m;

    iget-object v0, v0, LO0/t;->h:LO0/g;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-object v0, v0, LN0/h;->O:LN0/h;

    iget-object v0, v0, LN0/h;->d:LO0/m;

    iget-object v0, v0, LO0/t;->h:LO0/g;

    iget-object v0, v0, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v2, v4, LO0/g;->f:I

    goto :goto_0

    :cond_0
    if-eq v3, v6, :cond_1

    iget-object v1, v4, LO0/g;->l:Ljava/util/ArrayList;

    iget-object v0, v0, LN0/h;->O:LN0/h;

    iget-object v0, v0, LN0/h;->d:LO0/m;

    iget-object v0, v0, LO0/t;->i:LO0/g;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-object v0, v0, LN0/h;->O:LN0/h;

    iget-object v0, v0, LN0/h;->d:LO0/m;

    iget-object v0, v0, LO0/t;->i:LO0/g;

    iget-object v0, v0, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-int v0, v3

    iput v0, v4, LO0/g;->f:I

    goto :goto_0

    :cond_1
    iput-boolean v5, v4, LO0/g;->b:Z

    iget-object v1, v4, LO0/g;->l:Ljava/util/ArrayList;

    iget-object v0, v0, LN0/h;->O:LN0/h;

    iget-object v0, v0, LN0/h;->d:LO0/m;

    iget-object v0, v0, LO0/t;->i:LO0/g;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-object v0, v0, LN0/h;->O:LN0/h;

    iget-object v0, v0, LN0/h;->d:LO0/m;

    iget-object v0, v0, LO0/t;->i:LO0/g;

    iget-object v0, v0, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-object v0, v0, LN0/h;->d:LO0/m;

    iget-object v0, v0, LO0/t;->h:LO0/g;

    invoke-virtual {p0, v0}, LO0/j;->m(LO0/g;)V

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-object v0, v0, LN0/h;->d:LO0/m;

    iget-object v0, v0, LO0/t;->i:LO0/g;

    invoke-virtual {p0, v0}, LO0/j;->m(LO0/g;)V

    goto :goto_2

    :cond_2
    if-eq v2, v6, :cond_3

    iget-object v1, v4, LO0/g;->l:Ljava/util/ArrayList;

    iget-object v0, v0, LN0/h;->O:LN0/h;

    iget-object v0, v0, LN0/h;->e:LO0/p;

    iget-object v0, v0, LO0/t;->h:LO0/g;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-object v0, v0, LN0/h;->O:LN0/h;

    iget-object v0, v0, LN0/h;->e:LO0/p;

    iget-object v0, v0, LO0/t;->h:LO0/g;

    iget-object v0, v0, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v2, v4, LO0/g;->f:I

    goto :goto_1

    :cond_3
    if-eq v3, v6, :cond_4

    iget-object v1, v4, LO0/g;->l:Ljava/util/ArrayList;

    iget-object v0, v0, LN0/h;->O:LN0/h;

    iget-object v0, v0, LN0/h;->e:LO0/p;

    iget-object v0, v0, LO0/t;->i:LO0/g;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-object v0, v0, LN0/h;->O:LN0/h;

    iget-object v0, v0, LN0/h;->e:LO0/p;

    iget-object v0, v0, LO0/t;->i:LO0/g;

    iget-object v0, v0, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    neg-int v0, v3

    iput v0, v4, LO0/g;->f:I

    goto :goto_1

    :cond_4
    iput-boolean v5, v4, LO0/g;->b:Z

    iget-object v1, v4, LO0/g;->l:Ljava/util/ArrayList;

    iget-object v0, v0, LN0/h;->O:LN0/h;

    iget-object v0, v0, LN0/h;->e:LO0/p;

    iget-object v0, v0, LO0/t;->i:LO0/g;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-object v0, v0, LN0/h;->O:LN0/h;

    iget-object v0, v0, LN0/h;->e:LO0/p;

    iget-object v0, v0, LO0/t;->i:LO0/g;

    iget-object v0, v0, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-object v0, v0, LN0/h;->e:LO0/p;

    iget-object v0, v0, LO0/t;->h:LO0/g;

    invoke-virtual {p0, v0}, LO0/j;->m(LO0/g;)V

    iget-object v0, p0, LO0/t;->b:LN0/h;

    iget-object v0, v0, LN0/h;->e:LO0/p;

    iget-object v0, v0, LO0/t;->i:LO0/g;

    invoke-virtual {p0, v0}, LO0/j;->m(LO0/g;)V

    :goto_2
    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, LO0/t;->b:LN0/h;

    move-object v1, v0

    check-cast v1, LN0/m;

    iget v1, v1, LN0/m;->o0:I

    const/4 v2, 0x1

    iget-object p0, p0, LO0/t;->h:LO0/g;

    if-ne v1, v2, :cond_0

    iget p0, p0, LO0/g;->g:I

    iput p0, v0, LN0/h;->T:I

    goto :goto_0

    :cond_0
    iget p0, p0, LO0/g;->g:I

    iput p0, v0, LN0/h;->U:I

    :goto_0
    return-void
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, LO0/t;->h:LO0/g;

    invoke-virtual {p0}, LO0/g;->c()V

    return-void
.end method

.method public final k()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final m(LO0/g;)V
    .locals 1

    iget-object p0, p0, LO0/t;->h:LO0/g;

    iget-object v0, p0, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, LO0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
