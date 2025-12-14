.class public final La0/C;
.super Lk0/t;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/Object;


# instance fields
.field public c:I

.field public d:I

.field public e:LN/r;

.field public f:Ljava/lang/Object;

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, La0/C;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lk0/t;-><init>()V

    sget-object v0, LN/w;->a:LN/r;

    const-string v1, "null cannot be cast to non-null type androidx.collection.ObjectIntMap<K of androidx.collection.ObjectIntMapKt.emptyObjectIntMap>"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, La0/C;->e:LN/r;

    sget-object v0, La0/C;->h:Ljava/lang/Object;

    iput-object v0, p0, La0/C;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lk0/t;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.DerivedSnapshotState.ResultRecord<T of androidx.compose.runtime.DerivedSnapshotState.ResultRecord>"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, La0/C;

    iget-object v0, p1, La0/C;->e:LN/r;

    iput-object v0, p0, La0/C;->e:LN/r;

    iget-object v0, p1, La0/C;->f:Ljava/lang/Object;

    iput-object v0, p0, La0/C;->f:Ljava/lang/Object;

    iget p1, p1, La0/C;->g:I

    iput p1, p0, La0/C;->g:I

    return-void
.end method

.method public final b()Lk0/t;
    .locals 0

    new-instance p0, La0/C;

    invoke-direct {p0}, La0/C;-><init>()V

    return-object p0
.end method

.method public final c(Lk0/h;)Z
    .locals 6

    sget-object v0, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, La0/C;->c:I

    invoke-virtual {p1}, Lk0/h;->d()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    iget v1, p0, La0/C;->d:I

    invoke-virtual {p1}, Lk0/h;->h()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    monitor-exit v0

    iget-object v2, p0, La0/C;->f:Ljava/lang/Object;

    sget-object v5, La0/C;->h:Ljava/lang/Object;

    if-eq v2, v5, :cond_2

    if-eqz v1, :cond_3

    iget v2, p0, La0/C;->g:I

    invoke-virtual {p0, p1}, La0/C;->d(Lk0/h;)I

    move-result v5

    if-ne v2, v5, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    monitor-enter v0

    :try_start_1
    invoke-virtual {p1}, Lk0/h;->d()I

    move-result v1

    iput v1, p0, La0/C;->c:I

    invoke-virtual {p1}, Lk0/h;->h()I

    move-result p1

    iput p1, p0, La0/C;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_4
    :goto_3
    return v3

    :goto_4
    monitor-exit v0

    throw p0
.end method

.method public final d(Lk0/h;)I
    .locals 20

    move-object/from16 v0, p1

    sget-object v1, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v1

    move-object/from16 v2, p0

    :try_start_0
    iget-object v2, v2, La0/C;->e:LN/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    iget v1, v2, LN/r;->e:I

    const/4 v3, 0x7

    if-eqz v1, :cond_b

    invoke-static {}, La0/d;->y()Lc0/d;

    move-result-object v1

    iget v4, v1, Lc0/d;->c:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v4, :cond_1

    iget-object v7, v1, Lc0/d;->a:[Ljava/lang/Object;

    move v8, v6

    :cond_0
    aget-object v9, v7, v8

    check-cast v9, La0/p;

    iget-object v9, v9, La0/p;->a:La0/q;

    iget v10, v9, La0/q;->z:I

    add-int/2addr v10, v5

    iput v10, v9, La0/q;->z:I

    add-int/lit8 v8, v8, 0x1

    if-lt v8, v4, :cond_0

    :cond_1
    :try_start_1
    iget-object v4, v2, LN/r;->b:[Ljava/lang/Object;

    iget-object v7, v2, LN/r;->c:[I

    iget-object v2, v2, LN/r;->a:[J

    array-length v8, v2

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_8

    move v10, v3

    move v9, v6

    :goto_0
    aget-wide v11, v2, v9

    not-long v13, v11

    shl-long/2addr v13, v3

    and-long/2addr v13, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_7

    sub-int v13, v9, v8

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    move v15, v6

    :goto_1
    if-ge v15, v13, :cond_5

    const-wide/16 v16, 0xff

    and-long v16, v11, v16

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_4

    shl-int/lit8 v16, v9, 0x3

    add-int v16, v16, v15

    aget-object v17, v4, v16

    aget v3, v7, v16

    move-object/from16 v14, v17

    check-cast v14, Lk0/r;

    if-eq v3, v5, :cond_2

    goto :goto_3

    :cond_2
    instance-of v3, v14, La0/E;

    if-eqz v3, :cond_3

    check-cast v14, La0/E;

    iget-object v3, v14, La0/E;->c:La0/C;

    invoke-static {v3, v0}, Lk0/n;->j(Lk0/t;Lk0/h;)Lk0/t;

    move-result-object v3

    check-cast v3, La0/C;

    iget-object v5, v14, La0/E;->b:LA1/d;

    invoke-virtual {v14, v3, v0, v6, v5}, La0/E;->c(La0/C;Lk0/h;ZLA1/d;)La0/C;

    move-result-object v3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_3
    invoke-interface {v14}, Lk0/r;->i()Lk0/t;

    move-result-object v3

    invoke-static {v3, v0}, Lk0/n;->j(Lk0/t;Lk0/h;)Lk0/t;

    move-result-object v3

    :goto_2
    mul-int/lit8 v10, v10, 0x1f

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v10, v5

    mul-int/lit8 v10, v10, 0x1f

    iget v3, v3, Lk0/t;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v10, v3

    :goto_3
    const/16 v3, 0x8

    goto :goto_4

    :cond_4
    move v3, v14

    :goto_4
    shr-long/2addr v11, v3

    add-int/lit8 v15, v15, 0x1

    move v14, v3

    const/4 v3, 0x7

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    move v3, v14

    if-ne v13, v3, :cond_6

    goto :goto_5

    :cond_6
    move v3, v10

    goto :goto_6

    :cond_7
    :goto_5
    if-eq v9, v8, :cond_6

    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x7

    const/4 v5, 0x1

    goto :goto_0

    :cond_8
    const/4 v3, 0x7

    :goto_6
    iget v0, v1, Lc0/d;->c:I

    if-lez v0, :cond_c

    iget-object v1, v1, Lc0/d;->a:[Ljava/lang/Object;

    :cond_9
    aget-object v2, v1, v6

    check-cast v2, La0/p;

    invoke-virtual {v2}, La0/p;->a()V

    const/4 v2, 0x1

    add-int/2addr v6, v2

    if-lt v6, v0, :cond_9

    goto :goto_9

    :goto_7
    iget v2, v1, Lc0/d;->c:I

    if-lez v2, :cond_a

    iget-object v1, v1, Lc0/d;->a:[Ljava/lang/Object;

    :goto_8
    aget-object v3, v1, v6

    check-cast v3, La0/p;

    invoke-virtual {v3}, La0/p;->a()V

    const/4 v3, 0x1

    add-int/2addr v6, v3

    if-ge v6, v2, :cond_a

    goto :goto_8

    :cond_a
    throw v0

    :cond_b
    const/4 v3, 0x7

    :cond_c
    :goto_9
    return v3

    :catchall_1
    move-exception v0

    move-object v2, v0

    monitor-exit v1

    throw v2
.end method
