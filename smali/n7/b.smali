.class public final Ln7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public b:[B

.field public c:I

.field public final d:Ljava/util/ArrayList;

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x3e8

    new-array v0, v0, [B

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ln7/b;-><init>([BZ)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Ln7/b;->a:Z

    iput-object p1, p0, Ln7/b;->b:[B

    const/4 p1, 0x0

    iput p1, p0, Ln7/b;->c:I

    const/4 p2, 0x0

    iput-object p2, p0, Ln7/b;->d:Ljava/util/ArrayList;

    iput p1, p0, Ln7/b;->e:I

    iput p1, p0, Ln7/b;->f:I

    return-void
.end method

.method public static g()V
    .locals 2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "attempt to write past the end"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    add-int/lit8 v0, p1, -0x1

    if-ltz p1, :cond_2

    and-int/2addr p1, v0

    if-nez p1, :cond_2

    iget p1, p0, Ln7/b;->c:I

    add-int/2addr p1, v0

    not-int v0, v0

    and-int/2addr p1, v0

    iget-boolean v0, p0, Ln7/b;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ln7/b;->f(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ln7/b;->b:[B

    array-length v0, v0

    if-gt p1, v0, :cond_1

    :goto_0
    iput p1, p0, Ln7/b;->c:I

    return-void

    :cond_1
    invoke-static {}, Ln7/b;->g()V

    const/4 p0, 0x0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus alignment"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Ln7/b;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ln7/b;->e()V

    iget-object v0, p0, Ln7/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ln7/b;->d:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln7/a;

    iget v0, v0, Ln7/a;->a:I

    :goto_0
    iget v1, p0, Ln7/b;->c:I

    if-gt v0, v1, :cond_2

    move v0, v1

    :cond_2
    iget-object p0, p0, Ln7/b;->d:Ljava/util/ArrayList;

    new-instance v1, Ln7/a;

    add-int/2addr p1, v0

    invoke-direct {v1, v0, p1, p2}, Ln7/a;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ln7/b;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ln7/b;->e()V

    iget-object v0, p0, Ln7/b;->d:Ljava/util/ArrayList;

    new-instance v1, Ln7/a;

    iget p0, p0, Ln7/b;->c:I

    const v2, 0x7fffffff

    invoke-direct {v1, p0, v2, p1}, Ln7/a;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Ln7/b;->d:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Ln7/b;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Ln7/b;->d:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln7/a;

    iget p0, p0, Ln7/b;->c:I

    iget v1, v0, Ln7/a;->a:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    iput p0, v0, Ln7/a;->a:I

    :cond_1
    return-void
.end method

.method public final f(I)V
    .locals 3

    iget-object v0, p0, Ln7/b;->b:[B

    array-length v1, v0

    if-ge v1, p1, :cond_0

    mul-int/lit8 p1, p1, 0x2

    add-int/lit16 p1, p1, 0x3e8

    new-array p1, p1, [B

    iget v1, p0, Ln7/b;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Ln7/b;->b:[B

    :cond_0
    return-void
.end method

.method public final h([B)V
    .locals 5

    array-length v0, p1

    iget v1, p0, Ln7/b;->c:I

    add-int v2, v1, v0

    or-int v3, v0, v2

    if-ltz v3, :cond_2

    array-length v3, p1

    if-gt v0, v3, :cond_2

    iget-boolean v3, p0, Ln7/b;->a:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Ln7/b;->f(I)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Ln7/b;->b:[B

    array-length v3, v3

    if-gt v2, v3, :cond_1

    :goto_0
    iget-object v3, p0, Ln7/b;->b:[B

    const/4 v4, 0x0

    invoke-static {p1, v4, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Ln7/b;->c:I

    return-void

    :cond_1
    invoke-static {}, Ln7/b;->g()V

    const/4 p0, 0x0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bytes.length "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; 0..!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i(I)V
    .locals 3

    iget v0, p0, Ln7/b;->c:I

    add-int/lit8 v1, v0, 0x1

    iget-boolean v2, p0, Ln7/b;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ln7/b;->f(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Ln7/b;->b:[B

    array-length v2, v2

    if-gt v1, v2, :cond_1

    :goto_0
    iget-object v2, p0, Ln7/b;->b:[B

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    iput v1, p0, Ln7/b;->c:I

    return-void

    :cond_1
    invoke-static {}, Ln7/b;->g()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final j(I)V
    .locals 5

    iget v0, p0, Ln7/b;->c:I

    add-int/lit8 v1, v0, 0x4

    iget-boolean v2, p0, Ln7/b;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ln7/b;->f(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Ln7/b;->b:[B

    array-length v2, v2

    if-gt v1, v2, :cond_1

    :goto_0
    iget-object v2, p0, Ln7/b;->b:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v0, 0x2

    shr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x3

    shr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    iput v1, p0, Ln7/b;->c:I

    return-void

    :cond_1
    invoke-static {}, Ln7/b;->g()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final k(I)V
    .locals 4

    iget v0, p0, Ln7/b;->c:I

    add-int/lit8 v1, v0, 0x2

    iget-boolean v2, p0, Ln7/b;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Ln7/b;->f(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Ln7/b;->b:[B

    array-length v2, v2

    if-gt v1, v2, :cond_1

    :goto_0
    iget-object v2, p0, Ln7/b;->b:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    aput-byte p1, v2, v0

    iput v1, p0, Ln7/b;->c:I

    return-void

    :cond_1
    invoke-static {}, Ln7/b;->g()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final l(I)V
    .locals 7

    iget-boolean v0, p0, Ln7/b;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ln7/b;->c:I

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ln7/b;->f(I)V

    :cond_0
    shr-int/lit8 v0, p1, 0x7

    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    const/4 v3, 0x1

    move v4, v3

    :goto_1
    move v6, v0

    move v0, p1

    move p1, v6

    if-eqz v4, :cond_5

    if-ne p1, v1, :cond_3

    and-int/lit8 v4, p1, 0x1

    shr-int/lit8 v5, v0, 0x6

    and-int/2addr v5, v3

    if-eq v4, v5, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v3

    :goto_3
    and-int/lit8 v0, v0, 0x7f

    if-eqz v4, :cond_4

    const/16 v5, 0x80

    goto :goto_4

    :cond_4
    move v5, v2

    :goto_4
    or-int/2addr v0, v5

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ln7/b;->i(I)V

    shr-int/lit8 v0, p1, 0x7

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final m(I)I
    .locals 3

    iget-boolean v0, p0, Ln7/b;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ln7/b;->c:I

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ln7/b;->f(I)V

    :cond_0
    iget v0, p0, Ln7/b;->c:I

    :goto_0
    ushr-int/lit8 v1, p1, 0x7

    move v2, v1

    move v1, p1

    move p1, v2

    if-eqz p1, :cond_1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ln7/b;->i(I)V

    goto :goto_0

    :cond_1
    and-int/lit8 p1, v1, 0x7f

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ln7/b;->i(I)V

    iget p0, p0, Ln7/b;->c:I

    sub-int/2addr p0, v0

    return p0
.end method

.method public final n(I)V
    .locals 1

    if-ltz p1, :cond_2

    iget v0, p0, Ln7/b;->c:I

    add-int/2addr v0, p1

    iget-boolean p1, p0, Ln7/b;->a:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Ln7/b;->f(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ln7/b;->b:[B

    array-length p1, p1

    if-gt v0, p1, :cond_1

    :goto_0
    iput v0, p0, Ln7/b;->c:I

    return-void

    :cond_1
    invoke-static {}, Ln7/b;->g()V

    const/4 p0, 0x0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "count < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
