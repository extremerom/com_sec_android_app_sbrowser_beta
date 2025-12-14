.class public Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCustomView:Landroid/view/View;

.field protected mItemTouchListenerKeywordList:Landroidx/recyclerview/widget/N0;

.field mOnScrollListener:Landroidx/recyclerview/widget/O0;

.field mOnScrollListenerKeywordList:Landroidx/recyclerview/widget/O0;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectAllCountText:Landroid/widget/TextView;

.field private mSelectAllLayout:Landroid/widget/LinearLayout;

.field private mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

.field private mView:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$1;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mItemTouchListenerKeywordList:Landroidx/recyclerview/widget/N0;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$2;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mOnScrollListenerKeywordList:Landroidx/recyclerview/widget/O0;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$3;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mOnScrollListener:Landroidx/recyclerview/widget/O0;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mView:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->lambda$initActionBar$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->lambda$updateActionbarLayout$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->lambda$updateActionbarLayout$1()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->lambda$updateActionbarLayout$3(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    return-object p0
.end method

.method private getSelectedString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140289

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14028a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mView:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->getSelectedItemCount()I

    move-result p0

    if-lez p0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f12005f

    invoke-virtual {v1, v3, p0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const p0, 0x7f140801

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v2, 0x7f140655

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string v1, ", "

    invoke-static {v0, v1, p0}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$initActionBar$0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mView:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->onCancelButtonClicked()V

    return-void
.end method

.method private synthetic lambda$updateActionbarLayout$1()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private synthetic lambda$updateActionbarLayout$2(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->setSelectAll(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->getSelectedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mView:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->resetIndex()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/view/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/d;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$updateActionbarLayout$3(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->setSelectAll(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->getSelectedString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public adjustScreenForKeyboard(Landroid/app/Activity;Z)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->supportPopOverOptions()Z

    move-result p0

    const/16 v0, 0x30

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_0
    return-void
.end method

.method public getCurrentTabInformativeTitle()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mView:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->isActionModeShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mView:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->getSelectedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1405cf

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f120001

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140f8f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeleteMessage()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mView:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->getSelectedItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getCurrentTabIndex()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    const v3, 0x7f12004c

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const-string p0, ""

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v3, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->isSecretModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const v3, 0x7f12002c

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v3, v0, p0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f120007

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getDeleteMessageForBookmarkDialog(IIZZ)Ljava/lang/String;
    .locals 0

    sub-int p4, p2, p1

    if-eqz p4, :cond_0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p3, 0x7f120007

    invoke-virtual {p0, p3, p2, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_5

    :cond_0
    if-eqz p1, :cond_2

    if-nez p4, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p3, :cond_1

    const p1, 0x7f120002

    goto :goto_0

    :cond_1
    const p1, 0x7f120003

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_5

    :cond_2
    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    if-ne p4, p2, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p3, :cond_3

    const p1, 0x7f140258

    goto :goto_1

    :cond_3
    const p1, 0x7f140254

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_4
    if-ne p1, p2, :cond_6

    if-le p4, p2, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p3, :cond_5

    const p1, 0x7f140257

    goto :goto_2

    :cond_5
    const p1, 0x7f140253

    :goto_2
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_6
    if-le p1, p2, :cond_8

    if-ne p4, p2, :cond_8

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p3, :cond_7

    const p2, 0x7f14025a

    goto :goto_3

    :cond_7
    const p2, 0x7f140255

    :goto_3
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p3, :cond_9

    const p2, 0x7f140259

    goto :goto_4

    :cond_9
    const p2, 0x7f140256

    :goto_4
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_5
    return-object p0
.end method

.method public getKeywordItemTouchListener()Landroidx/recyclerview/widget/N0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mItemTouchListenerKeywordList:Landroidx/recyclerview/widget/N0;

    return-object p0
.end method

.method public getKeywordScrollListener()Landroidx/recyclerview/widget/O0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mOnScrollListenerKeywordList:Landroidx/recyclerview/widget/O0;

    return-object p0
.end method

.method public getScrollListener()Landroidx/recyclerview/widget/O0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mOnScrollListener:Landroidx/recyclerview/widget/O0;

    return-object p0
.end method

.method public getSelectAllCheckBox()Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public handleNoItemViewHeight(ILandroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-lez p1, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    :cond_1
    if-eqz p3, :cond_7

    if-nez p4, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, v2, :cond_4

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p1, v2, :cond_3

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_1
    if-lez p1, :cond_5

    move v2, p1

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez p1, :cond_6

    goto :goto_3

    :cond_6
    move p1, v0

    :goto_3
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    new-instance p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$5;

    invoke-direct {p1, p0, p3, p2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$5;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p3, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$6;

    invoke-direct {p1, p0, p4, v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$6;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p4, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_4
    return-void
.end method

.method public initActionBar()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllCountText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0b65

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mCustomView:Landroid/view/View;

    const v2, 0x7f0b0af9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->isSecretModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060bed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f06013a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllCountText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0800ad

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    const v2, 0x7f060e10

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mCustomView:Landroid/view/View;

    const v1, 0x7f0b0af8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/search/view/h;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/search/view/h;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1402c1

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public onKeywordMainItemClick(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;Landroid/widget/EditText;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public requestFocus(Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return p0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchKeywordLayout;->requestFocusClearSearchHistoryMainLayout()V

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public setActionModeTitleAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllCountText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setNestedScroll(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll()V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->startNestedScroll(I)Z

    :goto_0
    return-void
.end method

.method public setSelectAll(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mView:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->resetIndex()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mView:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->selectAll(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    const-string v0, "313"

    const-string v1, "3127"

    const-string v2, "SelectDeselect"

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setSelectCheckbox(Landroid/view/View;ZZ)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const p0, 0x7f0b0b66

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_1
    return-void
.end method

.method public showSavePageShareTooManyUrlsSnackbar(Landroid/app/Activity;)V
    .locals 2

    const p0, 0x1020002

    const v0, 0x7f140dc8

    const/4 v1, -0x1

    invoke-static {p1, p0, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->q(Landroid/app/Activity;III)V

    return-void
.end method

.method public updateActionbarLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->initActionBar()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/search/view/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/search/view/h;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/search/view/h;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/search/view/h;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->updateSelectAllText()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->updateSelectAllCheckBox()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->updateToolbar(Z)V

    return-void
.end method

.method public updateFastScrollerStatus(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVerticalScrollbarPosition(I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEnabled(Z)V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$4;-><init>(Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFastScrollerEventListener(Landroidx/recyclerview/widget/W0;)V

    return-void
.end method

.method public updateHeader(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Landroid/widget/TextView;Landroid/widget/RelativeLayout;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper$7;->$SwitchMap$com$sec$android$app$sbrowser$common$model$sites$SitesSearchItem$TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1405ce

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140dd9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f14027f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ", "

    invoke-static {p2, p1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->u(Landroid/widget/TextView;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14058d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->u(Landroid/widget/TextView;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateSelectAllCheckBox()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSearchDataNull()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mView:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->getSelectedItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getNonEditableBookmarkFolderCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateSelectAllText()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mView:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->getSelectedItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllCountText:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mView:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->isActionModeShown()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const v1, 0x7f14028a

    const/4 v2, 0x0

    const v3, 0x7f140b8f

    const v4, 0x7f140f90

    const-string v5, ", "

    if-nez v0, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllCountText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1405cf

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v8, v1, v7, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v4, v7, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f141085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mView:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->setSearchActionModeMenuVisibility(Z)V

    goto/16 :goto_1

    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllCountText:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const v9, 0x7f120001

    invoke-virtual {v7, v9, v0, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-ne v0, v6, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    const v8, 0x7f140289

    invoke-static {v7, v8, v6, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v7, v4, v6, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v8, v1, v7, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v4, v7, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f141084

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mView:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->setSearchActionModeMenuVisibility(Z)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mView:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->onUpdateInformativeAppBarInfo()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    if-lez v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mView:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->updateBottomBarDeleteButton()V

    :cond_4
    :goto_2
    return-void
.end method

.method public updateToolbar(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSitesSupportActionBar()Lm/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lm/b;->q(Z)V

    invoke-virtual {v0, v1}, Lm/b;->n(Z)V

    invoke-virtual {v0}, Lm/b;->t()V

    invoke-virtual {v0, p1}, Lm/b;->p(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getSearchView()Landroid/view/View;

    move-result-object v2

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mView:Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchBaseUi;->isActionModeShown()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mSitesActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->setSearchEditText()V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/search/view/SitesSearchHelper;->mCustomView:Landroid/view/View;

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lm/b;->l(Landroid/view/View;)V

    return-void
.end method
