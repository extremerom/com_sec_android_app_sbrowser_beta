.class public final Landroidx/emoji2/text/c;
.super Le7/a;
.source "SourceFile"


# instance fields
.field public final synthetic b:Landroidx/emoji2/text/d;


# direct methods
.method public constructor <init>(Landroidx/emoji2/text/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/c;->b:Landroidx/emoji2/text/d;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/c;->b:Landroidx/emoji2/text/d;

    iget-object p0, p0, Landroidx/emoji2/text/d;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/emoji2/text/h;

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/h;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Lcom/google/firebase/messaging/q;)V
    .locals 5

    iget-object p0, p0, Landroidx/emoji2/text/c;->b:Landroidx/emoji2/text/d;

    iput-object p1, p0, Landroidx/emoji2/text/d;->c:Ljava/lang/Object;

    new-instance p1, LZ3/x;

    iget-object v0, p0, Landroidx/emoji2/text/d;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/messaging/q;

    iget-object v1, p0, Landroidx/emoji2/text/d;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/emoji2/text/h;

    iget-object v2, v1, Landroidx/emoji2/text/h;->g:Lu5/d;

    iget-object v1, v1, Landroidx/emoji2/text/h;->i:Landroidx/emoji2/text/b;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-lt v3, v4, :cond_0

    invoke-static {}, Landroidx/emoji2/text/k;->a()Ljava/util/Set;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lg3/p;->c()Ljava/util/Set;

    move-result-object v3

    :goto_0
    invoke-direct {p1, v0, v2, v1, v3}, LZ3/x;-><init>(Lcom/google/firebase/messaging/q;Lu5/d;Landroidx/emoji2/text/b;Ljava/util/Set;)V

    iput-object p1, p0, Landroidx/emoji2/text/d;->b:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/emoji2/text/d;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/emoji2/text/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Landroidx/emoji2/text/h;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Landroidx/emoji2/text/h;->c:I

    iget-object v0, p0, Landroidx/emoji2/text/h;->b:LN/g;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroidx/emoji2/text/h;->b:LN/g;

    invoke-virtual {v0}, LN/g;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/emoji2/text/h;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Landroidx/emoji2/text/h;->d:Landroid/os/Handler;

    new-instance v1, Landroidx/emoji2/text/f;

    iget p0, p0, Landroidx/emoji2/text/h;->c:I

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Landroidx/emoji2/text/f;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/emoji2/text/h;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
