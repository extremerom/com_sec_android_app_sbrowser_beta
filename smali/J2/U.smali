.class public abstract LJ2/U;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:LJ2/P;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private allowMainThreadQueries:Z

.field private final closeBarrier:LK2/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private connectionManager:LJ2/K;

.field private coroutineScope:LNc/B;

.field private internalQueryExecutor:Ljava/util/concurrent/Executor;

.field private internalTracker:LJ2/s;

.field private internalTransactionExecutor:Ljava/util/concurrent/Executor;

.field protected mCallbacks:Ljava/util/List;
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "LJ2/O;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field protected volatile mDatabase:LT2/a;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final suspendingTransactionId:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private transactionContext:Lib/h;

.field private final typeConverters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "LAb/c;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private useTempTrackingTable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LJ2/P;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LJ2/U;->Companion:LJ2/P;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LK2/a;

    new-instance v9, LJ2/T;

    const-class v4, LJ2/U;

    const-string v5, "onClosed"

    const/4 v2, 0x0

    const-string v6, "onClosed()V"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v3, p0

    invoke-direct/range {v1 .. v8}, LJ2/T;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-direct {v0, v9}, LK2/a;-><init>(LJ2/T;)V

    iput-object v0, p0, LJ2/U;->closeBarrier:LK2/a;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, LJ2/U;->suspendingTransactionId:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, LJ2/U;->typeConverters:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, LJ2/U;->useTempTrackingTable:Z

    return-void
.end method

