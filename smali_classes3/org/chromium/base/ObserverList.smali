.class public Lorg/chromium/base/ObserverList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/ObserverList$ObserverListIterator;,
        Lorg/chromium/base/ObserverList$RewindableIterator;
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

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCount:I

.field private mEnableThreadAsserts:Z

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

.field private final mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/ObserverList;->mEnableThreadAsserts:Z

    new-instance v0, Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/ObserverList;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    return-void
.end method

.method private assertSameThreadUsed()V
    .locals 2

    iget-boolean v0, p0, Lorg/chromium/base/ObserverList;->mEnableThreadAsserts:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lorg/chromium/base/ObserverList;->mThreadChecker:Lorg/chromium/base/ThreadUtils$ThreadChecker;

    invoke-virtual {p0}, Lorg/chromium/base/ThreadUtils$ThreadChecker;->assertOnValidThread()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "ObserverList is not thread-safe; Observers MUST be added, removed and will be notified on the thread that created the ObserverList."

    invoke-direct {v0, v1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private capacity()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method private compact()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private decrementIterationDepthAndCompactIfNeeded()V
    .locals 1

    iget v0, p0, Lorg/chromium/base/ObserverList;->mIterationDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/base/ObserverList;->mIterationDepth:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/base/ObserverList;->mNeedsCompact:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/base/ObserverList;->mNeedsCompact:Z

    invoke-direct {p0}, Lorg/chromium/base/ObserverList;->compact()V

    return-void
.end method

.method public static bridge synthetic g(Lorg/chromium/base/ObserverList;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/ObserverList;->assertSameThreadUsed()V

    return-void
.end method

.method private getObserverAt(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Lorg/chromium/base/ObserverList;)I
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/ObserverList;->capacity()I

    move-result p0

    return p0
.end method

.method private incrementIterationDepth()V
    .locals 1

    iget v0, p0, Lorg/chromium/base/ObserverList;->mIterationDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/base/ObserverList;->mIterationDepth:I

    return-void
.end method

.method public static bridge synthetic l(Lorg/chromium/base/ObserverList;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/ObserverList;->decrementIterationDepthAndCompactIfNeeded()V

    return-void
.end method

.method public static bridge synthetic m(Lorg/chromium/base/ObserverList;I)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/ObserverList;->getObserverAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic n(Lorg/chromium/base/ObserverList;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/ObserverList;->incrementIterationDepth()V

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

    invoke-direct {p0}, Lorg/chromium/base/ObserverList;->assertSameThreadUsed()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lorg/chromium/base/ObserverList;->mCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/chromium/base/ObserverList;->mCount:I

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public clear()V
    .locals 4

    invoke-direct {p0}, Lorg/chromium/base/ObserverList;->assertSameThreadUsed()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/base/ObserverList;->mCount:I

    iget v1, p0, Lorg/chromium/base/ObserverList;->mIterationDepth:I

    if-nez v1, :cond_0

    iget-object p0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    iget-object v1, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-boolean v2, p0, Lorg/chromium/base/ObserverList;->mNeedsCompact:Z

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    or-int/2addr v2, v3

    iput-boolean v2, p0, Lorg/chromium/base/ObserverList;->mNeedsCompact:Z

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public hasObserver(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/base/ObserverList;->assertSameThreadUsed()V

    iget-object p0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-direct {p0}, Lorg/chromium/base/ObserverList;->assertSameThreadUsed()V

    iget p0, p0, Lorg/chromium/base/ObserverList;->mCount:I

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

    invoke-direct {p0}, Lorg/chromium/base/ObserverList;->assertSameThreadUsed()V

    new-instance v0, Lorg/chromium/base/ObserverList$ObserverListIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/base/ObserverList$ObserverListIterator;-><init>(Lorg/chromium/base/ObserverList;I)V

    return-object v0
.end method

.method public removeObserver(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/base/ObserverList;->assertSameThreadUsed()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lorg/chromium/base/ObserverList;->mIterationDepth:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lorg/chromium/base/ObserverList;->mNeedsCompact:Z

    iget-object v0, p0, Lorg/chromium/base/ObserverList;->mObservers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget p1, p0, Lorg/chromium/base/ObserverList;->mCount:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/chromium/base/ObserverList;->mCount:I

    return v1
.end method

.method public rewindableIterator()Lorg/chromium/base/ObserverList$RewindableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/chromium/base/ObserverList$RewindableIterator<",
            "TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/base/ObserverList;->assertSameThreadUsed()V

    new-instance v0, Lorg/chromium/base/ObserverList$ObserverListIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/base/ObserverList$ObserverListIterator;-><init>(Lorg/chromium/base/ObserverList;I)V

    return-object v0
.end method
