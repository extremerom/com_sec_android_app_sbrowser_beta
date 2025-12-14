.class public Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mErrorPopup:Lm/l;

.field private final mMPManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/ref/WeakReference;Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;",
            ">;",
            "Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mMPManager:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->registerErrorListenerForStartedStatus()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->lambda$showMediaPlayerErrorConfirmPopup$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->lambda$showErrorConfirmPopup$4(Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->lambda$showErrorConfirmPopup$3(Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->showMediaPlayerErrorConfirmPopup(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->lambda$getErrorListenerForPreparingStatus$0(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->lambda$showErrorConfirmPopup$2(Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private getErrorListenerForPreparingStatus()Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorListener;
    .locals 2

    new-instance v0, Lsa/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsa/a;-><init>(Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;I)V

    return-object v0
.end method

.method private getErrorListenerForStartedStatus()Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorListener;
    .locals 2

    new-instance v0, Lsa/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lsa/a;-><init>(Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;I)V

    return-object v0
.end method

.method private synthetic lambda$getErrorListenerForPreparingStatus$0(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->showErrorConfirmPopup()V

    return-void
.end method

.method private synthetic lambda$showErrorConfirmPopup$2(Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "3233"

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->main(Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mErrorPopup:Lm/l;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->getPageUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->loadUrl(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->exitFullscreenByUser()V

    return-void
.end method

.method private synthetic lambda$showErrorConfirmPopup$3(Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "3232"

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->main(Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mErrorPopup:Lm/l;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->exitFullscreenByUser()V

    return-void
.end method

.method private synthetic lambda$showErrorConfirmPopup$4(Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mErrorPopup:Lm/l;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->exitFullscreenByUser()V

    return-void
.end method

.method private synthetic lambda$showMediaPlayerErrorConfirmPopup$1(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mErrorPopup:Lm/l;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->unregisterErrorListener()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->getMPManager()Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->destroyFullscreen()V

    return-void
.end method

.method private registerErrorListenerForPreparingStatus()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->getErrorListenerForPreparingStatus()Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorListener;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->setOnErrorListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorListener;)V

    :cond_0
    return-void
.end method

.method private registerErrorListenerForStartedStatus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->getErrorListenerForStartedStatus()Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->setOnErrorListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->registerErrorListenerForPreparingStatus()V

    return-void
.end method

.method private showErrorConfirmPopup()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mErrorPopup:Lm/l;

    if-eqz v0, :cond_0

    const-string p0, "MPManagerErrorHandler"

    const-string v0, "Error popup is already showing"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mMPManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lm/k;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f1501c5

    invoke-direct {v1, v2, v3}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f14071f

    invoke-virtual {v1, v2}, Lm/k;->e(I)V

    const v2, 0x7f14071c

    invoke-virtual {v1, v2}, Lm/k;->a(I)V

    new-instance v2, Lsa/b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lsa/b;-><init>(Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;I)V

    const v3, 0x7f14071e

    invoke-virtual {v1, v3, v2}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v1

    new-instance v2, Lsa/b;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lsa/b;-><init>(Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;I)V

    const v3, 0x7f14071d

    invoke-virtual {v1, v3, v2}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/n;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lm/k;->a:Lm/h;

    iput-object v2, v0, Lm/h;->o:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1}, Lm/k;->create()Lm/l;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mErrorPopup:Lm/l;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mErrorPopup:Lm/l;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->getMPManager()Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->onErrorPopupShown()V

    return-void
.end method

.method private showMediaPlayerErrorConfirmPopup(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    const-string v1, "MPManagerErrorHandler"

    if-eqz v0, :cond_0

    const-string p0, "Activity had been destroyed already."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mErrorPopup:Lm/l;

    if-eqz v0, :cond_1

    const-string p0, "Error popup is already showing"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "showMediaPlayerErrorConfirmPopup. type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->isErrorOccurred()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;->MEDIA_ERROR_INVALID_CODE:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    if-ne p1, v0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;->MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorType;

    if-ne p1, v0, :cond_4

    const-string p1, "Sorry, this video is not valid for streaming to this device."

    goto :goto_0

    :cond_4
    const-string p1, "Sorry, this video cannot be played."

    :goto_0
    new-instance v0, Lm/k;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    const-string v1, "Cannot play video"

    invoke-virtual {v0, v1}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object v0

    iget-object v1, v0, Lm/k;->a:Lm/h;

    iput-object p1, v1, Lm/h;->f:Ljava/lang/CharSequence;

    new-instance p1, Lcom/sec/android/app/sbrowser/appshortcut/b;

    const/16 v1, 0xd

    invoke-direct {p1, v1, p0}, Lcom/sec/android/app/sbrowser/appshortcut/b;-><init>(ILjava/lang/Object;)V

    const-string v1, "OK"

    invoke-virtual {v0, v1, p1}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, v0, Lm/k;->a:Lm/h;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lm/h;->m:Z

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mErrorPopup:Lm/l;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->getMPManager()Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;->onErrorPopupShown()V

    return-void
.end method


# virtual methods
.method public dismissErrorPopup()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mErrorPopup:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mErrorPopup:Lm/l;

    invoke-virtual {p0}, Lm/y;->dismiss()V

    :cond_0
    return-void
.end method

.method public getMPManager()Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mMPManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    return-object p0
.end method

.method public unregisterErrorListener()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->mVideoView:Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;->setOnErrorListener(Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView$ErrorListener;)V

    :cond_0
    return-void
.end method
