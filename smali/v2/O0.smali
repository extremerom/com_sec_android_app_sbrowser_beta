.class public abstract Lv2/O0;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# instance fields
.field private final differ:Lv2/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv2/i;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final loadStateFlow:LQc/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onPagesUpdatedFlow:LQc/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private userSetRestorationPolicy:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter$Companion$diffCallback$1;)V
    .locals 4

    sget-object v0, LNc/N;->a:LWc/f;

    sget-object v0, LUc/q;->a:LNc/w0;

    sget-object v1, LNc/N;->a:LWc/f;

    const-string v2, "diffCallback"

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "mainDispatcher"

    invoke-static {v0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "workerDispatcher"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    new-instance v2, Lv2/i;

    new-instance v3, Landroidx/recyclerview/widget/c;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/c;-><init>(Landroidx/recyclerview/widget/u0;)V

    invoke-direct {v2, p1, v3, v0, v1}, Lv2/i;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter$Companion$diffCallback$1;Landroidx/recyclerview/widget/c;Lib/h;Lib/h;)V

    iput-object v2, p0, Lv2/O0;->differ:Lv2/i;

    sget-object p1, Landroidx/recyclerview/widget/t0;->PREVENT:Landroidx/recyclerview/widget/t0;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/u0;->setStateRestorationPolicy(Landroidx/recyclerview/widget/t0;)V

    new-instance p1, LJ6/m;

    move-object v0, p0

    check-cast v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter;

    const/4 v1, 0x2

    invoke-direct {p1, v1, v0}, LJ6/m;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->registerAdapterDataObserver(Landroidx/recyclerview/widget/w0;)V

    new-instance p1, Lv2/N0;

    invoke-direct {p1, v0}, Lv2/N0;-><init>(Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter;)V

    invoke-virtual {p0, p1}, Lv2/O0;->addLoadStateListener(Lsb/k;)V

    iget-object p1, v2, Lv2/i;->i:LQc/h;

    iput-object p1, p0, Lv2/O0;->loadStateFlow:LQc/h;

    iget-object p1, v2, Lv2/i;->j:LQc/g0;

    iput-object p1, p0, Lv2/O0;->onPagesUpdatedFlow:LQc/h;

    return-void
.end method

.method public static final access$_init_$considerAllowingStateRestoration(Lv2/O0;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->getStateRestorationPolicy()Landroidx/recyclerview/widget/t0;

    move-result-object v0

    sget-object v1, Landroidx/recyclerview/widget/t0;->PREVENT:Landroidx/recyclerview/widget/t0;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lv2/O0;->userSetRestorationPolicy:Z

    if-nez v0, :cond_0

    sget-object v0, Landroidx/recyclerview/widget/t0;->ALLOW:Landroidx/recyclerview/widget/t0;

    invoke-virtual {p0, v0}, Lv2/O0;->setStateRestorationPolicy(Landroidx/recyclerview/widget/t0;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final addLoadStateListener(Lsb/k;)V
    .locals 3
    .param p1    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/k;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lv2/O0;->differ:Lv2/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lv2/i;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lv2/i;->m:Lm9/g;

    invoke-static {v2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lv2/i;->g:Lv2/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lv2/e;->e:LZ3/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, LZ3/x;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, LZ3/x;->c:Ljava/lang/Object;

    check-cast v0, LQc/A0;

    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/s;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Lm9/g;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lv2/i;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lv2/O0;->differ:Lv2/i;

    iget-object v0, p0, Lv2/i;->d:LQc/A0;

    :cond_0
    :try_start_0
    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, LQc/A0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput p1, p0, Lv2/i;->e:I

    iget-object v1, p0, Lv2/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv2/j1;

    if-eqz v1, :cond_1

    invoke-static {v1, p1}, Lv2/F;->a(Lv2/j1;I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lv2/i;->g:Lv2/e;

    invoke-virtual {p0, p1}, Lv2/e;->b(I)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, LQc/A0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p0

    :catchall_0
    move-exception p0

    :goto_1
    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, LQc/A0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    throw p0
.end method

.method public getItemCount()I
    .locals 1

    iget-object p0, p0, Lv2/O0;->differ:Lv2/i;

    iget-object v0, p0, Lv2/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/j1;

    if-eqz v0, :cond_0

    check-cast v0, Lv2/J0;

    invoke-virtual {v0}, Lv2/J0;->e()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lv2/i;->g:Lv2/e;

    iget-object p0, p0, Lv2/e;->d:Lv2/J0;

    invoke-virtual {p0}, Lv2/J0;->e()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/u0;->getItemId(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getLoadStateFlow()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lv2/O0;->loadStateFlow:LQc/h;

    return-object p0
.end method

.method public final removeLoadStateListener(Lsb/k;)V
    .locals 1
    .param p1    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/k;",
            ")V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lv2/O0;->differ:Lv2/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lv2/i;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lv2/i;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsb/k;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lv2/i;->g:Lv2/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lv2/e;->e:LZ3/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, LZ3/x;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setStateRestorationPolicy(Landroidx/recyclerview/widget/t0;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/t0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "strategy"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv2/O0;->userSetRestorationPolicy:Z

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/u0;->setStateRestorationPolicy(Landroidx/recyclerview/widget/t0;)V

    return-void
.end method

.method public final submitData(Lv2/M0;Lib/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lv2/M0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/M0;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lv2/O0;->differ:Lv2/i;

    iget-object v0, p0, Lv2/i;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object p0, p0, Lv2/i;->g:Lv2/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lv2/W0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lv2/W0;-><init>(Lv2/e;Lv2/M0;Lib/c;)V

    const/4 p1, 0x0

    iget-object p0, p0, Lv2/e;->g:Lo3/f;

    invoke-virtual {p0, p1, v0, p2}, Lo3/f;->p(ILv2/W0;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    sget-object p2, Ldb/r;->a:Ldb/r;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, p2

    :goto_1
    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    return-object p2
.end method
