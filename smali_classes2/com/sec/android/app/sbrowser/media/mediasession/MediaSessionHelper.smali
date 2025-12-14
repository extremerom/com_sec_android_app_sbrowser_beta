.class public Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/ui/MediaImageCallback;
.implements Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionEventListener;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mControlsListener:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;

.field private mCurrentMediaImage:Landroid/graphics/Bitmap;

.field private mCurrentMetadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

.field private mFavicon:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mHideNotificationDelayedTask:Ljava/lang/Runnable;

.field private mMaybeHasFavicon:Z

.field private final mMediaImageManager:Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;

.field private mMediaPosition:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mMediaSessionActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaSessionObserver:Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;

.field private mNotificationInfoBuilder:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

.field private mOrigin:Ljava/lang/String;

.field private mPageMediaImage:Landroid/graphics/Bitmap;

.field private mPageMetadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

.field private final mTabId:I

.field private mTerrace:Lcom/sec/terrace/Terrace;


# direct methods
.method private constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$1;-><init>(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mControlsListener:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mActivity:Landroid/app/Activity;

    iput p2, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mTabId:I

    new-instance p2, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;

    const/16 v0, 0x72

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->getIdealMediaImageSize(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p2, v0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;-><init>(II)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mMediaImageManager:Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic A(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->getCachedNotificationImage()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic B(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->getMetadata()Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic C(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->hideNotificationDelayed()V

    return-void
.end method

.method public static bridge synthetic D(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->hideNotificationImmediately()V

    return-void
.end method

.method public static bridge synthetic E(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->isNotificationHidingOrHidden()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic F(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->onPressed()V

    return-void
.end method

.method public static bridge synthetic G(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->pauseMediaSession()V

    return-void
.end method

.method public static bridge synthetic H(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->showNotification()V

    return-void
.end method

.method public static bridge synthetic I(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->updateNotificationActions()V

    return-void
.end method

.method public static bridge synthetic J(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->updateNotificationMetadata()V

    return-void
.end method

.method public static bridge synthetic K(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->updateNotificationPosition()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->lambda$hideNotificationDelayed$0()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->lambda$fetchFaviconImage$1(Landroid/graphics/Bitmap;Ljava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static create(Landroid/app/Activity;Lcom/sec/terrace/Terrace;I)Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->setTerrace(Lcom/sec/terrace/Terrace;)V

    return-object v0
.end method

.method private createBringTabToFrontPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "MediaSession: Open current activity control"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "Notification id for media session"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/high16 v0, 0x14000000

    invoke-static {p1, p2, p0, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private createMediaSessionObserver(Lcom/sec/terrace/content/browser/media/TerraceMediaSession;)V
    .locals 1
    .param p1    # Lcom/sec/terrace/content/browser/media/TerraceMediaSession;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mMediaSessionObserver:Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$3;-><init>(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;Lcom/sec/terrace/content/browser/media/TerraceMediaSession;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mMediaSessionObserver:Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;

    return-void
.end method

.method private createReceiver()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper$2;-><init>(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mControlsListener:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationListener;

    return-object p0
.end method

.method private destroyMediaSessionObserver()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mMediaSessionObserver:Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;->stopObserving()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mMediaSessionObserver:Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mMediaSessionActions:Ljava/util/Set;

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mCurrentMediaImage:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mCurrentMetadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    return-object p0
.end method

.method private fetchFaviconImage()V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mMaybeHasFavicon:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mTerrace:Lcom/sec/terrace/Terrace;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x4

    filled-new-array {v2, v3, v1}, [I

    move-result-object v1

    new-instance v2, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    invoke-direct {v2}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;-><init>()V

    new-instance v3, Lcom/google/firebase/messaging/z;

    const/16 v4, 0x17

    invoke-direct {v3, v4, p0}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    const/16 p0, 0x72

    invoke-virtual {v2, v0, v1, p0, v3}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;->getLargestRawFaviconForUrl(Ljava/lang/String;[IILcom/sec/terrace/browser/favicon/TerraceFaviconHelper$FaviconImageCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mFavicon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private getCachedNotificationImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mPageMediaImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mFavicon:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMetadata()Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mTerrace:Lcom/sec/terrace/Terrace;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->sanitizeMediaTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mPageMetadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mPageMetadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mPageMetadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    invoke-virtual {v1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mPageMetadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    invoke-virtual {v2}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getAlbum()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mCurrentMetadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mCurrentMetadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    invoke-virtual {v3}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mCurrentMetadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    invoke-virtual {v3}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mCurrentMetadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    return-object p0

    :cond_3
    new-instance p0, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mMediaImageManager:Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;

    return-object p0
.end method

.method private hideNotification()V
    .locals 2

    const-string v0, "[MM]MediaSessionHelper"

    const-string v1, "hideMediaNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->unregisterReceiver()V

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mTabId:I

    const v0, 0x7f0b0701

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->hide(II)V

    return-void
.end method

.method private hideNotificationDelayed()V
    .locals 4

    const-string v0, "[MM]MediaSessionHelper"

    const-string v1, "hideNotificationDelayed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mHideNotificationDelayedTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/download/b;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mHideNotificationDelayedTask:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mNotificationInfoBuilder:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    return-void
.end method

.method private hideNotificationImmediately()V
    .locals 3

    const-string v0, "[MM]MediaSessionHelper"

    const-string v1, "hideNotificationImmediately"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mTerrace:Lcom/sec/terrace/Terrace;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mHideNotificationDelayedTask:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mHideNotificationDelayedTask:Ljava/lang/Runnable;

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->hideNotification()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mNotificationInfoBuilder:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mMediaPosition:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    return-object p0
.end method

.method private isNotificationHidingOrHidden()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mNotificationInfoBuilder:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mMediaSessionActions:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mMediaSessionObserver:Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mNotificationInfoBuilder:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    return-object p0
.end method

.method private synthetic lambda$fetchFaviconImage$1(Landroid/graphics/Bitmap;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->isNotificationHidingOrHidden()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->updateFavicon(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$hideNotificationDelayed$0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mHideNotificationDelayedTask:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->hideNotification()V

    return-void
.end method

.method private loadFinished(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/sec/terrace/browser/TerraceUrlUtilities;->formatUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "[MM]MediaSessionHelper"

    const-string v1, "Unable to parse the origin from the URL. Using the full URL instead."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mOrigin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->getMetadata()Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mCurrentMetadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->isNotificationHidingOrHidden()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mNotificationInfoBuilder:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mOrigin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setOrigin(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mNotificationInfoBuilder:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mFavicon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setNotificationLargeIcon(Landroid/graphics/Bitmap;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mNotificationInfoBuilder:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mPageMediaImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setMediaSessionImage(Landroid/graphics/Bitmap;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mNotificationInfoBuilder:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mCurrentMetadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setMetadata(Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mNotificationInfoBuilder:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mMediaSessionActions:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setMediaSessionActions(Ljava/util/Set;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->showNotification()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mPageMediaImage:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mTabId:I

    return p0
.end method

.method private onPressed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mActivity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/media/common/IMediaParentImpl;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/sec/android/app/sbrowser/media/common/IMediaParentImpl;

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mTabId:I

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/media/common/IMediaParentImpl;->showParent(I)V

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mTerrace:Lcom/sec/terrace/Terrace;

    return-object p0
.end method

.method private pauseMediaSession()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->isNotificationHidingOrHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mMediaSessionObserver:Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;->getMediaSession()Lcom/sec/terrace/content/browser/media/TerraceMediaSession;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;->suspend()V

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mCurrentMediaImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mCurrentMetadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    return-void
.end method

.method private registerReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->createReceiver()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "MediaSession: Open current activity control"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "[MM]MediaSessionHelper"

    const-string v0, "Receiver is already registered"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mMediaPosition:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    return-void
.end method

.method private sanitizeMediaTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\u25b6"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private showNotification()V
    .locals 2

    const-string v0, "[MM]MediaSessionHelper"

    const-string v1, "showNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mHideNotificationDelayedTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mHideNotificationDelayedTask:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mMediaSessionObserver:Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mTerrace:Lcom/sec/terrace/Terrace;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->isPrivacyMode(Landroid/app/Activity;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {v1}, Lcom/sec/terrace/Terrace;->isIncognito()Z

    move-result v1

    if-eq v0, v1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isGO()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->registerReceiver()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mNotificationInfoBuilder:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->build()Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->show(Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo;)V

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mMediaSessionActions:Ljava/util/Set;

    return-void
.end method

.method public static bridge synthetic u(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mNotificationInfoBuilder:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "[MM]MediaSessionHelper"

    const-string v1, "Receivers not registered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private updateNotificationActions()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->isNotificationHidingOrHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mNotificationInfoBuilder:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mMediaSessionActions:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setMediaSessionActions(Ljava/util/Set;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->showNotification()V

    return-void
.end method

.method private updateNotificationImage(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mCurrentMediaImage:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->isNotificationHidingOrHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mCurrentMediaImage:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mNotificationInfoBuilder:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setNotificationLargeIcon(Landroid/graphics/Bitmap;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mNotificationInfoBuilder:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mPageMediaImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setMediaSessionImage(Landroid/graphics/Bitmap;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->showNotification()V

    return-void
.end method

.method private updateNotificationMetadata()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->isNotificationHidingOrHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->getMetadata()Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mCurrentMetadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    invoke-virtual {v1, v0}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mCurrentMetadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mNotificationInfoBuilder:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setMetadata(Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->showNotification()V

    return-void
.end method

.method private updateNotificationPosition()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->isNotificationHidingOrHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mNotificationInfoBuilder:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mMediaPosition:Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;->setMediaPosition(Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$MediaPosition;)Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationInfo$Builder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->showNotification()V

    return-void
.end method

.method public static bridge synthetic v(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mPageMetadata:Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata;

    return-void
.end method

.method public static bridge synthetic w(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;Landroid/app/Activity;I)Landroid/app/PendingIntent;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->createBringTabToFrontPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic x(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->destroyMediaSessionObserver()V

    return-void
.end method

.method public static bridge synthetic y(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->fetchFaviconImage()V

    return-void
.end method

.method public static bridge synthetic z(Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;)Landroid/app/Activity;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCloseTab()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->destroyMediaSessionObserver()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->hideNotificationImmediately()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mTerrace:Lcom/sec/terrace/Terrace;

    return-void
.end method

.method public onImageDownloaded(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->downscaleIconToIdealSize(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mPageMediaImage:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mFavicon:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->updateNotificationImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onLoadFinished(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->loadFinished(Ljava/lang/String;)V

    return-void
.end method

.method public onShow()V
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mTabId:I

    const v0, 0x7f0b0701

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->activateAndroidMediaSession(II)V

    return-void
.end method

.method public onUpdatedFavicon(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->updateFavicon(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setTerrace(Lcom/sec/terrace/Terrace;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->destroyMediaSessionObserver()V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->setupMediaSessionObserver()V

    return-void
.end method

.method public setupMediaSessionObserver()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mTerrace:Lcom/sec/terrace/Terrace;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getMediaSession()Lcom/sec/terrace/content/browser/media/TerraceMediaSession;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mMediaSessionObserver:Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;->getMediaSession()Lcom/sec/terrace/content/browser/media/TerraceMediaSession;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->destroyMediaSessionObserver()V

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->createMediaSessionObserver(Lcom/sec/terrace/content/browser/media/TerraceMediaSession;)V

    :cond_2
    return-void
.end method

.method public stopMediaSession()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->isNotificationHidingOrHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->hideNotificationImmediately()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mMediaSessionObserver:Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaSessionObserver;->getMediaSession()Lcom/sec/terrace/content/browser/media/TerraceMediaSession;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaSession;->stop()V

    :cond_1
    return-void
.end method

.method public updateFavicon(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mMaybeHasFavicon:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->isNotificationHidingOrHidden()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mPageMediaImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isLowEndDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaNotificationManager;->isBitmapSuitableAsMediaImage(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mFavicon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mFavicon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mFavicon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->downscaleIconToIdealSize(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->mFavicon:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/mediasession/MediaSessionHelper;->updateNotificationImage(Landroid/graphics/Bitmap;)V

    :cond_6
    :goto_0
    return-void
.end method
