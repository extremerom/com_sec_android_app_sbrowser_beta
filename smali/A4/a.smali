.class public final LA4/a;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LA4/a;->a:I

    iput-object p2, p0, LA4/a;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lsb/a;)V
    .locals 1

    const/16 v0, 0x1c

    iput v0, p0, LA4/a;->a:I

    check-cast p1, Ltb/j;

    iput-object p1, p0, LA4/a;->b:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    iget v0, p0, LA4/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, Lz0/L;

    invoke-virtual {p0}, Lz0/L;->a()Lz0/t;

    move-result-object p0

    iget-object v0, p0, Lz0/t;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {v0}, Landroidx/compose/ui/node/a;->i()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lc0/a;

    iget-object v1, v1, Lc0/a;->a:Lc0/d;

    iget v1, v1, Lc0/d;->c:I

    iget v2, p0, Lz0/t;->n:I

    if-eq v2, v1, :cond_1

    iget-object p0, p0, Lz0/t;->f:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz0/m;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lz0/m;->d:Z

    goto :goto_0

    :cond_0
    iget-object p0, v0, Landroidx/compose/ui/node/a;->s:LB0/G;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, Ltb/j;

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, Lw0/g;

    invoke-virtual {p0}, Lw0/g;->y()LNc/B;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, Lw0/d;

    iget-object p0, p0, Lw0/d;->c:LUc/e;

    return-object p0

    :pswitch_3
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, Lv2/e;

    iget-object p0, p0, Lv2/e;->l:LQc/m0;

    sget-object v0, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, v0}, LQc/m0;->a(Ljava/lang/Object;)Z

    return-object v0

    :pswitch_4
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, Lv2/T;

    iget-object p0, p0, Lv2/T;->b:LA7/c;

    iget-object p0, p0, LA7/c;->b:Ljava/lang/Object;

    check-cast p0, LG5/g4;

    iget-object p0, p0, LG5/g4;->c:Ljava/lang/Object;

    check-cast p0, Lv2/y;

    invoke-virtual {p0}, Lv2/y;->b()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lfb/n;->E(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lv2/a0;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    instance-of v1, p0, Lv2/Y;

    if-eqz v1, :cond_2

    check-cast p0, Lv2/Y;

    sget-object v1, Lv2/P;->REFRESH:Lv2/P;

    iget-object v2, p0, Lv2/Y;->a:Lv2/P;

    if-ne v2, v1, :cond_2

    move-object v0, p0

    :cond_2
    return-object v0

    :pswitch_5
    const-string v0, "There are multiple DataStores active for the same file: "

    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, Lm1/G;

    iget-object p0, p0, Lm1/G;->a:Ltb/m;

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lm1/G;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lm1/G;->j:Ljava/util/LinkedHashSet;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v0, "it"

    invoke-static {v1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore\'s active on the same file (by confirming that the scope is cancelled)."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v2

    throw p0

    :pswitch_6
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, Lld/k;

    iget-object p0, p0, Lld/k;->e:Lhd/w;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lhd/w;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    const-string v2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v0

    :pswitch_7
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, [LQc/h;

    array-length p0, p0

    new-array p0, p0, [Lk3/c;

    return-object p0

    :pswitch_8
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, Lj0/b;

    iget-object v0, p0, Lj0/b;->a:Lo3/c;

    iget-object v1, p0, Lj0/b;->d:Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget-object v0, v0, Lo3/c;->a:Ljava/lang/Object;

    check-cast v0, Ltb/m;

    invoke-interface {v0, p0, v1}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Value should be initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_9
    invoke-static {}, LNc/E;->d()LNc/m0;

    move-result-object v0

    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/glance/session/SessionWorker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_a
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lc2/j;

    iget-object p0, v3, Lc2/j;->e:Lsb/a;

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    new-instance v1, Ltb/v;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ltb/v;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object p0, v3, Lc2/j;->g:Ljava/lang/Object;

    monitor-enter p0

    :try_start_2
    iget-wide v6, v3, Lc2/j;->i:J

    sub-long v6, v4, v6

    iput-wide v6, v1, Ltb/v;->a:J

    iget v0, v3, Lc2/j;->h:I

    int-to-long v6, v0

    const-wide/32 v8, 0x3b9aca00

    div-long/2addr v8, v6

    iput-wide v8, v2, Ltb/v;->a:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    iget-object p0, v3, Lc2/j;->a:LNc/B;

    new-instance v7, Lc2/h;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lc2/h;-><init>(Ltb/v;Ltb/v;Lc2/j;JLib/c;)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, v7, v0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_b
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/y0;

    invoke-static {p0}, Landroidx/lifecycle/l0;->j(Landroidx/lifecycle/y0;)Landroidx/lifecycle/n0;

    move-result-object p0

    return-object p0

    :pswitch_c
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/j;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/lifecycle/j;->a:Landroidx/lifecycle/d;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_d
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, La0/p0;

    iget-object v0, p0, La0/p0;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, La0/p0;->t()LNc/j;

    move-result-object v1

    iget-object v2, p0, La0/p0;->s:LQc/A0;

    invoke-virtual {v2}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La0/j0;

    sget-object v3, La0/j0;->ShuttingDown:La0/j0;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-lez v2, :cond_7

    monitor-exit v0

    if-eqz v1, :cond_6

    sget-object p0, Ldb/r;->a:Ldb/r;

    check-cast v1, LNc/k;

    invoke-virtual {v1, p0}, LNc/k;->resumeWith(Ljava/lang/Object;)V

    :cond_6
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_7
    :try_start_4
    const-string v1, "Recomposer shutdown; frame clock awaiter will never resume"

    iget-object p0, p0, La0/p0;->e:Ljava/lang/Throwable;

    invoke-static {v1, p0}, LNc/E;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0

    :pswitch_e
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, La0/d0;

    iget-object v0, p0, La0/d0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, LN/s;

    invoke-direct {v1, v0}, LN/s;-><init>(I)V

    iget-object p0, p0, La0/d0;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    if-ge v3, v0, :cond_f

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La0/Q;

    iget-object v5, v4, La0/Q;->b:Ljava/lang/Object;

    iget v6, v4, La0/Q;->a:I

    if-eqz v5, :cond_8

    new-instance v5, La0/P;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v4, La0/Q;->b:Ljava/lang/Object;

    invoke-direct {v5, v6, v7}, La0/P;-><init>(Ljava/lang/Integer;Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_4
    invoke-virtual {v1, v5}, LN/s;->c(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_9

    const/4 v7, 0x1

    goto :goto_5

    :cond_9
    move v7, v2

    :goto_5
    if-eqz v7, :cond_a

    const/4 v8, 0x0

    goto :goto_6

    :cond_a
    iget-object v8, v1, LN/s;->c:[Ljava/lang/Object;

    aget-object v8, v8, v6

    :goto_6
    if-nez v8, :cond_b

    goto :goto_7

    :cond_b
    instance-of v9, v8, Ljava/util/List;

    if-eqz v9, :cond_d

    instance-of v9, v8, Lub/a;

    if-eqz v9, :cond_c

    instance-of v9, v8, Lub/c;

    if-eqz v9, :cond_d

    :cond_c
    invoke-static {v8}, Ltb/z;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v4, v8

    goto :goto_7

    :cond_d
    filled-new-array {v8, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lfb/o;->i([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    :goto_7
    if-eqz v7, :cond_e

    not-int v6, v6

    iget-object v7, v1, LN/s;->b:[Ljava/lang/Object;

    aput-object v5, v7, v6

    iget-object v5, v1, LN/s;->c:[Ljava/lang/Object;

    aput-object v4, v5, v6

    goto :goto_8

    :cond_e
    iget-object v5, v1, LN/s;->c:[Ljava/lang/Object;

    aput-object v4, v5, v6

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_f
    new-instance p0, La0/Z;

    invoke-direct {p0, v1}, La0/Z;-><init>(LN/s;)V

    return-object p0

    :pswitch_f
    new-instance v0, LW/y;

    sget-object v1, Lfb/w;->a:Lfb/w;

    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, Lj0/k;

    invoke-direct {v0, p0, v1}, LW/y;-><init>(Lj0/k;Ljava/util/Map;)V

    return-object v0

    :pswitch_10
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, Lsb/a;

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    div-int/2addr p0, v0

    mul-int/2addr p0, v0

    sub-int v2, p0, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr p0, v0

    add-int/2addr p0, v1

    invoke-static {v2, p0}, LG5/d3;->l(II)Lzb/d;

    move-result-object p0

    return-object p0

    :pswitch_11
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, LW/q;

    iget-object p0, p0, LW/q;->a:LV/J;

    iget-object v0, p0, LV/J;->a:Lcom/samsung/android/scloud/lib/setting/e;

    invoke-virtual {v0}, Lcom/samsung/android/scloud/lib/setting/e;->e()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, LV/J;->a:Lcom/samsung/android/scloud/lib/setting/e;

    invoke-virtual {p0}, Lcom/samsung/android/scloud/lib/setting/e;->f()I

    move-result p0

    int-to-float p0, p0

    const v1, 0x47c35000    # 100000.0f

    div-float/2addr p0, v1

    add-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_12
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, LV/J;

    iget-object p0, p0, LV/J;->a:Lcom/samsung/android/scloud/lib/setting/e;

    invoke-virtual {p0}, Lcom/samsung/android/scloud/lib/setting/e;->e()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_13
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, LS/e;

    iget-object v0, p0, LS/e;->e:Lo3/f;

    iget-object v1, v0, Lo3/f;->b:Ljava/lang/Object;

    check-cast v1, Lc0/d;

    invoke-virtual {v1}, Lc0/d;->m()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    iget-object p0, v0, Lo3/f;->b:Ljava/lang/Object;

    check-cast p0, Lc0/d;

    invoke-virtual {p0}, Lc0/d;->l()Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lc0/d;->c:I

    sub-int/2addr v0, v2

    iget-object p0, p0, Lc0/d;->a:[Ljava/lang/Object;

    aget-object p0, p0, v0

    invoke-static {p0}, LB/e;->l(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0

    :cond_10
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "MutableVector is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    iget-boolean v0, p0, LS/e;->i:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0}, LS/e;->c()Lr0/c;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-wide v3, p0, LS/e;->j:J

    invoke-virtual {p0, v0, v3, v4}, LS/e;->j(Lr0/c;J)Z

    move-result v0

    if-ne v0, v2, :cond_12

    const/4 v0, 0x0

    iput-boolean v0, p0, LS/e;->i:Z

    :cond_12
    invoke-static {p0}, LS/e;->b(LS/e;)F

    move-result v0

    iget-object p0, p0, LS/e;->l:LS/p0;

    iput v0, p0, LS/p0;->d:F

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_14
    new-instance v0, LM1/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LM1/b;-><init>(I)V

    new-instance v1, Ldb/j;

    new-instance v2, Landroid/util/SizeF;

    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, LG5/y;

    invoke-virtual {p0}, LG5/y;->h()F

    move-result v3

    invoke-virtual {p0}, LG5/y;->c()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/SizeF;-><init>(FF)V

    new-instance v3, Landroid/util/SizeF;

    invoke-virtual {p0}, LG5/y;->i()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    invoke-virtual {p0}, LG5/y;->d()F

    move-result v6

    sub-float/2addr v6, v5

    invoke-direct {v3, v4, v6}, Landroid/util/SizeF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Ldb/j;

    invoke-direct {v7, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, LM1/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LM1/b;-><init>(I)V

    new-instance v1, Ldb/j;

    new-instance v2, Landroid/util/SizeF;

    invoke-virtual {p0}, LG5/y;->i()F

    move-result v3

    invoke-virtual {p0}, LG5/y;->c()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/SizeF;-><init>(FF)V

    new-instance v3, Landroid/util/SizeF;

    invoke-virtual {p0}, LG5/y;->j()F

    move-result v4

    sub-float/2addr v4, v5

    invoke-virtual {p0}, LG5/y;->d()F

    move-result v6

    sub-float/2addr v6, v5

    invoke-direct {v3, v4, v6}, Landroid/util/SizeF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Ldb/j;

    invoke-direct {v8, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, LM1/b;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, LM1/b;-><init>(I)V

    new-instance v1, Ldb/j;

    new-instance v2, Landroid/util/SizeF;

    invoke-virtual {p0}, LG5/y;->i()F

    move-result v3

    invoke-virtual {p0}, LG5/y;->d()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/SizeF;-><init>(FF)V

    new-instance v3, Landroid/util/SizeF;

    invoke-virtual {p0}, LG5/y;->j()F

    move-result v4

    sub-float/2addr v4, v5

    invoke-virtual {p0}, LG5/y;->e()F

    move-result v6

    sub-float/2addr v6, v5

    invoke-direct {v3, v4, v6}, Landroid/util/SizeF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Ldb/j;

    invoke-direct {v9, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, LM1/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LM1/b;-><init>(I)V

    new-instance v1, Ldb/j;

    new-instance v2, Landroid/util/SizeF;

    invoke-virtual {p0}, LG5/y;->j()F

    move-result v3

    invoke-virtual {p0}, LG5/y;->c()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/SizeF;-><init>(FF)V

    new-instance v3, Landroid/util/SizeF;

    invoke-virtual {p0}, LG5/y;->k()F

    move-result v4

    invoke-virtual {p0}, LG5/y;->d()F

    move-result v6

    sub-float/2addr v6, v5

    invoke-direct {v3, v4, v6}, Landroid/util/SizeF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Ldb/j;

    invoke-direct {v10, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, LM1/b;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, LM1/b;-><init>(I)V

    new-instance v1, Ldb/j;

    new-instance v2, Landroid/util/SizeF;

    invoke-virtual {p0}, LG5/y;->j()F

    move-result v3

    invoke-virtual {p0}, LG5/y;->d()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/SizeF;-><init>(FF)V

    new-instance v3, Landroid/util/SizeF;

    invoke-virtual {p0}, LG5/y;->k()F

    move-result v4

    invoke-virtual {p0}, LG5/y;->e()F

    move-result v6

    sub-float/2addr v6, v5

    invoke-direct {v3, v4, v6}, Landroid/util/SizeF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Ldb/j;

    invoke-direct {v11, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, LM1/b;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, LM1/b;-><init>(I)V

    new-instance v1, Ldb/j;

    new-instance v2, Landroid/util/SizeF;

    invoke-virtual {p0}, LG5/y;->j()F

    move-result v3

    invoke-virtual {p0}, LG5/y;->e()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/SizeF;-><init>(FF)V

    new-instance v3, Landroid/util/SizeF;

    invoke-virtual {p0}, LG5/y;->k()F

    move-result v4

    invoke-virtual {p0}, LG5/y;->f()F

    move-result v6

    sub-float/2addr v6, v5

    invoke-direct {v3, v4, v6}, Landroid/util/SizeF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Ldb/j;

    invoke-direct {v12, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, LM1/b;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, LM1/b;-><init>(I)V

    new-instance v1, Ldb/j;

    new-instance v2, Landroid/util/SizeF;

    invoke-virtual {p0}, LG5/y;->j()F

    move-result v3

    invoke-virtual {p0}, LG5/y;->f()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/SizeF;-><init>(FF)V

    new-instance v3, Landroid/util/SizeF;

    invoke-virtual {p0}, LG5/y;->k()F

    move-result v4

    invoke-virtual {p0}, LG5/y;->g()F

    move-result p0

    invoke-direct {v3, v4, p0}, Landroid/util/SizeF;-><init>(FF)V

    invoke-direct {v1, v2, v3}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Ldb/j;

    invoke-direct {v13, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v7 .. v13}, [Ldb/j;

    move-result-object p0

    invoke-static {p0}, Lfb/B;->k([Ldb/j;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_15
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, LJ0/o;

    invoke-virtual {p0}, LJ0/o;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_16
    new-instance v0, Lgb/f;

    invoke-direct {v0}, Lgb/f;-><init>()V

    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, LD4/d;

    iget-object p0, p0, LD4/d;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/appfunctions/internal/AggregateAppFunctionInventory;

    invoke-virtual {p0}, Lcom/google/android/appfunctions/internal/AggregateAppFunctionInventory;->a()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/appfunctions/AppFunctionMetadata;

    iget-object v2, v1, Lcom/google/android/appfunctions/AppFunctionMetadata;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lgb/f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_13
    invoke-virtual {v0}, Lgb/f;->b()Lgb/f;

    move-result-object p0

    return-object p0

    :pswitch_17
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, LB0/O;

    iget-object p0, p0, LB0/O;->k:LB0/O;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, LB0/O;->J()V

    :cond_14
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_18
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, LB0/G;

    invoke-virtual {p0}, LB0/G;->a()LB0/O;

    move-result-object v0

    iget-wide v1, p0, LB0/G;->o:J

    invoke-interface {v0, v1, v2}, Lz0/w;->o(J)Lz0/G;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_19
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, LB0/F;

    iget-object v0, p0, LB0/F;->s:LB0/G;

    const/4 v1, 0x0

    iput v1, v0, LB0/G;->i:I

    iget-object v0, v0, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {v0}, Landroidx/compose/ui/node/a;->l()Lc0/d;

    move-result-object v0

    iget v2, v0, Lc0/d;->c:I

    const v3, 0x7fffffff

    if-lez v2, :cond_17

    iget-object v0, v0, Lc0/d;->a:[Ljava/lang/Object;

    move v4, v1

    :cond_15
    aget-object v5, v0, v4

    check-cast v5, Landroidx/compose/ui/node/a;

    iget-object v5, v5, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v5, v5, LB0/G;->m:LB0/F;

    iget v6, v5, LB0/F;->g:I

    iput v6, v5, LB0/F;->f:I

    iput v3, v5, LB0/F;->g:I

    iget-object v6, v5, LB0/F;->h:LB0/x;

    sget-object v7, LB0/x;->InLayoutBlock:LB0/x;

    if-ne v6, v7, :cond_16

    sget-object v6, LB0/x;->NotUsed:LB0/x;

    iput-object v6, v5, LB0/F;->h:LB0/x;

    :cond_16
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v2, :cond_15

    :cond_17
    iget-object v0, p0, LB0/F;->s:LB0/G;

    iget-object v2, v0, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {v2}, Landroidx/compose/ui/node/a;->l()Lc0/d;

    move-result-object v2

    iget v4, v2, Lc0/d;->c:I

    if-lez v4, :cond_19

    iget-object v2, v2, Lc0/d;->a:[Ljava/lang/Object;

    move v5, v1

    :cond_18
    aget-object v6, v2, v5

    check-cast v6, Landroidx/compose/ui/node/a;

    iget-object v6, v6, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v6, v6, LB0/G;->m:LB0/F;

    iget-object v6, v6, LB0/F;->m:LB0/z;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v4, :cond_18

    :cond_19
    invoke-virtual {p0}, LB0/F;->n()LB0/m;

    move-result-object p0

    invoke-virtual {p0}, LB0/O;->A()Lz0/y;

    move-result-object p0

    invoke-interface {p0}, Lz0/y;->b()V

    iget-object p0, v0, LB0/G;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->l()Lc0/d;

    move-result-object v0

    iget v2, v0, Lc0/d;->c:I

    if-lez v2, :cond_1c

    iget-object v0, v0, Lc0/d;->a:[Ljava/lang/Object;

    move v4, v1

    :cond_1a
    aget-object v5, v0, v4

    check-cast v5, Landroidx/compose/ui/node/a;

    iget-object v6, v5, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v6, v6, LB0/G;->m:LB0/F;

    iget v6, v6, LB0/F;->f:I

    invoke-virtual {v5}, Landroidx/compose/ui/node/a;->k()I

    move-result v7

    if-eq v6, v7, :cond_1b

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->s()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->n()V

    invoke-virtual {v5}, Landroidx/compose/ui/node/a;->k()I

    move-result v6

    if-ne v6, v3, :cond_1b

    iget-object v5, v5, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v5, v5, LB0/G;->m:LB0/F;

    invoke-virtual {v5}, LB0/F;->y()V

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v2, :cond_1a

    :cond_1c
    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->l()Lc0/d;

    move-result-object p0

    iget v0, p0, Lc0/d;->c:I

    if-lez v0, :cond_1e

    iget-object p0, p0, Lc0/d;->a:[Ljava/lang/Object;

    move v2, v1

    :cond_1d
    aget-object v3, p0, v2

    check-cast v3, Landroidx/compose/ui/node/a;

    iget-object v3, v3, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v3, v3, LB0/G;->m:LB0/F;

    iget-object v3, v3, LB0/F;->m:LB0/z;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v1, v3, LB0/z;->c:Z

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_1d

    :cond_1e
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1a
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/a;

    iget-object p0, p0, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v0, p0, LB0/G;->m:LB0/F;

    const/4 v1, 0x1

    iput-boolean v1, v0, LB0/F;->o:Z

    iget-object p0, p0, LB0/G;->n:LB0/C;

    if-eqz p0, :cond_1f

    iput-boolean v1, p0, LB0/C;->n:Z

    :cond_1f
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1b
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/appfunctions/internal/AggregateAppFunctionInvoker;

    iget-object p0, p0, Lcom/google/android/appfunctions/internal/AggregateAppFunctionInvoker;->a:Lcom/google/android/appfunctions/internal/ClassRegistry;

    invoke-interface {p0}, Lcom/google/android/appfunctions/internal/ClassRegistry;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/appfunctions/internal/AppFunctionInvoker;

    invoke-interface {v1}, Lcom/google/android/appfunctions/internal/AppFunctionInvoker;->b()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_20
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    check-cast v0, Ljava/util/Set;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lfb/F;->e(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    goto :goto_b

    :cond_21
    check-cast v0, Ljava/util/Set;

    return-object v0

    :cond_22
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Empty collection can\'t be reduced."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1c
    iget-object p0, p0, LA4/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/appfunctions/internal/AggregateAppFunctionInventory;

    iget-object p0, p0, Lcom/google/android/appfunctions/internal/AggregateAppFunctionInventory;->a:Lcom/google/android/appfunctions/internal/ClassRegistry;

    invoke-interface {p0}, Lcom/google/android/appfunctions/internal/ClassRegistry;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/appfunctions/internal/AppFunctionInventory;

    invoke-interface {v1}, Lcom/google/android/appfunctions/internal/AppFunctionInventory;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    check-cast v0, Ljava/util/Map;

    const-string v2, "<this>"

    invoke-static {v0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "map"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    move-object v0, v2

    goto :goto_d

    :cond_24
    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_25
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Empty collection can\'t be reduced."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
