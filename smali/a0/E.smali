.class public final La0/E;
.super Lk0/s;
.source "SourceFile"

# interfaces
.implements La0/K0;


# instance fields
.field public final b:LA1/d;

.field public c:La0/C;


# direct methods
.method public constructor <init>(LA1/d;)V
    .locals 0

    invoke-direct {p0}, Lk0/s;-><init>()V

    iput-object p1, p0, La0/E;->b:LA1/d;

    new-instance p1, La0/C;

    invoke-direct {p1}, La0/C;-><init>()V

    iput-object p1, p0, La0/E;->c:La0/C;

    return-void
.end method


# virtual methods
.method public final c(La0/C;Lk0/h;ZLA1/d;)La0/C;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p2}, La0/C;->c(Lk0/h;)Z

    move-result v2

    const/4 v7, 0x0

    if-eqz v2, :cond_a

    if-eqz p3, :cond_9

    invoke-static {}, La0/d;->y()Lc0/d;

    move-result-object v2

    iget v0, v2, Lc0/d;->c:I

    if-lez v0, :cond_1

    iget-object v3, v2, Lc0/d;->a:[Ljava/lang/Object;

    move v4, v7

    :cond_0
    aget-object v5, v3, v4

    check-cast v5, La0/p;

    iget-object v5, v5, La0/p;->a:La0/q;

    iget v6, v5, La0/q;->z:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, La0/q;->z:I

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v0, :cond_0

    :cond_1
    :try_start_0
    iget-object v0, v1, La0/C;->e:LN/r;

    sget-object v3, La0/B0;->a:LZ3/x;

    invoke-virtual {v3}, LZ3/x;->u()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li0/c;

    if-nez v4, :cond_2

    new-instance v4, Li0/c;

    invoke-direct {v4, v7}, Li0/c;-><init>(I)V

    invoke-virtual {v3, v4}, LZ3/x;->G(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_2
    :goto_0
    iget v3, v4, Li0/c;->a:I

    iget-object v5, v0, LN/r;->b:[Ljava/lang/Object;

    iget-object v6, v0, LN/r;->c:[I

    iget-object v0, v0, LN/r;->a:[J

    array-length v8, v0

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_6

    move v9, v7

    :goto_1
    aget-wide v10, v0, v9

    not-long v12, v10

    const/4 v14, 0x7

    shl-long/2addr v12, v14

    and-long/2addr v12, v10

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v12, v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_5

    sub-int v12, v9, v8

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    move v14, v7

    :goto_2
    if-ge v14, v12, :cond_4

    const-wide/16 v15, 0xff

    and-long/2addr v15, v10

    const-wide/16 v17, 0x80

    cmp-long v15, v15, v17

    if-gez v15, :cond_3

    shl-int/lit8 v15, v9, 0x3

    add-int/2addr v15, v14

    aget-object v16, v5, v15

    aget v15, v6, v15

    move-object/from16 v7, v16

    check-cast v7, Lk0/r;

    add-int/2addr v15, v3

    iput v15, v4, Li0/c;->a:I

    invoke-virtual/range {p2 .. p2}, Lk0/h;->f()Lsb/k;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-interface {v15, v7}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    shr-long/2addr v10, v13

    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    if-ne v12, v13, :cond_6

    :cond_5
    if-eq v9, v8, :cond_6

    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x0

    goto :goto_1

    :cond_6
    iput v3, v4, Li0/c;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, v2, Lc0/d;->c:I

    if-lez v0, :cond_9

    iget-object v2, v2, Lc0/d;->a:[Ljava/lang/Object;

    const/4 v7, 0x0

    :cond_7
    aget-object v3, v2, v7

    check-cast v3, La0/p;

    invoke-virtual {v3}, La0/p;->a()V

    add-int/lit8 v7, v7, 0x1

    if-lt v7, v0, :cond_7

    goto :goto_5

    :goto_3
    iget v1, v2, Lc0/d;->c:I

    if-lez v1, :cond_8

    iget-object v2, v2, Lc0/d;->a:[Ljava/lang/Object;

    const/4 v7, 0x0

    :goto_4
    aget-object v3, v2, v7

    check-cast v3, La0/p;

    invoke-virtual {v3}, La0/p;->a()V

    add-int/lit8 v7, v7, 0x1

    if-ge v7, v1, :cond_8

    goto :goto_4

    :cond_8
    throw v0

    :cond_9
    :goto_5
    return-object v1

    :cond_a
    new-instance v7, LN/r;

    invoke-direct {v7}, LN/r;-><init>()V

    sget-object v1, La0/B0;->a:LZ3/x;

    invoke-virtual {v1}, LZ3/x;->u()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li0/c;

    if-nez v2, :cond_b

    new-instance v2, Li0/c;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Li0/c;-><init>(I)V

    invoke-virtual {v1, v2}, LZ3/x;->G(Ljava/lang/Object;)V

    :goto_6
    move-object v9, v2

    goto :goto_7

    :cond_b
    const/4 v8, 0x0

    goto :goto_6

    :goto_7
    iget v10, v9, Li0/c;->a:I

    invoke-static {}, La0/d;->y()Lc0/d;

    move-result-object v11

    iget v1, v11, Lc0/d;->c:I

    if-lez v1, :cond_d

    iget-object v2, v11, Lc0/d;->a:[Ljava/lang/Object;

    move v3, v8

    :cond_c
    aget-object v4, v2, v3

    check-cast v4, La0/p;

    iget-object v4, v4, La0/p;->a:La0/q;

    iget v5, v4, La0/q;->z:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, La0/q;->z:I

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v1, :cond_c

    :cond_d
    add-int/lit8 v1, v10, 0x1

    :try_start_1
    iput v1, v9, Li0/c;->a:I

    new-instance v12, La0/D;

    const/4 v3, 0x0

    move-object v1, v12

    move v2, v10

    move-object/from16 v4, p0

    move-object v5, v9

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, La0/D;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v1, p4

    invoke-static {v12, v1}, Lk0/q;->d(La0/D;LA1/d;)Ljava/lang/Object;

    move-result-object v1

    iput v10, v9, Li0/c;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    iget v2, v11, Lc0/d;->c:I

    if-lez v2, :cond_f

    iget-object v3, v11, Lc0/d;->a:[Ljava/lang/Object;

    :cond_e
    aget-object v4, v3, v8

    check-cast v4, La0/p;

    invoke-virtual {v4}, La0/p;->a()V

    add-int/lit8 v8, v8, 0x1

    if-lt v8, v2, :cond_e

    :cond_f
    sget-object v2, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v3

    iget-object v4, v0, La0/E;->c:La0/C;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {v4, v0}, Lk0/n;->m(Lk0/t;Lk0/r;)Lk0/t;

    move-result-object v0

    invoke-virtual {v0, v4}, Lk0/t;->a(Lk0/t;)V

    invoke-virtual {v3}, Lk0/h;->d()I

    move-result v4

    iput v4, v0, Lk0/t;->a:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    monitor-exit v2

    check-cast v0, La0/C;

    iput-object v7, v0, La0/C;->e:LN/r;

    invoke-virtual {v0, v3}, La0/C;->d(Lk0/h;)I

    move-result v3

    iput v3, v0, La0/C;->g:I

    iput-object v1, v0, La0/C;->f:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v2

    sget-object v1, La0/B0;->a:LZ3/x;

    invoke-virtual {v1}, LZ3/x;->u()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li0/c;

    if-eqz v1, :cond_10

    iget v1, v1, Li0/c;->a:I

    if-nez v1, :cond_10

    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v1

    invoke-virtual {v1}, Lk0/h;->m()V

    monitor-enter v2

    :try_start_5
    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v1

    invoke-virtual {v1}, Lk0/h;->d()I

    move-result v3

    iput v3, v0, La0/C;->c:I

    invoke-virtual {v1}, Lk0/h;->h()I

    move-result v1

    iput v1, v0, La0/C;->d:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v2

    goto :goto_8

    :catchall_1
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_10
    :goto_8
    return-object v0

    :catchall_2
    move-exception v0

    goto :goto_9

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v2

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_9
    monitor-exit v2

    throw v0

    :catchall_4
    move-exception v0

    iget v1, v11, Lc0/d;->c:I

    if-lez v1, :cond_11

    iget-object v2, v11, Lc0/d;->a:[Ljava/lang/Object;

    move v7, v8

    :goto_a
    aget-object v3, v2, v7

    check-cast v3, La0/p;

    invoke-virtual {v3}, La0/p;->a()V

    add-int/lit8 v7, v7, 0x1

    if-ge v7, v1, :cond_11

    goto :goto_a

    :cond_11
    throw v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v0

    invoke-virtual {v0}, Lk0/h;->f()Lsb/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v0

    iget-object v1, p0, La0/E;->c:La0/C;

    invoke-static {v1, v0}, Lk0/n;->j(Lk0/t;Lk0/h;)Lk0/t;

    move-result-object v1

    check-cast v1, La0/C;

    const/4 v2, 0x1

    iget-object v3, p0, La0/E;->b:LA1/d;

    invoke-virtual {p0, v1, v0, v2, v3}, La0/E;->c(La0/C;Lk0/h;ZLA1/d;)La0/C;

    move-result-object p0

    iget-object p0, p0, La0/C;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public final i()Lk0/t;
    .locals 0

    iget-object p0, p0, La0/E;->c:La0/C;

    return-object p0
.end method

.method public final m(Lk0/t;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.DerivedSnapshotState.ResultRecord<T of androidx.compose.runtime.DerivedSnapshotState>"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, La0/C;

    iput-object p1, p0, La0/E;->c:La0/C;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, La0/E;->c:La0/C;

    invoke-static {v0}, Lk0/n;->i(Lk0/t;)Lk0/t;

    move-result-object v0

    check-cast v0, La0/C;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DerivedState(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La0/E;->c:La0/C;

    invoke-static {v1}, Lk0/n;->i(Lk0/t;)Lk0/t;

    move-result-object v1

    check-cast v1, La0/C;

    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v2

    invoke-virtual {v1, v2}, La0/C;->c(Lk0/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, La0/C;->f:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "<Not calculated>"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
