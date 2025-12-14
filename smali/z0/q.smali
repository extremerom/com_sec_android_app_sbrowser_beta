.class public final Lz0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lz0/y;

.field public final synthetic c:Lz0/t;

.field public final synthetic d:I

.field public final synthetic e:Lz0/y;


# direct methods
.method public synthetic constructor <init>(Lz0/y;Lz0/t;ILz0/y;I)V
    .locals 0

    iput p5, p0, Lz0/q;->a:I

    iput-object p2, p0, Lz0/q;->c:Lz0/t;

    iput p3, p0, Lz0/q;->d:I

    iput-object p4, p0, Lz0/q;->e:Lz0/y;

    iput-object p1, p0, Lz0/q;->b:Lz0/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    iget v0, p0, Lz0/q;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lz0/q;->b:Lz0/y;

    invoke-interface {p0}, Lz0/y;->a()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lz0/q;->b:Lz0/y;

    invoke-interface {p0}, Lz0/y;->a()Ljava/util/Map;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 12

    iget v0, p0, Lz0/q;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lz0/q;->c:Lz0/t;

    iget v1, p0, Lz0/q;->d:I

    iput v1, v0, Lz0/t;->d:I

    iget-object p0, p0, Lz0/q;->e:Lz0/y;

    invoke-interface {p0}, Lz0/y;->b()V

    iget p0, v0, Lz0/t;->d:I

    const/4 v1, 0x0

    iput v1, v0, Lz0/t;->n:I

    iget-object v2, v0, Lz0/t;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {v2}, Landroidx/compose/ui/node/a;->i()Ljava/util/List;

    move-result-object v2

    check-cast v2, Lc0/a;

    iget-object v2, v2, Lc0/a;->a:Lc0/d;

    iget v2, v2, Lc0/d;->c:I

    iget v3, v0, Lz0/t;->o:I

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-gt p0, v2, :cond_9

    iget-object v4, v0, Lz0/t;->k:Lz0/N;

    invoke-virtual {v4}, Lz0/N;->clear()V

    if-gt p0, v2, :cond_0

    move v4, p0

    :goto_0
    iget-object v5, v0, Lz0/t;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {v5}, Landroidx/compose/ui/node/a;->i()Ljava/util/List;

    move-result-object v5

    check-cast v5, Lc0/a;

    invoke-virtual {v5, v4}, Lc0/a;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/node/a;

    iget-object v6, v0, Lz0/t;->f:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v5, Lz0/m;

    iget-object v5, v5, Lz0/m;->a:Ljava/lang/Object;

    iget-object v6, v0, Lz0/t;->k:Lz0/N;

    iget-object v6, v6, Lz0/N;->a:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eq v4, v2, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lz0/t;->c:LA7/h;

    iget-object v5, v0, Lz0/t;->k:Lz0/N;

    const-string v6, "slotIds"

    invoke-static {v5, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v4, LA7/h;->b:Ljava/lang/Object;

    check-cast v6, Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v5, v5, Lz0/N;->a:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v4, LA7/h;->a:Ljava/lang/Object;

    check-cast v8, LW/h;

    invoke-virtual {v8, v7}, LW/h;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_2

    :cond_1
    move v8, v1

    :goto_2
    const/4 v9, 0x7

    if-ne v8, v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object v4, Lk0/n;->a:LZ3/x;

    invoke-virtual {v4}, LZ3/x;->u()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lk0/h;

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Lk0/n;->h(Lk0/h;Lsb/k;Z)Lk0/h;

    move-result-object v4

    :try_start_0
    invoke-virtual {v4}, Lk0/h;->j()Lk0/h;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v6, v1

    :goto_3
    if-lt v2, p0, :cond_8

    :try_start_1
    iget-object v7, v0, Lz0/t;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {v7}, Landroidx/compose/ui/node/a;->i()Ljava/util/List;

    move-result-object v7

    check-cast v7, Lc0/a;

    invoke-virtual {v7, v2}, Lc0/a;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/node/a;

    iget-object v8, v0, Lz0/t;->f:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v8, Lz0/m;

    iget-object v9, v8, Lz0/m;->a:Ljava/lang/Object;

    iget-object v10, v0, Lz0/t;->k:Lz0/N;

    iget-object v10, v10, Lz0/N;->a:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget v10, v0, Lz0/t;->n:I

    add-int/2addr v10, v3

    iput v10, v0, Lz0/t;->n:I

    iget-object v10, v8, Lz0/m;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v10}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v6, v7, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v7, v6, LB0/G;->m:LB0/F;

    sget-object v10, LB0/x;->NotUsed:LB0/x;

    iput-object v10, v7, LB0/F;->h:LB0/x;

    iget-object v6, v6, LB0/G;->n:LB0/C;

    if-eqz v6, :cond_4

    iput-object v10, v6, LB0/C;->g:LB0/x;

    :cond_4
    iget-object v6, v8, Lz0/m;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    move v6, v3

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_5
    iget-object v10, v0, Lz0/t;->a:Landroidx/compose/ui/node/a;

    iput-boolean v3, v10, Landroidx/compose/ui/node/a;->i:Z

    iget-object v11, v0, Lz0/t;->f:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v8, Lz0/m;->c:La0/u;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, La0/u;->a()V

    :cond_6
    iget-object v7, v0, Lz0/t;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {v7, v2, v3}, Landroidx/compose/ui/node/a;->u(II)V

    iput-boolean v1, v10, Landroidx/compose/ui/node/a;->i:Z

    :cond_7
    :goto_4
    iget-object v7, v0, Lz0/t;->g:Ljava/util/HashMap;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :goto_5
    :try_start_2
    invoke-static {v5}, Lk0/h;->p(Lk0/h;)V

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_8
    invoke-static {v5}, Lk0/h;->p(Lk0/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v4}, Lk0/h;->c()V

    goto :goto_7

    :goto_6
    invoke-virtual {v4}, Lk0/h;->c()V

    throw p0

    :cond_9
    move v6, v1

    :goto_7
    if-eqz v6, :cond_b

    sget-object p0, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    sget-object v2, Lk0/n;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk0/b;

    iget-object v2, v2, Lk0/c;->h:LN/v;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, LN/v;->h()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v2, v3, :cond_a

    move v1, v3

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_9

    :cond_a
    :goto_8
    monitor-exit p0

    if-eqz v1, :cond_b

    invoke-static {}, Lk0/n;->a()V

    goto :goto_a

    :goto_9
    monitor-exit p0

    throw v0

    :cond_b
    :goto_a
    invoke-virtual {v0}, Lz0/t;->d()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lz0/q;->c:Lz0/t;

    iget v1, p0, Lz0/q;->d:I

    iput v1, v0, Lz0/t;->e:I

    iget-object p0, p0, Lz0/q;->e:Lz0/y;

    invoke-interface {p0}, Lz0/y;->b()V

    iget-object p0, v0, Lz0/t;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Lm9/g;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lm9/g;-><init>(ILjava/lang/Object;)V

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Lfb/t;->s(Ljava/lang/Iterable;Lsb/k;Z)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Lz0/q;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lz0/q;->b:Lz0/y;

    invoke-interface {p0}, Lz0/y;->getHeight()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lz0/q;->b:Lz0/y;

    invoke-interface {p0}, Lz0/y;->getHeight()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lz0/q;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lz0/q;->b:Lz0/y;

    invoke-interface {p0}, Lz0/y;->getWidth()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lz0/q;->b:Lz0/y;

    invoke-interface {p0}, Lz0/y;->getWidth()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
