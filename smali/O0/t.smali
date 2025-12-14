.class public abstract LO0/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO0/d;


# instance fields
.field public a:I

.field public b:LN0/h;

.field public c:LO0/n;

.field public d:LN0/g;

.field public final e:LO0/h;

.field public f:I

.field public g:Z

.field public final h:LO0/g;

.field public final i:LO0/g;

.field public j:LO0/s;


# direct methods
.method public constructor <init>(LN0/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LO0/h;

    invoke-direct {v0, p0}, LO0/h;-><init>(LO0/t;)V

    iput-object v0, p0, LO0/t;->e:LO0/h;

    const/4 v0, 0x0

    iput v0, p0, LO0/t;->f:I

    iput-boolean v0, p0, LO0/t;->g:Z

    new-instance v0, LO0/g;

    invoke-direct {v0, p0}, LO0/g;-><init>(LO0/t;)V

    iput-object v0, p0, LO0/t;->h:LO0/g;

    new-instance v0, LO0/g;

    invoke-direct {v0, p0}, LO0/g;-><init>(LO0/t;)V

    iput-object v0, p0, LO0/t;->i:LO0/g;

    sget-object v0, LO0/s;->NONE:LO0/s;

    iput-object v0, p0, LO0/t;->j:LO0/s;

    iput-object p1, p0, LO0/t;->b:LN0/h;

    return-void
.end method

.method public static b(LO0/g;LO0/g;I)V
    .locals 1

    iget-object v0, p0, LO0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p2, p0, LO0/g;->f:I

    iget-object p1, p1, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static h(LN0/e;)LO0/g;
    .locals 3

    iget-object p0, p0, LN0/e;->f:LN0/e;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, LO0/r;->a:[I

    iget-object v2, p0, LN0/e;->e:LN0/d;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    iget-object p0, p0, LN0/e;->d:LN0/h;

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, LN0/h;->e:LO0/p;

    iget-object v0, p0, LO0/t;->i:LO0/g;

    goto :goto_0

    :cond_2
    iget-object p0, p0, LN0/h;->e:LO0/p;

    iget-object v0, p0, LO0/p;->k:LO0/g;

    goto :goto_0

    :cond_3
    iget-object p0, p0, LN0/h;->e:LO0/p;

    iget-object v0, p0, LO0/t;->h:LO0/g;

    goto :goto_0

    :cond_4
    iget-object p0, p0, LN0/h;->d:LO0/m;

    iget-object v0, p0, LO0/t;->i:LO0/g;

    goto :goto_0

    :cond_5
    iget-object p0, p0, LN0/h;->d:LO0/m;

    iget-object v0, p0, LO0/t;->h:LO0/g;

    :goto_0
    return-object v0
.end method

.method public static i(LN0/e;I)LO0/g;
    .locals 2

    iget-object p0, p0, LN0/e;->f:LN0/e;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, LN0/e;->d:LN0/h;

    if-nez p1, :cond_1

    iget-object p1, v1, LN0/h;->d:LO0/m;

    goto :goto_0

    :cond_1
    iget-object p1, v1, LN0/h;->e:LO0/p;

    :goto_0
    sget-object v1, LO0/r;->a:[I

    iget-object p0, p0, LN0/e;->e:LN0/d;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x5

    if-eq p0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p1, LO0/t;->i:LO0/g;

    goto :goto_1

    :cond_3
    iget-object v0, p1, LO0/t;->h:LO0/g;

    :goto_1
    return-object v0
.end method


# virtual methods
.method public final c(LO0/g;LO0/g;ILO0/h;)V
    .locals 1

    iget-object v0, p1, LO0/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, LO0/g;->l:Ljava/util/ArrayList;

    iget-object p0, p0, LO0/t;->e:LO0/h;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput p3, p1, LO0/g;->h:I

    iput-object p4, p1, LO0/g;->i:LO0/h;

    iget-object p0, p2, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p4, LO0/g;->k:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public final g(II)I
    .locals 0

    if-nez p2, :cond_1

    iget-object p0, p0, LO0/t;->b:LN0/h;

    iget p2, p0, LN0/h;->p:I

    iget p0, p0, LN0/h;->o:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-lez p2, :cond_0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_0
    if-eq p0, p1, :cond_3

    goto :goto_0

    :cond_1
    iget-object p0, p0, LO0/t;->b:LN0/h;

    iget p2, p0, LN0/h;->s:I

    iget p0, p0, LN0/h;->r:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-lez p2, :cond_2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_2
    if-eq p0, p1, :cond_3

    :goto_0
    move p1, p0

    :cond_3
    return p1
.end method

.method public j()J
    .locals 2

    iget-object p0, p0, LO0/t;->e:LO0/h;

    iget-boolean v0, p0, LO0/g;->j:Z

    if-eqz v0, :cond_0

    iget p0, p0, LO0/g;->g:I

    int-to-long v0, p0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract k()Z
.end method

.method public final l(LN0/e;LN0/e;I)V
    .locals 12

    invoke-static {p1}, LO0/t;->h(LN0/e;)LO0/g;

    move-result-object v0

    invoke-static {p2}, LO0/t;->h(LN0/e;)LO0/g;

    move-result-object v1

    iget-boolean v2, v0, LO0/g;->j:Z

    if-eqz v2, :cond_f

    iget-boolean v2, v1, LO0/g;->j:Z

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v2, v0, LO0/g;->g:I

    invoke-virtual {p1}, LN0/e;->e()I

    move-result p1

    add-int/2addr p1, v2

    iget v2, v1, LO0/g;->g:I

    invoke-virtual {p2}, LN0/e;->e()I

    move-result p2

    sub-int/2addr v2, p2

    sub-int p2, v2, p1

    iget-object v3, p0, LO0/t;->e:LO0/h;

    iget-boolean v4, v3, LO0/g;->j:Z

    const/high16 v5, 0x3f000000    # 0.5f

    if-nez v4, :cond_a

    iget-object v4, p0, LO0/t;->d:LN0/g;

    sget-object v6, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    if-ne v4, v6, :cond_a

    iget v4, p0, LO0/t;->a:I

    if-eqz v4, :cond_9

    const/4 v7, 0x1

    if-eq v4, v7, :cond_8

    const/4 v8, 0x2

    if-eq v4, v8, :cond_5

    const/4 v8, 0x3

    if-eq v4, v8, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v4, p0, LO0/t;->b:LN0/h;

    iget-object v9, v4, LN0/h;->d:LO0/m;

    iget-object v10, v9, LO0/t;->d:LN0/g;

    if-ne v10, v6, :cond_2

    iget v10, v9, LO0/t;->a:I

    if-ne v10, v8, :cond_2

    iget-object v10, v4, LN0/h;->e:LO0/p;

    iget-object v11, v10, LO0/t;->d:LN0/g;

    if-ne v11, v6, :cond_2

    iget v6, v10, LO0/t;->a:I

    if-ne v6, v8, :cond_2

    goto :goto_3

    :cond_2
    if-nez p3, :cond_3

    iget-object v9, v4, LN0/h;->e:LO0/p;

    :cond_3
    iget-object v6, v9, LO0/t;->e:LO0/h;

    iget-boolean v8, v6, LO0/g;->j:Z

    if-eqz v8, :cond_a

    iget v4, v4, LN0/h;->R:F

    if-ne p3, v7, :cond_4

    iget v6, v6, LO0/g;->g:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    add-float/2addr v6, v5

    float-to-int v4, v6

    goto :goto_0

    :cond_4
    iget v6, v6, LO0/g;->g:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    :goto_0
    invoke-virtual {v3, v4}, LO0/h;->d(I)V

    goto :goto_3

    :cond_5
    iget-object v4, p0, LO0/t;->b:LN0/h;

    iget-object v6, v4, LN0/h;->O:LN0/h;

    if-eqz v6, :cond_a

    if-nez p3, :cond_6

    iget-object v6, v6, LN0/h;->d:LO0/m;

    goto :goto_1

    :cond_6
    iget-object v6, v6, LN0/h;->e:LO0/p;

    :goto_1
    iget-object v6, v6, LO0/t;->e:LO0/h;

    iget-boolean v7, v6, LO0/g;->j:Z

    if-eqz v7, :cond_a

    if-nez p3, :cond_7

    iget v4, v4, LN0/h;->q:F

    goto :goto_2

    :cond_7
    iget v4, v4, LN0/h;->t:F

    :goto_2
    iget v6, v6, LO0/g;->g:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v6, v5

    float-to-int v4, v6

    invoke-virtual {p0, v4, p3}, LO0/t;->g(II)I

    move-result v4

    invoke-virtual {v3, v4}, LO0/h;->d(I)V

    goto :goto_3

    :cond_8
    iget v4, v3, LO0/h;->m:I

    invoke-virtual {p0, v4, p3}, LO0/t;->g(II)I

    move-result v4

    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v3, v4}, LO0/h;->d(I)V

    goto :goto_3

    :cond_9
    invoke-virtual {p0, p2, p3}, LO0/t;->g(II)I

    move-result v4

    invoke-virtual {v3, v4}, LO0/h;->d(I)V

    :cond_a
    :goto_3
    iget-boolean v4, v3, LO0/g;->j:Z

    if-nez v4, :cond_b

    return-void

    :cond_b
    iget v4, v3, LO0/g;->g:I

    iget-object v6, p0, LO0/t;->i:LO0/g;

    iget-object v7, p0, LO0/t;->h:LO0/g;

    if-ne v4, p2, :cond_c

    invoke-virtual {v7, p1}, LO0/g;->d(I)V

    invoke-virtual {v6, v2}, LO0/g;->d(I)V

    return-void

    :cond_c
    iget-object p0, p0, LO0/t;->b:LN0/h;

    if-nez p3, :cond_d

    iget p0, p0, LN0/h;->Y:F

    goto :goto_4

    :cond_d
    iget p0, p0, LN0/h;->Z:F

    :goto_4
    if-ne v0, v1, :cond_e

    iget p1, v0, LO0/g;->g:I

    iget v2, v1, LO0/g;->g:I

    move p0, v5

    :cond_e
    sub-int/2addr v2, p1

    sub-int/2addr v2, v4

    int-to-float p1, p1

    add-float/2addr p1, v5

    int-to-float p2, v2

    mul-float/2addr p2, p0

    add-float/2addr p2, p1

    float-to-int p0, p2

    invoke-virtual {v7, p0}, LO0/g;->d(I)V

    iget p0, v7, LO0/g;->g:I

    iget p1, v3, LO0/g;->g:I

    add-int/2addr p0, p1

    invoke-virtual {v6, p0}, LO0/g;->d(I)V

    :cond_f
    :goto_5
    return-void
.end method
