.class public Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

.field private mCancelButton:Landroid/view/View;

.field private mProgressDialog:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageProgressDialog;

.field private mSavedPageActionBarView:Landroid/view/View;

.field private mSavedPageMainLayout:Landroid/widget/LinearLayout;

.field private mSavedPageMainLayoutView:Landroid/view/View;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectAllLayout:Landroid/widget/LinearLayout;

.field private mSelectItemCountText:Landroid/widget/TextView;

.field private mSyncNoticeText:Landroid/widget/TextView;

.field private mSyncNoticeTextSecond:Landroid/widget/TextView;

.field private mView:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSavedPageMainLayoutView:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mView:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->lambda$updateActionbarLayout$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->lambda$updateActionbarLayout$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->lambda$updateActionbarLayout$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->lambda$updateActionbarLayout$1()V

    return-void
.end method

.method private getCheckedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140289

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14028a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getIsMonday()Z
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static getIsWednesday()Z
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getSavedPageVisitedCountToday(Landroid/app/Activity;)I
    .locals 1

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const-string v0, "pref_saved_page_visited_count"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    :cond_0
    return p1
.end method

.method private getSelectedString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mView:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->getSelectedItemCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f12005f

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v1, 0x7f140801

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f140655

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->getCheckedText()Ljava/lang/String;

    move-result-object p0

    const-string v2, ", "

    invoke-static {v1, p0, v2, v0}, LV0/c;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSavedPageMainLayoutView:Landroid/view/View;

    const v1, 0x7f0b0a66

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSavedPageMainLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSavedPageMainLayoutView:Landroid/view/View;

    const v1, 0x7f0b020a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSyncNoticeText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSavedPageMainLayoutView:Landroid/view/View;

    const v1, 0x7f0b020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSyncNoticeTextSecond:Landroid/widget/TextView;

    return-void
.end method

