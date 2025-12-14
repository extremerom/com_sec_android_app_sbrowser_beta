.class public Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;,
        Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$RewindableIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private mCount:I

.field private mIterationDepth:I

.field private mNeedsCompact:Z

.field public final mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mObservers:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mIterationDepth:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mCount:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mNeedsCompact:Z

    return-void
.end method

.method private capacity()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method private compact()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private decrementIterationDepthAndCompactIfNeeded()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mIterationDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mIterationDepth:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mNeedsCompact:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mNeedsCompact:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->compact()V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->capacity()I

    move-result p0

    return p0
.end method

.method private getObserverAt(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->decrementIterationDepthAndCompactIfNeeded()V

    return-void
.end method

.method private incrementIterationDepth()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mIterationDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mIterationDepth:I

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->getObserverAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->incrementIterationDepth()V

    return-void
.end method


# virtual methods
.method public addObserver(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mCount:I

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public clear()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mCount:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mIterationDepth:I

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mNeedsCompact:Z

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mNeedsCompact:Z

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mObservers:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public isEmpty()Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mCount:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList$ObserverListIterator;-><init>(Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;I)V

    return-object v0
.end method

.method public removeObserver(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mIterationDepth:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mNeedsCompact:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mObservers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget p1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mCount:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/device/observer/ObserverList;->mCount:I

    return v1
.end method
