.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;
.super Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView$PlaySpeed;
    }
.end annotation


# static fields
.field private static final sPlaybackRates:[D


# instance fields
.field private mCurrentSpeed:Landroid/widget/RadioButton;

.field private mHoverListeners:[Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

.field private mPlaybackParentView:Landroid/view/View;

.field private mPlaybackRateView:Landroid/view/View;

.field private mPlaybackSpeedRadioGroup:Landroid/widget/RadioGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->sPlaybackRates:[D

    return-void

    :array_0
    .array-data 8
        0x3fd0000000000000L    # 0.25
        0x3fe0000000000000L    # 0.5
        0x3fe8000000000000L    # 0.75
        0x3ff0000000000000L    # 1.0
        0x3ff4000000000000L    # 1.25
        0x3ff8000000000000L    # 1.5
        0x3ffc000000000000L    # 1.75
        0x4000000000000000L    # 2.0
    .end array-data
.end method

.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;-><init>(Landroid/os/Handler;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mCurrentSpeed:Landroid/widget/RadioButton;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;)Landroid/widget/RadioGroup;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mPlaybackSpeedRadioGroup:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;Landroid/widget/RadioButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mCurrentSpeed:Landroid/widget/RadioButton;

    return-void
.end method

.method public static bridge synthetic d()[D
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->sPlaybackRates:[D

    return-object v0
.end method

.method private getButtonText(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f140740

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object p0

    sget-object v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->sPlaybackRates:[D

    aget-wide v1, v1, p1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v1, 0x7f140741

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setListeners()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mPlaybackSpeedRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView$1;-><init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getHoverListener()Landroid/view/View$OnHoverListener;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mHoverListeners:[Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    new-instance v3, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->getButtonText(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mHoverListeners:[Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mPlaybackSpeedRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->setOnHoverListener(Landroid/view/View;Landroid/view/View$OnHoverListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private showWithAnimation()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mPlaybackRateView:Landroid/view/View;

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public dismissPlaybackSpeedView()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mCurrentSpeed:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mCurrentSpeed:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mCurrentSpeed:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mCurrentSpeed:Landroid/widget/RadioButton;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mPlaybackRateView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public highlightSelectedSpeedButton(Landroid/widget/RadioButton;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getPlaybackRate()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const v0, 0x7f0804bd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public init(Landroid/widget/LinearLayout;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mPlaybackParentView:Landroid/view/View;

    const v0, 0x7f0b072f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mPlaybackRateView:Landroid/view/View;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mPlaybackParentView:Landroid/view/View;

    const v0, 0x7f0b0731

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mPlaybackSpeedRadioGroup:Landroid/widget/RadioGroup;

    const/16 p1, 0x8

    new-array p1, p1, [Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mHoverListeners:[Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->setListeners()V

    return-void
.end method

.method public isShowingPlayBackSpeed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mPlaybackRateView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setInitialSpeed()V
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->getPlaybackRate()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f0b0bba

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "1.75"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_1
    const-string v4, "1.25"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_2
    const-string v4, "0.75"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_3
    const-string v4, "0.25"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_4
    const-string v4, "2.0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_5
    const-string v4, "1.5"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_6
    const-string v4, "1.0"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    move v3, v0

    goto :goto_0

    :sswitch_7
    const-string v4, "0.5"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->mController:Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-interface {v1, v3, v4}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->setPlaybackRate(D)V

    goto :goto_1

    :pswitch_0
    const v2, 0x7f0b0bc0

    goto :goto_1

    :pswitch_1
    const v2, 0x7f0b0bbe

    goto :goto_1

    :pswitch_2
    const v2, 0x7f0b0bbd

    goto :goto_1

    :pswitch_3
    const v2, 0x7f0b0bbb

    goto :goto_1

    :pswitch_4
    const v2, 0x7f0b0bc1

    goto :goto_1

    :pswitch_5
    const v2, 0x7f0b0bbf

    goto :goto_1

    :pswitch_6
    const v2, 0x7f0b0bbc

    :goto_1
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mPlaybackSpeedRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mCurrentSpeed:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mCurrentSpeed:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->highlightSelectedSpeedButton(Landroid/widget/RadioButton;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xb9f7 -> :sswitch_7
        0xbdb3 -> :sswitch_6
        0xbdb8 -> :sswitch_5
        0xc174 -> :sswitch_4
        0x1684c1 -> :sswitch_3
        0x16855c -> :sswitch_2
        0x16f920 -> :sswitch_1
        0x16f9bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMargin(ILcom/sec/android/app/sbrowser/media/player/common/MPConstants$Margins;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mPlaybackParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LP0/h;

    sget-object v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView$2;->$SwitchMap$com$sec$android$app$sbrowser$media$player$common$MPConstants$Margins:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_2
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    :cond_3
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mPlaybackParentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mPlaybackParentView:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public showPlaybackSpeedView()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->setInitialSpeed()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->showWithAnimation()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mPlaybackRateView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public uninitialized()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mPlaybackSpeedRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mHoverListeners:[Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mPlaybackSpeedRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->destroy(Landroid/view/View;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mHoverListeners:[Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;

    aput-object v1, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullScreenPlaybackRateView;->mPlaybackSpeedRadioGroup:Landroid/widget/RadioGroup;

    :cond_2
    return-void
.end method
