.class public final Lv2/H0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lv2/L0;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public final i:LPc/i;

.field public final j:LPc/i;

.field public final k:Ljava/util/LinkedHashMap;

.field public final l:LZ3/x;


# direct methods
.method public constructor <init>(Lv2/L0;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/H0;->a:Lv2/L0;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lv2/H0;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lv2/H0;->c:Ljava/util/ArrayList;

    const/4 p1, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p1, v1, v0}, LG5/r;->a(IILPc/a;)LPc/i;

    move-result-object v2

    iput-object v2, p0, Lv2/H0;->i:LPc/i;

    invoke-static {p1, v1, v0}, LG5/r;->a(IILPc/a;)LPc/i;

    move-result-object p1

    iput-object p1, p0, Lv2/H0;->j:LPc/i;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lv2/H0;->k:Ljava/util/LinkedHashMap;

    new-instance p1, LZ3/x;

    const/16 v0, 0x1b

    invoke-direct {p1, v0}, LZ3/x;-><init>(I)V

    sget-object v0, Lv2/P;->REFRESH:Lv2/P;

    sget-object v1, Lv2/L;->b:Lv2/L;

    invoke-virtual {p1, v0, v1}, LZ3/x;->I(Lv2/P;LEc/g;)V

    iput-object p1, p0, Lv2/H0;->l:LZ3/x;

    return-void
.end method


# virtual methods
.method public final a(Lv2/z1;)Lv2/h1;
    .locals 8

    iget-object v0, p0, Lv2/H0;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lv2/H0;->a:Lv2/L0;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lv2/H0;->d()I

    move-result v3

    iget v4, p0, Lv2/H0;->d:I

    neg-int v4, v4

    invoke-static {v0}, Lfb/o;->f(Ljava/util/List;)I

    move-result v5

    iget v6, p0, Lv2/H0;->d:I

    sub-int/2addr v5, v6

    move v6, v4

    :goto_0
    iget v7, p1, Lv2/z1;->e:I

    if-ge v6, v7, :cond_1

    if-le v6, v5, :cond_0

    const/16 v7, 0xc

    goto :goto_1

    :cond_0
    iget v7, p0, Lv2/H0;->d:I

    add-int/2addr v7, v6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv2/e1;

    iget-object v7, v7, Lv2/e1;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    :goto_1
    add-int/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget p1, p1, Lv2/z1;->f:I

    add-int/2addr v3, p1

    if-ge v7, v4, :cond_2

    add-int/lit8 v3, v3, -0xc

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0}, Lv2/H0;->d()I

    move-result p0

    new-instance v0, Lv2/h1;

    invoke-direct {v0, v1, p1, v2, p0}, Lv2/h1;-><init>(Ljava/util/List;Ljava/lang/Integer;Lv2/L0;I)V

    return-object v0
.end method

