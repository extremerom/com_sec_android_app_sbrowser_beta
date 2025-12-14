.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;
.super Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MPFullscreenVolumeView"


# instance fields
.field private final mHideAnimation:Landroid/view/animation/Animation;

.field private mLayout:Landroid/view/View;

.field private mTextView:Landroid/widget/TextView;

.field private mVolumePopupLayout:Landroid/widget/LinearLayout;

.field private mVolumeSeekBar:Landroid/widget/SeekBar;

.field private final mVolumeSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mVolumeViewShowAnim:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;-><init>(Landroid/os/Handler;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView$1;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumeSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mActivity:Landroid/app/Activity;

    const p2, 0x7f01003b

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumeViewShowAnim:Landroid/view/animation/Animation;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mActivity:Landroid/app/Activity;

    const p2, 0x7f01003a

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mHideAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private setVolumeSeekBar(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getMaxVolume()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getOverlapPointForAudioShockWarning(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->setOverlapPointForDualColor(Landroid/widget/SeekBar;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :goto_1
    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVolumeSeekBar. FallbackException : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v0}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    :goto_2
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumePopupLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumePopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->isShowing(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumePopupLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumePopupLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public init(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mLayout:Landroid/view/View;

    const v0, 0x7f0b074e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumePopupLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0750

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_1

    :try_start_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoProgressBar;->MODE_VERTICAL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->setMode(Landroid/widget/SeekBar;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumeSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getMaxVolume()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->setFluidEnabled(Landroid/widget/SeekBar;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060764

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->setThumbTintList(Landroid/widget/SeekBar;Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060763

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/common/MPUtils;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/sbrowser/spl/wrapper/MajoSeekBar;->setProgressTintList(Landroid/widget/SeekBar;Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getCurrentVolume()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->setVolumeSeekBar(I)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initialize. FallbackException : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v0}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumePopupLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0751

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mTextView:Landroid/widget/TextView;

    :cond_2
    :goto_1
    return-void
.end method

.method public show()V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->hideSystemVolumeUI()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumePopupLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->isShowing(Landroid/view/View;)Z

    move-result v0

    const-wide/16 v1, 0x7d0

    const/4 v3, 0x3

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getCurrentVolume()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->setVolumeSeekBar(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getCurrentVolume()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getMaxVolume()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getCurrentVolume()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->setVolumeSeekBar(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getCurrentVolume()I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getMaxVolume()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumePopupLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumePopupLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumeViewShowAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumePopupLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public toggleVolumeView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mLayout:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->isShowing(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->hide()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->show()V

    :goto_0
    return-void
.end method

.method public uninitialized()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenVolumeView;->mVolumePopupLayout:Landroid/widget/LinearLayout;

    return-void
.end method
