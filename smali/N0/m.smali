.class public final LN0/m;
.super LN0/h;
.source "SourceFile"


# instance fields
.field public k0:F

.field public l0:I

.field public m0:I

.field public n0:LN0/e;

.field public o0:I

.field public p0:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, LN0/h;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, LN0/m;->k0:F

    const/4 v0, -0x1

    iput v0, p0, LN0/m;->l0:I

    iput v0, p0, LN0/m;->m0:I

    iget-object v0, p0, LN0/h;->D:LN0/e;

    iput-object v0, p0, LN0/m;->n0:LN0/e;

    const/4 v0, 0x0

    iput v0, p0, LN0/m;->o0:I

    iget-object v1, p0, LN0/h;->L:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, LN0/h;->L:Ljava/util/ArrayList;

    iget-object v2, p0, LN0/m;->n0:LN0/e;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, LN0/h;->K:[LN0/e;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, LN0/h;->K:[LN0/e;

    iget-object v3, p0, LN0/m;->n0:LN0/e;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final J(LM0/c;Z)V
    .locals 2

    iget-object p2, p0, LN0/h;->O:LN0/h;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, LN0/m;->n0:LN0/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, LM0/c;->n(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, LN0/m;->o0:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iput p1, p0, LN0/h;->T:I

    iput v1, p0, LN0/h;->U:I

    iget-object p1, p0, LN0/h;->O:LN0/h;

    invoke-virtual {p1}, LN0/h;->k()I

    move-result p1

    invoke-virtual {p0, p1}, LN0/h;->E(I)V

    invoke-virtual {p0, v1}, LN0/h;->H(I)V

    goto :goto_0

    :cond_1
    iput v1, p0, LN0/h;->T:I

    iput p1, p0, LN0/h;->U:I

    iget-object p1, p0, LN0/h;->O:LN0/h;

    invoke-virtual {p1}, LN0/h;->n()I

    move-result p1

    invoke-virtual {p0, p1}, LN0/h;->H(I)V

    invoke-virtual {p0, v1}, LN0/h;->E(I)V

    :goto_0
    return-void
.end method

.method public final K(I)V
    .locals 1

    iget-object v0, p0, LN0/m;->n0:LN0/e;

    invoke-virtual {v0, p1}, LN0/e;->l(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LN0/m;->p0:Z

    return-void
.end method

.method public final L(I)V
    .locals 3

    iget v0, p0, LN0/m;->o0:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, LN0/m;->o0:I

    iget-object p1, p0, LN0/h;->L:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, LN0/m;->o0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, LN0/h;->C:LN0/e;

    iput-object v0, p0, LN0/m;->n0:LN0/e;

    goto :goto_0

    :cond_1
    iget-object v0, p0, LN0/h;->D:LN0/e;

    iput-object v0, p0, LN0/m;->n0:LN0/e;

    :goto_0
    iget-object v0, p0, LN0/m;->n0:LN0/e;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LN0/h;->K:[LN0/e;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, LN0/m;->n0:LN0/e;

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final b(LM0/c;Z)V
    .locals 7

    iget-object p2, p0, LN0/h;->O:LN0/h;

    check-cast p2, LN0/i;

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, LN0/d;->LEFT:LN0/d;

    invoke-virtual {p2, v0}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v0

    sget-object v1, LN0/d;->RIGHT:LN0/d;

    invoke-virtual {p2, v1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v1

    iget-object v2, p0, LN0/h;->O:LN0/h;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v2, LN0/h;->N:[LN0/g;

    aget-object v2, v2, v4

    sget-object v5, LN0/g;->WRAP_CONTENT:LN0/g;

    if-ne v2, v5, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iget v5, p0, LN0/m;->o0:I

    if-nez v5, :cond_3

    sget-object v0, LN0/d;->TOP:LN0/d;

    invoke-virtual {p2, v0}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v0

    sget-object v1, LN0/d;->BOTTOM:LN0/d;

    invoke-virtual {p2, v1}, LN0/h;->i(LN0/d;)LN0/e;

    move-result-object v1

    iget-object p2, p0, LN0/h;->O:LN0/h;

    if-eqz p2, :cond_2

    iget-object p2, p2, LN0/h;->N:[LN0/g;

    aget-object p2, p2, v3

    sget-object v2, LN0/g;->WRAP_CONTENT:LN0/g;

    if-ne p2, v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    move v2, v3

    :cond_3
    iget-boolean p2, p0, LN0/m;->p0:Z

    const/4 v3, -0x1

    const/4 v5, 0x5

    if-eqz p2, :cond_6

    iget-object p2, p0, LN0/m;->n0:LN0/e;

    iget-boolean v6, p2, LN0/e;->c:Z

    if-eqz v6, :cond_6

    invoke-virtual {p1, p2}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object p2

    iget-object v6, p0, LN0/m;->n0:LN0/e;

    invoke-virtual {v6}, LN0/e;->d()I

    move-result v6

    invoke-virtual {p1, p2, v6}, LM0/c;->d(LM0/i;I)V

    iget v6, p0, LN0/m;->l0:I

    if-eq v6, v3, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, LM0/c;->f(LM0/i;LM0/i;II)V

    goto :goto_2

    :cond_4
    iget v6, p0, LN0/m;->m0:I

    if-eq v6, v3, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {p1, v1}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v1

    invoke-virtual {p1, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, LM0/c;->f(LM0/i;LM0/i;II)V

    invoke-virtual {p1, v1, p2, v4, v5}, LM0/c;->f(LM0/i;LM0/i;II)V

    :cond_5
    :goto_2
    iput-boolean v4, p0, LN0/m;->p0:Z

    return-void

    :cond_6
    iget p2, p0, LN0/m;->l0:I

    const/16 v6, 0x8

    if-eq p2, v3, :cond_7

    iget-object p2, p0, LN0/m;->n0:LN0/e;

    invoke-virtual {p1, p2}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object p2

    invoke-virtual {p1, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v0

    iget p0, p0, LN0/m;->l0:I

    invoke-virtual {p1, p2, v0, p0, v6}, LM0/c;->e(LM0/i;LM0/i;II)V

    if-eqz v2, :cond_9

    invoke-virtual {p1, v1}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object p0

    invoke-virtual {p1, p0, p2, v4, v5}, LM0/c;->f(LM0/i;LM0/i;II)V

    goto :goto_3

    :cond_7
    iget p2, p0, LN0/m;->m0:I

    if-eq p2, v3, :cond_8

    iget-object p2, p0, LN0/m;->n0:LN0/e;

    invoke-virtual {p1, p2}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object p2

    invoke-virtual {p1, v1}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v1

    iget p0, p0, LN0/m;->m0:I

    neg-int p0, p0

    invoke-virtual {p1, p2, v1, p0, v6}, LM0/c;->e(LM0/i;LM0/i;II)V

    if-eqz v2, :cond_9

    invoke-virtual {p1, v0}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object p0

    invoke-virtual {p1, p2, p0, v4, v5}, LM0/c;->f(LM0/i;LM0/i;II)V

    invoke-virtual {p1, v1, p2, v4, v5}, LM0/c;->f(LM0/i;LM0/i;II)V

    goto :goto_3

    :cond_8
    iget p2, p0, LN0/m;->k0:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_9

    iget-object p2, p0, LN0/m;->n0:LN0/e;

    invoke-virtual {p1, p2}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object p2

    invoke-virtual {p1, v1}, LM0/c;->k(Ljava/lang/Object;)LM0/i;

    move-result-object v1

    iget p0, p0, LN0/m;->k0:F

    invoke-virtual {p1}, LM0/c;->l()LM0/b;

    move-result-object v2

    iget-object v3, v2, LM0/b;->d:LM0/a;

    invoke-virtual {v3, p2, v0}, LM0/a;->g(LM0/i;F)V

    iget-object p2, v2, LM0/b;->d:LM0/a;

    invoke-virtual {p2, v1, p0}, LM0/a;->g(LM0/i;F)V

    invoke-virtual {p1, v2}, LM0/c;->c(LM0/b;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final i(LN0/d;)LN0/e;
    .locals 2

    sget-object v0, LN0/l;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget v0, p0, LN0/m;->o0:I

    if-nez v0, :cond_0

    iget-object p0, p0, LN0/m;->n0:LN0/e;

    return-object p0

    :pswitch_2
    iget v0, p0, LN0/m;->o0:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, LN0/m;->n0:LN0/e;

    return-object p0

    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final w()Z
    .locals 0

    iget-boolean p0, p0, LN0/m;->p0:Z

    return p0
.end method

.method public final x()Z
    .locals 0

    iget-boolean p0, p0, LN0/m;->p0:Z

    return p0
.end method