.method public static final access$onClosed(LJ2/U;)V
    .locals 5

    iget-object v0, p0, LJ2/U;->coroutineScope:LNc/B;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {v0, v1}, LNc/E;->h(LNc/B;Ljava/util/concurrent/CancellationException;)V

    invoke-virtual {p0}, LJ2/U;->getInvalidationTracker()LJ2/s;

    move-result-object v0

    iget-object v0, v0, LJ2/s;->j:LJ2/A;

    if-eqz v0, :cond_1

    iget-object v2, v0, LJ2/A;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, LJ2/A;->b:LJ2/s;

    iget-object v3, v0, LJ2/A;->i:LJ2/y;

    invoke-virtual {v2, v3}, LJ2/s;->b(LJ2/n;)V

    :try_start_0
    iget-object v2, v0, LJ2/A;->g:LJ2/l;

    if-eqz v2, :cond_0

    iget-object v3, v0, LJ2/A;->j:LJ2/x;

    iget v4, v0, LJ2/A;->f:I

    invoke-interface {v2, v3, v4}, LJ2/l;->G(LJ2/j;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "ROOM"

    const-string v4, "Cannot unregister multi-instance invalidation callback"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v2, v0, LJ2/A;->k:LJ2/z;

    iget-object v0, v0, LJ2/A;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    iget-object p0, p0, LJ2/U;->connectionManager:LJ2/K;

    if-eqz p0, :cond_2

    iget-object p0, p0, LJ2/K;->f:LL2/b;

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_2
    const-string p0, "connectionManager"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p0, "coroutineScope"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic query$default(LJ2/U;LT2/g;Landroid/os/CancellationSignal;ILjava/lang/Object;)Landroid/database/Cursor;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, LJ2/U;->query(LT2/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: query"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lsb/a;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, LJ2/U;->inCompatibilityMode$room_runtime_release()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LJ2/U;->beginTransaction()V

    :try_start_0
    invoke-interface {p1}, Lsb/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, LJ2/U;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, LJ2/U;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, LJ2/U;->endTransaction()V

    throw p1

    :cond_0
    new-instance v0, LJ2/M;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, LJ2/M;-><init>(ILsb/a;)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, LA/b;->g(LJ2/U;ZZLsb/k;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final addTypeConverter$room_runtime_release(LAb/c;Ljava/lang/Object;)V
    .locals 1
    .param p1    # LAb/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LAb/c;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "kclass"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "converter"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LJ2/U;->typeConverters:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public assertNotMainThread()V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-boolean v0, p0, LJ2/U;->allowMainThreadQueries:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LJ2/U;->isMainThread$room_runtime_release()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public assertNotSuspendingTransaction()V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    invoke-virtual {p0}, LJ2/U;->inCompatibilityMode$room_runtime_release()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LJ2/U;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, LJ2/U;->suspendingTransactionId:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot access database on a different coroutine context inherited from a suspending transaction."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public beginTransaction()V
    .locals 3
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    invoke-virtual {p0}, LJ2/U;->assertNotMainThread()V

    invoke-virtual {p0}, LJ2/U;->assertNotMainThread()V

    invoke-virtual {p0}, LJ2/U;->getOpenHelper()LT2/e;

    move-result-object v0

    invoke-interface {v0}, LT2/e;->getWritableDatabase()LT2/a;

    move-result-object v0

    invoke-interface {v0}, LT2/a;->p0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, LJ2/U;->getInvalidationTracker()LJ2/s;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LJ2/r;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LJ2/r;-><init>(LJ2/s;Lib/c;)V

    invoke-static {v1}, LG5/a4;->c(Lsb/n;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0}, LT2/a;->q0()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v0}, LT2/a;->z()V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, LT2/a;->n()V

    :goto_0
    return-void
.end method

.method public compileStatement(Ljava/lang/String;)LT2/h;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "sql"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LJ2/U;->assertNotMainThread()V

    invoke-virtual {p0}, LJ2/U;->assertNotSuspendingTransaction()V

    invoke-virtual {p0}, LJ2/U;->getOpenHelper()LT2/e;

    move-result-object p0

    invoke-interface {p0}, LT2/e;->getWritableDatabase()LT2/a;

    move-result-object p0

    invoke-interface {p0, p1}, LT2/a;->X(Ljava/lang/String;)LT2/h;

    move-result-object p0

    return-object p0
.end method

.method public createAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "LAb/c;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "LN2/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "autoMigrationSpecs"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lfb/C;->g(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LAb/c;

    invoke-static {v2}, LG5/D;->c(LAb/c;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, LJ2/U;->getAutoMigrations(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final createConnectionManager$room_runtime_release(LJ2/c;)LJ2/K;
    .locals 3
    .param p1    # LJ2/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "configuration"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, LJ2/U;->createOpenDelegate()LJ2/a0;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.room.RoomOpenDelegate"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LJ2/Z;
    :try_end_0
    .catch Ldb/i; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, LJ2/K;

    new-instance v1, LC9/b;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, LC9/b;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, p1, v1}, LJ2/K;-><init>(LJ2/c;LC9/b;)V

    goto :goto_1

    :cond_0
    new-instance p0, LJ2/K;

    invoke-direct {p0, p1, v0}, LJ2/K;-><init>(LJ2/c;LJ2/Z;)V

    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method public abstract createInvalidationTracker()LJ2/s;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public createOpenDelegate()LJ2/a0;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ldb/i;

    invoke-direct {p0}, Ldb/i;-><init>()V

    throw p0
.end method

.method public createOpenHelper(LJ2/c;)LT2/e;
    .locals 0
    .param p1    # LJ2/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "config"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ldb/i;

    invoke-direct {p0}, Ldb/i;-><init>()V

    throw p0
.end method

.method public endTransaction()V
    .locals 2
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    invoke-virtual {p0}, LJ2/U;->getOpenHelper()LT2/e;

    move-result-object v0

    invoke-interface {v0}, LT2/e;->getWritableDatabase()LT2/a;

    move-result-object v0

    invoke-interface {v0}, LT2/a;->F()V

    invoke-virtual {p0}, LJ2/U;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, LJ2/U;->getInvalidationTracker()LJ2/s;

    move-result-object p0

    iget-object v0, p0, LJ2/s;->f:LJ2/m;

    iget-object v1, p0, LJ2/s;->g:LJ2/m;

    iget-object p0, p0, LJ2/s;->c:LJ2/C0;

    invoke-virtual {p0, v0, v1}, LJ2/C0;->e(LJ2/m;LJ2/m;)V

    :cond_0
    return-void
.end method

.method public getAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "LN2/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .annotation build Lkotlin/jvm/JvmSuppressWildcards;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "autoMigrationSpecs"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0
.end method

.method public final getCloseBarrier$room_runtime_release()LK2/a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LJ2/U;->closeBarrier:LK2/a;

    return-object p0
.end method

.method public final getCoroutineScope()LNc/B;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LJ2/U;->coroutineScope:LNc/B;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "coroutineScope"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getInvalidationTracker()LJ2/s;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LJ2/U;->internalTracker:LJ2/s;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "internalTracker"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getOpenHelper()LT2/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LJ2/U;->connectionManager:LJ2/K;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, LJ2/K;->c()LT2/e;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot return a SupportSQLiteOpenHelper since no SupportSQLiteOpenHelper.Factory was configured with Room."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "connectionManager"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getQueryContext()Lib/h;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LJ2/U;->coroutineScope:LNc/B;

    if-eqz p0, :cond_0

    invoke-interface {p0}, LNc/B;->v()Lib/h;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "coroutineScope"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getRequiredAutoMigrationSpecClasses()Ljava/util/Set;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "LAb/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, LJ2/U;->getRequiredAutoMigrationSpecs()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, LG5/D;->f(Ljava/lang/Class;)LAb/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lfb/n;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getRequiredAutoMigrationSpecs()Ljava/util/Set;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lfb/x;->a:Lfb/x;

    return-object p0
.end method

.method public getRequiredTypeConverterClasses()Ljava/util/Map;
    .locals 6
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "LAb/c;",
            "Ljava/util/List<",
            "LAb/c;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, LJ2/U;->getRequiredTypeConverters()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lfb/C;->g(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    move v1, v2

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v3}, LG5/D;->f(Ljava/lang/Class;)LAb/c;

    move-result-object v3

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-static {v5}, LG5/D;->f(Ljava/lang/Class;)LAb/c;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public final getRequiredTypeConverterClassesMap$room_runtime_release()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "LAb/c;",
            "Ljava/util/List<",
            "LAb/c;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, LJ2/U;->getRequiredTypeConverterClasses()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRequiredTypeConverters()Ljava/util/Map;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lfb/w;->a:Lfb/w;

    return-object p0
.end method

.method public final getSuspendingTransactionId()Ljava/lang/ThreadLocal;
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LJ2/U;->suspendingTransactionId:Ljava/lang/ThreadLocal;

    return-object p0
.end method

.method public final getTransactionContext$room_runtime_release()Lib/h;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LJ2/U;->transactionContext:Lib/h;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "transactionContext"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getTransactionExecutor()Ljava/util/concurrent/Executor;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LJ2/U;->internalTransactionExecutor:Ljava/util/concurrent/Executor;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "internalTransactionExecutor"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getUseTempTrackingTable$room_runtime_release()Z
    .locals 0

    iget-boolean p0, p0, LJ2/U;->useTempTrackingTable:Z

    return p0
.end method

.method public final inCompatibilityMode$room_runtime_release()Z
    .locals 0

    iget-object p0, p0, LJ2/U;->connectionManager:LJ2/K;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, LJ2/K;->c()LT2/e;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const-string p0, "connectionManager"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public inTransaction()Z
    .locals 1

    invoke-virtual {p0}, LJ2/U;->isOpenInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LJ2/U;->getOpenHelper()LT2/e;

    move-result-object p0

    invoke-interface {p0}, LT2/e;->getWritableDatabase()LT2/a;

    move-result-object p0

    invoke-interface {p0}, LT2/a;->p0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public init(LJ2/c;)V
    .locals 11
    .param p1    # LJ2/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const-string v0, "configuration"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, LJ2/c;->v:Z

    iput-boolean v0, p0, LJ2/U;->useTempTrackingTable:Z

    invoke-virtual {p0, p1}, LJ2/U;->createConnectionManager$room_runtime_release(LJ2/c;)LJ2/K;

    move-result-object v0

    iput-object v0, p0, LJ2/U;->connectionManager:LJ2/K;

    invoke-virtual {p0}, LJ2/U;->createInvalidationTracker()LJ2/s;

    move-result-object v0

    iput-object v0, p0, LJ2/U;->internalTracker:LJ2/s;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, LJ2/U;->getRequiredAutoMigrationSpecClasses()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p1, LJ2/c;->r:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v3, [Z

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LAb/c;

    move-object v8, v2

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    add-int/2addr v8, v6

    if-ltz v8, :cond_2

    :goto_1
    add-int/lit8 v9, v8, -0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v5, v10}, LAb/c;->u(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    aput-boolean v7, v4, v8

    move v6, v8

    goto :goto_2

    :cond_0
    if-gez v9, :cond_1

    goto :goto_2

    :cond_1
    move v8, v9

    goto :goto_1

    :cond_2
    :goto_2
    if-ltz v6, :cond_3

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "A required auto migration spec ("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, LAb/c;->v()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is missing in the database configuration."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v6

    if-ltz v1, :cond_7

    :goto_3
    add-int/lit8 v2, v1, -0x1

    if-ge v1, v3, :cond_6

    aget-boolean v1, v4, v1

    if-eqz v1, :cond_6

    if-gez v2, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_4
    invoke-virtual {p0, v0}, LJ2/U;->createAutoMigrations(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN2/a;

    iget v2, v1, LN2/a;->startVersion:I

    iget v3, v1, LN2/a;->endVersion:I

    iget-object v4, p1, LJ2/c;->d:LJ2/S;

    iget-object v5, v4, LJ2/S;->a:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_9

    sget-object v2, Lfb/w;->a:Lfb/w;

    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    :goto_6
    if-nez v2, :cond_8

    invoke-virtual {v4, v1}, LJ2/S;->a(LN2/a;)V

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, LJ2/U;->getRequiredTypeConverterClassesMap$room_runtime_release()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, LJ2/c;->q:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Z

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LAb/c;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LAb/c;

    move-object v8, v1

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    add-int/2addr v8, v6

    if-ltz v8, :cond_f

    :goto_8
    add-int/lit8 v9, v8, -0x1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v5, v10}, LAb/c;->u(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    aput-boolean v7, v2, v8

    goto :goto_a

    :cond_d
    if-gez v9, :cond_e

    goto :goto_9

    :cond_e
    move v8, v9

    goto :goto_8

    :cond_f
    :goto_9
    move v8, v6

    :goto_a
    if-ltz v8, :cond_10

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p0, v5, v8}, LJ2/U;->addTypeConverter$room_runtime_release(LAb/c;Ljava/lang/Object;)V

    goto :goto_7

    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "A required type converter ("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, LAb/c;->v()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, LAb/c;->v()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is missing in the database configuration."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v6

    if-ltz v0, :cond_14

    :goto_b
    add-int/lit8 v3, v0, -0x1

    aget-boolean v4, v2, v0

    if-eqz v4, :cond_13

    if-gez v3, :cond_12

    goto :goto_c

    :cond_12
    move v0, v3

    goto :goto_b

    :cond_13
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected type converter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    :goto_c
    const/4 v0, 0x0

    iget-object v1, p1, LJ2/c;->u:Lib/h;

    if-eqz v1, :cond_1b

    sget-object v2, Lib/d;->a:Lib/d;

    invoke-interface {v1, v2}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.CoroutineDispatcher"

    invoke-static {v2, v3}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, LNc/x;

    instance-of v3, v2, LNc/Z;

    if-eqz v3, :cond_15

    move-object v3, v2

    check-cast v3, LNc/Z;

    goto :goto_d

    :cond_15
    move-object v3, v0

    :goto_d
    if-eqz v3, :cond_16

    invoke-virtual {v3}, LNc/Z;->K()Ljava/util/concurrent/Executor;

    move-result-object v3

    if-nez v3, :cond_17

    :cond_16
    new-instance v3, LNc/M;

    invoke-direct {v3, v2}, LNc/M;-><init>(LNc/x;)V

    :cond_17
    iput-object v3, p0, LJ2/U;->internalQueryExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, LJ2/k0;

    invoke-direct {v4, v3}, LJ2/k0;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v4, p0, LJ2/U;->internalTransactionExecutor:Ljava/util/concurrent/Executor;

    sget-object v3, LNc/i0;->a:LNc/i0;

    invoke-interface {v1, v3}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v3

    check-cast v3, LNc/j0;

    new-instance v4, LNc/E0;

    invoke-direct {v4, v3}, LNc/m0;-><init>(LNc/j0;)V

    invoke-interface {v1, v4}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object v1

    invoke-static {v1}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v1

    iput-object v1, p0, LJ2/U;->coroutineScope:LNc/B;

    invoke-virtual {p0}, LJ2/U;->inCompatibilityMode$room_runtime_release()Z

    move-result v1

    const-string v3, "coroutineScope"

    if-eqz v1, :cond_19

    iget-object v1, p0, LJ2/U;->coroutineScope:LNc/B;

    if-eqz v1, :cond_18

    invoke-interface {v1}, LNc/B;->v()Lib/h;

    move-result-object v1

    invoke-virtual {v2, v7}, LNc/x;->J(I)LNc/x;

    move-result-object v2

    invoke-interface {v1, v2}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object v1

    goto :goto_e

    :cond_18
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_19
    iget-object v1, p0, LJ2/U;->coroutineScope:LNc/B;

    if-eqz v1, :cond_1a

    invoke-interface {v1}, LNc/B;->v()Lib/h;

    move-result-object v1

    :goto_e
    iput-object v1, p0, LJ2/U;->transactionContext:Lib/h;

    goto :goto_f

    :cond_1a
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iget-object v1, p1, LJ2/c;->h:Ljava/util/concurrent/Executor;

    iput-object v1, p0, LJ2/U;->internalQueryExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, LJ2/k0;

    iget-object v2, p1, LJ2/c;->i:Ljava/util/concurrent/Executor;

    invoke-direct {v1, v2}, LJ2/k0;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, LJ2/U;->internalTransactionExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, LJ2/U;->internalQueryExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_27

    invoke-static {v1}, LNc/E;->n(Ljava/util/concurrent/Executor;)LNc/x;

    move-result-object v1

    invoke-static {}, LNc/E;->e()LNc/E0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lib/a;->plus(Lib/h;)Lib/h;

    move-result-object v1

    invoke-static {v1}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v1

    iput-object v1, p0, LJ2/U;->coroutineScope:LNc/B;

    iget-object v2, p0, LJ2/U;->internalTransactionExecutor:Ljava/util/concurrent/Executor;

    if-eqz v2, :cond_26

    invoke-static {v2}, LNc/E;->n(Ljava/util/concurrent/Executor;)LNc/x;

    move-result-object v2

    iget-object v1, v1, LUc/e;->a:Lib/h;

    invoke-interface {v1, v2}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object v1

    iput-object v1, p0, LJ2/U;->transactionContext:Lib/h;

    :goto_f
    iget-boolean v1, p1, LJ2/c;->f:Z

    iput-boolean v1, p0, LJ2/U;->allowMainThreadQueries:Z

    iget-object v1, p0, LJ2/U;->connectionManager:LJ2/K;

    const-string v2, "connectionManager"

    if-eqz v1, :cond_25

    invoke-virtual {v1}, LJ2/K;->c()LT2/e;

    move-result-object v1

    if-nez v1, :cond_1d

    :cond_1c
    move-object v1, v0

    goto :goto_11

    :cond_1d
    :goto_10
    instance-of v3, v1, LO2/b;

    if-eqz v3, :cond_1e

    goto :goto_11

    :cond_1e
    instance-of v3, v1, LJ2/d;

    if-eqz v3, :cond_1c

    check-cast v1, LJ2/d;

    invoke-interface {v1}, LJ2/d;->getDelegate()LT2/e;

    move-result-object v1

    goto :goto_10

    :goto_11
    check-cast v1, LO2/b;

    iget-object v1, p0, LJ2/U;->connectionManager:LJ2/K;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, LJ2/K;->c()LT2/e;

    move-result-object v1

    if-nez v1, :cond_1f

    goto :goto_13

    :cond_1f
    :goto_12
    instance-of v2, v1, LO2/a;

    if-eqz v2, :cond_20

    move-object v0, v1

    goto :goto_13

    :cond_20
    instance-of v2, v1, LJ2/d;

    if-eqz v2, :cond_21

    check-cast v1, LJ2/d;

    invoke-interface {v1}, LJ2/d;->getDelegate()LT2/e;

    move-result-object v1

    goto :goto_12

    :cond_21
    :goto_13
    check-cast v0, LO2/a;

    iget-object v0, p1, LJ2/c;->j:Landroid/content/Intent;

    if-eqz v0, :cond_23

    iget-object v1, p1, LJ2/c;->b:Ljava/lang/String;

    if-eqz v1, :cond_22

    invoke-virtual {p0}, LJ2/U;->getInvalidationTracker()LJ2/s;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, LJ2/c;->a:Landroid/content/Context;

    const-string v2, "context"

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, LJ2/s;->i:Landroid/content/Intent;

    new-instance v0, LJ2/A;

    invoke-direct {v0, p1, v1, p0}, LJ2/A;-><init>(Landroid/content/Context;Ljava/lang/String;LJ2/s;)V

    iput-object v0, p0, LJ2/s;->j:LJ2/A;

    goto :goto_14

    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    :goto_14
    return-void

    :cond_24
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_25
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_26
    const-string p0, "internalTransactionExecutor"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_27
    const-string p0, "internalQueryExecutor"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0
.end method

.method public final internalInitInvalidationTracker(LS2/a;)V
    .locals 7
    .param p1    # LS2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    const-string v0, "connection"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LJ2/U;->getInvalidationTracker()LJ2/s;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LJ2/s;->c:LJ2/C0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "PRAGMA query_only"

    invoke-interface {p1, v1}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, LS2/c;->t0()Z

    const/4 v2, 0x0

    invoke-interface {v1, v2}, LS2/c;->getLong(I)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const/4 v5, 0x0

    invoke-static {v1, v5}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v3, :cond_2

    const-string v1, "PRAGMA temp_store = MEMORY"

    invoke-static {v1, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    const-string v1, "PRAGMA recursive_triggers = 1"

    invoke-static {v1, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    const-string v1, "DROP TABLE IF EXISTS room_table_modification_log"

    invoke-static {v1, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    iget-boolean v1, v0, LJ2/C0;->d:Z

    if-eqz v1, :cond_1

    const-string v1, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    invoke-static {v1, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    goto :goto_1

    :cond_1
    const-string v1, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)"

    const-string v3, "TEMP"

    const-string v5, ""

    invoke-static {v1, v3, v5}, LKc/r;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, LG5/j2;->b(Ljava/lang/String;LS2/a;)V

    :goto_1
    iget-object p1, v0, LJ2/C0;->h:Lcom/samsung/android/scloud/lib/setting/e;

    iget-object v0, p1, Lcom/samsung/android/scloud/lib/setting/e;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_1
    iput-boolean v4, p1, Lcom/samsung/android/scloud/lib/setting/e;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    :cond_2
    :goto_2
    iget-object p1, p0, LJ2/s;->k:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iget-object v0, p0, LJ2/s;->j:LJ2/A;

    if-eqz v0, :cond_4

    iget-object p0, p0, LJ2/s;->i:Landroid/content/Intent;

    if-eqz p0, :cond_3

    iget-object v1, v0, LJ2/A;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, LJ2/A;->k:LJ2/z;

    iget-object v2, v0, LJ2/A;->c:Landroid/content/Context;

    invoke-virtual {v2, p0, v1, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object p0, v0, LJ2/A;->b:LJ2/s;

    const-string v1, "observer"

    iget-object v0, v0, LJ2/A;->i:LJ2/y;

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LJ2/s;->a(LJ2/n;)Z

    goto :goto_3

    :cond_3
    const-string p0, "Required value was null."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_4
    :goto_3
    monitor-exit p1

    return-void

    :goto_4
    monitor-exit p1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v1, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public internalInitInvalidationTracker(LT2/a;)V
    .locals 1
    .param p1    # LT2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    const-string v0, "db"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LM2/a;

    invoke-direct {v0, p1}, LM2/a;-><init>(LT2/a;)V

    invoke-virtual {p0, v0}, LJ2/U;->internalInitInvalidationTracker(LS2/a;)V

    return-void
.end method

.method public final isMainThread$room_runtime_release()Z
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isOpenInternal()Z
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    iget-object p0, p0, LJ2/U;->connectionManager:LJ2/K;

    if-eqz p0, :cond_1

    iget-object p0, p0, LJ2/K;->g:LT2/a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, LT2/a;->isOpen()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const-string p0, "connectionManager"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public query(LT2/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .param p1    # LT2/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "query"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LJ2/U;->assertNotMainThread()V

    invoke-virtual {p0}, LJ2/U;->assertNotSuspendingTransaction()V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, LJ2/U;->getOpenHelper()LT2/e;

    move-result-object p0

    invoke-interface {p0}, LT2/e;->getWritableDatabase()LT2/a;

    move-result-object p0

    invoke-interface {p0, p1, p2}, LT2/a;->w(LT2/g;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LJ2/U;->getOpenHelper()LT2/e;

    move-result-object p0

    invoke-interface {p0}, LT2/e;->getWritableDatabase()LT2/a;

    move-result-object p0

    invoke-interface {p0, p1}, LT2/a;->N(LT2/g;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LJ2/L;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, LJ2/L;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, LJ2/U;->a(Lsb/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public runInTransaction(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "body"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LJ2/L;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, LJ2/L;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, LJ2/U;->a(Lsb/a;)Ljava/lang/Object;

    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    invoke-virtual {p0}, LJ2/U;->getOpenHelper()LT2/e;

    move-result-object p0

    invoke-interface {p0}, LT2/e;->getWritableDatabase()LT2/a;

    move-result-object p0

    invoke-interface {p0}, LT2/a;->y()V

    return-void
.end method

.method public final useConnection$room_runtime_release(ZLsb/n;Lib/c;)Ljava/lang/Object;
    .locals 0
    .param p2    # Lsb/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(Z",
            "Lsb/n;",
            "Lib/c<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, LJ2/U;->connectionManager:LJ2/K;

    if-eqz p0, :cond_0

    iget-object p0, p0, LJ2/K;->f:LL2/b;

    invoke-interface {p0, p1, p2, p3}, LL2/b;->h0(ZLsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "connectionManager"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