.method private static isAllSavedPageDataSynced()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->getSavedPageCountNeedToSync()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMondayAndFirstVisit()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->getIsMonday()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->getCumulativeVisitedCountToday(Landroid/app/Activity;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isWednesdayAndFirstVisit()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->getIsWednesday()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->getCumulativeVisitedCountToday(Landroid/app/Activity;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$updateActionbarLayout$0(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mView:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->onCancelButtonClicked()V

    return-void
.end method

.method private synthetic lambda$updateActionbarLayout$1()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    return-void
.end method

.method private synthetic lambda$updateActionbarLayout$2(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mView:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->selectAllSavedPageItems(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->getSelectedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mView:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->resetIndex()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mView:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->updateBottomBar()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mView:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->getScreenID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "3066"

    goto :goto_0

    :cond_0
    const-string v0, "3106"

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    invoke-static {p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/download/b;

    const/16 v1, 0x1c

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$updateActionbarLayout$3(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mView:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->selectAllSavedPageItems(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->getSelectedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mView:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->updateBottomBar()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mView:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->resetIndex()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mView:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->getScreenID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "3066"

    goto :goto_0

    :cond_0
    const-string v0, "3106"

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 v1, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    invoke-static {p1, v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private setOptionMenuEnable(ZLandroid/view/Menu;)V
    .locals 0

    const p0, 0x7f0b0b8a

    invoke-interface {p2, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private setSavedPageItemChecked(ILcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;)Z
    .locals 3

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageItemList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->getId()I

    move-result v2

    if-ne p1, v2, :cond_1

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setChecked(Z)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageDeleteList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return p0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public deleteSavedpageItem(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper$1;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageContextMenuDelegate;Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;)V

    new-instance p1, Lm/k;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    const p3, 0x7f1502e8

    invoke-direct {p1, p2, p3}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object p2, p1, Lm/k;->a:Lm/h;

    const/4 p3, 0x1

    iput-boolean p3, p2, Lm/h;->m:Z

    const-string p2, ""

    invoke-virtual {p1, p2}, Lm/k;->setTitle(Ljava/lang/CharSequence;)Lm/k;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v1, 0x7f12004c

    invoke-virtual {p0, v1, p3, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iget-object p2, p1, Lm/k;->a:Lm/h;

    iput-object p0, p2, Lm/h;->f:Ljava/lang/CharSequence;

    const p0, 0x7f140433

    invoke-virtual {p1, p0, v0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    const p1, 0x7f1402c1

    invoke-virtual {p0, p1, v0}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public dismissProgress()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mProgressDialog:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mProgressDialog:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mProgressDialog:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageProgressDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method public displaySelectModeUI(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    check-cast v0, Lm/n;

    invoke-virtual {v0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lm/b;->q(Z)V

    invoke-virtual {v0, v1}, Lm/b;->n(Z)V

    invoke-virtual {v0, v1}, Lm/b;->r(Z)V

    invoke-virtual {v0, p1}, Lm/b;->p(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->setIsInActionMode(Z)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSavedPageActionBarView:Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lm/b;->l(Landroid/view/View;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->getToolBarTitleView()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/16 v3, 0x8

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lm/b;->t()V

    invoke-virtual {v0}, Lm/b;->u()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mView:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->setOptionMenuVisibility(Z)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mView:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->setOptionMenuVisibility(Z)V

    :goto_2
    return-void
.end method

.method public getCumulativeVisitedCountToday(Landroid/app/Activity;)I
    .locals 11

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->getSavedPageVisitedCountToday(Landroid/app/Activity;)I

    move-result p0

    const-string p1, "pref_bookmark_visited_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string p1, "pref_bookmark_visited_count"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    cmp-long v8, v4, v2

    const-wide/32 v9, 0x5265c00

    if-eqz v8, :cond_0

    sub-long v4, v6, v4

    cmp-long v4, v4, v9

    if-lez v4, :cond_1

    :cond_0
    move p1, v1

    :cond_1
    add-int/2addr p0, p1

    const-string p1, "pref_settings_sync_time"

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string p1, "pref_settings_sync_shown"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    sub-long/2addr v6, v4

    cmp-long v0, v6, v9

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    :cond_3
    :goto_0
    add-int/2addr v1, p0

    :cond_4
    return v1
.end method

.method public getCurrentTabInformativeSubTitle(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSitesSearchViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->getTodayItemCount()I

    move-result p1

    const v1, 0x7f12004d

    const/4 v2, 0x1

    if-lt p1, v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, v0, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->shouldShowSamsungCloudAppBarInfo(Landroid/app/Activity;)Z

    move-result p1

    const v3, 0x7f140dd6

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isSamsungAccountAvailable()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isSyncWithSamsungCloudEnabled()Z

    move-result p1

    const v4, 0x7f140ddc

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->isAllSavedPageDataSynced()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->getSavedPageVisitedCountToday(Landroid/app/Activity;)I

    move-result p1

    if-le p1, v2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, v0, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->isWednesdayAndFirstVisit()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->isMondayAndFirstVisit()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->isMondayAndFirstVisit()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140ddb

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTabInformativeTitle(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;Ljava/lang/Boolean;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSitesSearchViewVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140f8f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140dc7

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f120001

    invoke-virtual {p0, p2, p3, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->getTodayItemCount()I

    move-result p1

    const/4 p2, 0x1

    if-lt p1, p2, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const p3, 0x7f12004e

    invoke-virtual {p0, p3, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->shouldShowSamsungCloudAppBarInfo(Landroid/app/Activity;)Z

    move-result p1

    const p3, 0x7f140dd9

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isSamsungAccountAvailable()Z

    move-result p1

    const v0, 0x7f140ddd

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isSyncWithSamsungCloudEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->isAllSavedPageDataSynced()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->getSavedPageVisitedCountToday(Landroid/app/Activity;)I

    move-result p1

    if-le p1, p2, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140dd5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->isWednesdayAndFirstVisit()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;->getSavedPageCountNeedToSync()I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const p3, 0x7f12004f

    invoke-virtual {p0, p3, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->isMondayAndFirstVisit()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->isMondayAndFirstVisit()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140e28

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_9
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSelectAllCheckBox()Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public isProgressBarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mProgressDialog:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageProgressDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public isSelectAllCheckFocused()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

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

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectItemCountText:Landroid/widget/TextView;

    return-void
.end method

.method public onSearchDelete(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->resetCheckedState(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;)V

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getType()Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->setSavedPageItemChecked(ILcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetCheckedState(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;)V
    .locals 2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageItemList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setChecked(Z)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageDeleteList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->clearSavedPageDeleteList()V

    :cond_2
    :goto_1
    return-void
.end method

.method public resetViewHeights(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSavedPageMainLayout:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSavedPageMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSavedPageMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public sendInsertedMessage()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->INSERTED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setActionModeTitleAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectItemCountText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setOptionMenuVisibility(ZLandroid/view/Menu;Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;Z)V
    .locals 7

    if-eqz p2, :cond_4

    const v0, 0x7f0b0a54

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_4

    const v1, 0x7f0b0b8a

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->isItemsEmpty()Z

    move-result p3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSitesSearchViewVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SavedPage setOptionMenuVisibility :: visible = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SavedPageBaseUiHelper"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez p1, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    if-nez v2, :cond_3

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSearchDataEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    if-nez p4, :cond_3

    move v3, v4

    :cond_3
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz p1, :cond_4

    invoke-direct {p0, v4, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->setOptionMenuEnable(ZLandroid/view/Menu;)V

    :cond_4
    return-void
.end method

.method public setSearchMenuEnabled(ZLandroid/view/Menu;)V
    .locals 0

    if-eqz p2, :cond_0

    const p0, 0x7f0b0b8a

    invoke-interface {p2, p0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public shouldShowInformativeAppBar(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->getTodayItemCount()I

    move-result p1

    const/4 v0, 0x1

    const-string v2, "SavedPageBaseUiHelper"

    if-lt p1, v0, :cond_1

    const-string p0, "[shouldShowInformativeAppBar] + %d saved today - Collapsed"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->shouldShowSamsungCloudAppBarInfo(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isSamsungAccountAvailable()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/SitesHelper;->isSyncWithSamsungCloudEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->isAllSavedPageDataSynced()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->getSavedPageVisitedCountToday(Landroid/app/Activity;)I

    move-result p0

    if-le p0, v0, :cond_2

    const-string p0, "[shouldShowInformativeAppBar]SavedPages-Collapsed"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p0, "[shouldShowInformativeAppBar]AllPagesSynced- Collapsed"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->isWednesdayAndFirstVisit()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "[shouldShowInformativeAppBar] Ready to sync - Expanded"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->isMondayAndFirstVisit()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "[shouldShowInformativeAppBar] Suggest Sync - Expanded"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->isMondayAndFirstVisit()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "[shouldShowInformativeAppBar] Suggest samsung account Creation - Expanded"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    const-string p0, "[shouldShowInformativeAppBar] Default - collapsed"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public showProgress(I)V
    .locals 1

    const/16 v0, 0x32

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mProgressDialog:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageProgressDialog;

    if-nez p1, :cond_1

    new-instance p1, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageProgressDialog;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mProgressDialog:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageProgressDialog;

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mProgressDialog:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mProgressDialog:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mProgressDialog:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mProgressDialog:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageProgressDialog;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageProgressDialog;->setSize(Landroid/app/Activity;)V

    return-void
.end method

.method public updateActionbarLayout()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0808

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSavedPageActionBarView:Landroid/view/View;

    const v1, 0x7f0b0a52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSavedPageActionBarView:Landroid/view/View;

    const v1, 0x7f0b0a50

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSavedPageActionBarView:Landroid/view/View;

    const v1, 0x7f0b0af8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mCancelButton:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/savedpage/view/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/e;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mCancelButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1402c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSavedPageActionBarView:Landroid/view/View;

    const v1, 0x7f0b0a51

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectItemCountText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSavedPageActionBarView:Landroid/view/View;

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSavedPageActionBarView:Landroid/view/View;

    const v2, 0x7f0b0af9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->isSecretModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060bed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectItemCountText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0609cc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/sbrowser/sites/savedpage/view/e;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/e;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/sec/android/app/sbrowser/sites/savedpage/view/e;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/e;-><init>(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mView:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->isSelectAllSavedPageList()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0800ad

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    const v2, 0x7f060e10

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->displaySelectModeUI(Z)V

    return-void
.end method

.method public updateSavedPageVisitCountPerDay(Landroid/app/Activity;)V
    .locals 10

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p1, "pref_saved_page_visited_time"

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const-string v7, "pref_saved_page_visited_count"

    invoke-interface {p0, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    cmp-long v0, v2, v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sub-long v2, v4, v2

    const-wide/32 v8, 0x5265c00

    cmp-long v0, v2, v8

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    add-int/2addr v6, v1

    invoke-interface {p0, v7, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateSelectAllText()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mView:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->getSelectedItemCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->updateSelectAllTextWithoutContentDescription()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f141085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f141084

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->getCheckedText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f140f90

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f140b8f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;->onUpdateInformativeAppBarInfo()V

    return-void
.end method

.method public updateSelectAllTextWithoutContentDescription()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectItemCountText:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mView:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->getSelectedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectItemCountText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f14021e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSelectItemCountText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f120001

    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-lez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mView:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->updateDeleteButton()V

    :cond_1
    return-void
.end method

.method public updateSyncNoticeText()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140dd8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f080351

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v3, Landroid/text/style/ImageSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v0, v1, 0x2

    const/16 v4, 0x12

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSyncNoticeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f140dd7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "500"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSyncNoticeTextSecond:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateSyncNoticeTextColor(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSyncNoticeText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f06097e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSyncNoticeTextSecond:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSyncNoticeText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f06097d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mSyncNoticeTextSecond:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
