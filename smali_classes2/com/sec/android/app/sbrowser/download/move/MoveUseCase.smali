.class public Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;
.super Lcom/sec/android/app/sbrowser/download/BaseObservable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/download/move/MoveUseCase$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/sbrowser/download/BaseObservable<",
        "Lcom/sec/android/app/sbrowser/download/move/MoveUseCase$Listener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMover:Lcom/sec/android/app/sbrowser/download/move/MoveStrategy;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/BaseObservable;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;->mUiHandler:Landroid/os/Handler;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/download/move/MoveContentURI;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/download/move/MoveContentURI;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;->mMover:Lcom/sec/android/app/sbrowser/download/move/MoveStrategy;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/download/move/MoveFileURI;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/download/move/MoveFileURI;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;->mMover:Lcom/sec/android/app/sbrowser/download/move/MoveStrategy;

    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;->lambda$moveDownloadItems$0(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;->lambda$notifyMoveOperationFinished$3()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;->lambda$notifyFileMoved$2(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;->lambda$notifyMoveOperationStart$1(I)V

    return-void
.end method

.method private synthetic lambda$moveDownloadItems$0(Ljava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->isOffTheRecord()Z

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;->mMover:Lcom/sec/android/app/sbrowser/download/move/MoveStrategy;

    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/download/move/MoveStrategy;->move(Lcom/sec/terrace/browser/download/TerraceDownloadItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;->notifyFileMoved(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;->notifyMoveOperationFinished()V

    return-void
.end method

.method private synthetic lambda$notifyFileMoved$2(Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/BaseObservable;->getListeners()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase$Listener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase$Listener;->onFileMoved(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$notifyMoveOperationFinished$3()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/BaseObservable;->getListeners()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase$Listener;->onMoveOperationFinished()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$notifyMoveOperationStart$1(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/BaseObservable;->getListeners()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase$Listener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase$Listener;->onMoveOperationStart(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyFileMoved(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/firebase/messaging/p;

    const/16 v2, 0xa

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/google/firebase/messaging/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyMoveOperationFinished()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/tab_sync/o;

    const/16 v2, 0xe

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/tab_sync/o;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyMoveOperationStart(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;->mUiHandler:Landroid/os/Handler;

    new-instance v1, LG6/c;

    const/16 v2, 0x13

    invoke-direct {v1, p1, v2, p0}, LG6/c;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public moveDownloadItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/download/TerraceDownloadItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/move/MoveUseCase;->notifyMoveOperationStart(I)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/sbrowser/widget/a;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/widget/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