.method public final b(Lv2/X;)V
    .locals 8

    invoke-virtual {p1}, Lv2/X;->a()I

    move-result v0

    iget-object v1, p0, Lv2/H0;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_6

    iget-object v0, p0, Lv2/H0;->k:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lv2/X;->a:Lv2/P;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lv2/M;->c:Lv2/M;

    iget-object v3, p0, Lv2/H0;->l:LZ3/x;

    invoke-virtual {v3, v2, v0}, LZ3/x;->I(Lv2/P;LEc/g;)V

    sget-object v0, Lv2/E0;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    iget-object v3, p0, Lv2/H0;->b:Ljava/util/ArrayList;

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    const/4 v6, 0x2

    iget v7, p1, Lv2/X;->d:I

    if-eq v0, v6, :cond_3

    const/4 v6, 0x3

    if-ne v0, v6, :cond_2

    invoke-virtual {p1}, Lv2/X;->a()I

    move-result p1

    move v0, v5

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ne v7, v4, :cond_1

    goto :goto_1

    :cond_1
    move v5, v7

    :goto_1
    iput v5, p0, Lv2/H0;->f:I

    iget p1, p0, Lv2/H0;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lv2/H0;->h:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lv2/H0;->j:LPc/i;

    invoke-interface {p0, p1}, LPc/B;->k(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "cannot drop "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p1}, Lv2/X;->a()I

    move-result v0

    move v1, v5

    :goto_2
    if-ge v1, v0, :cond_4

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget v0, p0, Lv2/H0;->d:I

    invoke-virtual {p1}, Lv2/X;->a()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lv2/H0;->d:I

    if-ne v7, v4, :cond_5

    goto :goto_3

    :cond_5
    move v5, v7

    :goto_3
    iput v5, p0, Lv2/H0;->e:I

    iget p1, p0, Lv2/H0;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lv2/H0;->g:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lv2/H0;->i:LPc/i;

    invoke-interface {p0, p1}, LPc/B;->k(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    return-void

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "invalid drop count. have "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " but wanted to drop "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lv2/X;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lv2/P;Lv2/C1;)Lv2/X;
    .locals 11

    const-string v0, "loadType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hint"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lv2/H0;->a:Lv2/L0;

    iget v1, v0, Lv2/L0;->c:I

    const v2, 0x7fffffff

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return-object v3

    :cond_0
    iget-object v2, p0, Lv2/H0;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lv2/e1;

    iget-object v8, v8, Lv2/e1;->a:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_0

    :cond_2
    if-gt v7, v1, :cond_3

    return-object v3

    :cond_3
    sget-object v4, Lv2/P;->REFRESH:Lv2/P;

    if-eq p1, v4, :cond_e

    move v4, v6

    move v7, v4

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v6

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lv2/e1;

    iget-object v10, v10, Lv2/e1;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_2

    :cond_4
    sub-int/2addr v9, v7

    if-le v9, v1, :cond_7

    sget-object v8, Lv2/E0;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v8, v9

    if-ne v9, v5, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv2/e1;

    iget-object v9, v9, Lv2/e1;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    goto :goto_3

    :cond_5
    invoke-static {v2}, Lfb/o;->f(Ljava/util/List;)I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv2/e1;

    iget-object v9, v9, Lv2/e1;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v8, v8, v10

    if-ne v8, v5, :cond_6

    iget v8, p2, Lv2/C1;->a:I

    :goto_4
    sub-int/2addr v8, v7

    sub-int/2addr v8, v9

    goto :goto_5

    :cond_6
    iget v8, p2, Lv2/C1;->b:I

    goto :goto_4

    :goto_5
    iget v10, v0, Lv2/L0;->a:I

    if-lt v8, v10, :cond_7

    add-int/2addr v7, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    if-nez v4, :cond_8

    goto :goto_9

    :cond_8
    new-instance v3, Lv2/X;

    sget-object p2, Lv2/E0;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, p2, v1

    if-ne v1, v5, :cond_9

    iget v1, p0, Lv2/H0;->d:I

    neg-int v1, v1

    goto :goto_6

    :cond_9
    invoke-static {v2}, Lfb/o;->f(Ljava/util/List;)I

    move-result v1

    iget v8, p0, Lv2/H0;->d:I

    sub-int/2addr v1, v8

    add-int/lit8 v8, v4, -0x1

    sub-int/2addr v1, v8

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget p2, p2, v8

    if-ne p2, v5, :cond_a

    add-int/lit8 v4, v4, -0x1

    iget p2, p0, Lv2/H0;->d:I

    sub-int/2addr v4, p2

    goto :goto_7

    :cond_a
    invoke-static {v2}, Lfb/o;->f(Ljava/util/List;)I

    move-result p2

    iget v2, p0, Lv2/H0;->d:I

    sub-int v4, p2, v2

    :goto_7
    iget-boolean p2, v0, Lv2/L0;->b:Z

    if-nez p2, :cond_b

    goto :goto_8

    :cond_b
    sget-object p2, Lv2/P;->PREPEND:Lv2/P;

    if-ne p1, p2, :cond_c

    invoke-virtual {p0}, Lv2/H0;->d()I

    move-result p0

    add-int v6, p0, v7

    goto :goto_8

    :cond_c
    iget-boolean p2, v0, Lv2/L0;->b:Z

    if-eqz p2, :cond_d

    iget v6, p0, Lv2/H0;->f:I

    :cond_d
    add-int/2addr v6, v7

    :goto_8
    invoke-direct {v3, p1, v1, v4, v6}, Lv2/X;-><init>(Lv2/P;III)V

    :goto_9
    return-object v3

    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Drop LoadType must be PREPEND or APPEND, but got "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lv2/H0;->a:Lv2/L0;

    iget-boolean v0, v0, Lv2/L0;->b:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lv2/H0;->e:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e(ILv2/P;Lv2/e1;)Z
    .locals 10

    const-string v0, "loadType"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "page"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lv2/E0;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    iget-object v0, p0, Lv2/H0;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lv2/H0;->c:Ljava/util/ArrayList;

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, p3, Lv2/e1;->d:I

    iget v6, p3, Lv2/e1;->e:I

    if-eq p2, v4, :cond_d

    iget-object v7, p0, Lv2/H0;->k:Ljava/util/LinkedHashMap;

    const/4 v8, 0x2

    iget-object v9, p3, Lv2/e1;->a:Ljava/util/List;

    if-eq p2, v8, :cond_7

    const/4 v5, 0x3

    if-eq p2, v5, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    iget p2, p0, Lv2/H0;->h:I

    if-eq p1, p2, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v6, v2, :cond_4

    iget-object p1, p0, Lv2/H0;->a:Lv2/L0;

    iget-boolean p1, p1, Lv2/L0;->b:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lv2/H0;->f:I

    goto :goto_0

    :cond_2
    move p1, v3

    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_3

    move v6, v3

    goto :goto_1

    :cond_3
    move v6, p1

    :cond_4
    :goto_1
    if-ne v6, v2, :cond_5

    goto :goto_2

    :cond_5
    move v3, v6

    :goto_2
    iput v3, p0, Lv2/H0;->f:I

    sget-object p0, Lv2/P;->APPEND:Lv2/P;

    invoke-interface {v7, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "should\'ve received an init before append"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_c

    iget p2, p0, Lv2/H0;->g:I

    if-eq p1, p2, :cond_8

    return v3

    :cond_8
    invoke-virtual {v0, v3, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget p1, p0, Lv2/H0;->d:I

    add-int/2addr p1, v4

    iput p1, p0, Lv2/H0;->d:I

    if-ne v5, v2, :cond_a

    invoke-virtual {p0}, Lv2/H0;->d()I

    move-result p1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p1, p2

    if-gez p1, :cond_9

    move v5, v3

    goto :goto_3

    :cond_9
    move v5, p1

    :cond_a
    :goto_3
    if-ne v5, v2, :cond_b

    goto :goto_4

    :cond_b
    move v3, v5

    :goto_4
    iput v3, p0, Lv2/H0;->e:I

    sget-object p0, Lv2/P;->PREPEND:Lv2/P;

    invoke-interface {v7, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "should\'ve received an init before prepend"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_11

    if-nez p1, :cond_10

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v3, p0, Lv2/H0;->d:I

    if-ne v6, v2, :cond_e

    move v6, v3

    :cond_e
    iput v6, p0, Lv2/H0;->f:I

    if-ne v5, v2, :cond_f

    goto :goto_5

    :cond_f
    move v3, v5

    :goto_5
    iput v3, p0, Lv2/H0;->e:I

    :goto_6
    return v4

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "init loadId must be the initial value, 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cannot receive multiple init calls"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(Lv2/e1;Lv2/P;)Lv2/Y;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "loadType"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lv2/E0;->a:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v4, v8, :cond_2

    if-eq v4, v7, :cond_1

    if-ne v4, v6, :cond_0

    iget-object v4, v0, Lv2/H0;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v9, v0, Lv2/H0;->d:I

    sub-int/2addr v4, v9

    sub-int/2addr v4, v8

    goto :goto_0

    :cond_0
    new-instance v0, LI5/b;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    iget v4, v0, Lv2/H0;->d:I

    rsub-int/lit8 v4, v4, 0x0

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    new-instance v9, Lv2/x1;

    iget-object v1, v1, Lv2/e1;->a:Ljava/util/List;

    invoke-direct {v9, v4, v1}, Lv2/x1;-><init>(ILjava/util/List;)V

    invoke-static {v9}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    iget-object v2, v0, Lv2/H0;->l:LZ3/x;

    iget-object v3, v0, Lv2/H0;->a:Lv2/L0;

    if-eq v1, v8, :cond_6

    if-eq v1, v7, :cond_5

    if-ne v1, v6, :cond_4

    sget-object v1, Lv2/Y;->g:Lv2/Y;

    iget-boolean v1, v3, Lv2/L0;->b:Z

    if-eqz v1, :cond_3

    iget v5, v0, Lv2/H0;->f:I

    :cond_3
    move v14, v5

    invoke-virtual {v2}, LZ3/x;->J()Lv2/O;

    move-result-object v15

    new-instance v0, Lv2/Y;

    sget-object v11, Lv2/P;->APPEND:Lv2/P;

    const/4 v13, -0x1

    const/16 v16, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lv2/Y;-><init>(Lv2/P;Ljava/util/List;IILv2/O;Lv2/O;)V

    goto :goto_1

    :cond_4
    new-instance v0, LI5/b;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_5
    sget-object v1, Lv2/Y;->g:Lv2/Y;

    invoke-virtual/range {p0 .. p0}, Lv2/H0;->d()I

    move-result v13

    invoke-virtual {v2}, LZ3/x;->J()Lv2/O;

    move-result-object v15

    new-instance v0, Lv2/Y;

    sget-object v11, Lv2/P;->PREPEND:Lv2/P;

    const/4 v14, -0x1

    const/16 v16, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lv2/Y;-><init>(Lv2/P;Ljava/util/List;IILv2/O;Lv2/O;)V

    goto :goto_1

    :cond_6
    sget-object v1, Lv2/Y;->g:Lv2/Y;

    invoke-virtual/range {p0 .. p0}, Lv2/H0;->d()I

    move-result v13

    iget-boolean v1, v3, Lv2/L0;->b:Z

    if-eqz v1, :cond_7

    iget v5, v0, Lv2/H0;->f:I

    :cond_7
    move v14, v5

    invoke-virtual {v2}, LZ3/x;->J()Lv2/O;

    move-result-object v15

    new-instance v0, Lv2/Y;

    sget-object v11, Lv2/P;->REFRESH:Lv2/P;

    const/16 v16, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lv2/Y;-><init>(Lv2/P;Ljava/util/List;IILv2/O;Lv2/O;)V

    :goto_1
    return-object v0
.end method
