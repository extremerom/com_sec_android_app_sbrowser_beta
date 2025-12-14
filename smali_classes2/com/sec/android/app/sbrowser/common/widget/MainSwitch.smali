.class public Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private mAccessibilityTitle:Ljava/lang/String;

.field private mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mClickableContainer:Landroid/view/View;

.field private mIsEnabled:Z

.field private mIsWebAssist:Z

.field private mSALoggingEventId:Ljava/lang/String;

.field private mSALoggingScreenId:Ljava/lang/String;

.field private mSALoggingStatusId:Ljava/lang/String;

.field private mSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private mSwitchTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mIsEnabled:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->initView()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->lambda$initView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->lambda$initView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->lambda$initView$2(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;)Landroidx/appcompat/widget/SwitchCompat;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mSwitchTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->getAccessibilityTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAccessibilityTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mAccessibilityTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mAccessibilityTitle:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method private getTextColorId(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x7f060206

    goto :goto_0

    :cond_0
    const p0, 0x7f0602a8

    :goto_0
    return p0
.end method

.method private initView()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e0195

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0b0c2d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mClickableContainer:Landroid/view/View;

    const v0, 0x7f0b0c32

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mSwitchTitle:Landroid/widget/TextView;

    const v0, 0x7f0b0c33

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mClickableContainer:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch$1;-><init>(Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mIsWebAssist:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mClickableContainer:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/widget/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/common/widget/b;-><init>(Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/widget/b;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/common/widget/b;-><init>(Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/widget/c;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/common/widget/c;-><init>(Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0601f5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mIsWebAssist:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->updateSwitchState(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->sendSAEventLog()V

    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->sendSAEventLog()V

    return-void
.end method

.method private synthetic lambda$initView$2(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->sendSAStatusLog(Z)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->updateSwitchState(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_0
    return-void
.end method

.method private sendSAStatusLog(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "On"

    goto :goto_0

    :cond_0
    const-string p1, "Off"

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mSALoggingStatusId:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    return p0
.end method

.method public sendSAEventLog()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "On"

    goto :goto_0

    :cond_0
    const-string v0, "Off"

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mSALoggingScreenId:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mSALoggingEventId:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAccessibilityTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mAccessibilityTitle:Ljava/lang/String;

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mIsEnabled:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mClickableContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mClickableContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->updateSwitchState(Z)V

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setSALoggingId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mSALoggingScreenId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mSALoggingEventId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mSALoggingStatusId:Ljava/lang/String;

    return-void
.end method

.method public updateSwitchState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mClickableContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mSwitchTitle:Landroid/widget/TextView;

    const v1, 0x7f1402b0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mSwitchTitle:Landroid/widget/TextView;

    const v1, 0x7f1402af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mSwitchTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->getTextColorId(Z)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mSwitchTitle:Landroid/widget/TextView;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->mIsEnabled:Z

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    return-void
.end method
