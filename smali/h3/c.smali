.class public final Lh3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/f;
.implements Lk3/e;
.implements Lg3/b;


# static fields
.field public static final o:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/HashMap;

.field public final c:Lh3/a;

.field public d:Z

.field public final e:Ljava/lang/Object;

.field public final f:Lo3/e;

.field public final g:Lg3/d;

.field public final h:Lo3/l;

.field public final i:Lf3/c;

.field public final j:Ljava/util/HashMap;

.field public k:Ljava/lang/Boolean;

.field public final l:LP7/c;

.field public final m:Lr3/a;

.field public final n:LU3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GreedyScheduler"

    invoke-static {v0}, Lf3/u;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lh3/c;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf3/c;Lm3/j;Lg3/d;Lo3/l;Lr3/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lh3/c;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lh3/c;->e:Ljava/lang/Object;

    new-instance v0, Lo3/e;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lo3/e;-><init>(I)V

    iput-object v0, p0, Lh3/c;->f:Lo3/e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lh3/c;->j:Ljava/util/HashMap;

    iput-object p1, p0, Lh3/c;->a:Landroid/content/Context;

    iget-object p1, p2, Lf3/c;->f:LX4/i;

    new-instance v0, Lh3/a;

    iget-object v1, p2, Lf3/c;->c:Lf3/w;

    invoke-direct {v0, p0, p1, v1}, Lh3/a;-><init>(Lh3/c;LX4/i;Lf3/w;)V

    iput-object v0, p0, Lh3/c;->c:Lh3/a;

    new-instance v0, LU3/c;

    invoke-direct {v0, p1, p5}, LU3/c;-><init>(LX4/i;Lo3/l;)V

    iput-object v0, p0, Lh3/c;->n:LU3/c;

    iput-object p6, p0, Lh3/c;->m:Lr3/a;

    new-instance p1, LP7/c;

    invoke-direct {p1, p3}, LP7/c;-><init>(Lm3/j;)V

    iput-object p1, p0, Lh3/c;->l:LP7/c;

    iput-object p2, p0, Lh3/c;->i:Lf3/c;

    iput-object p4, p0, Lh3/c;->g:Lg3/d;

    iput-object p5, p0, Lh3/c;->h:Lo3/l;

    return-void
.end method


