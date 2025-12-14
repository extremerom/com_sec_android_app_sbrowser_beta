.class public final Landroidx/work/impl/WorkDatabase_Impl;
.super Landroidx/work/impl/WorkDatabase;
.source "SourceFile"


# instance fields
.field public volatile a:Lo3/r;

.field public volatile b:Lo3/c;

.field public volatile c:Lo3/t;

.field public volatile d:Lo3/i;

.field public volatile e:Lo3/l;

.field public volatile f:Lo3/n;

.field public volatile g:Lo3/e;

.field public volatile h:Lo3/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase;-><init>()V

    return-void
.end method

.method public static synthetic j(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LJ2/U;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic k(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LJ2/U;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic l(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LJ2/U;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic m(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LJ2/U;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic n(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LJ2/U;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic o(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LJ2/U;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic p(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LJ2/U;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic q(Landroidx/work/impl/WorkDatabase_Impl;LU2/c;)V
    .locals 0

    iput-object p1, p0, LJ2/U;->mDatabase:LT2/a;

    return-void
.end method

.method public static synthetic r(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LJ2/U;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic s(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, LJ2/U;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final b()Lo3/c;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->b:Lo3/c;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->b:Lo3/c;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->b:Lo3/c;

    if-nez v0, :cond_1

    new-instance v0, Lo3/c;

    invoke-direct {v0, p0}, Lo3/c;-><init>(Landroidx/work/impl/WorkDatabase_Impl;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->b:Lo3/c;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->b:Lo3/c;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Lo3/e;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Lo3/e;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Lo3/e;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Lo3/e;

    if-nez v0, :cond_1

    new-instance v0, Lo3/e;

    invoke-direct {v0, p0}, Lo3/e;-><init>(Landroidx/work/impl/WorkDatabase_Impl;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Lo3/e;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->g:Lo3/e;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final createInvalidationTracker()LJ2/s;
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    new-instance v1, LJ2/s;

    const-string v6, "SystemIdInfo"

    const-string v7, "WorkName"

    const-string v3, "Dependency"

    const-string v4, "WorkSpec"

    const-string v5, "WorkTag"

    const-string v8, "WorkProgress"

    const-string v9, "Preference"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, LJ2/s;-><init>(LJ2/U;Ljava/util/HashMap;Ljava/util/HashMap;[Ljava/lang/String;)V

    return-object v1
.end method

.method public final createOpenHelper(LJ2/c;)LT2/e;
    .locals 6

    new-instance v3, LJ2/c0;

    new-instance v0, LB3/c;

    invoke-direct {v0, p0}, LB3/c;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, p1, v0}, LJ2/c0;-><init>(LJ2/c;LB3/c;)V

    iget-object v1, p1, LJ2/c;->a:Landroid/content/Context;

    const-string p0, "context"

    invoke-static {v1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LT2/c;

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v2, p1, LJ2/c;->b:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, LT2/c;-><init>(Landroid/content/Context;Ljava/lang/String;LT2/b;ZZ)V

    iget-object p1, p1, LJ2/c;->c:LT2/d;

    invoke-interface {p1, p0}, LT2/d;->d(LT2/c;)LT2/e;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lo3/f;
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->h:Lo3/f;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->h:Lo3/f;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->h:Lo3/f;

    if-nez v0, :cond_1

    new-instance v0, Lo3/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lo3/f;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->h:Lo3/f;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->h:Lo3/f;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()Lo3/i;
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->d:Lo3/i;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->d:Lo3/i;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->d:Lo3/i;

    if-nez v0, :cond_1

    new-instance v0, Lo3/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lo3/i;->a:Ljava/lang/Object;

    new-instance v1, Lo3/b;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lo3/b;-><init>(LJ2/U;I)V

    iput-object v1, v0, Lo3/i;->b:Ljava/lang/Object;

    new-instance v1, Lo3/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lo3/h;-><init>(LJ2/U;I)V

    iput-object v1, v0, Lo3/i;->c:Ljava/lang/Object;

    new-instance v1, Lo3/h;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lo3/h;-><init>(LJ2/U;I)V

    iput-object v1, v0, Lo3/i;->d:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->d:Lo3/i;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->d:Lo3/i;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f()Lo3/l;
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->e:Lo3/l;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->e:Lo3/l;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->e:Lo3/l;

    if-nez v0, :cond_1

    new-instance v0, Lo3/l;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lo3/l;->a:Ljava/lang/Object;

    new-instance v1, Lo3/b;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lo3/b;-><init>(LJ2/U;I)V

    iput-object v1, v0, Lo3/l;->b:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->e:Lo3/l;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->e:Lo3/l;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g()Lo3/n;
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->f:Lo3/n;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->f:Lo3/n;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->f:Lo3/n;

    if-nez v0, :cond_1

    new-instance v0, Lo3/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lo3/n;->a:Ljava/lang/Object;

    new-instance v1, Lo3/b;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lo3/b;-><init>(LJ2/U;I)V

    iput-object v1, v0, Lo3/n;->b:Ljava/lang/Object;

    new-instance v1, Lo3/h;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lo3/h;-><init>(LJ2/U;I)V

    iput-object v1, v0, Lo3/n;->c:Ljava/lang/Object;

    new-instance v1, Lo3/h;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lo3/h;-><init>(LJ2/U;I)V

    iput-object v1, v0, Lo3/n;->d:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->f:Lo3/n;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->f:Lo3/n;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 6

    const/16 p0, 0xe

    const/16 p1, 0xd

    new-instance v0, Lg3/c;

    const/16 v1, 0xa

    invoke-direct {v0, p1, p0, v1}, Lg3/c;-><init>(III)V

    new-instance v1, Lg3/c;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lg3/c;-><init>(I)V

    new-instance v2, Lg3/c;

    const/16 v3, 0x10

    const/16 v4, 0x11

    const/16 v5, 0xc

    invoke-direct {v2, v3, v4, v5}, Lg3/c;-><init>(III)V

    new-instance v3, Lg3/c;

    const/16 v5, 0x12

    invoke-direct {v3, v4, v5, p1}, Lg3/c;-><init>(III)V

    new-instance p1, Lg3/c;

    const/16 v4, 0x13

    invoke-direct {p1, v5, v4, p0}, Lg3/c;-><init>(III)V

    new-instance p0, Lg3/c;

    const/16 v4, 0xf

    invoke-direct {p0, v4}, Lg3/c;-><init>(I)V

    const/4 v4, 0x6

    new-array v4, v4, [LN2/a;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const/4 v0, 0x4

    aput-object p1, v4, v0

    const/4 p1, 0x5

    aput-object p0, v4, p1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public final getRequiredTypeConverters()Ljava/util/Map;
    .locals 2

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lo3/r;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lo3/c;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lo3/t;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lo3/i;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lo3/l;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lo3/n;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lo3/e;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lo3/f;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final h()Lo3/r;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->a:Lo3/r;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->a:Lo3/r;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->a:Lo3/r;

    if-nez v0, :cond_1

    new-instance v0, Lo3/r;

    invoke-direct {v0, p0}, Lo3/r;-><init>(Landroidx/work/impl/WorkDatabase_Impl;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->a:Lo3/r;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->a:Lo3/r;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final i()Lo3/t;
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->c:Lo3/t;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->c:Lo3/t;

    return-object p0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->c:Lo3/t;

    if-nez v0, :cond_1

    new-instance v0, Lo3/t;

    invoke-direct {v0, p0}, Lo3/t;-><init>(Landroidx/work/impl/WorkDatabase_Impl;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->c:Lo3/t;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->c:Lo3/t;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
