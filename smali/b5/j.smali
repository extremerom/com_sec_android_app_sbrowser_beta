.class public abstract Lb5/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final zaa:Lc5/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final zab:Landroid/content/Context;

.field private final zac:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zad:Lb5/g;

.field private final zae:Lb5/c;

.field private final zaf:Lc5/b;

.field private final zag:Landroid/os/Looper;

.field private final zah:I

.field private final zai:Lb5/m;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field private final zaj:Lc5/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lb5/g;Lb5/c;Lb5/i;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Api must not be null."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p5, v0}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lb5/j;->zab:Landroid/content/Context;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    const-class v0, Landroid/content/Context;

    const-string v2, "getAttributionTag"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    :catch_0
    :cond_1
    iput-object v1, p0, Lb5/j;->zac:Ljava/lang/String;

    iput-object p3, p0, Lb5/j;->zad:Lb5/g;

    iput-object p4, p0, Lb5/j;->zae:Lb5/c;

    iget-object p1, p5, Lb5/i;->b:Landroid/os/Looper;

    iput-object p1, p0, Lb5/j;->zag:Landroid/os/Looper;

    new-instance p1, Lc5/b;

    invoke-direct {p1, p3, p4, v1}, Lc5/b;-><init>(Lb5/g;Lb5/c;Ljava/lang/String;)V

    iput-object p1, p0, Lb5/j;->zaf:Lc5/b;

    new-instance p3, Lc5/C;

    invoke-direct {p3, p0}, Lc5/C;-><init>(Lb5/j;)V

    iput-object p3, p0, Lb5/j;->zai:Lb5/m;

    iget-object p3, p0, Lb5/j;->zab:Landroid/content/Context;

    invoke-static {p3}, Lc5/h;->g(Landroid/content/Context;)Lc5/h;

    move-result-object p3

    iput-object p3, p0, Lb5/j;->zaa:Lc5/h;

    iget-object p4, p3, Lc5/h;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p4

    iput p4, p0, Lb5/j;->zah:I

    iget-object p4, p5, Lb5/i;->a:Lc5/a;

    iput-object p4, p0, Lb5/j;->zaj:Lc5/s;

    if-eqz p2, :cond_3

    instance-of p4, p2, Lcom/google/android/gms/common/api/GoogleApiActivity;

    if-nez p4, :cond_3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p5

    if-ne p4, p5, :cond_3

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b(Landroid/app/Activity;)Lc5/l;

    move-result-object p2

    const-string p4, "ConnectionlessLifecycleHelper"

    const-class p5, Lc5/w;

    invoke-interface {p2, p5, p4}, Lc5/l;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object p4

    check-cast p4, Lc5/w;

    if-nez p4, :cond_2

    new-instance p4, Lc5/w;

    sget-object p5, La5/b;->c:Ljava/lang/Object;

    invoke-direct {p4, p2, p3}, Lc5/w;-><init>(Lc5/l;Lc5/h;)V

    :cond_2
    iget-object p2, p4, Lc5/w;->f:LN/g;

    invoke-virtual {p2, p1}, LN/g;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, p4}, Lc5/h;->a(Lc5/w;)V

    :cond_3
    iget-object p1, p3, Lc5/h;->A:LC5/a;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lb5/g;Lb5/c;Lc5/a;)V
    .locals 7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v6, Lb5/i;

    invoke-direct {v6, p4, v0}, Lb5/i;-><init>(Lc5/a;Landroid/os/Looper;)V

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lb5/j;-><init>(Landroid/content/Context;Landroid/app/Activity;Lb5/g;Lb5/c;Lb5/i;)V

    return-void
.end method


