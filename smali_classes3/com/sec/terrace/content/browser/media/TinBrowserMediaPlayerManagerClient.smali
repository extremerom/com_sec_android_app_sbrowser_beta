.class public Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;
    }
.end annotation


# instance fields
.field private mBufferingPercentage:I

.field private mCaptureResultCallbackListIndex:I

.field private final mCaptureResultCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$CaptureResultCallback;",
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

.field private mListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocker:Ljava/lang/Object;

.field private final mLockerCaptureResultCallbackList:Ljava/lang/Object;

.field private final mLockerVisibleResultCallbackList:Ljava/lang/Object;

.field private mNativeTinBrowserMediaPlayerManagerClient:J

.field private final mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

.field private mTerraceMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

.field private mTitle:Ljava/lang/String;

.field private mVisibleResultCallbackListIndex:I

.field private final mVisibleResultCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$VisibleResultCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mVisibleResultCallbacks:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mVisibleResultCallbackListIndex:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mLocker:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mLockerVisibleResultCallbackList:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mCaptureResultCallbacks:Ljava/util/Map;

    iput v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mCaptureResultCallbackListIndex:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mLockerCaptureResultCallbackList:Ljava/lang/Object;

    new-instance v0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$1;-><init>(Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    iput-wide p1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mListenerList:Ljava/util/ArrayList;

    new-instance p1, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    invoke-direct {p1, p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;-><init>(Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;)V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mTerraceMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;Lcom/sec/terrace/content/browser/media/TerraceMediaClient;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->lambda$onEventFired$0(Lcom/sec/terrace/content/browser/media/TerraceMediaClient;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;)I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mBufferingPercentage:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    return-wide v0
.end method

.method private static createBrowserMediaPlayerManagerClient(J)Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;-><init>(J)V

    return-object v0
.end method

.method private getListSnapshot()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mListenerList:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private getMediaClient(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/media/TerraceMediaClient;
    .locals 0

    invoke-static {p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getMediaClient()Lcom/sec/terrace/content/browser/media/TerraceMediaClient;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onEventFired$0(Lcom/sec/terrace/content/browser/media/TerraceMediaClient;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mTerraceMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    invoke-virtual {p1, p0, p2}, Lcom/sec/terrace/content/browser/media/TerraceMediaClient;->onEventFired(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;Ljava/lang/String;)V

    return-void
.end method

.method private onBufferingUpdate(I)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput p1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mBufferingPercentage:I

    return-void
.end method

.method private onCheckVideoVisibleResult(IZIIII)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCheckVideoVisibleResult callbackId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinBrowserMediaPlayerManagerClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mVisibleResultCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$VisibleResultCallback;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p3, p4, p5, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {p0, p2, p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$VisibleResultCallback;->handleResult(ZLandroid/graphics/Rect;)V

    return-void
.end method

.method private onClosedCaptionUpdated()V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "TinBrowserMediaPlayerManagerClient"

    const-string v1, "onClosedCaptionUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getListSnapshot()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mTerraceMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    invoke-virtual {v1, v2}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;->onClosedCaptionUpdated(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onDestroyPlayer()V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "TinBrowserMediaPlayerManagerClient"

    const-string v1, "onDestroyPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getListSnapshot()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mTerraceMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    invoke-virtual {v1, v2}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;->onDestroyPlayer(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mListenerList:Ljava/util/ArrayList;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mTerraceMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private onEnterFullscreen(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "TinBrowserMediaPlayerManagerClient"

    const-string v1, "onEnterFullscreen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mTerraceMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getMediaClient(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/media/TerraceMediaClient;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mTerraceMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    invoke-virtual {v0, v1}, Lcom/sec/terrace/TerraceHelper;->setMediaPlayerManagerClient(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mTerraceMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    invoke-virtual {p1, p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaClient;->onFullscreenVideoEntered(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V

    return-void
.end method

.method private onError(I)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string p0, "onError error= "

    const-string v0, "TinBrowserMediaPlayerManagerClient"

    invoke-static {p1, p0, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onEventFired(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;)V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "onEventFired:"

    const-string v1, "TinBrowserMediaPlayerManagerClient"

    invoke-static {v0, p2, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mTerraceMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getMediaClient(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/media/TerraceMediaClient;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, LJ8/d;

    const/16 v2, 0x1c

    invoke-direct {v1, p0, v2, p1, p2}, LJ8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onExitFullscreen(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "TinBrowserMediaPlayerManagerClient"

    const-string v1, "onExitFullscreen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mTerraceMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getMediaClient(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/media/TerraceMediaClient;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaClient;->onFullscreenVideoExited()V

    return-void
.end method

.method private onExtSubtitleUpdated(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mTerraceMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getListSnapshot()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mTerraceMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    invoke-virtual {v0, v1, p2}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;->onExtSubtitleUpdated(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onMediaImageDataChanged([Lorg/chromium/services/media_session/MediaImage;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "TinBrowserMediaPlayerManagerClient"

    const-string v1, "onMediaImageDataChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mImagesList:Ljava/util/List;

    return-void
.end method

.method private onMediaMetaDataChanged(Lorg/chromium/services/media_session/MediaMetadata;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "TinBrowserMediaPlayerManagerClient"

    const-string v1, "onMediaMetaDataChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lorg/chromium/services/media_session/MediaMetadata;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mTitle:Ljava/lang/String;

    return-void
.end method

.method private onPause()V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "TinBrowserMediaPlayerManagerClient"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getListSnapshot()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mTerraceMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    invoke-virtual {v1, v2, v3}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;->onVideoPlaybackStateChanged(ZLcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onTimeUpdate(D)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mTerraceMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getListSnapshot()Ljava/util/ArrayList;

    move-result-object v0

    double-to-int p1, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mTerraceMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    invoke-virtual {v0, v1, p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;->onTimeUpdate(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onVideoCaptureResult(ILandroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "TinBrowserMediaPlayerManagerClient"

    const-string v1, "onCaptureResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mCaptureResultCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$CaptureResultCallback;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p2}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$CaptureResultCallback;->handleResult(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private onVideoSizeChanged()V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "TinBrowserMediaPlayerManagerClient"

    const-string v1, "onVideoSizeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getListSnapshot()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mTerraceMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    invoke-virtual {v1, v2}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;->onVideoSizeChanged(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onVideoStart(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "TinBrowserMediaPlayerManagerClient"

    const-string v1, "onVideoStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mTerraceMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getMediaClient(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/media/TerraceMediaClient;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mTerraceMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    invoke-virtual {v0, v1}, Lcom/sec/terrace/TerraceHelper;->setMediaPlayerManagerClient(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mTerraceMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    invoke-virtual {p1, v0}, Lcom/sec/terrace/content/browser/media/TerraceMediaClient;->onVideoStart(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->getListSnapshot()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mTerraceMediaPlayerManagerClient:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;

    invoke-virtual {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;->onVideoPlaybackStateChanged(ZLcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public checkVideoVisible(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$VisibleResultCallback;)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mLockerVisibleResultCallbackList:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mVisibleResultCallbackListIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mVisibleResultCallbackListIndex:I

    iget-object v2, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mVisibleResultCallbacks:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object p1

    iget-wide v2, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {p1, v2, v3, v1}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->checkVideoVisible(JI)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getClosedCaptionStatus()Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;->DISABLED:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->getClosedCaptionStatus(J)I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    sget-object p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;->DISABLED:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    return-object p0

    :cond_1
    sget-object p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;->INVISIBLE:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    return-object p0

    :cond_2
    sget-object p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;->VISIBLE:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    return-object p0

    :cond_3
    sget-object p0, Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;->DISABLED:Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$ClosedCaptionStatus;

    return-object p0
.end method

.method public getClosedCaptionUrl()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->getClosedCaptionUrl(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCookies()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->getCookies(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentPosition()I
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->getCurrentPosition(J)I

    move-result p0

    return p0
.end method

.method public getDimension()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->getDimension(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDuration()I
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->getDuration(J)I

    move-result p0

    return p0
.end method

.method public getExtensionContainerStatus(Ljava/lang/String;)I
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2, p1}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->getExtensionContainerStatus(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getImages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mImagesList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mImagesList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/services/media_session/MediaImage;

    new-instance v2, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;

    invoke-direct {v2, v1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;-><init>(Lorg/chromium/services/media_session/MediaImage;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPlaybackRate()D
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->getPlaybackRate(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mPlayerControl:Landroid/widget/MediaController$MediaPlayerControl;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->getFrameUrl(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoCapture(IILcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$CaptureResultCallback;)V
    .locals 7

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mLockerCaptureResultCallbackList:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v4, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mCaptureResultCallbackListIndex:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mCaptureResultCallbackListIndex:I

    iget-object v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mCaptureResultCallbacks:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    move v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->getVideoCapture(JIII)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getVideoHeight()I
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->getVideoHeight(J)I

    move-result p0

    return p0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->getVideoUrl(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoWidth()I
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->getVideoWidth(J)I

    move-result p0

    return p0
.end method

.method public isMuted()Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->isMuted(J)Z

    move-result p0

    return p0
.end method

.method public isPlaying()Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->isPlaying(J)Z

    move-result p0

    return p0
.end method

.method public isPrepared()Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->isPrepared(J)Z

    move-result p0

    return p0
.end method

.method public registerListener(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public requestFullscreen()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->requestFullscreen(J)V

    return-void
.end method

.method public seekTo(D)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->seekTo(JD)V

    return-void
.end method

.method public setClosedCaptionVisibility(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2, p1}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->setClosedCaptionVisibility(JZ)V

    return-void
.end method

.method public setExtensionContainerStatus(Ljava/lang/String;I)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->setExtensionContainerStatus(JLjava/lang/String;I)V

    return-void
.end method

.method public setFullscreenFlexMode(ZZ)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->setFullscreenFlexMode(JZZ)V

    return-void
.end method

.method public setFullscreenVideoRatio(I)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2, p1}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->setFullscreenVideoRatio(JI)V

    return-void
.end method

.method public setMuted(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2, p1}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->setMuted(JZ)V

    return-void
.end method

.method public setPlaybackRate(D)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClientJni;->get()Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mNativeTinBrowserMediaPlayerManagerClient:J

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient$Natives;->setPlaybackRate(JD)V

    return-void
.end method

.method public unregisterListener(Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerEventListener;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mListenerList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/media/TinBrowserMediaPlayerManagerClient;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
