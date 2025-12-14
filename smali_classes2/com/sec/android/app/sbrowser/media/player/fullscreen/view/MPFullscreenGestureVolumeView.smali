.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;
.super Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;
.source "SourceFile"


# instance fields
.field private mGestureVolumeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mProgressDrawable:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/CustomProgressDrawable;

.field private mVolumeImage:Landroid/widget/ImageView;

.field private mVolumeParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mVolumeSeekBar:Landroid/widget/SeekBar;

.field private final mVolumeSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mVolumeValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;-><init>(Landroid/os/Handler;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView$1;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeValue:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->setCompoundViewAttr(I)V

    return-void
.end method

.method private setCompoundViewAttr(I)V
    .locals 4

    mul-int/lit8 p1, p1, 0x64

    div-int/lit16 p1, p1, 0xff

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeValue:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%03d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void
.end method


# virtual methods
.method public adjustGestureValue(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->setVolume(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->setMuted(Z)V

    return-void
.end method

.method public adjustView(F)I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mGestureVolumeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeValue:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    float-to-int p1, p1

    add-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0xff

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mGestureVolumeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->isShowing(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mGestureVolumeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mGestureVolumeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getMaxVolume()I

    move-result p0

    mul-int/2addr p0, p1

    div-int/2addr p0, v0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public hide()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mGestureVolumeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mGestureVolumeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->isShowing(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mGestureVolumeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getCurrentVolume()I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getMaxVolume()I

    move-result v2

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public initialize(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 2

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mGestureVolumeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mGestureVolumeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b072a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeValue:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mGestureVolumeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b072b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0729

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0724

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeImage:Landroid/widget/ImageView;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x23

    if-lt p1, v0, :cond_1

    new-instance p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/CustomProgressDrawable;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0803ff

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/CustomProgressDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mProgressDrawable:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/CustomProgressDrawable;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mProgressDrawable:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/CustomProgressDrawable;

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_3

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getCurrentVolume()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getMaxVolume()I

    move-result v0

    div-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mProgressDrawable:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/CustomProgressDrawable;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0803fe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeValue:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->setCompoundViewAttr(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public show()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->hideSystemVolumeUI()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mGestureVolumeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeValue:Landroid/widget/TextView;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->isShowing(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getCurrentVolume()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    mul-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getMaxVolume()I

    move-result v2

    div-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mGestureVolumeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mGestureVolumeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public uninitialized()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mVolumeSeekBar:Landroid/widget/SeekBar;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mProgressDrawable:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/CustomProgressDrawable;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureVolumeView;->mGestureVolumeLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method
