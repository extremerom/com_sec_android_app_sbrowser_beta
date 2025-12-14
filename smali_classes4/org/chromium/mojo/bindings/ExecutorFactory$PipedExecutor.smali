.class Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Lorg/chromium/mojo/system/Watcher$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/ExecutorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PipedExecutor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mPendingActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mReadHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

.field private final mWatcher:Lorg/chromium/mojo/system/Watcher;

.field private final mWriteHandle:Lorg/chromium/mojo/system/MessagePipeHandle;


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/chromium/mojo/system/Core;->getWatcher()Lorg/chromium/mojo/system/Watcher;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mWatcher:Lorg/chromium/mojo/system/Watcher;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mLock:Ljava/lang/Object;

    new-instance v1, Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;

    invoke-direct {v1}, Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;-><init>()V

    invoke-interface {p1, v1}, Lorg/chromium/mojo/system/Core;->createMessagePipe(Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;)Lorg/chromium/mojo/system/Pair;

    move-result-object p1

    iget-object v1, p1, Lorg/chromium/mojo/system/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lorg/chromium/mojo/system/MessagePipeHandle;

    iput-object v1, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mReadHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    iget-object p1, p1, Lorg/chromium/mojo/system/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lorg/chromium/mojo/system/MessagePipeHandle;

    iput-object p1, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mWriteHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mPendingActions:Ljava/util/List;

    sget-object p1, Lorg/chromium/mojo/system/Core$HandleSignals;->READABLE:Lorg/chromium/mojo/system/Core$HandleSignals;

    invoke-interface {v0, v1, p1, p0}, Lorg/chromium/mojo/system/Watcher;->start(Lorg/chromium/mojo/system/Handle;Lorg/chromium/mojo/system/Core$HandleSignals;Lorg/chromium/mojo/system/Watcher$Callback;)I

    return-void
.end method

.method private close()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mWriteHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-interface {v1}, Lorg/chromium/mojo/system/Handle;->close()V

    iget-object v1, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mPendingActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mWatcher:Lorg/chromium/mojo/system/Watcher;

    invoke-interface {v0}, Lorg/chromium/mojo/system/Watcher;->cancel()V

    iget-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mWatcher:Lorg/chromium/mojo/system/Watcher;

    invoke-interface {v0}, Lorg/chromium/mojo/system/Watcher;->destroy()V

    iget-object p0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mReadHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-interface {p0}, Lorg/chromium/mojo/system/Handle;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private readNotifyBufferMessage()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mReadHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    sget-object v0, Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;->NONE:Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;

    invoke-interface {p0, v0}, Lorg/chromium/mojo/system/MessagePipeHandle;->readMessage(Lorg/chromium/mojo/system/MessagePipeHandle$ReadFlags;)Lorg/chromium/mojo/system/ResultAnd;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/mojo/system/ResultAnd;->getMojoResult()I

    move-result p0
    :try_end_0
    .catch Lorg/chromium/mojo/system/MojoException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private runNextAction()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mPendingActions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mWriteHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-interface {v1}, Lorg/chromium/mojo/system/Handle;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mPendingActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->mWriteHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-static {}, Lorg/chromium/mojo/bindings/ExecutorFactory;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v1, Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;->NONE:Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;

    const/4 v2, 0x0

    invoke-interface {p0, p1, v2, v1}, Lorg/chromium/mojo/system/MessagePipeHandle;->writeMessage(Ljava/nio/ByteBuffer;Ljava/util/List;Lorg/chromium/mojo/system/MessagePipeHandle$WriteFlags;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to execute an action on a closed executor."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onResult(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->readNotifyBufferMessage()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->runNextAction()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/chromium/mojo/bindings/ExecutorFactory$PipedExecutor;->close()V

    :goto_0
    return-void
.end method
