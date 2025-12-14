.class public Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Delegate;,
        Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Listener;
    }
.end annotation


# instance fields
.field private mActionBarView:Landroid/view/View;

.field private final mActivity:Landroid/app/Activity;

.field private mCancelButton:Landroid/view/View;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Delegate;

.field private final mListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Listener;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectAllLayout:Landroid/widget/LinearLayout;

.field private mSelectAllText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Delegate;Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Listener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Delegate;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Listener;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->lambda$initialize$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->lambda$initialize$0()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->lambda$initialize$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->lambda$initialize$1(Landroid/view/View;)V

    return-void
.end method

.method private getCheckedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140289

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14028a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getSelectedString(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-lez p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f12005f

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f140801

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f140655

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->getCheckedText()Ljava/lang/String;

    move-result-object p0

    const-string v1, ", "

    invoke-static {v0, p0, v1, p1}, LV0/c;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$initialize$0()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private synthetic lambda$initialize$1(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Listener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Listener;->onSelectAllCheckBoxClicked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Delegate;->getSelectedItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->getSelectedString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/history/view/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/sites/history/view/f;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$initialize$2(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Listener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Listener;->onSelectAllCheckBoxClicked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Delegate;->getSelectedItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->getSelectedString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$initialize$3(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mListener:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Listener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Listener;->onCancelButtonClicked()V

    return-void
.end method


# virtual methods
.method public getSelectAllCheckBox()Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public hasFocus()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initialize()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0455

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActionBarView:Landroid/view/View;

    const v1, 0x7f0b05d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActionBarView:Landroid/view/View;

    const v1, 0x7f0b05d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActionBarView:Landroid/view/View;

    const v1, 0x7f0b05d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActionBarView:Landroid/view/View;

    const v1, 0x7f0b0af8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mCancelButton:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/history/view/g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/g;-><init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/history/view/g;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/g;-><init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mCancelButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/history/view/g;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/history/view/g;-><init>(Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mCancelButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1402c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->setActionModeEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Delegate;->getSelectedItemCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->setSelectedItemCount(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActionBarView:Landroid/view/View;

    const v1, 0x7f0b0af9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0800ad

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060e10

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public isInitialized()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setActionModeEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActivity:Landroid/app/Activity;

    check-cast v0, Lm/n;

    invoke-virtual {v0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lm/b;->q(Z)V

    invoke-virtual {v0, v1}, Lm/b;->n(Z)V

    invoke-virtual {v0, v1}, Lm/b;->r(Z)V

    invoke-virtual {v0, p1}, Lm/b;->p(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->setIsInActionMode(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getToolBarTitleView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz p1, :cond_1

    const/16 v2, 0x8

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lm/b;->t()V

    invoke-virtual {v0}, Lm/b;->u()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActionBarView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lm/b;->l(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lm/b;->l(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public setActionModeTitleAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setSelectedItemCount(I)V
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1405cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f141085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f120001

    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f141084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper$Delegate;->isSelectAll()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->getCheckedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActivity:Landroid/app/Activity;

    const v2, 0x7f140f90

    invoke-static {v1, v2, p1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140b8f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/history/view/HistoryUiActionBarHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
