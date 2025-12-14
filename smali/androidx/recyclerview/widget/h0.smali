.class public abstract Landroidx/recyclerview/widget/h0;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# instance fields
.field final mDiffer:Landroidx/recyclerview/widget/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/i;"
        }
    .end annotation
.end field

.field private final mListener:Landroidx/recyclerview/widget/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/g;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/A;)V
    .locals 5

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    new-instance v0, Landroidx/recyclerview/widget/g0;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/g0;-><init>(Landroidx/recyclerview/widget/h0;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/h0;->mListener:Landroidx/recyclerview/widget/g;

    new-instance v1, Landroidx/recyclerview/widget/i;

    new-instance v2, Landroidx/recyclerview/widget/c;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/c;-><init>(Landroidx/recyclerview/widget/u0;)V

    sget-object v3, Landroidx/recyclerview/widget/d;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Landroidx/recyclerview/widget/d;->b:Ljava/util/concurrent/ExecutorService;

    if-nez v4, :cond_0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    sput-object v4, Landroidx/recyclerview/widget/d;->b:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v3, Landroidx/recyclerview/widget/d;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Landroidx/recyclerview/widget/x1;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v4, Landroidx/recyclerview/widget/x1;->a:Ljava/lang/Object;

    iput-object p1, v4, Landroidx/recyclerview/widget/x1;->b:Ljava/lang/Object;

    invoke-direct {v1, v2, v4}, Landroidx/recyclerview/widget/i;-><init>(Landroidx/recyclerview/widget/c;Landroidx/recyclerview/widget/x1;)V

    iput-object v1, p0, Landroidx/recyclerview/widget/h0;->mDiffer:Landroidx/recyclerview/widget/i;

    iget-object p0, v1, Landroidx/recyclerview/widget/i;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/recyclerview/widget/h0;->mDiffer:Landroidx/recyclerview/widget/i;

    iget-object p0, p0, Landroidx/recyclerview/widget/i;->f:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/h0;->mDiffer:Landroidx/recyclerview/widget/i;

    iget-object p0, p0, Landroidx/recyclerview/widget/i;->f:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public submitList(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Landroidx/recyclerview/widget/h0;->mDiffer:Landroidx/recyclerview/widget/i;

    iget v0, p0, Landroidx/recyclerview/widget/i;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/recyclerview/widget/i;->g:I

    iget-object v1, p0, Landroidx/recyclerview/widget/i;->e:Ljava/util/List;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/i;->f:Ljava/util/List;

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/recyclerview/widget/i;->a:Landroidx/recyclerview/widget/c;

    if-nez p1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/recyclerview/widget/i;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/i;->f:Ljava/util/List;

    invoke-virtual {v4, v3, p1}, Landroidx/recyclerview/widget/c;->b(II)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/i;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    iput-object p1, p0, Landroidx/recyclerview/widget/i;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/recyclerview/widget/i;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v4, v3, p1}, Landroidx/recyclerview/widget/c;->a(II)V

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/i;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/widget/i;->b:Landroidx/recyclerview/widget/x1;

    iget-object v2, v2, Landroidx/recyclerview/widget/x1;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/ExecutorService;

    new-instance v3, Landroidx/recyclerview/widget/f;

    invoke-direct {v3, p0, v1, p1, v0}, Landroidx/recyclerview/widget/f;-><init>(Landroidx/recyclerview/widget/i;Ljava/util/List;Ljava/util/List;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
