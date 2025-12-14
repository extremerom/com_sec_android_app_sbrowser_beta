.class public Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;
.super Lcom/sec/android/app/sbrowser/infobars/InfoBar;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$Listener;
    }
.end annotation


# instance fields
.field mListener:Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$Listener;

.field private mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field private mSeekbarContainer:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$Listener;)V
    .locals 2
    .param p3    # Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;ILjava/lang/CharSequence;)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->mListener:Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$Listener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;)Landroidx/appcompat/widget/SeslSeekBar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;)Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->mSeekbarContainer:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->progressToValue(I)I

    move-result p0

    return p0
.end method

.method public static create(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$Listener;)Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;
    .locals 1
    .param p2    # Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$Listener;)V

    return-object v0
.end method

.method private hide()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->removeInfoBar(Lcom/sec/android/app/sbrowser/infobars/InfoBar;)Z

    :cond_0
    return-void
.end method

.method private progressToValue(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x5

    return p1
.end method

.method private valueToProgress(I)I
    .locals 0

    div-int/lit8 p1, p1, 0x5

    return p1
.end method


# virtual methods
.method public createView()Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e0911

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getWebDarkModeBrightness()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const v2, 0x7f0b0e02

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f0b0ad7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/16 v4, 0x64

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->valueToProgress(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lt/J0;->setMax(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->valueToProgress(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lt/J0;->setProgress(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    new-instance v3, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$1;

    invoke-direct {v3, p0, v2}, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$1;-><init>(Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;Landroid/widget/TextView;)V

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Lt/X0;)V

    const v1, 0x7f0b0ad8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->mSeekbarContainer:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    new-instance v3, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$2;-><init>(Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;)V

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;->setSeekBar(Landroidx/appcompat/widget/SeslSeekBar;Lcom/sec/android/app/sbrowser/common/model/main/SeekbarAccessibilityDelegate;)V

    const v1, 0x7f0b01f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b01fb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b01ed

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-object v0
.end method

.method public onAttach()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->onAttach()Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b01ed

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {v0}, Lt/J0;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->progressToValue(I)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->setWebDarkModeBrightness(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->mListener:Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$Listener;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar$Listener;->onButtonClicked(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->hide()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->restore()V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->onDetach()V

    return-void
.end method

.method public onLoadStarted()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->onLoadStarted()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->hide()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "pref_web_dark_mode_brightness"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getWebDarkModeBrightness()F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->mSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/WebDarkModeBrightnessInfoBar;->valueToProgress(I)I

    move-result p0

    invoke-virtual {p2, p0}, Lt/J0;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public restore()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getWebDarkModeBrightness()F

    move-result p0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setVAXContrastFactor(I)V

    return-void
.end method
