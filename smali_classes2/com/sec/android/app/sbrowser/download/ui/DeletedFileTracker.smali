.class Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mIncognitoItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNumInstances:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mRegularItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;->mRegularItems:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;->mIncognitoItems:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;->mNumInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public add(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isOffTheRecord()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;->mIncognitoItems:Ljava/util/Set;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;->mRegularItems:Ljava/util/Set;

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public contains(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isOffTheRecord()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;->mIncognitoItems:Ljava/util/Set;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;->mRegularItems:Ljava/util/Set;

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public decrementInstanceCount()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;->mNumInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;->mRegularItems:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;->mIncognitoItems:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    :cond_0
    return-void
.end method

.method public incrementInstanceCount()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DeletedFileTracker;->mNumInstances:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    return-void
.end method
