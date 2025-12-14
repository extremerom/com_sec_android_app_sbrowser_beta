.class public final Lod/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:Lwd/g;

.field public c:I

.field public d:Z

.field public e:I

.field public f:[Lod/d;

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Lwd/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lod/f;->a:Z

    iput-object p1, p0, Lod/f;->b:Lwd/g;

    const p1, 0x7fffffff

    iput p1, p0, Lod/f;->c:I

    const/16 p1, 0x1000

    iput p1, p0, Lod/f;->e:I

    const/16 p1, 0x8

    new-array p1, p1, [Lod/d;

    iput-object p1, p0, Lod/f;->f:[Lod/d;

    const/4 p1, 0x7

    iput p1, p0, Lod/f;->g:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    if-lez p1, :cond_1

    iget-object v0, p0, Lod/f;->f:[Lod/d;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lod/f;->g:I

    if-lt v0, v2, :cond_0

    if-lez p1, :cond_0

    iget-object v2, p0, Lod/f;->f:[Lod/d;

    aget-object v2, v2, v0

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v2, v2, Lod/d;->c:I

    sub-int/2addr p1, v2

    iget v2, p0, Lod/f;->i:I

    iget-object v3, p0, Lod/f;->f:[Lod/d;

    aget-object v3, v3, v0

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    iget v3, v3, Lod/d;->c:I

    sub-int/2addr v2, v3

    iput v2, p0, Lod/f;->i:I

    iget v2, p0, Lod/f;->h:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lod/f;->h:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lod/f;->f:[Lod/d;

    add-int/lit8 v2, v2, 0x1

    add-int v0, v2, v1

    iget v3, p0, Lod/f;->h:I

    invoke-static {p1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lod/f;->f:[Lod/d;

    iget v0, p0, Lod/f;->g:I

    add-int/lit8 v0, v0, 0x1

    add-int v2, v0, v1

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget p1, p0, Lod/f;->g:I

    add-int/2addr p1, v1

    iput p1, p0, Lod/f;->g:I

    :cond_1
    return-void
.end method

.method public final b(Lod/d;)V
    .locals 6

    iget v0, p0, Lod/f;->e:I

    const/4 v1, 0x0

    iget v2, p1, Lod/d;->c:I

    if-le v2, v0, :cond_0

    iget-object p1, p0, Lod/f;->f:[Lod/d;

    array-length v0, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v0}, Lfb/l;->n([Ljava/lang/Object;LQ6/i;II)V

    iget-object p1, p0, Lod/f;->f:[Lod/d;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lod/f;->g:I

    iput v1, p0, Lod/f;->h:I

    iput v1, p0, Lod/f;->i:I

    return-void

    :cond_0
    iget v3, p0, Lod/f;->i:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v3}, Lod/f;->a(I)V

    iget v0, p0, Lod/f;->h:I

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lod/f;->f:[Lod/d;

    array-length v4, v3

    if-le v0, v4, :cond_1

    array-length v0, v3

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lod/d;

    array-length v4, v3

    array-length v5, v3

    invoke-static {v3, v1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lod/f;->f:[Lod/d;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lod/f;->g:I

    iput-object v0, p0, Lod/f;->f:[Lod/d;

    :cond_1
    iget v0, p0, Lod/f;->g:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lod/f;->g:I

    iget-object v1, p0, Lod/f;->f:[Lod/d;

    aput-object p1, v1, v0

    iget p1, p0, Lod/f;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lod/f;->h:I

    iget p1, p0, Lod/f;->i:I

    add-int/2addr p1, v2

    iput p1, p0, Lod/f;->i:I

    return-void
.end method

.method public final c(Lwd/j;)V
    .locals 12

    const/16 v0, 0x8

    const-string v1, "data"

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lod/f;->b:Lwd/g;

    iget-boolean v2, p0, Lod/f;->a:Z

    const/16 v3, 0x7f

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    sget-object v2, Lod/A;->a:[I

    invoke-virtual {p1}, Lwd/j;->d()I

    move-result v2

    const-wide/16 v5, 0x0

    move v7, v4

    move-wide v8, v5

    :goto_0
    if-ge v7, v2, :cond_0

    invoke-virtual {p1, v7}, Lwd/j;->g(I)B

    move-result v10

    sget-object v11, Lid/b;->a:[B

    and-int/lit16 v10, v10, 0xff

    sget-object v11, Lod/A;->b:[B

    aget-byte v10, v11, v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    int-to-long v10, v2

    add-long/2addr v8, v10

    const/4 v2, 0x3

    shr-long v7, v8, v2

    long-to-int v2, v7

    invoke-virtual {p1}, Lwd/j;->d()I

    move-result v7

    if-ge v2, v7, :cond_4

    new-instance v2, Lwd/g;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sget-object v7, Lod/A;->a:[I

    invoke-virtual {p1}, Lwd/j;->d()I

    move-result v7

    move-wide v8, v5

    move v5, v4

    :goto_1
    if-ge v4, v7, :cond_2

    invoke-virtual {p1, v4}, Lwd/j;->g(I)B

    move-result v6

    sget-object v10, Lid/b;->a:[B

    and-int/lit16 v6, v6, 0xff

    sget-object v10, Lod/A;->a:[I

    aget v10, v10, v6

    sget-object v11, Lod/A;->b:[B

    aget-byte v6, v11, v6

    shl-long/2addr v8, v6

    int-to-long v10, v10

    or-long/2addr v8, v10

    add-int/2addr v5, v6

    :goto_2
    if-lt v5, v0, :cond_1

    add-int/lit8 v5, v5, -0x8

    shr-long v10, v8, v5

    long-to-int v6, v10

    invoke-virtual {v2, v6}, Lwd/g;->b0(I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    if-lez v5, :cond_3

    sub-int/2addr v0, v5

    shl-long v6, v8, v0

    const-wide/16 v8, 0xff

    ushr-long v4, v8, v5

    or-long/2addr v4, v6

    long-to-int p1, v4

    invoke-virtual {v2, p1}, Lwd/g;->b0(I)V

    :cond_3
    iget-wide v4, v2, Lwd/g;->b:J

    invoke-virtual {v2, v4, v5}, Lwd/g;->v(J)Lwd/j;

    move-result-object p1

    invoke-virtual {p1}, Lwd/j;->d()I

    move-result v0

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v3, v2}, Lod/f;->e(III)V

    invoke-virtual {v1, p1}, Lwd/g;->V(Lwd/j;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lwd/j;->d()I

    move-result v0

    invoke-virtual {p0, v0, v3, v4}, Lod/f;->e(III)V

    invoke-virtual {v1, p1}, Lwd/g;->V(Lwd/j;)V

    :goto_3
    return-void
.end method

.method public final d(Ljava/util/ArrayList;)V
    .locals 13

    iget-boolean v0, p0, Lod/f;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lod/f;->c:I

    iget v2, p0, Lod/f;->e:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0, v4, v3}, Lod/f;->e(III)V

    :cond_0
    iput-boolean v1, p0, Lod/f;->d:Z

    const v0, 0x7fffffff

    iput v0, p0, Lod/f;->c:I

    iget v0, p0, Lod/f;->e:I

    invoke-virtual {p0, v0, v4, v3}, Lod/f;->e(III)V

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_b

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lod/d;

    iget-object v4, v3, Lod/d;->a:Lwd/j;

    invoke-virtual {v4}, Lwd/j;->l()Lwd/j;

    move-result-object v4

    sget-object v5, Lod/g;->b:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const/4 v6, -0x1

    iget-object v7, v3, Lod/d;->b:Lwd/j;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v8, v5, 0x1

    const/4 v9, 0x2

    if-gt v9, v8, :cond_3

    const/16 v9, 0x8

    if-ge v8, v9, :cond_3

    sget-object v9, Lod/g;->a:[Lod/d;

    aget-object v10, v9, v5

    iget-object v10, v10, Lod/d;->b:Lwd/j;

    invoke-static {v10, v7}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v5, v8

    goto :goto_1

    :cond_2
    aget-object v9, v9, v8

    iget-object v9, v9, Lod/d;->b:Lwd/j;

    invoke-static {v9, v7}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v5, v5, 0x2

    move v12, v8

    move v8, v5

    move v5, v12

    goto :goto_1

    :cond_3
    move v5, v8

    move v8, v6

    goto :goto_1

    :cond_4
    move v5, v6

    move v8, v5

    :goto_1
    if-ne v8, v6, :cond_7

    iget v9, p0, Lod/f;->g:I

    add-int/lit8 v9, v9, 0x1

    iget-object v10, p0, Lod/f;->f:[Lod/d;

    array-length v10, v10

    :goto_2
    if-ge v9, v10, :cond_7

    iget-object v11, p0, Lod/f;->f:[Lod/d;

    aget-object v11, v11, v9

    invoke-static {v11}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v11, v11, Lod/d;->a:Lwd/j;

    invoke-static {v11, v4}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lod/f;->f:[Lod/d;

    aget-object v11, v11, v9

    invoke-static {v11}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v11, v11, Lod/d;->b:Lwd/j;

    invoke-static {v11, v7}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget v8, p0, Lod/f;->g:I

    sub-int/2addr v9, v8

    sget-object v8, Lod/g;->a:[Lod/d;

    array-length v8, v8

    add-int/2addr v8, v9

    goto :goto_3

    :cond_5
    if-ne v5, v6, :cond_6

    iget v5, p0, Lod/f;->g:I

    sub-int v5, v9, v5

    sget-object v11, Lod/g;->a:[Lod/d;

    array-length v11, v11

    add-int/2addr v5, v11

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-eq v8, v6, :cond_8

    const/16 v3, 0x7f

    const/16 v4, 0x80

    invoke-virtual {p0, v8, v3, v4}, Lod/f;->e(III)V

    goto :goto_4

    :cond_8
    const/16 v8, 0x40

    if-ne v5, v6, :cond_9

    iget-object v5, p0, Lod/f;->b:Lwd/g;

    invoke-virtual {v5, v8}, Lwd/g;->b0(I)V

    invoke-virtual {p0, v4}, Lod/f;->c(Lwd/j;)V

    invoke-virtual {p0, v7}, Lod/f;->c(Lwd/j;)V

    invoke-virtual {p0, v3}, Lod/f;->b(Lod/d;)V

    goto :goto_4

    :cond_9
    sget-object v6, Lod/d;->d:Lwd/j;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "prefix"

    invoke-static {v6, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lwd/j;->d()I

    move-result v9

    invoke-virtual {v4, v6, v9}, Lwd/j;->h(Lwd/j;I)Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Lod/d;->i:Lwd/j;

    invoke-static {v6, v4}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const/16 v3, 0xf

    invoke-virtual {p0, v5, v3, v1}, Lod/f;->e(III)V

    invoke-virtual {p0, v7}, Lod/f;->c(Lwd/j;)V

    goto :goto_4

    :cond_a
    const/16 v4, 0x3f

    invoke-virtual {p0, v5, v4, v8}, Lod/f;->e(III)V

    invoke-virtual {p0, v7}, Lod/f;->c(Lwd/j;)V

    invoke-virtual {p0, v3}, Lod/f;->b(Lod/d;)V

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public final e(III)V
    .locals 0

    iget-object p0, p0, Lod/f;->b:Lwd/g;

    if-ge p1, p2, :cond_0

    or-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lwd/g;->b0(I)V

    return-void

    :cond_0
    or-int/2addr p3, p2

    invoke-virtual {p0, p3}, Lwd/g;->b0(I)V

    sub-int/2addr p1, p2

    :goto_0
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1

    and-int/lit8 p3, p1, 0x7f

    or-int/2addr p2, p3

    invoke-virtual {p0, p2}, Lwd/g;->b0(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lwd/g;->b0(I)V

    return-void
.end method
