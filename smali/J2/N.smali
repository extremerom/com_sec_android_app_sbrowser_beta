.class public final LJ2/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LAb/c;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public f:Ljava/util/concurrent/Executor;

.field public g:Ljava/util/concurrent/Executor;

.field public h:Lcom/sec/android/app/sbrowser/common/account/b;

.field public i:Z

.field public final j:LJ2/Q;

.field public final k:J

.field public final l:LJ2/S;

.field public final m:Ljava/util/LinkedHashSet;

.field public final n:Ljava/util/LinkedHashSet;

.field public final o:Ljava/util/ArrayList;

.field public p:Z

.field public q:Z

.field public final r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LJ2/N;->d:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LJ2/N;->e:Ljava/util/ArrayList;

    sget-object v0, LJ2/Q;->AUTOMATIC:LJ2/Q;

    iput-object v0, p0, LJ2/N;->j:LJ2/Q;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LJ2/N;->k:J

    new-instance v0, LJ2/S;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LJ2/S;-><init>(I)V

    iput-object v0, p0, LJ2/N;->l:LJ2/S;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, LJ2/N;->m:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, LJ2/N;->n:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LJ2/N;->o:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, LJ2/N;->p:Z

    iput-boolean v0, p0, LJ2/N;->r:Z

    invoke-static {p2}, LG5/D;->f(Ljava/lang/Class;)LAb/c;

    move-result-object p2

    iput-object p2, p0, LJ2/N;->a:LAb/c;

    iput-object p1, p0, LJ2/N;->b:Landroid/content/Context;

    iput-object p3, p0, LJ2/N;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final varargs a([LN2/a;)V
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget-object v4, p0, LJ2/N;->n:Ljava/util/LinkedHashSet;

    iget v5, v3, LN2/a;->startVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v3, v3, LN2/a;->endVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [LN2/a;

    iget-object p0, p0, LJ2/N;->l:LJ2/S;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "migrations"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, LJ2/S;->a(LN2/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final b()LJ2/U;
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, LJ2/N;->f:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    iget-object v2, v0, LJ2/N;->g:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_0

    sget-object v1, LF/a;->c:LA2/f;

    iput-object v1, v0, LJ2/N;->g:Ljava/util/concurrent/Executor;

    iput-object v1, v0, LJ2/N;->f:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, v0, LJ2/N;->g:Ljava/util/concurrent/Executor;

    if-nez v2, :cond_1

    iput-object v1, v0, LJ2/N;->g:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, v0, LJ2/N;->g:Ljava/util/concurrent/Executor;

    iput-object v1, v0, LJ2/N;->f:Ljava/util/concurrent/Executor;

    :cond_2
    :goto_0
    iget-object v1, v0, LJ2/N;->n:Ljava/util/LinkedHashSet;

    iget-object v15, v0, LJ2/N;->m:Ljava/util/LinkedHashSet;

    const-string v2, "migrationStartAndEndVersions"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "migrationsNotRequiredFrom"

    invoke-static {v15, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "Inconsistency detected. A Migration was supplied to addMigration() that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(). Start version is: "

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v1, v0, LJ2/N;->h:Lcom/sec/android/app/sbrowser/common/account/b;

    if-nez v1, :cond_5

    new-instance v1, LE5/v;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, LE5/v;-><init>(I)V

    :cond_5
    move-object v5, v1

    iget-wide v1, v0, LJ2/N;->k:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v11, 0x1

    if-lez v1, :cond_6

    move v1, v11

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    const-string v2, "Required value was null."

    if-eqz v1, :cond_8

    iget-object v0, v0, LJ2/N;->c:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create auto-closing database for an in-memory database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v1, LJ2/c;

    iget-object v7, v0, LJ2/N;->d:Ljava/util/ArrayList;

    iget-boolean v8, v0, LJ2/N;->i:Z

    iget-object v3, v0, LJ2/N;->j:LJ2/Q;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, LJ2/N;->b:Landroid/content/Context;

    const-string v4, "context"

    invoke-static {v9, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, LJ2/Q;->AUTOMATIC:LJ2/Q;

    const/4 v10, 0x0

    if-eq v3, v4, :cond_9

    :goto_3
    move-object/from16 v24, v3

    goto :goto_5

    :cond_9
    const-string v3, "activity"

    invoke-virtual {v9, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/app/ActivityManager;

    if-eqz v4, :cond_a

    check-cast v3, Landroid/app/ActivityManager;

    goto :goto_4

    :cond_a
    move-object v3, v10

    :goto_4
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v3

    if-nez v3, :cond_b

    sget-object v3, LJ2/Q;->WRITE_AHEAD_LOGGING:LJ2/Q;

    goto :goto_3

    :cond_b
    sget-object v3, LJ2/Q;->TRUNCATE:LJ2/Q;

    goto :goto_3

    :goto_5
    iget-object v3, v0, LJ2/N;->f:Ljava/util/concurrent/Executor;

    if-eqz v3, :cond_11

    iget-object v12, v0, LJ2/N;->g:Ljava/util/concurrent/Executor;

    if-eqz v12, :cond_10

    iget-boolean v13, v0, LJ2/N;->p:Z

    iget-boolean v14, v0, LJ2/N;->q:Z

    iget-object v2, v0, LJ2/N;->e:Ljava/util/ArrayList;

    move-object/from16 v19, v2

    iget-object v2, v0, LJ2/N;->o:Ljava/util/ArrayList;

    move-object/from16 v20, v2

    const/16 v18, 0x0

    const/16 v21, 0x0

    iget-object v4, v0, LJ2/N;->c:Ljava/lang/String;

    iget-object v6, v0, LJ2/N;->l:LJ2/S;

    const/4 v2, 0x0

    move-object/from16 v25, v12

    move-object v12, v2

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v2, v1

    move-object/from16 v26, v3

    move-object v3, v9

    move-object/from16 v9, v24

    move-object/from16 v10, v26

    move-object/from16 v11, v25

    invoke-direct/range {v2 .. v23}, LJ2/c;-><init>(Landroid/content/Context;Ljava/lang/String;LT2/d;LJ2/S;Ljava/util/List;ZLJ2/Q;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Ljava/util/List;Ljava/util/List;ZLS2/b;Lib/h;)V

    iget-boolean v2, v0, LJ2/N;->r:Z

    iput-boolean v2, v1, LJ2/c;->v:Z

    iget-object v0, v0, LJ2/N;->a:LAb/c;

    invoke-static {v0}, LG5/D;->c(LAb/c;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_c
    const-string v0, ""

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_e

    const/4 v5, 0x1

    goto :goto_6

    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "substring(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    const/16 v4, 0x5f

    const/16 v6, 0x2e

    invoke-static {v3, v6, v4}, LKc/r;->k(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_Impl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_f

    move-object v0, v3

    goto :goto_7

    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v0, v5, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type java.lang.Class<T of androidx.room.util.KClassUtil.findAndInstantiateDatabaseImpl>"

    invoke-static {v0, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v0, LJ2/U;

    invoke-virtual {v0, v1}, LJ2/U;->init(LJ2/c;)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_a

    :goto_8
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to create an instance of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, LB/e;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_9
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot access the constructor "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, LB/e;->o(Ljava/lang/Class;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_a
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot find implementation for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist. Is Room annotation processor correctly configured?"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
