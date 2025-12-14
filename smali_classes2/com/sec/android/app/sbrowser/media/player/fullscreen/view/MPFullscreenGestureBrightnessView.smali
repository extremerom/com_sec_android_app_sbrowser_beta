.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;
.super Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;
.source "SourceFile"


# instance fields
.field private mBrightnessParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mBrightnessSeekBar:Landroid/widget/SeekBar;

.field private final mBrightnessSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mBrightnessValue:Landroid/widget/TextView;

.field private mGestureBrightnessLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mProgressDrawable:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/CustomProgressDrawable;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;-><init>(Landroid/os/Handler;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView$1;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->updateBrightnessValue(I)V

    return-void
.end method

.method private updateBrightnessValue(I)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessValue:Landroid/widget/TextView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    mul-int/lit8 p1, p1, 0x64

    div-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%03d"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public adjustGestureValue(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->setBrightness(I)V

    return-void
.end method

.method public adjustView(F)I
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mGestureBrightnessLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessValue:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    float-to-int p1, p1

    add-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    float-to-int v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mGestureBrightnessLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->isShowing(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mGestureBrightnessLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mGestureBrightnessLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getMaxBrightnessSetting()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    div-float/2addr p1, v0

    float-to-int p0, p1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mGestureBrightnessLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mGestureBrightnessLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->isShowing(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mGestureBrightnessLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public initialize(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mGestureBrightnessLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mGestureBrightnessLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b072a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessValue:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mGestureBrightnessLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0722

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0729

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0724

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/CustomProgressDrawable;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0803ff

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/CustomProgressDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mProgressDrawable:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/CustomProgressDrawable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mProgressDrawable:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/CustomProgressDrawable;

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070946

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const v1, 0x7f080408

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    if-eqz p1, :cond_3

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getCurrentBrightness()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getMaxBrightnessSetting()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mProgressDrawable:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/CustomProgressDrawable;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0803fe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->updateBrightnessValue(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public show()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mGestureBrightnessLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessValue:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mGestureBrightnessLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->isShowing(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getCurrentBrightness()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getMaxBrightnessSetting()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mGestureBrightnessLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mGestureBrightnessLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public uninitialized()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mBrightnessSeekBar:Landroid/widget/SeekBar;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mProgressDrawable:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/CustomProgressDrawable;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenGestureBrightnessView;->mGestureBrightnessLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method
