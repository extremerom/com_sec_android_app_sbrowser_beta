.class public Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar$Listener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar$Listener;

.field private mPopupView:Landroid/view/View;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mTimer:Landroid/os/CountDownTimer;

.field private mZoomPercentageTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar$Listener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mListener:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar$Listener;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->initialize()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->lambda$initialize$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->lambda$createPopupWindow$3()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->lambda$initialize$1(Landroid/view/View;)V

    return-void
.end method

.method private cancelTimer()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private createPopupWindow()V
    .locals 3

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mPopupView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0717c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/a;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->setBlurEffect()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->lambda$initialize$2(Landroid/view/View;)V

    return-void
.end method

.method private initialize()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0928

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mPopupView:Landroid/view/View;

    const v1, 0x7f0b0e89

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mZoomPercentageTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mPopupView:Landroid/view/View;

    const v1, 0x7f0b0e88

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/sbrowser/zoom_in_out/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/zoom_in_out/b;-><init>(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mContext:Landroid/content/Context;

    const v2, 0x7f141117

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mPopupView:Landroid/view/View;

    const v1, 0x7f0b0e8a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/sbrowser/zoom_in_out/b;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Lcom/sec/android/app/sbrowser/zoom_in_out/b;-><init>(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mContext:Landroid/content/Context;

    const v3, 0x7f141116

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mPopupView:Landroid/view/View;

    const v1, 0x7f0b0e8b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/sbrowser/zoom_in_out/b;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/zoom_in_out/b;-><init>(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->createPopupWindow()V

    return-void
.end method

.method private isPopupShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$createPopupWindow$3()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mListener:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar$Listener;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar$Listener;->onZoomInfoBarVisibilityChanged(Z)V

    return-void
.end method

.method private synthetic lambda$initialize$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->onMinusButtonClick()V

    return-void
.end method

.method private synthetic lambda$initialize$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->onPlusButtonClick()V

    return-void
.end method

.method private synthetic lambda$initialize$2(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->onResetButtonClick()V

    return-void
.end method

.method private onMinusButtonClick()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mListener:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar$Listener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mTimer:Landroid/os/CountDownTimer;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar$Listener;->onMinusButtonClick(Z)V

    return-void
.end method

.method private onPlusButtonClick()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mListener:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar$Listener;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mTimer:Landroid/os/CountDownTimer;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar$Listener;->onPlusButtonClick(Z)V

    return-void
.end method

.method private onResetButtonClick()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mListener:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar$Listener;->onResetButtonClick()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mZoomPercentageTextView:Landroid/widget/TextView;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%d%%"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->dismissPopup()V

    return-void
.end method

.method private setBlurEffect()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mPopupView:Landroid/view/View;

    const v1, 0x7f0b0e87

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0xf4260

    invoke-static {v1}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBlurEffect(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v1, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_MODE_WINDOW:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;-><init>(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_MEDIUM_THICK_DARK:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo;->BLUR_UI_MEDIUM_THICK_LIGHT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setColorCurvePreset(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "sem_popup_menu_corner_radius"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const v2, 0x7f0717cc

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setRadius(I)V

    int-to-float p0, p0

    invoke-virtual {v1, p0}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)V

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/wrapper/SemBlurInfo$Builder;->build()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/MajoView;->semSetBlurInfo(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "ZoomInfoBar"

    const-string v0, "setBlurEffect, reflection failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private setTimer()V
    .locals 7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->cancelTimer()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar$1;

    const-wide/16 v3, 0xbb8

    const-wide/16 v5, 0xbb8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar$1;-><init>(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;JJ)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mTimer:Landroid/os/CountDownTimer;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public dismissPopup()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mPopupWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method public setZoomPercentageText(D)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mZoomPercentageTextView:Landroid/widget/TextView;

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%d%% "

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show(ILandroid/view/View;Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const-string v0, "show, zoomRate : "

    const-string v1, "ZoomInfoBar"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->createPopupWindow()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mZoomPercentageTextView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%d%% "

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->isPopupShowing()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mPopupWindow:Landroid/widget/PopupWindow;

    const v0, 0x800005

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "202_DeX"

    goto :goto_0

    :cond_1
    const-string p1, "201_DeX"

    :goto_0
    const-string p2, "2290"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->mListener:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar$Listener;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar$Listener;->onZoomInfoBarVisibilityChanged(Z)V

    if-eqz p3, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->setTimer()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar;->cancelTimer()V

    :goto_1
    return-void
.end method
