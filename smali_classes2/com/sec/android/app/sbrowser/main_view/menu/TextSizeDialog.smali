.class public Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAnchor:Landroid/view/View;

.field mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field private final mSeekbarAccessibilityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarAccessibilityDelegate;

.field private mShouldKeepChangedValue:Z

.field private mTextSizeDialog:Lm/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mShouldKeepChangedValue:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mSeekbarAccessibilityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarAccessibilityDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;FLcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->lambda$show$3(FLcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;Landroid/content/Context;FLandroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->lambda$show$0(Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;Landroid/content/Context;FLandroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;FLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->lambda$show$2(FLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->lambda$show$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$show$0(Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;Landroid/content/Context;FLandroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;->seekbarParent:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_9

    invoke-static {p6}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p1

    or-int/2addr p1, p5

    invoke-virtual {p6}, Landroid/view/KeyEvent;->getAction()I

    move-result p5

    const/16 p6, 0x16

    const/16 v0, 0x15

    const/4 v1, 0x1

    if-ne p5, v1, :cond_4

    if-eq p1, v0, :cond_3

    if-ne p1, p6, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x42

    if-eq p1, p2, :cond_1

    const/16 p2, 0xa0

    if-eq p1, p2, :cond_1

    const/16 p2, 0x17

    if-ne p1, p2, :cond_2

    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mShouldKeepChangedValue:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->updateTextScalePref()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mTextSizeDialog:Lm/l;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lm/y;->dismiss()V

    :cond_2
    return p4

    :cond_3
    :goto_0
    return v1

    :cond_4
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    if-nez p2, :cond_5

    move p2, v1

    goto :goto_1

    :cond_5
    move p2, p4

    :goto_1
    if-eq p1, v0, :cond_8

    if-eq p1, p6, :cond_7

    const/16 p2, 0x6f

    if-eq p1, p2, :cond_6

    return p4

    :cond_6
    invoke-virtual {p0, p3}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->adjustTextSize(F)V

    return p4

    :cond_7
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->adjustSeekBarProgress(Z)V

    return v1

    :cond_8
    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->adjustSeekBarProgress(Z)V

    return v1

    :cond_9
    return p4
.end method

.method private synthetic lambda$show$1(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mShouldKeepChangedValue:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->updateTextScalePref()V

    return-void
.end method

.method private synthetic lambda$show$2(FLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->adjustTextSize(F)V

    return-void
.end method

.method private synthetic lambda$show$3(FLcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;Landroid/content/DialogInterface;)V
    .locals 0

    iget-boolean p3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mShouldKeepChangedValue:Z

    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->adjustTextSize(F)V

    :cond_0
    iget-object p0, p2, Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;->seekbarParent:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;->onDestroy()V

    return-void
.end method


# virtual methods
.method public adjustSeekBarProgress(Z)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lt/J0;->getProgress()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lt/J0;->setProgress(I)V

    return-void
.end method

.method public adjustTextSize(F)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "text size changed : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "si__TextSizeDialog"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setFontScaleFactor(F)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mTextSizeDialog:Lm/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mTextSizeDialog:Lm/l;

    invoke-virtual {v0}, Lm/y;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "si__TextSizeDialog"

    const-string v1, "text size dialog dismiss IllegalArgumentException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mTextSizeDialog:Lm/l;

    :cond_0
    :goto_0
    return-void
.end method

.method public prefValueToSeekBarProgress(F)I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/high16 p0, 0x3f000000    # 0.5f

    sub-float/2addr p1, p0

    const p0, 0x3d4ccccd    # 0.05f

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public seekBarProgressToPrefValue(I)F
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    int-to-float p0, p1

    const p1, 0x3d4ccccd    # 0.05f

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    return p0
.end method

.method public setAnchor(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mAnchor:Landroid/view/View;

    return-void
.end method

.method public show(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->dismiss()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mShouldKeepChangedValue:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;->seekbar:Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->prefValueToSeekBarProgress(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lt/J0;->setMax(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getTextScale()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->prefValueToSeekBarProgress(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lt/J0;->setProgress(I)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;->seekbarParent:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mSeekbarAccessibilityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarAccessibilityDelegate;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;->setSeekBar(Landroidx/appcompat/widget/SeslSeekBar;Lcom/sec/android/app/sbrowser/common/model/main/SeekbarAccessibilityDelegate;)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;->textSize:Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    float-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    new-instance v3, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog$2;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog$2;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Lt/X0;)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;->seekbarParent:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    new-instance v3, Lcom/sec/android/app/sbrowser/main_view/menu/l;

    invoke-direct {v3, p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/l;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;Landroid/content/Context;F)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v2, Lm/k;

    const v3, 0x7f1501c5

    invoke-direct {v2, p1, v3}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f140561

    invoke-virtual {v2, v3}, Lm/k;->e(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Lm/k;->setView(Landroid/view/View;)Lm/k;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/main_view/menu/i;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, Lcom/sec/android/app/sbrowser/main_view/menu/i;-><init>(ILjava/lang/Object;)V

    const v4, 0x7f14084e

    invoke-virtual {v2, v4, v3}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/main_view/menu/m;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/m;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;F)V

    const v4, 0x7f1402c1

    invoke-virtual {v2, v4, v3}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v2

    invoke-virtual {v2}, Lm/k;->create()Lm/l;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mTextSizeDialog:Lm/l;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mAnchor:Landroid/view/View;

    invoke-static {p1, v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->setAnchor(Landroid/content/Context;Landroid/app/Dialog;Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mTextSizeDialog:Lm/l;

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/menu/n;

    invoke-direct {v2, p0, v1, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/n;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;FLcom/sec/android/app/sbrowser/databinding/TextSizeDialogViewBinding;)V

    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mTextSizeDialog:Lm/l;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public updateTextScalePref()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lt/J0;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->seekBarProgressToPrefValue(I)F

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setTextScale(F)V

    return-void
.end method

.method public updateTextSize(Landroid/widget/TextView;I)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->seekBarProgressToPrefValue(I)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->adjustTextSize(F)V

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object p0

    float-to-double v0, p2

    invoke-virtual {p0, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
