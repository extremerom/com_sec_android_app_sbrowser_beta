.class public Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;,
        Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$MessageHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MPClosedCaptionHelper"


# instance fields
.field private final mCallback:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher$OnReceived;

.field private mClosedCaptionFetcher:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;

.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;

.field private mEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mPlayerControlReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/MediaController$MediaPlayerControl;",
            ">;"
        }
    .end annotation
.end field

.field private mSubtitleLayout:Landroidx/media3/ui/SubtitleView;

.field private mWebVttSubtitleArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ls2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/ui/SubtitleView;Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;)V
    .locals 1
    .param p3    # Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$1;-><init>(Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mCallback:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher$OnReceived;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mEnabled:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mSubtitleLayout:Landroidx/media3/ui/SubtitleView;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->hasClosedCaption()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->fetch()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->updateFontStyle()V

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mWebVttSubtitleArray:Ljava/util/ArrayList;

    new-instance p1, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$MessageHandler;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$MessageHandler;-><init>(Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mWebVttSubtitleArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mClosedCaptionFetcher:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->updateClosedCaption()V

    return-void
.end method

.method private fetch()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mClosedCaptionFetcher:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mCallback:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher$OnReceived;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;->addCallback(Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher$OnReceived;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mClosedCaptionFetcher:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getCookies()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;->addCookies(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mClosedCaptionFetcher:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getClosedCaptionUrl()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mClosedCaptionFetcher:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;

    :cond_0
    :goto_0
    return-void
.end method

.method private updateClosedCaption()V
    .locals 20
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    move-object/from16 v0, p0

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x1

    :try_start_0
    iget-boolean v4, v0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mEnabled:Z

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mWebVttSubtitleArray:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, v0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mClosedCaptionFetcher:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;

    if-nez v4, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->fetch()V

    :cond_1
    iget-object v4, v0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mWebVttSubtitleArray:Ljava/util/ArrayList;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mPlayerControlReference:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/widget/MediaController$MediaPlayerControl;

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->getPlayerControl()Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v5

    :cond_3
    :goto_0
    if-eqz v5, :cond_4

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v1

    goto :goto_1

    :cond_4
    const-wide/16 v4, 0x0

    :goto_1
    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->getCues(J)Ljava/util/List;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mSubtitleLayout:Landroidx/media3/ui/SubtitleView;

    invoke-virtual {v5, v4}, Landroidx/media3/ui/SubtitleView;->setCues(Ljava/util/List;)V

    goto :goto_2

    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Lq2/b;

    const/high16 v19, -0x80000000

    const/high16 v18, -0x1000000

    const/4 v8, 0x0

    const v17, -0x800001

    move-object v7, v8

    move/from16 v9, v17

    move/from16 v10, v19

    move/from16 v11, v19

    move/from16 v12, v17

    move/from16 v13, v19

    move/from16 v14, v19

    move/from16 v15, v17

    move/from16 v16, v17

    invoke-direct/range {v6 .. v19}, Lq2/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIIFFFII)V

    throw v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v4, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->TAG:Ljava/lang/String;

    const-string v5, "Resource is not enough"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    iget-object v4, v0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mHandler:Landroid/os/Handler;

    if-nez v4, :cond_7

    return-void

    :cond_7
    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v4, v0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mEnabled:Z

    if-eqz v4, :cond_8

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    return-void
.end method

.method private updateFontStyle()V
    .locals 3
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mSubtitleLayout:Landroidx/media3/ui/SubtitleView;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mContext:Landroid/content/Context;

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    if-nez v0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->TAG:Ljava/lang/String;

    const-string v0, "Caption style read Fail"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->TAG:Ljava/lang/String;

    const-string v0, "System caption is disabled"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mSubtitleLayout:Landroidx/media3/ui/SubtitleView;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v2

    invoke-static {v2}, Lu2/c;->a(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lu2/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/ui/SubtitleView;->setStyle(Lu2/c;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mSubtitleLayout:Landroidx/media3/ui/SubtitleView;

    const v1, 0x3d5a511a    # 0.0533f

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/media3/ui/SubtitleView;->setFractionalTextSize(F)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mClosedCaptionFetcher:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mClosedCaptionFetcher:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mClosedCaptionFetcher:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionFetcher;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public getCues(J)Ljava/util/List;
    .locals 6
    .annotation build Landroidx/annotation/OptIn;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lq2/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mWebVttSubtitleArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mWebVttSubtitleArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls2/a;

    iget-wide v4, v3, Ls2/a;->b:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_1

    iget-wide v4, v3, Ls2/a;->c:J

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v3, v3, Ls2/a;->a:Lcom/google/common/collect/u;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq2/b;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "defaultObj"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    :goto_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->hasClosedCaption()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mEnabled:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mSubtitleLayout:Landroidx/media3/ui/SubtitleView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mEnabled:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper$Delegate;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/common/MediaInfo;->hasClosedCaption()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->updateClosedCaption()V

    :cond_1
    return-void
.end method

.method public setPlayerControl(Landroid/widget/MediaController$MediaPlayerControl;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mPlayerControlReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public updateTextSize()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mSubtitleLayout:Landroidx/media3/ui/SubtitleView;

    const v0, 0x3cda511a    # 0.02665f

    invoke-virtual {p0, v0}, Landroidx/media3/ui/SubtitleView;->setFractionalTextSize(F)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/closedcaption/MPClosedCaptionHelper;->mSubtitleLayout:Landroidx/media3/ui/SubtitleView;

    const v0, 0x3d5a511a    # 0.0533f

    invoke-virtual {p0, v0}, Landroidx/media3/ui/SubtitleView;->setFractionalTextSize(F)V

    :goto_0
    return-void
.end method
