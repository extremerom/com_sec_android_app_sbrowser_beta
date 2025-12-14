.class public final LJ2/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public final c:LJ2/c;

.field public final d:LJ2/Z;

.field public final e:Ljava/util/List;

.field public final f:LL2/b;

.field public g:LT2/a;


# direct methods
.method public constructor <init>(LJ2/c;LC9/b;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "config"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, LJ2/K;->c:LJ2/c;

    new-instance v2, LJ2/H;

    const/4 v3, -0x1

    const-string v4, ""

    invoke-direct {v2, v3, v4, v4}, LJ2/Z;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, LJ2/K;->d:LJ2/Z;

    sget-object v2, Lfb/v;->a:Lfb/v;

    iget-object v3, v1, LJ2/c;->e:Ljava/util/List;

    if-nez v3, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    iput-object v4, v0, LJ2/K;->e:Ljava/util/List;

    new-instance v4, LC9/b;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v0}, LC9/b;-><init>(ILjava/lang/Object;)V

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    check-cast v2, Ljava/util/Collection;

    new-instance v3, LJ2/J;

    invoke-direct {v3, v4}, LJ2/J;-><init>(LC9/b;)V

    invoke-static {v2, v3}, Lfb/n;->S(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    const-string v2, "context"

    iget-object v3, v1, LJ2/c;->a:Landroid/content/Context;

    move-object v6, v3

    invoke-static {v3, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "migrationContainer"

    iget-object v3, v1, LJ2/c;->d:LJ2/S;

    move-object v9, v3

    invoke-static {v3, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "journalMode"

    iget-object v3, v1, LJ2/c;->g:LJ2/Q;

    move-object v12, v3

    invoke-static {v3, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "queryExecutor"

    iget-object v4, v1, LJ2/c;->h:Ljava/util/concurrent/Executor;

    move-object v13, v4

    invoke-static {v4, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "transactionExecutor"

    iget-object v4, v1, LJ2/c;->i:Ljava/util/concurrent/Executor;

    move-object v14, v4

    invoke-static {v4, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "typeConverters"

    iget-object v4, v1, LJ2/c;->q:Ljava/util/List;

    move-object/from16 v22, v4

    invoke-static {v4, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "autoMigrationSpecs"

    iget-object v4, v1, LJ2/c;->r:Ljava/util/List;

    move-object/from16 v23, v4

    invoke-static {v4, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LJ2/c;

    move-object v5, v2

    iget-object v4, v1, LJ2/c;->p:Ljava/util/concurrent/Callable;

    move-object/from16 v21, v4

    iget-boolean v4, v1, LJ2/c;->s:Z

    move/from16 v24, v4

    iget-object v7, v1, LJ2/c;->b:Ljava/lang/String;

    iget-object v8, v1, LJ2/c;->c:LT2/d;

    iget-boolean v11, v1, LJ2/c;->f:Z

    iget-object v15, v1, LJ2/c;->j:Landroid/content/Intent;

    iget-boolean v4, v1, LJ2/c;->k:Z

    move/from16 v16, v4

    iget-boolean v4, v1, LJ2/c;->l:Z

    move/from16 v17, v4

    iget-object v4, v1, LJ2/c;->m:Ljava/util/Set;

    move-object/from16 v18, v4

    iget-object v4, v1, LJ2/c;->n:Ljava/lang/String;

    move-object/from16 v19, v4

    iget-object v4, v1, LJ2/c;->o:Ljava/io/File;

    move-object/from16 v20, v4

    iget-object v4, v1, LJ2/c;->t:LS2/b;

    move-object/from16 v25, v4

    iget-object v1, v1, LJ2/c;->u:Lib/h;

    move-object/from16 v26, v1

    invoke-direct/range {v5 .. v26}, LJ2/c;-><init>(Landroid/content/Context;Ljava/lang/String;LT2/d;LJ2/S;Ljava/util/List;ZLJ2/Q;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Ljava/util/List;Ljava/util/List;ZLS2/b;Lib/h;)V

    new-instance v1, LM2/b;

    new-instance v4, Lo3/f;

    move-object/from16 v5, p2

    invoke-virtual {v5, v2}, LC9/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LT2/e;

    invoke-direct {v4, v2}, Lo3/f;-><init>(LT2/e;)V

    invoke-direct {v1, v4}, LM2/b;-><init>(Lo3/f;)V

    iput-object v1, v0, LJ2/K;->f:LL2/b;

    sget-object v1, LJ2/Q;->WRITE_AHEAD_LOGGING:LJ2/Q;

    if-ne v3, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, LJ2/K;->c()LT2/e;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, LT2/e;->setWriteAheadLoggingEnabled(Z)V

    :cond_3
    return-void
.end method

.method public constructor <init>(LJ2/c;LJ2/Z;)V
    .locals 9

    const-string v0, "config"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ2/K;->c:LJ2/c;

    iput-object p2, p0, LJ2/K;->d:LJ2/Z;

    iget-object v0, p1, LJ2/c;->e:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Lfb/v;->a:Lfb/v;

    :cond_0
    iput-object v0, p0, LJ2/K;->e:Ljava/util/List;

    const/4 v0, 0x1

    iget-object v1, p1, LJ2/c;->g:LJ2/Q;

    iget-object v4, p1, LJ2/c;->b:Ljava/lang/String;

    iget-object v2, p1, LJ2/c;->t:LS2/b;

    if-nez v2, :cond_2

    iget-object v8, p1, LJ2/c;->c:LT2/d;

    if-eqz v8, :cond_1

    iget-object v3, p1, LJ2/c;->a:Landroid/content/Context;

    const-string p1, "context"

    invoke-static {v3, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, LJ2/I;

    invoke-virtual {p2}, LJ2/Z;->getVersion()I

    move-result p1

    invoke-direct {v5, p0, p1}, LJ2/I;-><init>(LJ2/K;I)V

    new-instance p1, LT2/c;

    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, LT2/c;-><init>(Landroid/content/Context;Ljava/lang/String;LT2/b;ZZ)V

    new-instance p2, LM2/b;

    new-instance v2, Lo3/f;

    invoke-interface {v8, p1}, LT2/d;->d(LT2/c;)LT2/e;

    move-result-object p1

    invoke-direct {v2, p1}, Lo3/f;-><init>(LT2/e;)V

    invoke-direct {p2, v2}, LM2/b;-><init>(Lo3/f;)V

    iput-object p2, p0, LJ2/K;->f:LL2/b;

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SQLiteManager was constructed with both null driver and open helper factory!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-nez v4, :cond_3

    new-instance p1, LA7/h;

    invoke-direct {p1, p0, v2}, LA7/h;-><init>(LJ2/K;LS2/b;)V

    new-instance p2, LL2/h;

    invoke-direct {p2, p1}, LL2/h;-><init>(LA7/h;)V

    goto :goto_2

    :cond_3
    new-instance p1, LA7/h;

    invoke-direct {p1, p0, v2}, LA7/h;-><init>(LJ2/K;LS2/b;)V

    const-string p2, "<this>"

    invoke-static {v1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, LJ2/a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, p2, v2

    const/16 v3, 0x27

    const/4 v5, 0x2

    if-eq v2, v0, :cond_5

    if-ne v2, v5, :cond_4

    const/4 v2, 0x4

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Can\'t get max number of reader for journal mode \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    move v2, v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget p2, p2, v6

    if-eq p2, v0, :cond_7

    if-ne p2, v5, :cond_6

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Can\'t get max number of writers for journal mode \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_1
    new-instance p2, LL2/h;

    invoke-direct {p2, p1, v4, v2}, LL2/h;-><init>(LA7/h;Ljava/lang/String;I)V

    :goto_2
    iput-object p2, p0, LJ2/K;->f:LL2/b;

    :goto_3
    sget-object p1, LJ2/Q;->WRITE_AHEAD_LOGGING:LJ2/Q;

    if-ne v1, p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p0}, LJ2/K;->c()LT2/e;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-interface {p0, v0}, LT2/e;->setWriteAheadLoggingEnabled(Z)V

    :cond_9
    return-void
.end method

.method public static final a(LJ2/K;LS2/a;)V
    .locals 4

    const-string v0, "PRAGMA user_version = "

    iget-object v1, p0, LJ2/K;->c:LJ2/c;

    iget-object v1, v1, LJ2/c;->g:LJ2/Q;

    sget-object v2, LJ2/Q;->WRITE_AHEAD_LOGGING:LJ2/Q;

    if-ne v1, v2, :cond_0

    const-string v1, "PRAGMA journal_mode = WAL"

    invoke-static {v1, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    goto :goto_0

    :cond_0
    const-string v1, "PRAGMA journal_mode = TRUNCATE"

    invoke-static {v1, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    :goto_0
    iget-object v1, p0, LJ2/K;->c:LJ2/c;

    iget-object v1, v1, LJ2/c;->g:LJ2/Q;

    if-ne v1, v2, :cond_1

    const-string v1, "PRAGMA synchronous = NORMAL"

    invoke-static {v1, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    goto :goto_1

    :cond_1
    const-string v1, "PRAGMA synchronous = FULL"

    invoke-static {v1, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    :goto_1
    invoke-static {p1}, LJ2/K;->b(LS2/a;)V

    const-string v1, "PRAGMA user_version"

    invoke-interface {p1, v1}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, LS2/c;->t0()Z

    const/4 v2, 0x0

    invoke-interface {v1, v2}, LS2/c;->getLong(I)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    long-to-int v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    iget-object v1, p0, LJ2/K;->d:LJ2/Z;

    invoke-virtual {v1}, LJ2/Z;->getVersion()I

    move-result v3

    if-eq v2, v3, :cond_5

    const-string v3, "BEGIN EXCLUSIVE TRANSACTION"

    invoke-static {v3, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    if-nez v2, :cond_2

    :try_start_1
    invoke-virtual {p0, p1}, LJ2/K;->d(LS2/a;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, LJ2/Z;->getVersion()I

    move-result v3

    invoke-virtual {p0, v2, v3, p1}, LJ2/K;->e(IILS2/a;)V

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, LJ2/Z;->getVersion()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    sget-object v0, Ldb/r;->a:Ldb/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    invoke-static {v0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object v0

    :goto_4
    instance-of v1, v0, Ldb/l;

    if-nez v1, :cond_3

    move-object v1, v0

    check-cast v1, Ldb/r;

    const-string v1, "END TRANSACTION"

    invoke-static {v1, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    :cond_3
    invoke-static {v0}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    const-string p0, "ROLLBACK TRANSACTION"

    invoke-static {p0, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    throw v0

    :cond_5
    :goto_5
    invoke-virtual {p0, p1}, LJ2/K;->f(LS2/a;)V

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    invoke-static {v1, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static b(LS2/a;)V
    .locals 5

    const-string v0, "PRAGMA busy_timeout"

    invoke-interface {p0, v0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, LS2/c;->t0()Z

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LS2/c;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    invoke-static {v0, v3}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    const-wide/16 v3, 0xbb8

    cmp-long v0, v1, v3

    if-gez v0, :cond_0

    const-string v0, "PRAGMA busy_timeout = 3000"

    invoke-static {v0, p0}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final c()LT2/e;
    .locals 2

    iget-object p0, p0, LJ2/K;->f:LL2/b;

    instance-of v0, p0, LM2/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, LM2/b;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    iget-object p0, p0, LM2/b;->a:Lo3/f;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lo3/f;->b:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, LT2/e;

    :cond_1
    return-object v1
.end method

.method public final d(LS2/a;)V
    .locals 7

    const-string v0, "connection"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    invoke-interface {p1, v0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, LS2/c;->t0()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, LS2/c;->getLong(I)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    iget-object v0, p0, LJ2/K;->d:LJ2/Z;

    invoke-virtual {v0, p1}, LJ2/Z;->createAllTables(LS2/a;)V

    if-nez v2, :cond_2

    invoke-virtual {v0, p1}, LJ2/Z;->onValidateSchema(LS2/a;)LJ2/Y;

    move-result-object v1

    iget-boolean v2, v1, LJ2/Y;->a:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Pre-packaged database has an invalid schema: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, LJ2/Y;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, LJ2/K;->g(LS2/a;)V

    invoke-virtual {v0, p1}, LJ2/Z;->onCreate(LS2/a;)V

    iget-object p0, p0, LJ2/K;->e:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ2/O;

    invoke-virtual {v0, p1}, LJ2/O;->onCreate(LS2/a;)V

    goto :goto_2

    :cond_3
    return-void

    :goto_3
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final e(IILS2/a;)V
    .locals 4

    const-string v0, "connection"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LJ2/K;->c:LJ2/c;

    iget-object v1, v0, LJ2/c;->d:LJ2/S;

    invoke-static {v1, p1, p2}, LAb/E;->g(LJ2/S;II)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, LJ2/K;->d:LJ2/Z;

    if-eqz v1, :cond_2

    invoke-virtual {v2, p3}, LJ2/Z;->onPreMigrate(LS2/a;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LN2/a;

    invoke-virtual {p2, p3}, LN2/a;->migrate(LS2/a;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p3}, LJ2/Z;->onValidateSchema(LS2/a;)LJ2/Y;

    move-result-object p1

    iget-boolean p2, p1, LJ2/Y;->a:Z

    if-eqz p2, :cond_1

    invoke-virtual {v2, p3}, LJ2/Z;->onPostMigrate(LS2/a;)V

    invoke-virtual {p0, p3}, LJ2/K;->g(LS2/a;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Migration didn\'t properly handle: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, LJ2/Y;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v0, p1, p2}, LAb/E;->j(LJ2/c;II)Z

    move-result v1

    if-nez v1, :cond_a

    iget-boolean p1, v0, LJ2/c;->s:Z

    if-eqz p1, :cond_7

    const-string p1, "SELECT name, type FROM sqlite_master WHERE type = \'table\' OR type = \'view\'"

    invoke-interface {p3, p1}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p1

    :try_start_0
    invoke-static {}, LG5/o3;->b()Lgb/c;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p1}, LS2/c;->t0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {p1, v1}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "sqlite_"

    invoke-static {v0, v3, v1}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android_metadata"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    invoke-interface {p1, v1}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "view"

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v3, Ldb/j;

    invoke-direct {v3, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v3}, Lgb/c;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_5
    invoke-static {p2}, LG5/o3;->a(Lgb/c;)Lgb/c;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-virtual {p2, v1}, Lgb/c;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    :goto_2
    move-object p2, p1

    check-cast p2, Lgb/a;

    invoke-virtual {p2}, Lgb/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lgb/a;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldb/j;

    iget-object v0, p2, Ldb/j;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p2, p2, Ldb/j;->b:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "DROP VIEW IF EXISTS "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    goto :goto_2

    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    goto :goto_2

    :goto_3
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p1, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2

    :cond_7
    invoke-virtual {v2, p3}, LJ2/Z;->dropAllTables(LS2/a;)V

    :cond_8
    iget-object p0, p0, LJ2/K;->e:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LJ2/O;

    invoke-virtual {p1, p3}, LJ2/O;->onDestructiveMigration(LS2/a;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v2, p3}, LJ2/Z;->createAllTables(LS2/a;)V

    :goto_5
    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "A migration from "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* functions."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(LS2/a;)V
    .locals 9

    const-string v0, "connection"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Pre-packaged database has an invalid schema: "

    const-string v1, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name = \'room_master_table\'"

    invoke-interface {p1, v1}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, LS2/c;->t0()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, v4}, LS2/c;->getLong(I)J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    move v2, v4

    :goto_0
    const/4 v5, 0x0

    invoke-static {v1, v5}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    iget-object v1, p0, LJ2/K;->d:LJ2/Z;

    if-eqz v2, :cond_3

    const-string v0, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-interface {p1, v0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v0

    :try_start_1
    invoke-interface {v0}, LS2/c;->t0()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v4}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    move-object v2, v5

    :goto_1
    invoke-static {v0, v5}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, LJ2/Z;->getIdentityHash()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v1}, LJ2/Z;->getLegacyIdentityHash()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_5

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, LJ2/Z;->getIdentityHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    invoke-static {v0, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    const-string v2, "BEGIN EXCLUSIVE TRANSACTION"

    invoke-static {v2, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    :try_start_3
    invoke-virtual {v1, p1}, LJ2/Z;->onValidateSchema(LS2/a;)LJ2/Y;

    move-result-object v2

    iget-boolean v4, v2, LJ2/Y;->a:Z

    if-eqz v4, :cond_4

    invoke-virtual {v1, p1}, LJ2/Z;->onPostMigrate(LS2/a;)V

    invoke-virtual {p0, p1}, LJ2/K;->g(LS2/a;)V

    sget-object v0, Ldb/r;->a:Ldb/r;

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_3

    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, LJ2/Y;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_3
    invoke-static {v0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object v0

    :goto_4
    instance-of v2, v0, Ldb/l;

    if-nez v2, :cond_5

    move-object v2, v0

    check-cast v2, Ldb/r;

    const-string v2, "END TRANSACTION"

    invoke-static {v2, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    :cond_5
    invoke-static {v0}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_6
    :goto_5
    invoke-virtual {v1, p1}, LJ2/Z;->onOpen(LS2/a;)V

    iget-object v0, p0, LJ2/K;->e:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LJ2/O;

    invoke-virtual {v1, p1}, LJ2/O;->onOpen(LS2/a;)V

    goto :goto_6

    :cond_7
    iput-boolean v3, p0, LJ2/K;->a:Z

    return-void

    :cond_8
    const-string p0, "ROLLBACK TRANSACTION"

    invoke-static {p0, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    throw v0

    :goto_7
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception p1

    invoke-static {v1, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final g(LS2/a;)V
    .locals 2

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-static {v0, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    iget-object p0, p0, LJ2/K;->d:LJ2/Z;

    invoke-virtual {p0}, LJ2/Z;->getIdentityHash()Ljava/lang/String;

    move-result-object p0

    const-string v0, "hash"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    return-void
.end method
