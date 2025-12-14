.class public final Lg7/l;
.super Lg7/g;
.source "SourceFile"


# instance fields
.field public e:[Lg7/u;


# direct methods
.method public constructor <init>(Lk7/p;Lk7/l;)V
    .locals 1

    sget-object v0, Lg7/j;->b:Lg7/i;

    invoke-direct {p0, v0, p1, p2}, Lg7/g;-><init>(Lg7/i;Lk7/p;Lk7/l;)V

    iget-object p1, p2, Ln7/e;->b:[Ljava/lang/Object;

    array-length p1, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lg7/l;->e:[Lg7/u;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "registers.size() == 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()I
    .locals 4

    invoke-virtual {p0}, Lg7/l;->k()V

    iget-object p0, p0, Lg7/l;->e:[Lg7/u;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lg7/k;->b()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final e()Ljava/lang/String;
    .locals 7

    iget-object p0, p0, Lg7/g;->d:Lk7/l;

    iget-object v0, p0, Ln7/e;->b:[Ljava/lang/Object;

    array-length v0, v0

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk7/k;

    iget-object v5, v4, Lk7/k;->b:Lm7/d;

    invoke-interface {v5}, Lm7/d;->getType()Lm7/c;

    move-result-object v5

    invoke-static {v3, v5}, Lk7/k;->f(ILm7/d;)Lk7/k;

    move-result-object v5

    sget-object v6, Lk7/p;->a:Lk7/p;

    invoke-static {v6, v5, v4}, Lg7/g;->f(Lk7/p;Lk7/k;Lk7/k;)Lg7/u;

    move-result-object v5

    if-eqz v2, :cond_0

    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v5}, Lg7/k;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lk7/k;->e()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final g(Lg7/i;)Lg7/g;
    .locals 0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h(I)Lg7/g;
    .locals 1

    iget-object v0, p0, Lg7/g;->d:Lk7/l;

    invoke-virtual {v0, p1}, Lk7/l;->n(I)Lk7/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg7/l;->i(Lk7/l;)Lg7/g;

    move-result-object p0

    return-object p0
.end method

.method public final i(Lk7/l;)Lg7/g;
    .locals 1

    new-instance v0, Lg7/l;

    iget-object p0, p0, Lg7/g;->c:Lk7/p;

    invoke-direct {v0, p0, p1}, Lg7/l;-><init>(Lk7/p;Lk7/l;)V

    return-object v0
.end method

.method public final j(Ln7/b;)V
    .locals 3

    invoke-virtual {p0}, Lg7/l;->k()V

    iget-object p0, p0, Lg7/l;->e:[Lg7/u;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lg7/k;->j(Ln7/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final k()V
    .locals 8

    iget-object v0, p0, Lg7/l;->e:[Lg7/u;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg7/g;->d:Lk7/l;

    iget-object v1, v0, Ln7/e;->b:[Ljava/lang/Object;

    array-length v1, v1

    new-array v2, v1, [Lg7/u;

    iput-object v2, p0, Lg7/l;->e:[Lg7/u;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk7/k;

    iget-object v5, p0, Lg7/l;->e:[Lg7/u;

    iget-object v6, v4, Lk7/k;->b:Lm7/d;

    invoke-interface {v6}, Lm7/d;->getType()Lm7/c;

    move-result-object v6

    invoke-static {v3, v6}, Lk7/k;->f(ILm7/d;)Lk7/k;

    move-result-object v6

    sget-object v7, Lk7/p;->a:Lk7/p;

    invoke-static {v7, v6, v4}, Lg7/g;->f(Lk7/p;Lk7/k;Lk7/k;)Lg7/u;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4}, Lk7/k;->e()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
