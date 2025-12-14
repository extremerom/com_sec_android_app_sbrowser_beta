.class public Lorg/chromium/content/browser/MediaSessionImpl;
.super Lorg/chromium/content_public/browser/MediaSession;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/MediaSessionImpl$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mActionSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mImagesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/services/media_session/MediaImage;",
            ">;"
        }
    .end annotation
.end field

.field private mIsControllable:Z

.field private mIsSuspended:Ljava/lang/Boolean;

.field private mMetadata:Lorg/chromium/services/media_session/MediaMetadata;

.field private mNativeMediaSessionAndroid:J

.field private mObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/content_public/browser/MediaSessionObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList$RewindableIterator<",
            "Lorg/chromium/content_public/browser/MediaSessionObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:Lorg/chromium/services/media_session/MediaPosition;


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/content_public/browser/MediaSession;-><init>()V

    iput-wide p1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mNativeMediaSessionAndroid:J

    new-instance p1, Lorg/chromium/base/ObserverList;

    invoke-direct {p1}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p1}, Lorg/chromium/base/ObserverList;->rewindableIterator()Lorg/chromium/base/ObserverList$RewindableIterator;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    return-void
.end method

.method private static create(J)Lorg/chromium/content/browser/MediaSessionImpl;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content/browser/MediaSessionImpl;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/MediaSessionImpl;-><init>(J)V

    return-object v0
.end method

.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/MediaSessionImpl;
    .locals 1

    invoke-static {}, Lorg/chromium/content/browser/MediaSessionImplJni;->get()Lorg/chromium/content/browser/MediaSessionImpl$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/content/browser/MediaSessionImpl$Natives;->getMediaSessionFromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/MediaSessionImpl;

    move-result-object p0

    return-object p0
.end method

.method private hasObservers()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private mediaSessionActionsChanged([I)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mActionSet:Ljava/util/HashSet;

    iget-object p1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_1
    iget-object p1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/content_public/browser/MediaSessionObserver;

    invoke-virtual {p1, v0}, Lorg/chromium/content_public/browser/MediaSessionObserver;->mediaSessionActionsChanged(Ljava/util/Set;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private mediaSessionArtworkChanged([Lorg/chromium/services/media_session/MediaImage;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mImagesList:Ljava/util/List;

    iget-object p1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object p1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/content_public/browser/MediaSessionObserver;

    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mImagesList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/chromium/content_public/browser/MediaSessionObserver;->mediaSessionArtworkChanged(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private mediaSessionDestroyed()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/MediaSessionObserver;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/MediaSessionObserver;->mediaSessionDestroyed()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_1
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/MediaSessionObserver;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/MediaSessionObserver;->stopObserving()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mNativeMediaSessionAndroid:J

    return-void
.end method

.method private mediaSessionMetadataChanged(Lorg/chromium/services/media_session/MediaMetadata;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mMetadata:Lorg/chromium/services/media_session/MediaMetadata;

    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/MediaSessionObserver;

    invoke-virtual {v0, p1}, Lorg/chromium/content_public/browser/MediaSessionObserver;->mediaSessionMetadataChanged(Lorg/chromium/services/media_session/MediaMetadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private mediaSessionPositionChanged(Lorg/chromium/services/media_session/MediaPosition;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mPosition:Lorg/chromium/services/media_session/MediaPosition;

    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/MediaSessionObserver;

    invoke-virtual {v0, p1}, Lorg/chromium/content_public/browser/MediaSessionObserver;->mediaSessionPositionChanged(Lorg/chromium/services/media_session/MediaPosition;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private mediaSessionStateChanged(ZZ)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-boolean p1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mIsControllable:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mIsSuspended:Ljava/lang/Boolean;

    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Lorg/chromium/base/ObserverList$RewindableIterator;->rewind()V

    :goto_0
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObserversIterator:Lorg/chromium/base/ObserverList$RewindableIterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/content_public/browser/MediaSessionObserver;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content_public/browser/MediaSessionObserver;->mediaSessionStateChanged(ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addObserver(Lorg/chromium/content_public/browser/MediaSessionObserver;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mIsSuspended:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mIsControllable:Z

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lorg/chromium/content_public/browser/MediaSessionObserver;->mediaSessionStateChanged(ZZ)V

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mMetadata:Lorg/chromium/services/media_session/MediaMetadata;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lorg/chromium/content_public/browser/MediaSessionObserver;->mediaSessionMetadataChanged(Lorg/chromium/services/media_session/MediaMetadata;)V

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mImagesList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lorg/chromium/content_public/browser/MediaSessionObserver;->mediaSessionArtworkChanged(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mPosition:Lorg/chromium/services/media_session/MediaPosition;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lorg/chromium/content_public/browser/MediaSessionObserver;->mediaSessionPositionChanged(Lorg/chromium/services/media_session/MediaPosition;)V

    :cond_3
    iget-object p0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mActionSet:Ljava/util/HashSet;

    if-eqz p0, :cond_4

    invoke-virtual {p1, p0}, Lorg/chromium/content_public/browser/MediaSessionObserver;->mediaSessionActionsChanged(Ljava/util/Set;)V

    :cond_4
    return-void
.end method

.method public didReceiveAction(I)V
    .locals 3

    invoke-static {}, Lorg/chromium/content/browser/MediaSessionImplJni;->get()Lorg/chromium/content/browser/MediaSessionImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mNativeMediaSessionAndroid:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/content/browser/MediaSessionImpl$Natives;->didReceiveAction(JLorg/chromium/content/browser/MediaSessionImpl;I)V

    return-void
.end method

.method public removeObserver(Lorg/chromium/content_public/browser/MediaSessionObserver;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0, p1}, Lorg/chromium/base/ObserverList;->removeObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public resume()V
    .locals 3

    invoke-static {}, Lorg/chromium/content/browser/MediaSessionImplJni;->get()Lorg/chromium/content/browser/MediaSessionImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mNativeMediaSessionAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/MediaSessionImpl$Natives;->resume(JLorg/chromium/content/browser/MediaSessionImpl;)V

    return-void
.end method

.method public seekTo(J)V
    .locals 6

    invoke-static {}, Lorg/chromium/content/browser/MediaSessionImplJni;->get()Lorg/chromium/content/browser/MediaSessionImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mNativeMediaSessionAndroid:J

    move-object v3, p0

    move-wide v4, p1

    invoke-interface/range {v0 .. v5}, Lorg/chromium/content/browser/MediaSessionImpl$Natives;->seekTo(JLorg/chromium/content/browser/MediaSessionImpl;J)V

    return-void
.end method

.method public stop()V
    .locals 3

    invoke-static {}, Lorg/chromium/content/browser/MediaSessionImplJni;->get()Lorg/chromium/content/browser/MediaSessionImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mNativeMediaSessionAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/MediaSessionImpl$Natives;->stop(JLorg/chromium/content/browser/MediaSessionImpl;)V

    return-void
.end method

.method public suspend()V
    .locals 3

    invoke-static {}, Lorg/chromium/content/browser/MediaSessionImplJni;->get()Lorg/chromium/content/browser/MediaSessionImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/MediaSessionImpl;->mNativeMediaSessionAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/MediaSessionImpl$Natives;->suspend(JLorg/chromium/content/browser/MediaSessionImpl;)V

    return-void
.end method
