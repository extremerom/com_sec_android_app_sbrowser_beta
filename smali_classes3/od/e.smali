.class public final Lod/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/util/ArrayList;

.field public final c:Lwd/t;

.field public d:[Lod/d;

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Lod/t;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Lod/e;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lod/e;->b:Ljava/util/ArrayList;

    invoke-static {p1}, LG5/u2;->c(Lwd/z;)Lwd/t;

    move-result-object p1

    iput-object p1, p0, Lod/e;->c:Lwd/t;

    const/16 p1, 0x8

    new-array p1, p1, [Lod/d;

    iput-object p1, p0, Lod/e;->d:[Lod/d;

    const/4 p1, 0x7

    iput p1, p0, Lod/e;->e:I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    iget-object v1, p0, Lod/e;->d:[Lod/d;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lod/e;->e:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    iget-object v2, p0, Lod/e;->d:[Lod/d;

    aget-object v2, v2, v1

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v2, v2, Lod/d;->c:I

    sub-int/2addr p1, v2

    iget v3, p0, Lod/e;->g:I

    sub-int/2addr v3, v2

    iput v3, p0, Lod/e;->g:I

    iget v2, p0, Lod/e;->f:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lod/e;->f:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lod/e;->d:[Lod/d;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v3, p0, Lod/e;->f:I

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lod/e;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lod/e;->e:I

    :cond_1
    return v0
.end method

.method public final b(I)Lwd/j;
    .locals 2

    if-ltz p1, :cond_0

    sget-object v0, Lod/g;->a:[Lod/d;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    aget-object p0, v0, p1

    iget-object p0, p0, Lod/d;->a:Lwd/j;

    goto :goto_0

    :cond_0
    sget-object v0, Lod/g;->a:[Lod/d;

    array-length v0, v0

    sub-int v0, p1, v0

    iget v1, p0, Lod/e;->e:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    if-ltz v1, :cond_1

    iget-object p0, p0, Lod/e;->d:[Lod/d;

    array-length v0, p0

    if-ge v1, v0, :cond_1

    aget-object p0, p0, v1

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p0, p0, Lod/d;->a:Lwd/j;

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Header index too large "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lod/d;)V
    .locals 6

    iget-object v0, p0, Lod/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lod/e;->a:I

    const/4 v1, 0x0

    iget v2, p1, Lod/d;->c:I

    if-le v2, v0, :cond_0

    iget-object p1, p0, Lod/e;->d:[Lod/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lfb/l;->p([Ljava/lang/Object;LQ6/i;)V

    iget-object p1, p0, Lod/e;->d:[Lod/d;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lod/e;->e:I

    iput v1, p0, Lod/e;->f:I

    iput v1, p0, Lod/e;->g:I

    return-void

    :cond_0
    iget v3, p0, Lod/e;->g:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lod/e;->a(I)I

    iget v0, p0, Lod/e;->f:I

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lod/e;->d:[Lod/d;

    array-length v4, v3

    if-le v0, v4, :cond_1

    array-length v0, v3

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lod/d;

    array-length v4, v3

    array-length v5, v3

    invoke-static {v3, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lod/e;->d:[Lod/d;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lod/e;->e:I

    iput-object v0, p0, Lod/e;->d:[Lod/d;

    :cond_1
    iget v0, p0, Lod/e;->e:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lod/e;->e:I

    iget-object v1, p0, Lod/e;->d:[Lod/d;

    aput-object p1, v1, v0

    iget p1, p0, Lod/e;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lod/e;->f:I

    iget p1, p0, Lod/e;->g:I

    add-int/2addr p1, v2

    iput p1, p0, Lod/e;->g:I

    return-void
.end method

.method public final d()Lwd/j;
    .locals 12

    const/16 v0, 0x8

    iget-object v1, p0, Lod/e;->c:Lwd/t;

    invoke-virtual {v1}, Lwd/t;->c()B

    move-result v2

    sget-object v3, Lid/b;->a:[B

    and-int/lit16 v3, v2, 0xff

    const/16 v4, 0x80

    and-int/2addr v2, v4

    const/4 v5, 0x0

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    const/16 v4, 0x7f

    invoke-virtual {p0, v3, v4}, Lod/e;->e(II)I

    move-result p0

    int-to-long v3, p0

    if-eqz v2, :cond_6

    new-instance p0, Lwd/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lod/A;->a:[I

    const-string v2, "source"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lod/A;->c:LU/v;

    const-wide/16 v6, 0x0

    move-object v9, v2

    move-wide v7, v6

    move v6, v5

    :goto_1
    cmp-long v10, v7, v3

    if-gez v10, :cond_3

    invoke-virtual {v1}, Lwd/t;->c()B

    move-result v10

    sget-object v11, Lid/b;->a:[B

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v5, v0

    or-int/2addr v5, v10

    add-int/2addr v6, v0

    :goto_2
    if-lt v6, v0, :cond_2

    add-int/lit8 v10, v6, -0x8

    ushr-int v10, v5, v10

    and-int/lit16 v10, v10, 0xff

    iget-object v9, v9, LU/v;->c:Ljava/lang/Object;

    check-cast v9, [LU/v;

    invoke-static {v9}, Ltb/k;->c(Ljava/lang/Object;)V

    aget-object v9, v9, v10

    invoke-static {v9}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v10, v9, LU/v;->c:Ljava/lang/Object;

    check-cast v10, [LU/v;

    if-nez v10, :cond_1

    iget v10, v9, LU/v;->a:I

    invoke-virtual {p0, v10}, Lwd/g;->b0(I)V

    iget v9, v9, LU/v;->b:I

    sub-int/2addr v6, v9

    move-object v9, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, -0x8

    goto :goto_2

    :cond_2
    const-wide/16 v10, 0x1

    add-long/2addr v7, v10

    goto :goto_1

    :cond_3
    :goto_3
    if-lez v6, :cond_5

    rsub-int/lit8 v1, v6, 0x8

    shl-int v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    iget-object v3, v9, LU/v;->c:Ljava/lang/Object;

    check-cast v3, [LU/v;

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    aget-object v1, v3, v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v3, v1, LU/v;->c:Ljava/lang/Object;

    check-cast v3, [LU/v;

    if-nez v3, :cond_5

    iget v3, v1, LU/v;->b:I

    if-le v3, v6, :cond_4

    goto :goto_4

    :cond_4
    iget v1, v1, LU/v;->a:I

    invoke-virtual {p0, v1}, Lwd/g;->b0(I)V

    sub-int/2addr v6, v3

    move-object v9, v2

    goto :goto_3

    :cond_5
    :goto_4
    iget-wide v0, p0, Lwd/g;->b:J

    invoke-virtual {p0, v0, v1}, Lwd/g;->v(J)Lwd/j;

    move-result-object p0

    goto :goto_5

    :cond_6
    invoke-virtual {v1, v3, v4}, Lwd/t;->d(J)Lwd/j;

    move-result-object p0

    :goto_5
    return-object p0
.end method

.method public final e(II)I
    .locals 3

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lod/e;->c:Lwd/t;

    invoke-virtual {v0}, Lwd/t;->c()B

    move-result v0

    sget-object v1, Lid/b;->a:[B

    and-int/lit16 v1, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    shl-int p0, v1, p1

    add-int/2addr p2, p0

    return p2
.end method
