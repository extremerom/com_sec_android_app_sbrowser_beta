.class public final LB0/E;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LB0/E;->a:I

    iput-object p2, p0, LB0/E;->b:Ljava/lang/Object;

    iput-object p3, p0, LB0/E;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, v0, LB0/E;->a:I

    packed-switch v6, :pswitch_data_0

    iget-object v1, v0, LB0/E;->b:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    const-string v2, "applicationContext"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, LB0/E;->c:Ljava/lang/Object;

    check-cast v0, Lo1/b;

    iget-object v0, v0, Lo1/b;->a:Ljava/lang/String;

    invoke-static {v1, v0}, LA/b;->j(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v1, v0, LB0/E;->b:Ljava/lang/Object;

    check-cast v1, Ll3/d;

    iget-object v1, v1, Ll3/d;->a:Lm3/e;

    iget-object v0, v0, LB0/E;->c:Ljava/lang/Object;

    check-cast v0, Ll3/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lm3/e;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lm3/e;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v0}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lm3/e;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lm3/e;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0

    :goto_1
    monitor-exit v2

    throw v0

    :pswitch_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v2, v0, LB0/E;->c:Ljava/lang/Object;

    check-cast v2, Led/e;

    iget-object v6, v2, Led/b;->a:Led/d;

    iget-boolean v6, v6, Led/d;->m:Z

    iget-object v0, v0, LB0/E;->b:Ljava/lang/Object;

    check-cast v0, Lbd/d;

    if-eqz v6, :cond_1

    invoke-interface {v0}, Lbd/d;->d()LG5/u;

    move-result-object v6

    sget-object v7, Lbd/f;->c:Lbd/f;

    invoke-static {v6, v7}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_2

    :cond_1
    move v6, v3

    :goto_2
    invoke-static {v0, v2}, Lfd/e;->g(Lbd/d;Led/e;)V

    invoke-interface {v0}, Lbd/d;->c()I

    move-result v2

    move v7, v3

    :goto_3
    if-ge v7, v2, :cond_8

    invoke-interface {v0, v7}, Lbd/d;->f(I)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    instance-of v11, v10, Lkotlinx/serialization/json/JsonNames;

    if-eqz v11, :cond_2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    invoke-static {v9}, Lfb/n;->W(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlinx/serialization/json/JsonNames;

    const-string v9, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    if-eqz v8, :cond_5

    invoke-interface {v8}, Lkotlinx/serialization/json/JsonNames;->names()[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    array-length v10, v8

    move v11, v3

    :goto_5
    if-ge v11, v10, :cond_5

    aget-object v12, v8, v11

    if-eqz v6, :cond_4

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    invoke-static {v1, v0, v12, v7}, Lfd/e;->b(Ljava/util/LinkedHashMap;Lbd/d;Ljava/lang/String;I)V

    add-int/2addr v11, v5

    goto :goto_5

    :cond_5
    if-eqz v6, :cond_6

    invoke-interface {v0, v7}, Lbd/d;->e(I)Ljava/lang/String;

    move-result-object v8

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    move-object v8, v4

    :goto_6
    if-eqz v8, :cond_7

    invoke-static {v1, v0, v8, v7}, Lfd/e;->b(Ljava/util/LinkedHashMap;Lbd/d;Ljava/lang/String;I)V

    :cond_7
    add-int/2addr v7, v5

    goto :goto_3

    :cond_8
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v1, Lfb/w;->a:Lfb/w;

    :cond_9
    return-object v1

    :pswitch_2
    new-instance v1, Lc2/e;

    iget-object v3, v0, LB0/E;->c:Ljava/lang/Object;

    check-cast v3, Lc2/y;

    invoke-direct {v1, v3, v4}, Lc2/e;-><init>(Lc2/y;Lib/c;)V

    iget-object v0, v0, LB0/E;->b:Ljava/lang/Object;

    check-cast v0, LNc/B;

    invoke-static {v0, v4, v4, v1, v2}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0

    :pswitch_3
    sget-object v2, LNc/b0;->a:LNc/b0;

    sget-object v3, LNc/N;->a:LWc/f;

    sget-object v3, LUc/q;->a:LNc/w0;

    invoke-virtual {v3}, LNc/w0;->K()LNc/w0;

    move-result-object v3

    new-instance v5, Landroidx/lifecycle/s;

    iget-object v6, v0, LB0/E;->b:Ljava/lang/Object;

    check-cast v6, Landroidx/lifecycle/S;

    iget-object v0, v0, LB0/E;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/Y;

    invoke-direct {v5, v6, v0, v4}, Landroidx/lifecycle/s;-><init>(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;Lib/c;)V

    invoke-static {v2, v3, v4, v5, v1}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0

    :pswitch_4
    iget-object v4, v0, LB0/E;->b:Ljava/lang/Object;

    check-cast v4, LN/v;

    iget-object v6, v4, LN/v;->b:[Ljava/lang/Object;

    iget-object v4, v4, LN/v;->a:[J

    array-length v7, v4

    sub-int/2addr v7, v1

    if-ltz v7, :cond_d

    move v1, v3

    :goto_7
    aget-wide v8, v4, v1

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_c

    sub-int v10, v1, v7

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v12, v3

    :goto_8
    if-ge v12, v10, :cond_b

    const-wide/16 v13, 0xff

    and-long/2addr v13, v8

    const-wide/16 v15, 0x80

    cmp-long v13, v13, v15

    if-gez v13, :cond_a

    shl-int/lit8 v13, v1, 0x3

    add-int/2addr v13, v12

    aget-object v13, v6, v13

    iget-object v14, v0, LB0/E;->c:Ljava/lang/Object;

    check-cast v14, La0/u;

    invoke-virtual {v14, v13}, La0/u;->x(Ljava/lang/Object;)V

    :cond_a
    shr-long/2addr v8, v11

    add-int/2addr v12, v5

    goto :goto_8

    :cond_b
    if-ne v10, v11, :cond_d

    :cond_c
    if-eq v1, v7, :cond_d

    add-int/2addr v1, v5

    goto :goto_7

    :cond_d
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0

    :pswitch_5
    iget-object v1, v0, LB0/E;->b:Ljava/lang/Object;

    check-cast v1, LW/q;

    iget-object v1, v1, LW/q;->a:LV/J;

    invoke-virtual {v1}, LV/J;->c()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v0, v0, LB0/E;->c:Ljava/lang/Object;

    check-cast v0, LV/t;

    iget-object v0, v0, LV/t;->a:LW/a;

    invoke-virtual {v0}, LW/a;->getItemCount()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    goto :goto_9

    :cond_e
    iget-object v0, v1, LV/J;->a:Lcom/samsung/android/scloud/lib/setting/e;

    invoke-virtual {v0}, Lcom/samsung/android/scloud/lib/setting/e;->e()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v1, LV/J;->a:Lcom/samsung/android/scloud/lib/setting/e;

    invoke-virtual {v1}, Lcom/samsung/android/scloud/lib/setting/e;->f()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x47c35000    # 100000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    :goto_9
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-object v1, v0, LB0/E;->b:Ljava/lang/Object;

    check-cast v1, LB0/G;

    invoke-virtual {v1}, LB0/G;->a()LB0/O;

    move-result-object v2

    iget-object v2, v2, LB0/O;->k:LB0/O;

    if-eqz v2, :cond_f

    iget-object v2, v2, LB0/I;->h:Lz0/u;

    if-eqz v2, :cond_f

    iget-object v0, v0, LB0/E;->c:Ljava/lang/Object;

    check-cast v0, LB0/F;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, LB0/G;->a()LB0/O;

    move-result-object v1

    iget-wide v2, v0, LB0/F;->r:J

    const/4 v0, 0x0

    invoke-static {v1, v2, v3, v0}, Lz0/F;->d(Lz0/G;JF)V

    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0

    :cond_f
    iget-object v0, v1, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-static {v0}, LB0/d;->o(Landroidx/compose/ui/node/a;)LB0/P;

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
