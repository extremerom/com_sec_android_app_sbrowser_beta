.class public Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;
.super Lcom/sec/terrace/TerraceActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$MediaSessionBroadcastReceiver;,
        Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;,
        Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$LaunchIntoPipHelper;
    }
.end annotation


# static fields
.field private static final sLaunchIntoPipHelper:Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$LaunchIntoPipHelper;

.field private static sPendingNativeTinOverlayWindowAndroid:J


# instance fields
.field private mAspectRatio:Landroid/util/Rational;

.field private mCompositorView:Lorg/chromium/components/thinwebview/CompositorView;

.field private mMediaActionsButtonsManager:Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;

.field private mMediaSessionReceiver:Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$MediaSessionBroadcastReceiver;

.field private mNativeOverlayWindowAndroid:J

.field private mVisibleActions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/content/browser/pip/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->sLaunchIntoPipHelper:Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$LaunchIntoPipHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/TerraceActivity;-><init>()V

    return-void
.end method

.method public static createActivity(JLorg/chromium/content_public/browser/WebContents;Lcom/sec/terrace/Terrace;IIII)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-wide v0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->sPendingNativeTinOverlayWindowAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivityJni;->get()Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;

    move-result-object v0

    sget-wide v1, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->sPendingNativeTinOverlayWindowAndroid:J

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;->destroyStartedByJava(J)V

    :cond_0
    sput-wide p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->sPendingNativeTinOverlayWindowAndroid:J

    invoke-virtual {p3}, Lcom/sec/terrace/Terrace;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_1

    move-object p3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    :goto_0
    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;

    invoke-direct {v1, p3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "activity_token"

    const-string v3, "com.sec.terrace.content.browser.pip.TinPictureInPictureActivity.token.value"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.sec.terrace.content.browser.pip.TinPictureInPictureActivity.WebContents"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "com.sec.terrace.content.browser.pip.TerracePictureInPictureConstants.NativePointer"

    invoke-virtual {v1, p2, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    int-to-float p0, p6

    int-to-float p1, p7

    invoke-static {p0, p1}, Lcom/sec/terrace/content/browser/pip/TerracePipUtils;->clampAspectRatioAndRecomputeWidth(FF)F

    move-result p0

    float-to-int p0, p0

    if-lez p0, :cond_5

    if-lez p7, :cond_5

    new-instance p1, Landroid/graphics/Rect;

    add-int p2, p4, p0

    add-int p6, p5, p7

    invoke-direct {p1, p4, p5, p2, p6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget p2, p1, Landroid/graphics/Rect;->left:I

    if-ltz p2, :cond_3

    iget p2, p1, Landroid/graphics/Rect;->top:I

    if-ltz p2, :cond_3

    sget-object p2, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->sLaunchIntoPipHelper:Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$LaunchIntoPipHelper;

    invoke-interface {p2, p3, p1}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$LaunchIntoPipHelper;->build(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/os/Bundle;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    const-string p1, "com.sec.terrace.content.browser.pip.TinPictureInPictureActivity.launched"

    const/4 p2, 0x1

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_4
    const-string p1, "com.sec.terrace.content.browser.pip.TinPictureInPictureActivity.source.width"

    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "com.sec.terrace.content.browser.pip.TinPictureInPictureActivity.source.height"

    invoke-virtual {v1, p0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_5
    invoke-virtual {p3, v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method private exitPictureInPicture(Z)V
    .locals 4

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mNativeOverlayWindowAndroid:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivityJni;->get()Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;

    move-result-object p1

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mNativeOverlayWindowAndroid:J

    invoke-interface {p1, v0, v1}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;->destroyStartedByJava(J)V

    :cond_0
    iget-object p1, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mCompositorView:Lorg/chromium/components/thinwebview/CompositorView;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/chromium/components/thinwebview/CompositorView;->destroy()V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mCompositorView:Lorg/chromium/components/thinwebview/CompositorView;

    :cond_1
    iget-object p1, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mMediaSessionReceiver:Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$MediaSessionBroadcastReceiver;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mMediaSessionReceiver:Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$MediaSessionBroadcastReceiver;

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private finishNativeInitialization()V
    .locals 5

    invoke-static {p0}, Lcom/sec/terrace/TinTerraceInternals;->getWindowAndroid(Lcom/sec/terrace/TerraceActivity;)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayWidth()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fee666666666666L    # 0.95

    mul-double/2addr v1, v3

    double-to-int v1, v1

    new-instance v2, Lorg/chromium/components/thinwebview/ThinWebViewConstraints;

    invoke-direct {v2}, Lorg/chromium/components/thinwebview/ThinWebViewConstraints;-><init>()V

    invoke-static {p0, v0, v2}, Lorg/chromium/components/thinwebview/CompositorViewFactory;->create(Landroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/components/thinwebview/ThinWebViewConstraints;)Lorg/chromium/components/thinwebview/CompositorView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mCompositorView:Lorg/chromium/components/thinwebview/CompositorView;

    invoke-interface {v0}, Lorg/chromium/components/thinwebview/CompositorView;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lm/n;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mCompositorView:Lorg/chromium/components/thinwebview/CompositorView;

    invoke-interface {v0}, Lorg/chromium/components/thinwebview/CompositorView;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/sec/terrace/content/browser/pip/b;

    invoke-direct {v2, p0, v1}, Lcom/sec/terrace/content/browser/pip/b;-><init>(Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-static {}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivityJni;->get()Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mNativeOverlayWindowAndroid:J

    iget-object p0, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mCompositorView:Lorg/chromium/components/thinwebview/CompositorView;

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;->compositorViewCreated(JLorg/chromium/components/thinwebview/CompositorView;)V

    return-void
.end method

.method private getNativeOverlayWindowAndroid()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mNativeOverlayWindowAndroid:J

    return-wide v0
.end method

.method private getPictureInPictureParams()Landroid/app/PictureInPictureParams;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewAPI"
        }
    .end annotation

    new-instance v0, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v0}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    iget-object v1, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mMediaActionsButtonsManager:Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;

    iget-object v2, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mVisibleActions:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->getActionsForPictureInPictureParams(Ljava/util/HashSet;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/PictureInPictureParams$Builder;->setActions(Ljava/util/List;)Landroid/app/PictureInPictureParams$Builder;

    iget-object p0, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mAspectRatio:Landroid/util/Rational;

    invoke-virtual {v0, p0}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$finishNativeInitialization$1(ILandroid/view/View;IIIIIIII)V
    .locals 0

    iget-wide p7, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mNativeOverlayWindowAndroid:J

    const-wide/16 p9, 0x0

    cmp-long p2, p7, p9

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eq p4, p6, :cond_3

    if-ne p3, p5, :cond_1

    goto :goto_0

    :cond_1
    sub-int/2addr p5, p3

    if-le p5, p1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivityJni;->get()Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;

    move-result-object p1

    iget-wide p2, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mNativeOverlayWindowAndroid:J

    sub-int/2addr p6, p4

    invoke-interface {p1, p2, p3, p5, p6}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;->onViewSizeChanged(JII)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static synthetic lambda$static$0(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/os/Bundle;
    .locals 2

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-gt p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Landroid/util/Rational;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/util/Rational;-><init>(II)V

    new-instance v0, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v0}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/PictureInPictureParams$Builder;->setSourceRectHint(Landroid/graphics/Rect;)Landroid/app/PictureInPictureParams$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/PictureInPictureParams$Builder;->setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->a(Landroid/app/PictureInPictureParams;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/os/Bundle;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->lambda$static$0(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static onWindowDestroyed(J)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-wide v0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->sPendingNativeTinOverlayWindowAndroid:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->sPendingNativeTinOverlayWindowAndroid:J

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    instance-of v2, v1, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    check-cast v1, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;

    invoke-direct {v1}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->getNativeOverlayWindowAndroid()J

    move-result-wide v2

    cmp-long v2, p0, v2

    if-nez v2, :cond_1

    invoke-direct {v1}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->resetNativeOverlayWindowAndroid()V

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->exitPictureInPicture(Z)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static synthetic p(Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;ILandroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->lambda$finishNativeInitialization$1(ILandroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mNativeOverlayWindowAndroid:J

    return-wide v0
.end method

.method private registerBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)V
    .locals 0

    invoke-virtual/range {p1 .. p6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method private resetNativeOverlayWindowAndroid()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mNativeOverlayWindowAndroid:J

    return-void
.end method

.method private translate(I)Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    sget-object p0, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->NONE:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    return-object p0

    :cond_0
    sget-object p0, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->END_OF_VIDEO:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    return-object p0

    :cond_1
    sget-object p0, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->PAUSED:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    return-object p0

    :cond_2
    sget-object p0, Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;->PLAYING:Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    return-object p0
.end method

.method private updatePictureInPictureParams()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->getPictureInPictureParams()Landroid/app/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    return-void
.end method

.method private updateVideoSize(II)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewAPI"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/sec/terrace/content/browser/pip/TerracePipUtils;->clampAndStoreAspectRatio(FF)Landroid/util/Rational;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mAspectRatio:Landroid/util/Rational;

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->updatePictureInPictureParams()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->exitPictureInPicture(Z)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/activity/p;->onPictureInPictureModeChanged(Z)V

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivityJni;->get()Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;

    move-result-object p1

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mNativeOverlayWindowAndroid:J

    invoke-interface {p1, v0, v1}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;->onBackToTab(J)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->exitPictureInPicture(Z)V

    return-void
.end method

.method public onStart()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewAPI"
        }
    .end annotation

    invoke-super {p0}, Lcom/sec/terrace/TerraceActivity;->onStart()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "activity_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.terrace.content.browser.pip.TinPictureInPictureActivity.token.value"

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v1, "com.sec.terrace.content.browser.pip.TerracePictureInPictureConstants.NativePointer"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mNativeOverlayWindowAndroid:J

    const-class v1, Lorg/chromium/content_public/browser/WebContents;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    iget-wide v4, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mNativeOverlayWindowAndroid:J

    sget-wide v6, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->sPendingNativeTinOverlayWindowAndroid:J

    cmp-long v1, v4, v6

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-direct {p0, v4}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->exitPictureInPicture(Z)V

    return-void

    :cond_1
    sput-wide v2, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->sPendingNativeTinOverlayWindowAndroid:J

    new-instance v7, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$MediaSessionBroadcastReceiver;

    invoke-direct {v7, p0, v4}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$MediaSessionBroadcastReceiver;-><init>(Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;I)V

    iput-object v7, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mMediaSessionReceiver:Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$MediaSessionBroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v1, "com.sec.terrace.content.browser.pip.TerracePictureInPictureConstants.MediaAction"

    invoke-direct {v8, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->registerBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mVisibleActions:Ljava/util/HashSet;

    new-instance v1, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams$Builder;

    invoke-direct {v1}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams$Builder;-><init>()V

    iget-wide v2, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mNativeOverlayWindowAndroid:J

    invoke-virtual {v1, v2, v3}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams$Builder;->addNativePointer(J)Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mMediaSessionReceiver:Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$MediaSessionBroadcastReceiver;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams$Builder;->addReceiver(I)Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;

    invoke-virtual {v1}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams$Builder;->build()Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;-><init>(Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonParams;)V

    iput-object v2, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mMediaActionsButtonsManager:Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;

    invoke-static {}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivityJni;->get()Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mNativeOverlayWindowAndroid:J

    invoke-static {p0}, Lcom/sec/terrace/TinTerraceInternals;->getWindowAndroid(Lcom/sec/terrace/TerraceActivity;)Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v5

    invoke-interface {v1, v2, v3, p0, v5}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;->onActivityStart(JLcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;Lorg/chromium/ui/base/WindowAndroid;)V

    new-instance v1, Landroid/util/Size;

    const-string v2, "com.sec.terrace.content.browser.pip.TinPictureInPictureActivity.source.width"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "com.sec.terrace.content.browser.pip.TinPictureInPictureActivity.source.height"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/sec/terrace/content/browser/pip/TerracePipUtils;->clampAndStoreAspectRatio(FF)Landroid/util/Rational;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mAspectRatio:Landroid/util/Rational;

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.sec.terrace.content.browser.pip.TinPictureInPictureActivity.launched"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->getPictureInPictureParams()Landroid/app/PictureInPictureParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->enterPictureInPictureMode(Landroid/app/PictureInPictureParams;)Z

    :cond_3
    iget-object v0, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mCompositorView:Lorg/chromium/components/thinwebview/CompositorView;

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->finishNativeInitialization()V

    :cond_4
    return-void
.end method

.method public setCameraState(Z)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public setMicrophoneMuted(Z)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public setPlaybackState(I)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mMediaActionsButtonsManager:Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->translate(I)Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/terrace/content/browser/pip/TerracePipActionButtonsManager;->updatePlaybackState(Lcom/sec/terrace/content/browser/pip/TerracePipConstants$PlaybackState;)V

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->updatePictureInPictureParams()V

    return-void
.end method

.method public updateVisibleActions([I)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    iget-object v3, p0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->mVisibleActions:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->updatePictureInPictureParams()V

    return-void
.end method
