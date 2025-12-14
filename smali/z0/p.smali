.class public final Lz0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/M;


# instance fields
.field public a:LH0/k;

.field public b:F

.field public c:F

.field public final synthetic d:Lz0/t;


# direct methods
.method public constructor <init>(Lz0/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/p;->d:Lz0/t;

    sget-object p1, LH0/k;->Rtl:LH0/k;

    iput-object p1, p0, Lz0/p;->a:LH0/k;

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 1

    iget-object p0, p0, Lz0/p;->d:Lz0/t;

    iget-object p0, p0, Lz0/t;->a:Landroidx/compose/ui/node/a;

    iget-object p0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object p0, p0, LB0/G;->c:LB0/v;

    sget-object v0, LB0/v;->LookaheadLayingOut:LB0/v;

    if-eq p0, v0, :cond_1

    sget-object v0, LB0/v;->LookaheadMeasuring:LB0/v;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final getFontScale()F
    .locals 0

    iget p0, p0, Lz0/p;->c:F

    return p0
.end method

.method public final getLayoutDirection()LH0/k;
    .locals 0

    iget-object p0, p0, Lz0/p;->a:LH0/k;

    return-object p0
.end method

.method public final h(Ljava/lang/Object;Lsb/n;)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    iget-object v2, v2, Lz0/p;->d:Lz0/t;

    invoke-virtual {v2}, Lz0/t;->d()V

    iget-object v3, v2, Lz0/t;->a:Landroidx/compose/ui/node/a;

    iget-object v4, v3, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v4, v4, LB0/G;->c:LB0/v;

    sget-object v5, LB0/v;->Measuring:LB0/v;

    if-eq v4, v5, :cond_1

    sget-object v6, LB0/v;->LayingOut:LB0/v;

    if-eq v4, v6, :cond_1

    sget-object v6, LB0/v;->LookaheadMeasuring:LB0/v;

    if-eq v4, v6, :cond_1

    sget-object v6, LB0/v;->LookaheadLayingOut:LB0/v;

    if-ne v4, v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "subcompose can only be used inside the measure or layout blocks"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v6, v2, Lz0/t;->g:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_e

    iget-object v7, v2, Lz0/t;->j:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/node/a;

    if-eqz v7, :cond_3

    iget v10, v2, Lz0/t;->o:I

    if-lez v10, :cond_2

    add-int/lit8 v10, v10, -0x1

    iput v10, v2, Lz0/t;->o:I

    goto/16 :goto_8

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v7, v2, Lz0/t;->n:I

    if-nez v7, :cond_4

    :goto_1
    const/4 v10, 0x0

    goto/16 :goto_7

    :cond_4
    iget-object v7, v2, Lz0/t;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {v7}, Landroidx/compose/ui/node/a;->i()Ljava/util/List;

    move-result-object v11

    check-cast v11, Lc0/a;

    iget-object v11, v11, Lc0/a;->a:Lc0/d;

    iget v11, v11, Lc0/d;->c:I

    iget v12, v2, Lz0/t;->o:I

    sub-int/2addr v11, v12

    iget v12, v2, Lz0/t;->n:I

    sub-int v12, v11, v12

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    move v14, v11

    :goto_2
    iget-object v15, v2, Lz0/t;->f:Ljava/util/HashMap;

    const/4 v10, -0x1

    if-lt v14, v12, :cond_6

    invoke-virtual {v7}, Landroidx/compose/ui/node/a;->i()Ljava/util/List;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lc0/a;

    invoke-virtual {v8, v14}, Lc0/a;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/node/a;

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v8, Lz0/m;

    iget-object v8, v8, Lz0/m;->a:Ljava/lang/Object;

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v14

    goto :goto_3

    :cond_5
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    :cond_6
    move v8, v10

    :goto_3
    if-ne v8, v10, :cond_a

    :goto_4
    if-lt v11, v12, :cond_9

    invoke-virtual {v7}, Landroidx/compose/ui/node/a;->i()Ljava/util/List;

    move-result-object v14

    check-cast v14, Lc0/a;

    invoke-virtual {v14, v11}, Lc0/a;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/node/a;

    invoke-virtual {v15, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v14, Lz0/m;

    iget-object v9, v14, Lz0/m;->a:Ljava/lang/Object;

    sget-object v13, Lz0/J;->a:Lz0/g;

    if-eq v9, v13, :cond_8

    iget-object v13, v2, Lz0/t;->c:LA7/h;

    iget-object v13, v13, LA7/h;->a:Ljava/lang/Object;

    check-cast v13, LW/h;

    invoke-virtual {v13, v0}, LW/h;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v13, v9}, LW/h;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v11, v11, -0x1

    const/4 v10, -0x1

    const/4 v13, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    iput-object v0, v14, Lz0/m;->a:Ljava/lang/Object;

    move v8, v11

    move v14, v8

    const/4 v9, -0x1

    goto :goto_6

    :cond_9
    move v9, v10

    move v14, v11

    goto :goto_6

    :cond_a
    move v9, v10

    :goto_6
    if-ne v8, v9, :cond_b

    goto/16 :goto_1

    :cond_b
    if-eq v14, v12, :cond_c

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroidx/compose/ui/node/a;->i:Z

    invoke-virtual {v7, v14, v12, v8}, Landroidx/compose/ui/node/a;->q(III)V

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroidx/compose/ui/node/a;->i:Z

    :cond_c
    iget v8, v2, Lz0/t;->n:I

    const/4 v9, -0x1

    add-int/2addr v8, v9

    iput v8, v2, Lz0/t;->n:I

    invoke-virtual {v7}, Landroidx/compose/ui/node/a;->i()Ljava/util/List;

    move-result-object v7

    check-cast v7, Lc0/a;

    invoke-virtual {v7, v12}, Lc0/a;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Landroidx/compose/ui/node/a;

    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v7, Lz0/m;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v9, La0/V;->f:La0/V;

    invoke-static {v8, v9}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v8

    iput-object v8, v7, Lz0/m;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lz0/m;->e:Z

    iput-boolean v8, v7, Lz0/m;->d:Z

    :goto_7
    if-nez v10, :cond_d

    iget v7, v2, Lz0/t;->d:I

    new-instance v8, Landroidx/compose/ui/node/a;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Landroidx/compose/ui/node/a;-><init>(IIZ)V

    iput-boolean v11, v3, Landroidx/compose/ui/node/a;->i:Z

    invoke-virtual {v3, v7, v8}, Landroidx/compose/ui/node/a;->m(ILandroidx/compose/ui/node/a;)V

    iput-boolean v10, v3, Landroidx/compose/ui/node/a;->i:Z

    move-object v7, v8

    goto :goto_8

    :cond_d
    move-object v7, v10

    :goto_8
    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    check-cast v7, Landroidx/compose/ui/node/a;

    invoke-virtual {v3}, Landroidx/compose/ui/node/a;->i()Ljava/util/List;

    move-result-object v6

    iget v8, v2, Lz0/t;->d:I

    invoke-static {v8, v6}, Lfb/n;->F(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v7, :cond_10

    invoke-virtual {v3}, Landroidx/compose/ui/node/a;->i()Ljava/util/List;

    move-result-object v6

    check-cast v6, Lc0/a;

    iget-object v6, v6, Lc0/a;->a:Lc0/d;

    invoke-virtual {v6, v7}, Lc0/d;->j(Ljava/lang/Object;)I

    move-result v6

    iget v8, v2, Lz0/t;->d:I

    if-lt v6, v8, :cond_f

    if-eq v8, v6, :cond_10

    const/4 v9, 0x1

    iput-boolean v9, v3, Landroidx/compose/ui/node/a;->i:Z

    invoke-virtual {v3, v6, v8, v9}, Landroidx/compose/ui/node/a;->q(III)V

    const/4 v6, 0x0

    iput-boolean v6, v3, Landroidx/compose/ui/node/a;->i:Z

    goto :goto_9

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Key \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\" was already used. If you are using LazyColumn/Row please make sure you provide a unique key for each item."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    :goto_9
    iget v3, v2, Lz0/t;->d:I

    const/4 v6, 0x1

    add-int/2addr v3, v6

    iput v3, v2, Lz0/t;->d:I

    iget-object v3, v2, Lz0/t;->f:Ljava/util/HashMap;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    if-nez v6, :cond_11

    new-instance v6, Lz0/m;

    sget-object v9, Lz0/f;->a:Li0/a;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v0, v6, Lz0/m;->a:Ljava/lang/Object;

    iput-object v9, v6, Lz0/m;->b:Lsb/n;

    iput-object v8, v6, Lz0/m;->c:La0/u;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v9, La0/V;->f:La0/V;

    invoke-static {v0, v9}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, v6, Lz0/m;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    check-cast v6, Lz0/m;

    iget-object v0, v6, Lz0/m;->c:La0/u;

    const/4 v3, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_13

    iget-object v10, v0, La0/u;->d:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v0, v0, La0/u;->n:LB3/c;

    iget-object v0, v0, LB3/c;->a:Ljava/lang/Object;

    check-cast v0, LN/s;

    iget v0, v0, LN/s;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_12

    move v0, v9

    goto :goto_a

    :cond_12
    move v0, v3

    :goto_a
    monitor-exit v10

    goto :goto_b

    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    :cond_13
    move v0, v9

    :goto_b
    iget-object v10, v6, Lz0/m;->b:Lsb/n;

    if-ne v10, v1, :cond_14

    if-nez v0, :cond_14

    iget-boolean v0, v6, Lz0/m;->d:Z

    if-eqz v0, :cond_15

    :cond_14
    iput-object v1, v6, Lz0/m;->b:Lsb/n;

    sget-object v0, Lk0/n;->a:LZ3/x;

    invoke-virtual {v0}, LZ3/x;->u()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk0/h;

    invoke-static {v0, v8, v3}, Lk0/n;->h(Lk0/h;Lsb/k;Z)Lk0/h;

    move-result-object v1

    :try_start_1
    invoke-virtual {v1}, Lk0/h;->j()Lk0/h;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v0, v2, Lz0/t;->a:Landroidx/compose/ui/node/a;

    iput-boolean v9, v0, Landroidx/compose/ui/node/a;->i:Z

    iget-object v10, v6, Lz0/m;->b:Lsb/n;

    iget-object v11, v6, Lz0/m;->c:La0/u;

    iget-object v2, v2, Lz0/t;->b:La0/s;

    if-eqz v2, :cond_18

    iget-boolean v12, v6, Lz0/m;->e:Z

    new-instance v13, LB1/i;

    const/4 v14, 0x6

    invoke-direct {v13, v14, v6, v10}, LB1/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Li0/a;

    const v14, -0x68551fe9

    invoke-direct {v10, v14, v9, v13}, Li0/a;-><init>(IZLdb/b;)V

    invoke-static {v11, v7, v12, v2, v10}, Lz0/t;->g(La0/u;Landroidx/compose/ui/node/a;ZLa0/s;Li0/a;)La0/u;

    move-result-object v2

    iput-object v2, v6, Lz0/m;->c:La0/u;

    iput-boolean v3, v6, Lz0/m;->e:Z

    iput-boolean v3, v0, Landroidx/compose/ui/node/a;->i:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v8}, Lk0/h;->p(Lk0/h;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v1}, Lk0/h;->c()V

    iput-boolean v3, v6, Lz0/m;->d:Z

    :cond_15
    if-eq v4, v5, :cond_17

    sget-object v0, LB0/v;->LayingOut:LB0/v;

    if-ne v4, v0, :cond_16

    goto :goto_c

    :cond_16
    invoke-virtual {v7}, Landroidx/compose/ui/node/a;->g()Ljava/util/List;

    move-result-object v0

    goto :goto_d

    :cond_17
    :goto_c
    iget-object v0, v7, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v0, v0, LB0/G;->m:LB0/F;

    invoke-virtual {v0}, LB0/F;->w()Ljava/util/List;

    move-result-object v0

    :goto_d
    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_e

    :cond_18
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "parent composition reference not set"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_e
    :try_start_5
    invoke-static {v8}, Lk0/h;->p(Lk0/h;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    invoke-virtual {v1}, Lk0/h;->c()V

    throw v0
.end method

.method public final l(IILjava/util/Map;Lsb/k;)Lz0/y;
    .locals 8

    const/high16 v0, -0x1000000

    and-int v1, p1, v0

    if-nez v1, :cond_0

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    new-instance v0, Lz0/o;

    iget-object v6, p0, Lz0/p;->d:Lz0/t;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p0

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lz0/o;-><init>(IILjava/util/Map;Lz0/p;Lz0/t;Lsb/k;)V

    return-object v0

    :cond_0
    const-string p0, "Size("

    const-string p3, " x "

    const-string p4, ") is out of range. Each dimension must be between 0 and 16777215."

    invoke-static {p1, p2, p0, p3, p4}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m()F
    .locals 0

    iget p0, p0, Lz0/p;->b:F

    return p0
.end method
