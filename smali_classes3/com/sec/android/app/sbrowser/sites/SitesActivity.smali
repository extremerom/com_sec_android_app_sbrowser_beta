.class public Lcom/sec/android/app/sbrowser/sites/SitesActivity;
.super Lcom/sec/android/app/sbrowser/common/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;
.implements Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;
.implements Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchDataDelegate;


# instance fields
.field private mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

.field private final mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;

.field private final mBookmarkListenerAction:Lcom/sec/android/app/sbrowser/common/model/sites/BookmarkListenerAction;

.field private mBookmarkSnackBar:LH6/o;

.field private mIsPrivacymodeEnabled:Z

.field private mSBrowserMainActivityContextId:Ljava/lang/String;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

.field private mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

.field private mSites:Lcom/sec/android/app/sbrowser/sites/Sites;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mIsPrivacymodeEnabled:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mBookmarkListenerAction:Lcom/sec/android/app/sbrowser/common/model/sites/BookmarkListenerAction;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;-><init>(Lcom/sec/android/app/sbrowser/common/model/sites/BookmarkListenerAction;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/sites/SitesActivity;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->lambda$notifyBookmarkChanged$1(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/sites/SitesActivity;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->lambda$new$0(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/sites/SitesActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->lambda$onResume$2()V

    return-void
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/sites/SitesActivity;)Lcom/sec/android/app/sbrowser/sites/Sites;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/sites/SitesActivity;LH6/o;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mBookmarkSnackBar:LH6/o;

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->notifyBookmarkChanged(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$notifyBookmarkChanged$1(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->showMultiBookmarkDeletedSnackBar(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;)V

    return-void
.end method

.method private synthetic lambda$onResume$2()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private notifyBookmarkChanged(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/SitesActivity$3;->$SwitchMap$com$sec$android$app$sbrowser$common$constants$sites$BookmarkConstants$Messages:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_activity/a;

    const/16 v1, 0x14

    invoke-direct {v0, v1, p0, p2}, Lcom/sec/android/app/sbrowser/main_activity/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private setSecretModeTheme()V
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mIsPrivacymodeEnabled:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mIsPrivacymodeEnabled:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "com.sec.android.app.sbrowser.beta.bookmarksDb.ui.ShowBookmarksActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->setSecretModeEnabled(Z)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mIsPrivacymodeEnabled:Z

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/sites/SitesActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity$2;-><init>(Lcom/sec/android/app/sbrowser/sites/SitesActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->addListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mIsPrivacymodeEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f150373

    invoke-virtual {p0, v0}, Lm/n;->setTheme(I)V

    sget-object v0, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_SECRET_MULTI_TAB:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    :cond_1
    return-void
.end method

.method private showMultiBookmarkDeletedSnackBar(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result v0

    iget v1, p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->activityId:I

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/sites/SitesActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity$1;-><init>(Lcom/sec/android/app/sbrowser/sites/SitesActivity;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mBookmarkSnackBar:LH6/o;

    invoke-static {p1, p0, v1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/ShowBookmarkUtil;->showBookmarkDeletedSnackbar(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;Landroid/app/Activity;LH6/o;Lcom/sec/android/app/sbrowser/common/model/sites/DeleteBookmarkSnackbarDelegate;)V

    return-void
.end method


# virtual methods
.method public addSearchKeywordToDB(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->addSearchKeywordToDB(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;)V

    return-void
.end method

.method public clearSearchData()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->clear()V

    return-void
.end method

.method public clearSitesSearchDeleteStatus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->clearSitesSearchDeleteStatus()V

    return-void
.end method

.method public collapseAppbar()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->collapseAppbar()V

    return-void
.end method

.method public deleteAllSearchKeywordList(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->getCurrentTab()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->deleteAllSearchKeywordList(ZI)Z

    return-void
.end method

.method public deleteSearchKeywordItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->deleteSearchKeywordItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;)Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "SitesActivity"

    const-string v1, "SitesActivity - dispatchKeyEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/Sites;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Lm/n;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p0

    return-object p0
.end method

.method public getBookmarkMap()Lcom/google/common/collect/I;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/I;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getBookmarkMap()Lcom/google/common/collect/I;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentTab()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getCurrentTab()I

    move-result p0

    return p0
.end method

.method public getCurrentTabIndex()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getCurrentTabIndex()I

    move-result p0

    return p0
.end method

.method public getMainActivityContextId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSBrowserMainActivityContextId:Ljava/lang/String;

    return-object p0
.end method

.method public getNonEditableBookmarkFolderCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getNonEditableBookmarkFolderCount()I

    move-result p0

    return p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getScreenID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSearchEditTextView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getSearchEditTextView()Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method public getSearchKeywordsList(Z)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->getCurrentTab()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSearchKeywordsList(ZI)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->getSearchResultList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getSearchText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSearchView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getSearchView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    move-result-object p0

    return-object p0
.end method

.method public getSitesSupportActionBar()Lm/b;
    .locals 0

    invoke-virtual {p0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object p0

    return-object p0
.end method

.method public getToolBarTitleView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getToolBarTitleView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public getToolbarBackButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->getToolbarBackButton()Landroid/widget/ImageButton;

    move-result-object p0

    return-object p0
.end method

.method public hidePreviouslyShowingDialog()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->hidePreviouslyShowingDialog()V

    :cond_0
    return-void
.end method

.method public hideSearchView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->hideSearchView()V

    return-void
.end method

.method public hideSoftKeyboard()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->hideSoftKeyboard()V

    return-void
.end method

.method public isAppbarExpanded()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->isAppbarExpanded()Z

    move-result p0

    return p0
.end method

.method public isFocusedOnToolbar()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->isFocusedOnToolbar()Z

    move-result p0

    return p0
.end method

.method public isMyPlacesWidget()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->isMyPlacesWidget()Z

    move-result p0

    return p0
.end method

.method public isSearchDataEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->isSearchDataEmpty()Z

    move-result p0

    return p0
.end method

.method public isSearchDataFetchingStarted()Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->isSearchDataFetchingStarted()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public isSearchDataNull()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSitesSearchViewVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->isSitesSearchViewVisible()Z

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/J;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "SitesActivity"

    const-string v1, "SitesActivity - onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sites/Sites;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SitesActivity - onBackPressed"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SitesActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/Sites;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SitesActivity - onBackPressed calling super "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroidx/fragment/app/J;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "SitesActivity"

    const-string v1, "SitesActivity - onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lm/n;->closeOptionsMenu()V

    invoke-super {p0, p1}, Lm/n;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/Sites;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->setSecretModeTheme()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mIsPrivacymodeEnabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f15036f

    invoke-virtual {p0, v0}, Lm/n;->setTheme(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mIsPrivacymodeEnabled:Z

    if-eqz v0, :cond_1

    const v0, 0x7f060bd4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLetterBoxColor(Landroid/content/Context;I)V

    :cond_1
    invoke-static {}, Lb1/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    new-instance v1, Landroidx/activity/x;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Landroidx/activity/x;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;-><init>(Landroid/window/OnBackInvokedCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    invoke-static {p0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->o(Lcom/sec/android/app/sbrowser/sites/SitesActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;->getOnSystemNavigationCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->x(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/android/app/sbrowser/sites/Sites;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->setSitesActivityListener(Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->setSitesActivityDelegate(Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;)V

    const-string v0, "SitesActivity"

    const-string v1, "SitesActivity - onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/SALoggingInitializer;->initialize(Landroid/app/Application;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getMainActivityId(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "SBrowserMainActivityContextId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSBrowserMainActivityContextId:Ljava/lang/String;

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "SBrowserMainActivityContextId is : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSBrowserMainActivityContextId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->shouldUseDarkStatusBar()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    const p1, 0x7f060d8e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarColor(Landroid/content/Context;I)V

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SitesActivity - onDestroy"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SitesActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->removeListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSecretModeManager:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/Sites;->onDestroy()V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    :cond_1
    invoke-static {}, Lb1/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->o(Lcom/sec/android/app/sbrowser/sites/SitesActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;->getOnSystemNavigationCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v2

    invoke-static {v0, v2}, Lj9/b;->j(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SitesActivity - onDestroy calling super "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lm/n;->onDestroy()V

    return-void
.end method

.method public onDialogDismiss()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->onDialogDismiss()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/Sites;->onMultiWindowModeChanged(Z)V

    invoke-super {p0, p1}, Landroidx/activity/p;->onMultiWindowModeChanged(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "SitesActivity"

    const-string v1, "SitesActivity - onOptionsItemSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/Sites;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SitesActivity - onPause"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SitesActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/Sites;->onPause()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SitesActivity - onPause calling super "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroidx/fragment/app/J;->onPause()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/bixby/BixbyAppStateHelper;->clearAppState()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->unregisterBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    const-string v0, "SitesActivity"

    const-string v1, "SitesActivity - onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->getScreenID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/Sites;->onResume()V

    invoke-super {p0}, Landroidx/fragment/app/J;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/download/b;

    const/16 v2, 0x18

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setShareIntentSelected(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/bixby/BixbyAppStateHelper;->updateAppState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mBookmarkDbListener:Lcom/sec/android/app/sbrowser/common/sites/BookmarkListener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->registerBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "SitesActivity"

    const-string v1, "SitesActivity - onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/Sites;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroidx/activity/p;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSearchDelete()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->onSearchDelete()V

    return-void
.end method

.method public onUpdateInformativeAppBarInfo()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->updateInformativeAppBarInfo()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->setFocusedInstance(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public processSearchData(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->getSitesSearchData()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;

    move-result-object v1

    invoke-virtual {v1, p0, p1, v0}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSearchBase;->processSearchData(Landroid/app/Activity;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public selectAllSearchDelete(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/Sites;->selectAllSearchDelete(Z)V

    return-void
.end method

.method public setColorForActionBarIcon(ILandroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/Sites;->setColorForActionBarIcon(ILandroid/view/Menu;)V

    return-void
.end method

.method public setIsInActionMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/Sites;->setIsInActionMode(Z)V

    return-void
.end method

.method public setNoLayoutStatus(Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/Sites;->setNoLayoutStatus(Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;Z)V

    return-void
.end method

.method public setOnClickForSearchItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/Sites;->setOnClickForSearchItem(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;)V

    return-void
.end method

.method public setSearchEditText()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->setSearchEditText()V

    return-void
.end method

.method public setSitesSearchDeleteStatus(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/Sites;->setSitesSearchDeleteStatus(Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;Z)V

    return-void
.end method

.method public showConfirmDialog(Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->showConfirmDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showConfirmDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/Sites;->showConfirmDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showKeyboard()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->mSites:Lcom/sec/android/app/sbrowser/sites/Sites;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/Sites;->showKeyboard()V

    return-void
.end method
