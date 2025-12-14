.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController$RecognitionObj;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MPFullscreenLiveTextController"


# instance fields
.field private final mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

.field private mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    new-instance p1, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-direct {p1, p2, p3}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController$RecognitionObj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->lambda$startRecognize$0(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController$RecognitionObj;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->lambda$startRecognize$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static createVideoLiveTextController(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;
    .locals 1
    .param p0    # Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/extract_text/ExtractTextHelper;->isVisionTextSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/view/ViewGroup;Landroid/content/Context;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$startRecognize$0(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController$RecognitionObj;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController$RecognitionObj;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController$RecognitionObj;->mContentRect:Landroid/graphics/Rect;

    iget-boolean p1, p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController$RecognitionObj;->mIsScale:Z

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->startRecognize(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$startRecognize$1(Ljava/lang/Boolean;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Video Live Text] onTextRecognizerResultReceived = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->updateLiveTextButton()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->bringToFrontMainLayout()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f140d01

    goto :goto_0

    :cond_0
    const p1, 0x7f140d02

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->fullscreen(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public clearExtractTextInfo()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->TAG:Ljava/lang/String;

    const-string v1, "[Video Live Text] clearExtractTextInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->clearRecognitionInfo()V

    return-void
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->exitLiveTextView()V

    return-void
.end method

.method public exitFullscreenByUser(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->setInvisibleForLiveTextView()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->TAG:Ljava/lang/String;

    const-string v0, "setInvisibleForLiveTextView"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->updateLiveTextButton()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->exitLiveTextView()V

    const/4 p0, 0x0

    return p0
.end method

.method public exitLiveTextView()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->TAG:Ljava/lang/String;

    const-string v1, "[Video Live Text] exitLiveTextView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->exitLiveTextView()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->updateLiveTextButton()V

    return-void
.end method

.method public getBitmapAsync(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController$RecognitionObj;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isStandalonePlayer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getVideoCapture()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->TAG:Ljava/lang/String;

    const-string v3, "[Video Live Text] startDetection captured"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getVideoRect(Landroid/graphics/Rect;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController$RecognitionObj;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/LiveTextUtil;->resizeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController$RecognitionObj;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)V

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0b06c2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_4

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v8, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController$1;

    invoke-direct {v8, p0, v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController$1;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/sec/terrace/Terrace;->getBitmapAsync(IIIILandroid/graphics/Bitmap$Config;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V

    :goto_1
    return-void

    :cond_5
    :goto_2
    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public isLiveTextViewVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->isLiveTextViewVisible()Z

    move-result p0

    return p0
.end method

.method public onItemClickForExtractText(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;)V
    .locals 2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->id()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->startRecognizeWithDelay()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->id()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->isLiveTextViewVisible()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->shouldAddLiveText()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->clearExtractTextInfo()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onRotationChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->startRecognizeWithDelay()V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->TAG:Ljava/lang/String;

    const-string v1, "[Video Live Text] onSingleTapConfirmed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->isLiveTextViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->shouldAddLiveText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEventForLiveText(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public onVideoViewInit()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->startRecognizeWithDelay()V

    return-void
.end method

.method public pauseVideo()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->startRecognize()V

    return-void
.end method

.method public performTScanClick()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->TAG:Ljava/lang/String;

    const-string v1, "[Video Live Text] performTScanClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->performTScanClick()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->updateLiveTextButton()V

    return-void
.end method

.method public setInvisibleForLiveTextView()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->setInvisibleForLiveTextView()Z

    move-result p0

    return p0
.end method

.method public setLiveTextControllerForTest(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    return-void
.end method

.method public setLock()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->setInvisibleForLiveTextView()Z

    return-void
.end method

.method public shouldAddLiveText()Z
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->TAG:Ljava/lang/String;

    const-string v1, "[Video Live Text] shouldAddLiveText"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->isTextRecognized()Z

    move-result p0

    return p0
.end method

.method public startRecognize()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->TAG:Ljava/lang/String;

    const-string v1, "[Video Live Text] startRecognize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/extract_text/ExtractTextHelper;->isVisionTextSupported()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "[Video Live Text] VisionText not supported"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "[Video Live Text] Multi window mode"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/d;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/d;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->getBitmapAsync(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    return-void
.end method

.method public startRecognize(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->startRecognize(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    new-instance p2, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/e;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/e;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->setTextRecognizerListener(Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$TextRecognizerListener;)V

    return-void
.end method

.method public startRecognizeWithDelay()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->clearExtractTextInfo()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->updateLiveTextButton()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/b;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public startTextSelectionByLongClick(FF)Z
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->TAG:Ljava/lang/String;

    const-string v1, "[Video Live Text] startTextSelectionByLongClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->shouldAddLiveText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->startTextSelectionByLongClick(FF)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public startVideo()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->stopRecognize()V

    return-void
.end method

.method public stopRecognize()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->TAG:Ljava/lang/String;

    const-string v1, "[Video Live Text] stopRecognize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mLiveTextController:Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController;->stopRecognize()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->clearExtractTextInfo()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->updateLiveTextButton()V

    return-void
.end method
