.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mControlContainer:Landroid/view/View;

.field private mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

.field private mGoNextButton:Landroid/widget/ImageButton;

.field private mGoPrevButton:Landroid/widget/ImageButton;

.field private mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

.field private mPlayPauseButton:Landroid/widget/ImageButton;

.field private mPlaytoPauseAnimation:Lcom/airbnb/lottie/LottieAnimationView;

.field private mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field private mSeekBarContainer:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

.field private mSettingButton:Landroid/widget/ImageButton;

.field private mSettingOrTranslateButton:Landroid/widget/ImageButton;

.field private mSpeechRateButton:Landroid/widget/FrameLayout;

.field private mSpeechRateListAdapter:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;

.field private mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

.field private mSpeechRateSpinnerIsClickedByUser:Z

.field private final mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

.field private mTranslateButton:Landroid/widget/ImageButton;

.field private mTranslationLoadingAnimation:Landroidx/appcompat/widget/SeslProgressBar;

.field private mWasSpeechSpinnerVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->EMPTY:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;->EMPTY:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->lambda$updateSpeechRateSpinner$7(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private adjustControlButtonPosition()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isResultView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LP0/h;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isTranslationSupported()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isReadArticlesAloud()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSettingButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mTranslateButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    :goto_1
    iput v1, v0, LP0/h;->r:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private animatePauseToPlay()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "play_to_pause_dark.json"

    goto :goto_0

    :cond_0
    const-string v1, "play_to_pause_light.json"

    :goto_0
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->processAnimation(Ljava/lang/String;)V

    return-void
.end method

.method private animatePlayToPause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pause_to_play_dark.json"

    goto :goto_0

    :cond_0
    const-string v1, "pause_to_play_light.json"

    :goto_0
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->loadJSONFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->processAnimation(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->lambda$setListenerForButtons$3(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->lambda$updateSpeechRateSpinner$8(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->lambda$setListenerForButtons$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->lambda$setListenerForButtons$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->lambda$setListenerForButtons$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->lambda$setListenerForButtons$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->lambda$setListenerForButtons$1(ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->lambda$updateSpeechRateSpinner$6()V

    return-void
.end method

.method private initializeNavigationButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f14054d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoPrevButton:Landroid/widget/ImageButton;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoPrevButton:Landroid/widget/ImageButton;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f140547

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoNextButton:Landroid/widget/ImageButton;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoNextButton:Landroid/widget/ImageButton;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initializeSeekBar()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSeekBarContainer:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout$2;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;->setSeekBar(Landroidx/appcompat/widget/SeslSeekBar;Lcom/sec/android/app/sbrowser/common/model/main/SeekbarAccessibilityDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout$3;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Lt/X0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSeekBarContainer:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isReadArticlesAloud()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initializeSettingButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSettingButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isTranslationSupported()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isReadArticlesAloud()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f140ed0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSettingButton:Landroid/widget/ImageButton;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mTranslateButton:Landroid/widget/ImageButton;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initializeSpeechRateButton()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isReadArticlesAloud()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;->getSpinnerBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f140740

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070e65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070e67

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownHorizontalOffset(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownVerticalOffset(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->updateSpeechRateSpinner()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->updateSpeechRate()V

    return-void
.end method

.method private initializeTranslateButton()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mTranslateButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isTranslationSupported()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isReadArticlesAloud()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f1400b5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mTranslateButton:Landroid/widget/ImageButton;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mTranslateButton:Landroid/widget/ImageButton;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->updateTranslateButtonState()V

    return-void
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;)Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mPlaytoPauseAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;)Landroidx/appcompat/widget/SeslSeekBar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    return-object p0
.end method

.method private static synthetic lambda$setListenerForButtons$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$setListenerForButtons$1(ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->onPrevClick(Z)V

    return-void
.end method

.method private synthetic lambda$setListenerForButtons$2(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isResultView()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->animatePlayToPause()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->animatePauseToPlay()V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;->onPlayPauseClick()V

    return-void
.end method

.method private synthetic lambda$setListenerForButtons$3(ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->onNextClick(Z)V

    return-void
.end method

.method private synthetic lambda$setListenerForButtons$4(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;->onSettingClick()V

    return-void
.end method

.method private synthetic lambda$setListenerForButtons$5(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;->onTranslateClick()V

    return-void
.end method

.method private synthetic lambda$updateSpeechRateSpinner$6()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->seslDismissPopup()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinnerIsClickedByUser:Z

    return-void
.end method

.method private synthetic lambda$updateSpeechRateSpinner$7(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinnerIsClickedByUser:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;->updateValidTouch(FF)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$updateSpeechRateSpinner$8(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x17

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinnerIsClickedByUser:Z

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;)Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSeekBarContainer:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateButton:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinnerIsClickedByUser:Z

    return p0
.end method

.method private onNextClick(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;->onNextClick()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;->onPrevClick()V

    :goto_0
    return-void
.end method

.method private onPrevClick(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;->onPrevClick()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;->onNextClick()V

    :goto_0
    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinnerIsClickedByUser:Z

    return-void
.end method

.method private processAnimation(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mPlaytoPauseAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mPlaytoPauseAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mPlaytoPauseAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;)V

    iget-object p1, p1, Lcom/airbnb/lottie/LottieAnimationView;->e:Lz3/t;

    iget-object p1, p1, Lz3/t;->b:LL3/c;

    invoke-virtual {p1, v0}, LL3/c;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mPlaytoPauseAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    return-void
.end method

.method private setButtonEnabled(Landroid/widget/ImageButton;Z)V
    .locals 2
    .param p1    # Landroid/widget/ImageButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;->getButtonTintColor(Z)I

    move-result p0

    invoke-static {v0, p0}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    return-void
.end method

.method private setButtonState(Landroid/widget/ImageButton;ZZ)V
    .locals 1
    .param p1    # Landroid/widget/ImageButton;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;->getButtonTintColor(Z)I

    move-result p0

    invoke-static {v0, p0}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    return-void
.end method

.method private setListenerForButtons()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mControlContainer:Landroid/view/View;

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/f;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/f;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoPrevButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/g;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/g;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;ZI)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mPlayPauseButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/h;

    invoke-direct {v2, v3, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoNextButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/g;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/g;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;ZI)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSettingButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/h;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mTranslateButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/h;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateSeekbar()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isSummaryOnGoing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->getCurrentPosition()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v2, v0}, Lt/J0;->setProgress(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->canPlay()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isSummaryOnGoing()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    return-void
.end method

.method private updateSpeechRate()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateListAdapter:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getReadAloudSpeechRate()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateListAdapter:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateListAdapter:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateSpeechRateButtonState()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    return-void
.end method

.method private updateSpeechRateSpinner()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    new-instance v6, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudSpeechRate;->getValueList()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;->getTheme()I

    move-result v4

    new-instance v5, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/c;

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/c;-><init>(Ljava/lang/Object;)V

    const v2, 0x7f0e060e

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;ILcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter$Delegate;)V

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateListAdapter:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/d;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/e;

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout$4;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method


# virtual methods
.method public adjustControlButtonMargin()V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mTranslateButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mControlContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isResultViewInFloatingMode()Z

    move-result v5

    if-nez v5, :cond_5

    int-to-double v4, v4

    const-wide v6, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v6, v4

    double-to-int v6, v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070e22

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateButton:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mTranslateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const-wide v0, 0x3fb47ae147ae147bL    # 0.08

    mul-double/2addr v4, v0

    double-to-int v0, v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEasyModeForSystemWindow()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isResultViewInSideMode()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    if-eqz v3, :cond_7

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_5
    int-to-double v0, v4

    const-wide v4, 0x3f9eb851eb851eb8L    # 0.03

    mul-double/2addr v0, v4

    double-to-int v0, v0

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public adjustControlButtonVisibility()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isSummaryOnGoing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isResultView()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070e25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEasyModeForSystemWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f070e24

    goto :goto_0

    :cond_1
    const v1, 0x7f070e23

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInFreeFormWindowMode()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_5

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070e26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mControlContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    if-gt v1, v0, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    const/4 v0, 0x1

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateButton:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    if-eqz v0, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    move v4, v3

    :goto_3
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSettingOrTranslateButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move v2, v3

    :goto_4
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_5
    return-void
.end method

.method public excludeChildFromTransition(LY2/f0;)V
    .locals 1
    .param p1    # LY2/f0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mControlContainer:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, LY2/f0;->excludeChildren(Landroid/view/View;Z)LY2/f0;

    return-void
.end method

.method public hideArticleList()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isSummaryOnGoing()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mTranslateButton:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isSummaryOnGoing()Z

    move-result p0

    if-eqz p0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideSpinnerOnOrientationChange()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->seslGetPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mWasSpeechSpinnerVisible:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->seslDismissPopup()V

    :cond_0
    return-void
.end method

.method public hideSummaryProgress()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mTranslateButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public initialize()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->initializeSeekBar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->initializeSpeechRateButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->initializeNavigationButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->initializeSettingButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->initializeTranslateButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->setListenerForButtons()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->adjustControlButtonPosition()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isReadArticlesAloud()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mTranslateButton:Landroid/widget/ImageButton;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSettingButton:Landroid/widget/ImageButton;

    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSettingOrTranslateButton:Landroid/widget/ImageButton;

    return-void
.end method

.method public onFinishInflate(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0b0996

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mControlContainer:Landroid/view/View;

    const v0, 0x7f0b09a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSeekBarContainer:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    const v0, 0x7f0b099f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const v0, 0x7f0b09a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateButton:Landroid/widget/FrameLayout;

    const v0, 0x7f0b09a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    const v0, 0x7f0b0999

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoPrevButton:Landroid/widget/ImageButton;

    const v0, 0x7f0b099d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mPlayPauseButton:Landroid/widget/ImageButton;

    const v0, 0x7f0b09b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SeslProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mTranslationLoadingAnimation:Landroidx/appcompat/widget/SeslProgressBar;

    const v0, 0x7f0b0998

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoNextButton:Landroid/widget/ImageButton;

    const v0, 0x7f0b09a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSettingButton:Landroid/widget/ImageButton;

    const v0, 0x7f0b09a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mTranslateButton:Landroid/widget/ImageButton;

    const v0, 0x7f0b08ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mPlaytoPauseAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method public processTranslationAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isTranslationOnGoing()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mTranslationLoadingAnimation:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mTranslationLoadingAnimation:Landroidx/appcompat/widget/SeslProgressBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mListener:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarListener;

    return-void
.end method

.method public setMax(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0, p1}, Lt/J0;->setMax(I)V

    return-void
.end method

.method public showArticleList()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isSummaryOnGoing()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mTranslateButton:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isSummaryOnGoing()Z

    move-result p0

    if-eqz p0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showSpinnerOnOrientationChange(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mWasSpeechSpinnerVisible:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;->performClick()Z

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mWasSpeechSpinnerVisible:Z

    return-void
.end method

.method public showSummaryProgress()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mTranslateButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateNavigationButton()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isReadArticlesAloud()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isListPage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->updateNavigationButton(Z)V

    return-void
.end method

.method public updateNavigationButton(Z)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz p1, :cond_2

    const p1, 0x7f080336

    const v1, 0x7f080332

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    move p1, v1

    goto :goto_2

    :cond_2
    const p1, 0x7f080337

    const v1, 0x7f080333

    if-eqz v0, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    move v2, p1

    :goto_1
    if-eqz v0, :cond_1

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoNextButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public updateNavigationButtonState()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->canPrev()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->canNext()Z

    move-result v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoPrevButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->setButtonEnabled(Landroid/widget/ImageButton;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoNextButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->setButtonEnabled(Landroid/widget/ImageButton;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoNextButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->setButtonEnabled(Landroid/widget/ImageButton;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoPrevButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->setButtonEnabled(Landroid/widget/ImageButton;Z)V

    :goto_0
    return-void
.end method

.method public updatePlayPauseButtonState()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isPlaying()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->canPlay()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mPlayPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const v3, 0x7f080334

    goto :goto_0

    :cond_0
    const v3, 0x7f080335

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mPlayPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->setButtonEnabled(Landroid/widget/ImageButton;Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    const v0, 0x7f140715

    goto :goto_3

    :cond_3
    const v0, 0x7f140716

    :goto_3
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateSummaryState()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mControlContainer:Landroid/view/View;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->shouldShowError()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateTheme(ZZI)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;->updateTheme(ZZI)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;->getProgressBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SeslProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;->getProgressTintList()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lt/J0;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lt/J0;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;->getSpinnerBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateSpinner:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ValidTouchSpinner;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;->getButtonBackground()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatSpinner;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSpeechRateListAdapter:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;->getTheme()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/SpeechRateListAdapter;->updateTheme(I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoPrevButton:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->canPrev()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->setButtonEnabled(Landroid/widget/ImageButton;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoPrevButton:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;->getButtonBackground()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mPlayPauseButton:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isPlaying()Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->canPlay()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move p2, p3

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->setButtonEnabled(Landroid/widget/ImageButton;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mPlayPauseButton:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;->getButtonBackground()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoNextButton:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->canNext()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->setButtonEnabled(Landroid/widget/ImageButton;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mGoNextButton:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;->getButtonBackground()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mTranslateButton:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->canTranslate()Z

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isTranslationEnabled()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->setButtonState(Landroid/widget/ImageButton;ZZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mTranslateButton:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;->getButtonBackground()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSettingButton:Landroid/widget/ImageButton;

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->setButtonEnabled(Landroid/widget/ImageButton;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mSettingButton:Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;->getButtonBackground()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public updateToolbar()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->updateSeekbar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->updateSpeechRateButtonState()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->updatePlayPauseButtonState()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->updateNavigationButtonState()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->updateTranslateButtonState()V

    return-void
.end method

.method public updateTranslateButtonState()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mTranslateButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->canTranslate()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mDelegate:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarDelegate;->isTranslationEnabled()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->setButtonState(Landroid/widget/ImageButton;ZZ)V

    return-void
.end method

.method public updateTranslationState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mTranslateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudControlLayout;->mThemeManager:Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/ReadAloudToolbarTheme;->getButtonTintColor(Z)I

    move-result p0

    invoke-static {v0, p0}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method