# virtual methods
.method public final a(ILc5/e;)V
    .locals 2

    iget-boolean v0, p2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->i:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->j:LL3/f;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iput-boolean v1, p2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->i:Z

    iget-object v0, p0, Lb5/j;->zaa:Lc5/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lc5/M;

    invoke-direct {v1, p1, p2}, Lc5/M;-><init>(ILc5/e;)V

    iget-object p1, v0, Lc5/h;->A:LC5/a;

    new-instance p2, Lc5/H;

    iget-object v0, v0, Lc5/h;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p2, v1, v0, p0}, Lc5/H;-><init>(Lc5/P;ILb5/j;)V

    const/4 p0, 0x4

    invoke-virtual {p1, p0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public asGoogleApiClient()Lb5/m;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-object p0, p0, Lb5/j;->zai:Lb5/m;

    return-object p0
.end method

.method public final b(ILc5/u;)LR5/p;
    .locals 4

    new-instance v0, LR5/i;

    invoke-direct {v0}, LR5/i;-><init>()V

    iget-object v1, p0, Lb5/j;->zaa:Lc5/h;

    iget-object v2, p0, Lb5/j;->zaj:Lc5/s;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p2, Lc5/u;->c:I

    invoke-virtual {v1, v0, v3, p0}, Lc5/h;->f(LR5/i;ILb5/j;)V

    new-instance v3, Lc5/O;

    invoke-direct {v3, p1, p2, v0, v2}, Lc5/O;-><init>(ILc5/u;LR5/i;Lc5/s;)V

    iget-object p1, v1, Lc5/h;->A:LC5/a;

    new-instance p2, Lc5/H;

    iget-object v1, v1, Lc5/h;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p2, v3, v1, p0}, Lc5/H;-><init>(Lc5/P;ILb5/j;)V

    const/4 p0, 0x4

    invoke-virtual {p1, p0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, v0, LR5/i;->a:LR5/p;

    return-object p0
.end method

.method public createClientSettingsBuilder()Lcom/google/android/gms/common/internal/g;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/internal/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/common/internal/g;->a:LN/g;

    if-nez v2, :cond_0

    new-instance v2, LN/g;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LN/g;-><init>(I)V

    iput-object v2, v0, Lcom/google/android/gms/common/internal/g;->a:LN/g;

    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/common/internal/g;->a:LN/g;

    invoke-virtual {v2, v1}, LN/g;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lb5/j;->zab:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/String;

    iget-object p0, p0, Lb5/j;->zab:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public doBestEffortWrite(Lc5/u;)LR5/h;
    .locals 1
    .param p1    # Lc5/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lb5/e;",
            ">(",
            "Lc5/u;",
            ")",
            "LR5/h;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lb5/j;->b(ILc5/u;)LR5/p;

    move-result-object p0

    return-object p0
.end method

.method public doBestEffortWrite(Lc5/e;)Lc5/e;
    .locals 1
    .param p1    # Lc5/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lb5/e;",
            "T:",
            "Lc5/e;",
            ">(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lb5/j;->a(ILc5/e;)V

    return-object p1
.end method

.method public doRead(Lc5/u;)LR5/h;
    .locals 1
    .param p1    # Lc5/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lb5/e;",
            ">(",
            "Lc5/u;",
            ")",
            "LR5/h;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lb5/j;->b(ILc5/u;)LR5/p;

    move-result-object p0

    return-object p0
.end method

.method public doRead(Lc5/e;)Lc5/e;
    .locals 1
    .param p1    # Lc5/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lb5/e;",
            "T:",
            "Lc5/e;",
            ">(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lb5/j;->a(ILc5/e;)V

    return-object p1
.end method

.method public doRegisterEventListener(Lc5/q;)LR5/h;
    .locals 5
    .param p1    # Lc5/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lb5/e;",
            ">(",
            "Lc5/q;",
            ")",
            "LR5/h;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    iget-object v0, p1, Lc5/q;->a:LG5/g4;

    iget-object v0, v0, LG5/g4;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/emoji2/text/d;

    iget-object v0, v0, Landroidx/emoji2/text/d;->c:Ljava/lang/Object;

    check-cast v0, Lc5/m;

    const-string v1, "Listener has already been released."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lc5/q;->b:Lo3/c;

    iget-object v0, v0, Lo3/c;->a:Ljava/lang/Object;

    check-cast v0, Lc5/m;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb5/j;->zaa:Lc5/h;

    iget-object v1, p1, Lc5/q;->a:LG5/g4;

    iget-object p1, p1, Lc5/q;->b:Lo3/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LR5/i;

    invoke-direct {v2}, LR5/i;-><init>()V

    iget v3, v1, LG5/g4;->b:I

    invoke-virtual {v0, v2, v3, p0}, Lc5/h;->f(LR5/i;ILb5/j;)V

    new-instance v3, Lc5/N;

    new-instance v4, Lc5/I;

    invoke-direct {v4, v1, p1}, Lc5/I;-><init>(LG5/g4;Lo3/c;)V

    invoke-direct {v3, v4, v2}, Lc5/N;-><init>(Lc5/I;LR5/i;)V

    iget-object p1, v0, Lc5/h;->A:LC5/a;

    new-instance v1, Lc5/H;

    iget-object v0, v0, Lc5/h;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {v1, v3, v0, p0}, Lc5/H;-><init>(Lc5/P;ILb5/j;)V

    const/16 p0, 0x8

    invoke-virtual {p1, p0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, v2, LR5/i;->a:LR5/p;

    return-object p0
.end method

.method public doUnregisterEventListener(Lc5/m;I)LR5/h;
    .locals 3
    .param p1    # Lc5/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc5/m;",
            "I)",
            "LR5/h;"
        }
    .end annotation

    const-string v0, "Listener key cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb5/j;->zaa:Lc5/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, LR5/i;

    invoke-direct {v1}, LR5/i;-><init>()V

    invoke-virtual {v0, v1, p2, p0}, Lc5/h;->f(LR5/i;ILb5/j;)V

    new-instance p2, Lc5/N;

    invoke-direct {p2, p1, v1}, Lc5/N;-><init>(Lc5/m;LR5/i;)V

    iget-object p1, v0, Lc5/h;->A:LC5/a;

    new-instance v2, Lc5/H;

    iget-object v0, v0, Lc5/h;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {v2, p2, v0, p0}, Lc5/H;-><init>(Lc5/P;ILb5/j;)V

    const/16 p0, 0xd

    invoke-virtual {p1, p0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p0, v1, LR5/i;->a:LR5/p;

    return-object p0
.end method

.method public doWrite(Lc5/u;)LR5/h;
    .locals 1
    .param p1    # Lc5/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lb5/e;",
            ">(",
            "Lc5/u;",
            ")",
            "LR5/h;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lb5/j;->b(ILc5/u;)LR5/p;

    move-result-object p0

    return-object p0
.end method

.method public doWrite(Lc5/e;)Lc5/e;
    .locals 1
    .param p1    # Lc5/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lb5/e;",
            "T:",
            "Lc5/e;",
            ">(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lb5/j;->a(ILc5/e;)V

    return-object p1
.end method

.method public final getApiKey()Lc5/b;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc5/b;"
        }
    .end annotation

    iget-object p0, p0, Lb5/j;->zaf:Lc5/b;

    return-object p0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-object p0, p0, Lb5/j;->zab:Landroid/content/Context;

    return-object p0
.end method

.method public getContextAttributionTag()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-object p0, p0, Lb5/j;->zac:Ljava/lang/String;

    return-object p0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    iget-object p0, p0, Lb5/j;->zag:Landroid/os/Looper;

    return-object p0
.end method

.method public final zaa()I
    .locals 0

    iget p0, p0, Lb5/j;->zah:I

    return p0
.end method

.method public final zab(Landroid/os/Looper;Lc5/y;)Lb5/e;
    .locals 8
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lb5/j;->createClientSettingsBuilder()Lcom/google/android/gms/common/internal/g;

    move-result-object v0

    new-instance v4, Lcom/google/android/gms/common/internal/h;

    iget-object v1, v0, Lcom/google/android/gms/common/internal/g;->a:LN/g;

    iget-object v2, v0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/String;

    invoke-direct {v4, v1, v2, v0}, Lcom/google/android/gms/common/internal/h;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lb5/j;->zad:Lb5/g;

    iget-object v1, v0, Lb5/g;->a:Lb5/a;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    iget-object v2, p0, Lb5/j;->zab:Landroid/content/Context;

    iget-object v5, p0, Lb5/j;->zae:Lb5/c;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lb5/a;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/h;Ljava/lang/Object;Lb5/k;Lb5/l;)Lb5/e;

    move-result-object p1

    invoke-virtual {p0}, Lb5/j;->getContextAttributionTag()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p2, p1, Lcom/google/android/gms/common/internal/f;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/common/internal/f;

    invoke-virtual {p2, p0}, Lcom/google/android/gms/common/internal/f;->setAttributionTag(Ljava/lang/String;)V

    :cond_0
    if-eqz p0, :cond_2

    instance-of p0, p1, Lc5/o;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, LV0/c;->u(Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final zac(Landroid/content/Context;Landroid/os/Handler;)Lc5/K;
    .locals 4

    new-instance v0, Lc5/K;

    invoke-virtual {p0}, Lb5/j;->createClientSettingsBuilder()Lcom/google/android/gms/common/internal/g;

    move-result-object p0

    new-instance v1, Lcom/google/android/gms/common/internal/h;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/g;->a:LN/g;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/g;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/g;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p0}, Lcom/google/android/gms/common/internal/h;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p1, p2, v1}, Lc5/K;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/h;)V

    return-object v0
.end method
