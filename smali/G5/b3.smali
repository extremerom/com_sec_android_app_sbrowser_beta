.class public abstract LG5/b3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I

.field public static volatile b:LI3/d;

.field public static volatile c:LI3/c;


# direct methods
.method public static final a(Ljava/lang/Object;ILW/m;Li0/a;La0/m;I)V
    .locals 14

    move-object v0, p0

    move-object/from16 v4, p2

    const-string v1, "pinnedItemList"

    invoke-static {v4, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p4

    check-cast v1, La0/q;

    const v2, -0x7beccd10

    invoke-virtual {v1, v2}, La0/q;->S(I)La0/q;

    const v2, 0x1e7b2b64

    invoke-virtual {v1, v2}, La0/q;->R(I)V

    invoke-virtual {v1, p0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v4}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v1}, La0/q;->G()Ljava/lang/Object;

    move-result-object v3

    sget-object v5, La0/l;->a:La0/V;

    if-nez v2, :cond_0

    if-ne v3, v5, :cond_1

    :cond_0
    new-instance v3, LW/l;

    invoke-direct {v3, p0, v4}, LW/l;-><init>(Ljava/lang/Object;LW/m;)V

    invoke-virtual {v1, v3}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, La0/q;->p(Z)V

    check-cast v3, LW/l;

    iget-object v6, v3, LW/l;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v7, v3, LW/l;->e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v8, v3, LW/l;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    sget-object v6, Lz0/E;->a:La0/I;

    invoke-virtual {v1, v6}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, LW/l;

    sget-object v10, Lk0/n;->a:LZ3/x;

    invoke-virtual {v10}, LZ3/x;->u()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lk0/h;

    const/4 v11, 0x0

    invoke-static {v10, v11, v2}, Lk0/n;->h(Lk0/h;Lsb/k;Z)Lk0/h;

    move-result-object v10

    :try_start_0
    invoke-virtual {v10}, Lk0/h;->j()Lk0/h;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LW/l;

    if-eq v9, v13, :cond_4

    invoke-virtual {v8, v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v3}, LW/l;->a()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LW/l;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, LW/l;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_0
    if-eqz v9, :cond_3

    invoke-virtual {v9}, LW/l;->b()LW/l;

    goto :goto_1

    :cond_3
    move-object v9, v11

    :goto_1
    invoke-virtual {v7, v9}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :try_start_2
    invoke-static {v12}, Lk0/h;->p(Lk0/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v10}, Lk0/h;->c()V

    const v7, 0x44faf204

    invoke-virtual {v1, v7}, La0/q;->R(I)V

    invoke-virtual {v1, v3}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v1}, La0/q;->G()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_5

    if-ne v8, v5, :cond_6

    :cond_5
    new-instance v8, LB0/a;

    const/16 v5, 0xd

    invoke-direct {v8, v5, v3}, LB0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v8}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v1, v2}, La0/q;->p(Z)V

    check-cast v8, Lsb/k;

    invoke-static {v3, v8, v1}, La0/d;->c(Ljava/lang/Object;Lsb/k;La0/m;)V

    invoke-virtual {v6, v3}, La0/I;->b(Ljava/lang/Object;)La0/h0;

    move-result-object v2

    filled-new-array {v2}, [La0/h0;

    move-result-object v2

    shr-int/lit8 v3, p5, 0x6

    and-int/lit8 v3, v3, 0x70

    or-int/lit8 v3, v3, 0x8

    move-object/from16 v5, p3

    invoke-static {v2, v5, v1, v3}, La0/d;->b([La0/h0;Li0/a;La0/m;I)V

    invoke-virtual {v1}, La0/q;->r()La0/i0;

    move-result-object v7

    if-nez v7, :cond_7

    goto :goto_2

    :cond_7
    new-instance v8, LK1/f;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, LK1/f;-><init>(Ljava/lang/Object;ILW/m;Li0/a;I)V

    iput-object v8, v7, La0/i0;->d:Lsb/n;

    :goto_2
    return-void

    :goto_3
    :try_start_3
    invoke-static {v12}, Lk0/h;->p(Lk0/h;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v10}, Lk0/h;->c()V

    throw v0
.end method

.method public static b()V
    .locals 1

    sget v0, LG5/b3;->a:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    sput v0, LG5/b3;->a:I

    :cond_0
    return-void
.end method

.method public static c()I
    .locals 4

    const-string v0, "hidden_SEM_TYPE_STYLUS_DEFAULT"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "android.view.PointerIcon"

    invoke-static {v3, v0, v2}, LG5/k2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, LG5/k2;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static d()I
    .locals 4

    const-string v0, "hidden_SEM_TYPE_STYLUS_PEN_SELECT"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "android.view.PointerIcon"

    invoke-static {v3, v0, v2}, LG5/k2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, LG5/k2;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x15

    return v0
.end method

.method public static e()I
    .locals 4

    const-string v0, "hidden_SEM_TYPE_STYLUS_SCROLL_DOWN"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "android.view.PointerIcon"

    invoke-static {v3, v0, v2}, LG5/k2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, LG5/k2;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0xf

    return v0
.end method

.method public static f()I
    .locals 4

    const-string v0, "hidden_SEM_TYPE_STYLUS_SCROLL_UP"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "android.view.PointerIcon"

    invoke-static {v3, v0, v2}, LG5/k2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, LG5/k2;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0xb

    return v0
.end method
