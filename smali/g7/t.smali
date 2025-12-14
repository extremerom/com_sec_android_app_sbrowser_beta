.class public final Lg7/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:I

.field public c:I

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    sget-object v0, Ly0/b;->Lsq2:Ly0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lg7/t;->a:Z

    iput-object v0, p0, Lg7/t;->d:Ljava/lang/Object;

    sget-object v1, Ly0/c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iput v1, p0, Lg7/t;->b:I

    const/16 v0, 0x14

    new-array v1, v0, [Ly0/a;

    iput-object v1, p0, Lg7/t;->e:Ljava/lang/Object;

    new-array v1, v0, [F

    iput-object v1, p0, Lg7/t;->f:Ljava/lang/Object;

    new-array v0, v0, [F

    iput-object v0, p0, Lg7/t;->g:Ljava/lang/Object;

    new-array v0, v3, [F

    iput-object v0, p0, Lg7/t;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LZ3/x;ILz7/d;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg7/t;->d:Ljava/lang/Object;

    new-instance v2, LZ3/x;

    invoke-direct {v2, p1}, LZ3/x;-><init>(LZ3/x;)V

    iput-object v2, p0, Lg7/t;->e:Ljava/lang/Object;

    iput p2, p0, Lg7/t;->c:I

    const/4 v2, 0x0

    iput-object v2, p0, Lg7/t;->h:Ljava/lang/Object;

    new-array v2, v1, [Z

    aput-boolean v1, v2, v0

    iget-object p1, p1, LZ3/x;->b:Ljava/lang/Object;

    check-cast p1, Lk7/b;

    iget v3, p1, Lk7/b;->d:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    new-instance v3, LEc/p;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput v0, v3, LEc/p;->a:I

    iget-object v5, p1, Ln7/e;->b:[Ljava/lang/Object;

    array-length v5, v5

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_1

    invoke-virtual {p1, v6}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lk7/a;

    iget-object v7, v7, Lk7/a;->b:Lk7/g;

    iget-object v8, v7, Ln7/e;->b:[Ljava/lang/Object;

    array-length v8, v8

    move v9, v0

    :goto_1
    if-ge v9, v8, :cond_0

    invoke-virtual {v7, v9}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lk7/f;

    invoke-virtual {v10, v3}, Lk7/f;->b(Lk7/e;)V

    add-int/2addr v9, v1

    goto :goto_1

    :cond_0
    add-int/2addr v6, v1

    goto :goto_0

    :cond_1
    iget v3, v3, LEc/p;->a:I

    iput v3, p1, Lk7/b;->d:I

    :cond_2
    iget v3, p1, Lk7/b;->d:I

    new-instance v5, LU/v;

    invoke-direct {v5, v3, p2, v2}, LU/v;-><init>(IILjava/lang/Object;)V

    iget-object p2, p1, Ln7/e;->b:[Ljava/lang/Object;

    array-length p2, p2

    move v3, v0

    :goto_2
    if-ge v3, p2, :cond_4

    invoke-virtual {p1, v3}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk7/a;

    iget-object v6, v6, Lk7/a;->b:Lk7/g;

    iget-object v7, v6, Ln7/e;->b:[Ljava/lang/Object;

    array-length v7, v7

    move v8, v0

    :goto_3
    if-ge v8, v7, :cond_3

    invoke-virtual {v6, v8}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lk7/f;

    invoke-virtual {v9, v5}, Lk7/f;->b(Lk7/e;)V

    add-int/2addr v8, v1

    goto :goto_3

    :cond_3
    add-int/2addr v3, v1

    goto :goto_2

    :cond_4
    aget-boolean p2, v2, v0

    iput-boolean p2, p0, Lg7/t;->a:Z

    iget-object p2, p1, Ln7/e;->b:[Ljava/lang/Object;

    array-length v2, p2

    mul-int/lit8 v2, v2, 0x3

    array-length v3, p2

    move v5, v0

    move v6, v5

    :goto_4
    if-ge v5, v3, :cond_6

    aget-object v7, p2, v5

    check-cast v7, Lk7/a;

    if-eqz v7, :cond_5

    iget-object v7, v7, Lk7/a;->b:Lk7/g;

    iget-object v7, v7, Ln7/e;->b:[Ljava/lang/Object;

    array-length v7, v7

    add-int/2addr v6, v7

    :cond_5
    add-int/2addr v5, v1

    goto :goto_4

    :cond_6
    add-int/2addr v6, v2

    iget p2, p1, Lk7/b;->d:I

    if-ne p2, v4, :cond_9

    new-instance p2, LEc/p;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput v0, p2, LEc/p;->a:I

    iget-object v3, p1, Ln7/e;->b:[Ljava/lang/Object;

    array-length v3, v3

    move v4, v0

    :goto_5
    if-ge v4, v3, :cond_8

    invoke-virtual {p1, v4}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lk7/a;

    iget-object v5, v5, Lk7/a;->b:Lk7/g;

    iget-object v7, v5, Ln7/e;->b:[Ljava/lang/Object;

    array-length v7, v7

    move v8, v0

    :goto_6
    if-ge v8, v7, :cond_7

    invoke-virtual {v5, v8}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lk7/f;

    invoke-virtual {v9, p2}, Lk7/f;->b(Lk7/e;)V

    add-int/2addr v8, v1

    goto :goto_6

    :cond_7
    add-int/2addr v4, v1

    goto :goto_5

    :cond_8
    iget p2, p2, LEc/p;->a:I

    iput p2, p1, Lk7/b;->d:I

    :cond_9
    iget p1, p1, Lk7/b;->d:I

    iget-boolean p2, p0, Lg7/t;->a:Z

    if-eqz p2, :cond_a

    goto :goto_7

    :cond_a
    iget v0, p0, Lg7/t;->c:I

    :goto_7
    add-int/2addr p1, v0

    iput p1, p0, Lg7/t;->b:I

    new-instance p2, LL8/a;

    invoke-direct {p2, p3, v6, v2, p1}, LL8/a;-><init>(Lz7/d;III)V

    iput-object p2, p0, Lg7/t;->f:Ljava/lang/Object;

    new-instance p1, Lcom/google/firebase/messaging/q;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    iput-object p2, p1, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    iput-object p1, p0, Lg7/t;->g:Ljava/lang/Object;

    return-void
.end method

.method public static c(Lk7/f;Lk7/k;)Lk7/l;
    .locals 5

    iget-object v0, p0, Lk7/f;->d:Lk7/l;

    iget-object p0, p0, Lk7/f;->a:Lk7/n;

    iget p0, p0, Lk7/n;->a:I

    const/16 v1, 0xe

    const/4 v2, 0x0

    if-eq p0, v1, :cond_0

    const/16 v1, 0x10

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    iget-object p0, v0, Ln7/e;->b:[Ljava/lang/Object;

    array-length p0, p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    iget p0, p1, Lk7/k;->a:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk7/k;

    iget v3, v3, Lk7/k;->a:I

    if-ne p0, v3, :cond_1

    invoke-virtual {v0, v1}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk7/k;

    invoke-virtual {v0, v2}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk7/k;

    invoke-static {p0, v0}, Lk7/l;->l(Lk7/k;Lk7/k;)Lk7/l;

    move-result-object v0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    return-object v0

    :cond_2
    iget-object p0, v0, Ln7/e;->b:[Ljava/lang/Object;

    array-length p0, p0

    new-instance v1, Lk7/l;

    add-int/lit8 v3, p0, 0x1

    invoke-direct {v1, v3}, Ln7/e;-><init>(I)V

    move v3, v2

    :goto_1
    if-ge v3, p0, :cond_3

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v3}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ln7/e;->f(ILjava/lang/Object;)V

    move v3, v4

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2, p1}, Ln7/e;->f(ILjava/lang/Object;)V

    iget-boolean p0, v0, LEc/g;->a:Z

    if-nez p0, :cond_4

    iput-boolean v2, v1, LEc/g;->a:Z

    :cond_4
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(F)V
    .locals 2

    iget v0, p0, Lg7/t;->c:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x14

    iput v0, p0, Lg7/t;->c:I

    sget-object v1, Ly0/e;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object p0, p0, Lg7/t;->e:Ljava/lang/Object;

    check-cast p0, [Ly0/a;

    aget-object v1, p0, v0

    if-nez v1, :cond_0

    new-instance v1, Ly0/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput p1, v1, Ly0/a;->a:F

    aput-object v1, p0, v0

    goto :goto_0

    :cond_0
    iput p1, v1, Ly0/a;->a:F

    :goto_0
    return-void
.end method

.method public b(F)F
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_14

    iget v2, p0, Lg7/t;->c:I

    iget-object v3, p0, Lg7/t;->e:Ljava/lang/Object;

    check-cast v3, [Ly0/a;

    aget-object v4, v3, v2

    if-nez v4, :cond_1

    :cond_0
    move p0, v1

    goto/16 :goto_7

    :cond_1
    const/4 v4, 0x0

    move v5, v4

    :cond_2
    aget-object v6, v3, v2

    iget-object v7, p0, Lg7/t;->f:Ljava/lang/Object;

    check-cast v7, [F

    iget-object v8, p0, Lg7/t;->g:Ljava/lang/Object;

    check-cast v8, [F

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    const-wide/16 v9, 0x0

    long-to-float v11, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    long-to-float v9, v9

    const/high16 v10, 0x42c80000    # 100.0f

    cmpl-float v10, v11, v10

    if-gtz v10, :cond_6

    const/high16 v10, 0x42200000    # 40.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    goto :goto_0

    :cond_4
    iget v6, v6, Ly0/a;->a:F

    aput v6, v7, v5

    neg-float v6, v11

    aput v6, v8, v5

    const/16 v6, 0x14

    if-nez v2, :cond_5

    move v2, v6

    :cond_5
    sub-int/2addr v2, v0

    add-int/2addr v5, v0

    if-lt v5, v6, :cond_2

    :cond_6
    :goto_0
    iget v2, p0, Lg7/t;->b:I

    if-lt v5, v2, :cond_0

    sget-object v2, Ly0/c;->a:[I

    iget-object v3, p0, Lg7/t;->d:Ljava/lang/Object;

    check-cast v3, Ly0/b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    if-eq v2, v0, :cond_8

    if-ne v2, v3, :cond_7

    :try_start_0
    iget-object p0, p0, Lg7/t;->h:Ljava/lang/Object;

    check-cast p0, [F

    invoke-static {v8, v7, v5, p0}, Ly0/e;->c([F[FI[F)V

    aget p0, p0, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    :goto_1
    move p0, v1

    goto/16 :goto_6

    :cond_7
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_8
    sget-object v2, Ly0/e;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    if-ge v5, v3, :cond_9

    goto :goto_1

    :cond_9
    iget-boolean p0, p0, Lg7/t;->a:Z

    if-ne v5, v3, :cond_c

    aget v2, v8, v4

    aget v3, v8, v0

    cmpg-float v5, v2, v3

    if-nez v5, :cond_a

    goto :goto_1

    :cond_a
    if-eqz p0, :cond_b

    aget p0, v7, v4

    goto :goto_2

    :cond_b
    aget p0, v7, v4

    aget v0, v7, v0

    sub-float/2addr p0, v0

    :goto_2
    sub-float/2addr v2, v3

    div-float/2addr p0, v2

    goto :goto_6

    :cond_c
    sub-int/2addr v5, v0

    move v4, v1

    move v2, v5

    :goto_3
    if-lez v2, :cond_10

    aget v6, v8, v2

    add-int/lit8 v9, v2, -0x1

    aget v10, v8, v9

    cmpg-float v6, v6, v10

    if-nez v6, :cond_d

    goto :goto_5

    :cond_d
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v6

    int-to-float v10, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-float/2addr v11, v10

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v6, v10

    if-eqz p0, :cond_e

    aget v10, v7, v9

    neg-float v10, v10

    goto :goto_4

    :cond_e
    aget v10, v7, v2

    aget v11, v7, v9

    sub-float/2addr v10, v11

    :goto_4
    aget v11, v8, v2

    aget v9, v8, v9

    sub-float/2addr v11, v9

    div-float/2addr v10, v11

    sub-float v6, v10, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float/2addr v9, v6

    add-float/2addr v4, v9

    if-ne v2, v5, :cond_f

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    :cond_f
    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_10
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result p0

    int-to-float v0, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float/2addr p0, v0

    :goto_6
    const/16 v0, 0x3e8

    int-to-float v0, v0

    mul-float/2addr p0, v0

    :goto_7
    cmpg-float v0, p0, v1

    if-nez v0, :cond_11

    goto :goto_8

    :cond_11
    cmpl-float v0, p0, v1

    if-lez v0, :cond_12

    invoke-static {p0, p1}, LG5/d3;->c(FF)F

    move-result v1

    goto :goto_8

    :cond_12
    neg-float p1, p1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_13

    move v1, p1

    goto :goto_8

    :cond_13
    move v1, p0

    :goto_8
    return v1

    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "maximumVelocity should be a positive value. You specified="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
