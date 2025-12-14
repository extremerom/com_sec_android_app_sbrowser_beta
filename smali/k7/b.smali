.class public final Lk7/b;
.super Ln7/e;
.source "SourceFile"


# instance fields
.field public final c:Ln7/g;

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Ln7/e;-><init>(I)V

    new-instance v0, Ln7/g;

    invoke-direct {v0, p1}, Ln7/g;-><init>(I)V

    iput-object v0, p0, Lk7/b;->c:Ln7/g;

    const/4 p1, -0x1

    iput p1, p0, Lk7/b;->d:I

    return-void
.end method


# virtual methods
.method public final h()I
    .locals 2

    iget-object p0, p0, Lk7/b;->c:Ln7/g;

    iget v0, p0, Ln7/g;->c:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Ln7/g;->f(I)I

    move-result v1

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    if-ltz v0, :cond_2

    iget v1, p0, Ln7/g;->c:I

    if-gt v0, v1, :cond_1

    invoke-virtual {p0}, LEc/g;->d()V

    iput v0, p0, Ln7/g;->c:I

    return v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "newSize > size"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "newSize < 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k(I)Lk7/a;
    .locals 2

    iget-object v0, p0, Lk7/b;->c:Ln7/g;

    iget v1, v0, Ln7/g;->c:I

    if-lt p1, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ln7/g;->f(I)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk7/a;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lqd/d;->e(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "no such label: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final l(ILk7/a;)V
    .locals 5

    iget-object v0, p0, Ln7/e;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lk7/a;

    invoke-virtual {p0, p1, p2}, Ln7/e;->f(ILjava/lang/Object;)V

    const/4 v1, -0x1

    iget-object p0, p0, Lk7/b;->c:Ln7/g;

    if-eqz v0, :cond_0

    iget v0, v0, Lk7/a;->a:I

    invoke-virtual {p0, v0, v1}, Ln7/g;->g(II)V

    :cond_0
    iget v0, p0, Ln7/g;->c:I

    const/4 v2, 0x0

    :goto_0
    iget v3, p2, Lk7/a;->a:I

    sub-int v4, v3, v0

    if-gt v2, v4, :cond_1

    invoke-virtual {p0, v1}, Ln7/g;->e(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, p1}, Ln7/g;->g(II)V

    return-void
.end method