# virtual methods
.method public final varargs a([Lo3/q;)V
    .locals 14

    const/4 v0, 0x1

    iget-object v1, p0, Lh3/c;->k:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    sget v1, Lp3/m;->a:I

    const-string v1, "context"

    iget-object v2, p0, Lh3/c;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "configuration"

    iget-object v3, p0, Lh3/c;->i:Lf3/c;

    invoke-static {v3, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lp3/a;->a:Lp3/a;

    invoke-virtual {v1}, Lp3/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lh3/c;->k:Ljava/lang/Boolean;

    :cond_0
    iget-object v1, p0, Lh3/c;->k:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object p0

    sget-object p1, Lh3/c;->o:Ljava/lang/String;

    const-string v0, "Ignoring schedule request in a secondary process"

    invoke-virtual {p0, p1, v0}, Lf3/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lh3/c;->d:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lh3/c;->g:Lg3/d;

    invoke-virtual {v1, p0}, Lg3/d;->a(Lg3/b;)V

    iput-boolean v0, p0, Lh3/c;->d:Z

    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_b

    aget-object v6, p1, v5

    invoke-static {v6}, LAd/a;->a(Lo3/q;)Lo3/j;

    move-result-object v7

    iget-object v8, p0, Lh3/c;->f:Lo3/e;

    invoke-virtual {v8, v7}, Lo3/e;->f(Lo3/j;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v7, p0, Lh3/c;->e:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-static {v6}, LAd/a;->a(Lo3/q;)Lo3/j;

    move-result-object v8

    iget-object v9, p0, Lh3/c;->j:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lh3/b;

    if-nez v9, :cond_4

    new-instance v9, Lh3/b;

    iget v10, v6, Lo3/q;->k:I

    iget-object v11, p0, Lh3/c;->i:Lf3/c;

    iget-object v11, v11, Lf3/c;->c:Lf3/w;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-direct {v9, v10, v11, v12}, Lh3/b;-><init>(IJ)V

    iget-object v10, p0, Lh3/c;->j:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_4
    :goto_1
    iget-wide v10, v9, Lh3/b;->b:J

    iget v8, v6, Lo3/q;->k:I

    iget v9, v9, Lh3/b;->a:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x5

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v8, v8

    const-wide/16 v12, 0x7530

    mul-long/2addr v8, v12

    add-long/2addr v8, v10

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Lo3/q;->a()J

    move-result-wide v10

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v9, p0, Lh3/c;->i:Lf3/c;

    iget-object v9, v9, Lf3/c;->c:Lf3/w;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, v6, Lo3/q;->b:Lf3/E;

    sget-object v12, Lf3/E;->ENQUEUED:Lf3/E;

    if-ne v11, v12, :cond_a

    cmp-long v9, v9, v7

    if-gez v9, :cond_6

    iget-object v9, p0, Lh3/c;->c:Lh3/a;

    if-eqz v9, :cond_a

    iget-object v10, v9, Lh3/a;->d:Ljava/util/HashMap;

    iget-object v11, v6, Lo3/q;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Runnable;

    iget-object v12, v9, Lh3/a;->b:LX4/i;

    if-eqz v11, :cond_5

    iget-object v13, v12, LX4/i;->b:Ljava/lang/Object;

    check-cast v13, Landroid/os/Handler;

    invoke-virtual {v13, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    new-instance v11, Lc5/A;

    const/16 v13, 0x8

    invoke-direct {v11, v13, v9, v6}, Lc5/A;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v6, v6, Lo3/q;->a:Ljava/lang/String;

    invoke-virtual {v10, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v9, Lh3/a;->c:Lf3/w;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v7, v9

    iget-object v6, v12, LX4/i;->b:Ljava/lang/Object;

    check-cast v6, Landroid/os/Handler;

    invoke-virtual {v6, v11, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v6}, Lo3/q;->c()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, v6, Lo3/q;->j:Lf3/f;

    iget-boolean v8, v7, Lf3/f;->c:Z

    if-eqz v8, :cond_7

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v7

    sget-object v8, Lh3/c;->o:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Ignoring "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ". Requires device idle."

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-virtual {v7}, Lf3/f;->a()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v7

    sget-object v8, Lh3/c;->o:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Ignoring "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ". Requires ContentUri triggers."

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v6, v6, Lo3/q;->a:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    iget-object v7, p0, Lh3/c;->f:Lo3/e;

    invoke-static {v6}, LAd/a;->a(Lo3/q;)Lo3/j;

    move-result-object v8

    invoke-virtual {v7, v8}, Lo3/e;->f(Lo3/j;)Z

    move-result v7

    if-nez v7, :cond_a

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v7

    sget-object v8, Lh3/c;->o:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Starting work for "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v6, Lo3/q;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lh3/c;->f:Lo3/e;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, LAd/a;->a(Lo3/q;)Lo3/j;

    move-result-object v6

    invoke-virtual {v7, v6}, Lo3/e;->o(Lo3/j;)Lg3/i;

    move-result-object v6

    iget-object v7, p0, Lh3/c;->n:LU3/c;

    invoke-virtual {v7, v6}, LU3/c;->c(Lg3/i;)V

    iget-object v7, p0, Lh3/c;->h:Lo3/l;

    new-instance v8, LN3/g;

    iget-object v9, v7, Lo3/l;->a:Ljava/lang/Object;

    check-cast v9, Lg3/d;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v6, v10}, LN3/g;-><init>(Lg3/d;Lg3/i;LZ3/x;)V

    iget-object v6, v7, Lo3/l;->b:Ljava/lang/Object;

    check-cast v6, Lr3/a;

    invoke-virtual {v6, v8}, Lr3/a;->a(Ljava/lang/Runnable;)V

    :cond_a
    :goto_2
    add-int/2addr v5, v0

    goto/16 :goto_0

    :goto_3
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_b
    iget-object p1, p0, Lh3/c;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, ","

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v2

    sget-object v3, Lh3/c;->o:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting tracking for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo3/q;

    invoke-static {v1}, LAd/a;->a(Lo3/q;)Lo3/j;

    move-result-object v2

    iget-object v3, p0, Lh3/c;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lh3/c;->l:LP7/c;

    iget-object v4, p0, Lh3/c;->m:Lr3/a;

    iget-object v4, v4, Lr3/a;->b:LNc/x;

    invoke-static {v3, v1, v4, p0}, Lk3/h;->a(LP7/c;Lo3/q;LNc/x;Lk3/e;)LNc/m0;

    move-result-object v1

    iget-object v3, p0, Lh3/c;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_d
    monitor-exit p1

    return-void

    :goto_5
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lh3/c;->k:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget v0, Lp3/m;->a:I

    iget-object v0, p0, Lh3/c;->a:Landroid/content/Context;

    const-string v1, "context"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "configuration"

    iget-object v2, p0, Lh3/c;->i:Lf3/c;

    invoke-static {v2, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lp3/a;->a:Lp3/a;

    invoke-virtual {v1}, Lp3/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lh3/c;->k:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lh3/c;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lh3/c;->o:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object p0

    const-string p1, "Ignoring schedule request in non-main process"

    invoke-virtual {p0, v1, p1}, Lf3/u;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lh3/c;->d:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lh3/c;->g:Lg3/d;

    invoke-virtual {v0, p0}, Lg3/d;->a(Lg3/b;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh3/c;->d:Z

    :cond_2
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cancelling work ID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lh3/c;->c:Lh3/a;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lh3/a;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lh3/a;->b:LX4/i;

    iget-object v0, v0, LX4/i;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v0, p0, Lh3/c;->f:Lo3/e;

    invoke-virtual {v0, p1}, Lo3/e;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg3/i;

    iget-object v1, p0, Lh3/c;->n:LU3/c;

    invoke-virtual {v1, v0}, LU3/c;->a(Lg3/i;)V

    iget-object v1, p0, Lh3/c;->h:Lo3/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, -0x200

    invoke-virtual {v1, v0, v2}, Lo3/l;->z0(Lg3/i;I)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final c(Lo3/j;Z)V
    .locals 5

    iget-object v0, p0, Lh3/c;->f:Lo3/e;

    invoke-virtual {v0, p1}, Lo3/e;->m(Lo3/j;)Lg3/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lh3/c;->n:LU3/c;

    invoke-virtual {v1, v0}, LU3/c;->a(Lg3/i;)V

    :cond_0
    iget-object v0, p0, Lh3/c;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lh3/c;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LNc/j0;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    sget-object v2, Lh3/c;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Stopping tracking for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {v1, v0}, LNc/j0;->a(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    if-nez p2, :cond_2

    iget-object p2, p0, Lh3/c;->e:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    iget-object p0, p0, Lh3/c;->j:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e(Lo3/q;Lk3/c;)V
    .locals 6

    invoke-static {p1}, LAd/a;->a(Lo3/q;)Lo3/j;

    move-result-object p1

    instance-of v0, p2, Lk3/a;

    iget-object v1, p0, Lh3/c;->h:Lo3/l;

    iget-object v2, p0, Lh3/c;->n:LU3/c;

    sget-object v3, Lh3/c;->o:Ljava/lang/String;

    iget-object p0, p0, Lh3/c;->f:Lo3/e;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lo3/e;->f(Lo3/j;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Constraints met: Scheduling work ID "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lo3/e;->o(Lo3/j;)Lg3/i;

    move-result-object p0

    invoke-virtual {v2, p0}, LU3/c;->c(Lg3/i;)V

    new-instance p1, LN3/g;

    iget-object p2, v1, Lo3/l;->a:Ljava/lang/Object;

    check-cast p2, Lg3/d;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, LN3/g;-><init>(Lg3/d;Lg3/i;LZ3/x;)V

    iget-object p0, v1, Lo3/l;->b:Ljava/lang/Object;

    check-cast p0, Lr3/a;

    invoke-virtual {p0, p1}, Lr3/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Constraints not met: Cancelling work ID "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lo3/e;->m(Lo3/j;)Lg3/i;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v2, p0}, LU3/c;->a(Lg3/i;)V

    check-cast p2, Lk3/b;

    iget p1, p2, Lk3/b;->a:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p0, p1}, Lo3/l;->z0(Lg3/i;I)V

    :cond_1
    :goto_0
    return-void
.end method
