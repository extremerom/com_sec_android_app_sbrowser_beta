.class public Lcom/sec/android/app/sbrowser/settings/SettingsActivity;
.super Lcom/sec/android/app/sbrowser/common/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lw2/y;
.implements Lcom/sec/android/app/sbrowser/common/model/settings/SettingsActivityDelegate;
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;
.implements Lcom/sec/android/app/sbrowser/settings/search/SettingsActivityListener;


# static fields
.field private static sInstanceID:I

.field private static sList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static sResumedInstance:Landroid/app/Activity;


# instance fields
.field private mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

.field private mDateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

.field private mInitialFragment:Ljava/lang/String;

.field private mIsFromGlobalSetting:Z

.field private mIsHideSearchViewInProgress:Z

.field private mIsInActionMode:Z

.field private mIsNewlyCreated:Z

.field public mIsNotificationSearchShowing:Z

.field mIsSearchRecreated:Z

.field private mIsSearchViewVisible:Z

.field private mIsSetForFinish:Z

.field private mLayoutMargin:I

.field public mNotificationSearchFragment:Ljava/lang/String;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPrevLanguage:Ljava/lang/String;

.field private mPrevOrientation:I

.field private mSearchFragment:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;

.field private mSearchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchView:Landroid/view/View;

.field private mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

.field private final mSettingFragmentSearchableXmlClassList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSettingSearchBase:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

.field private mSettingsAppBar:Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->sList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mPrevOrientation:I

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsSetForFinish:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsSearchRecreated:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsHideSearchViewInProgress:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->createSettingFragmentSearchableXmlClassList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingFragmentSearchableXmlClassList:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity$1;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private finishIfLanguageChanged()V
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mPrevLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;Ljava/lang/String;Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils$TaskCompletionCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->lambda$hideSearchView$5(Ljava/lang/String;Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils$TaskCompletionCallback;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->lambda$setOnClickForSearchItem$9(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;)V

    return-void
.end method

.method private handleMultiInstanceSettingScreenVisibility()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsSetForFinish:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstanceId(Landroid/app/Activity;)I

    move-result v0

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->sResumedInstance:Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsNewlyCreated:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->sInstanceID:I

    if-eq v2, v0, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->finishAllActivities(Z)V

    :cond_1
    sput v0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->sInstanceID:I

    sput-object p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->sResumedInstance:Landroid/app/Activity;

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->sList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->sList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->sResumedInstance:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsNewlyCreated:Z

    return-void
.end method

.method private hideSearchView(Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils$TaskCompletionCallback;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->isSearchVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsHideSearchViewInProgress:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, LJ8/d;

    const/16 v3, 0xf

    invoke-direct {v2, p0, v3, p2, p1}, LJ8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 p1, 0xfa

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchFragment:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v1

    invoke-static {v1, v1}, LV0/c;->d(Landroidx/fragment/app/f0;Landroidx/fragment/app/f0;)Landroidx/fragment/app/a;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchFragment:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/a;->j(Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v1, v0, v0}, Landroidx/fragment/app/a;->f(ZZ)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchFragment:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/F;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/F;-><init>(ILcom/sec/android/app/sbrowser/settings/SettingsActivity;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->lambda$onConfigurationChanged$3()V

    return-void
.end method

.method private initSearchDataAndLayout()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingsAppBar:Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->collapseAppbarWithoutAnimation()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchList:Ljava/util/ArrayList;

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->addSearchableData(Landroid/app/Activity;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingSearchBase:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->getSearchData()Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->setSearchData(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingSearchBase:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->getSearchData()Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->smartSearchChunkInsert(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lm/n;->invalidateOptionsMenu()V

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e0886

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchView:Landroid/view/View;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0b0da3

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    invoke-virtual {v0}, Lm/b;->o()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getToolbar(Landroid/app/Activity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingsAppBar:Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->addViewToToolbar(Landroid/view/View;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getToolbar(Landroid/app/Activity;)Landroidx/appcompat/widget/Toolbar;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingSearchBase:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->showSearchView(Landroid/view/View;)V

    const v0, 0x7f0b02ee

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b0b1d

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method private initSecretModeChangedListener()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/E;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/E;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->addListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V

    return-void
.end method

.method public static synthetic j()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->lambda$onCreate$0()V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->lambda$setLayoutChangeListener$1()V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->lambda$setLayoutChangeListener$2(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method private static synthetic lambda$finishAllActivities$8(Landroid/app/Activity;Z)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->finishActivityWithAnimation(Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$hideSearchView$5(Ljava/lang/String;Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils$TaskCompletionCallback;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :cond_0
    const v0, 0x7f0b0da3

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    invoke-virtual {v0}, Lm/b;->o()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingsAppBar:Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->removeViewFromToolbar(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingSearchBase:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->hideSearchView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingSearchBase:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->setSearchViewVisibility(Z)V

    const v0, 0x7f0b0b1d

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b02ee

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    const-class v0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f140f14

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->setTitle(I)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils$TaskCompletionCallback;->onTaskCompleted()V

    :cond_2
    :try_start_0
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsInActionMode:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->isSearchVisible()Z

    move-result p2

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsSearchViewVisible:Z

    if-eqz p2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    invoke-static {p0, p1, v1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->updateBackKeyVisibility(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;ZZ)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SettingsActivity"

    const-string p1, "Exception while updating toolbar back key visibility  on hide search view"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$hideSearchView$6()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsHideSearchViewInProgress:Z

    return-void
.end method

.method private synthetic lambda$initSecretModeChangedListener$4(ZLandroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "enabled."

    goto :goto_0

    :cond_0
    const-string p1, "disabled."

    :goto_0
    const-string p2, "Secret Mode Changed is "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SettingsActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->getTopFragment(Lm/n;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->shouldFragmentFinish(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onBackPressed$7(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->getFragmentTag(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->hideSearchView(Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils$TaskCompletionCallback;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$3()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->setLayoutChangeListener()V

    return-void
.end method

.method private static synthetic lambda$onCreate$0()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$setLayoutChangeListener$1()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletDevice(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic lambda$setLayoutChangeListener$2(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p4, p8, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getLayoutMargin(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mLayoutMargin:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->needMarginLayout(Landroid/content/Context;)Z

    move-result p1

    iget p2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mLayoutMargin:I

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchFragment:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;

    invoke-static {p1, p2, p0, p3}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->setLayoutMargin(ZILcom/sec/android/app/sbrowser/settings/SettingsActivity;Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/F;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p0}, Lcom/sec/android/app/sbrowser/settings/F;-><init>(ILcom/sec/android/app/sbrowser/settings/SettingsActivity;)V

    const-wide/16 p3, 0xc8

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static synthetic lambda$setOnClickForSearchItem$9(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroid/os/Bundle;Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;)V
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const-string p1, "cloud_sync"

    invoke-virtual {p0, p1}, Lw2/A;->scrollToPreference(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;->getMPrefKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->isBrowsingAssistSubMenuKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBrowsingAssistFTU()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "pref_browsing_assist"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->performClick()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->scrollToIfNeeded(Lw2/A;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->lambda$onBackPressed$7(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->lambda$hideSearchView$6()V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;ZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->lambda$initSecretModeChangedListener$4(ZLandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic p(Landroid/app/Activity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->lambda$finishAllActivities$8(Landroid/app/Activity;Z)V

    return-void
.end method

.method private setDisplaySettings()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->finishTouchOutsideNeeded(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->isSetFullScreenInPhoneLandscapeMode(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->isSupportHideStatusBar(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method private setLaunchIntentIfNeeded()Landroid/os/Bundle;
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sbrowser.settings.show_fragment_args"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "useful_features"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v2, "toolbar_custom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-class v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string v2, "site_and_download"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-class v0, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_2
    const-string v2, "settings_appearance"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-class v0, Lcom/sec/android/app/sbrowser/settings/LayoutPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_3
    const-string v2, "settings_privacy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-class v0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_4
    const-string v2, "settings_dark_mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-class v0, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.spv.ACTION_VIEW_DETAIL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-class v0, Lcom/sec/android/app/sbrowser/settings/NoticePermissionsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.app.sbrowser.beta.ACTION_SHOW_SYNC_SETTING"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-class v0, Lcom/sec/android/app/sbrowser/settings/sync/ui/CloudSyncPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_7
    const-string v2, "browsing_assist"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-class v0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_8
    return-object v0
.end method

.method private setLayoutChangeListener()V
    .locals 3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getLayoutMargin(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mLayoutMargin:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->needMarginLayout(Landroid/content/Context;)Z

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mLayoutMargin:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchFragment:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;

    invoke-static {v0, v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->setLayoutMargin(ZILcom/sec/android/app/sbrowser/settings/SettingsActivity;Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/H;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/H;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private showSearchView()Z
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchFragment:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    invoke-static {v0, v0}, LV0/c;->d(Landroidx/fragment/app/f0;Landroidx/fragment/app/f0;)Landroidx/fragment/app/a;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchFragment:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;

    const-string v1, "SettingSearchFragment"

    const v2, 0x7f0b0b1d

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0, p0}, Landroidx/fragment/app/a;->f(ZZ)I

    return p0
.end method


# virtual methods
.method public addSearchKeywordToDB()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingSearchBase:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->addSearchKeywordToDB()V

    return-void
.end method

.method public collapseAppbar()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingsAppBar:Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->collapseAppbar()V

    return-void
.end method

.method public deleteAllSearchKeywordList()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingSearchBase:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->deleteAllSearchKeywordList()V

    return-void
.end method

.method public deleteSearchKeywordItem(Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingSearchBase:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->deleteSearchKeywordItem(Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordItem;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->handleKeyCodeTabDown(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->getTopFragment(Lm/n;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dispatchKeyEvent: top fragment = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SettingsActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "event = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lb1/a;->b()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_4

    invoke-static {v4}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->isLongPress(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->isSearchVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsHideSearchViewInProgress:Z

    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->getFragmentTag(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->hideSearchView(Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils$TaskCompletionCallback;Ljava/lang/String;)V

    :cond_2
    return v3

    :cond_3
    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;

    if-eqz v1, :cond_b

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;->onBackPressed()V

    return v3

    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v4, 0x29

    if-ne v2, v4, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v4, 0x52

    if-ne v2, v4, :cond_7

    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_7

    instance-of v2, v0, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;

    if-eqz v2, :cond_b

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;->onCtrlAndMKeyPressed()V

    return v1

    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v4, 0x20

    if-ne v2, v4, :cond_8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v4, 0x70

    if-ne v2, v4, :cond_a

    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_a

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;->onCtrlAndDKeyPressed()V

    goto :goto_0

    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v4, 0x1d

    if-ne v2, v4, :cond_b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_b

    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;->onCtrlAndAKeyPressed()V

    :cond_b
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->handleKeyCode(Landroidx/fragment/app/Fragment;Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    return v3

    :cond_c
    invoke-super {p0, p1}, Lm/n;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public finishAllActivities(Z)V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->finishAllActivities()V

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->sList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/sec/android/app/sbrowser/common/sites/a;

    invoke-direct {v3, v2, p1}, Lcom/sec/android/app/sbrowser/common/sites/a;-><init>(Landroid/app/Activity;Z)V

    int-to-long v4, v1

    invoke-virtual {p0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    check-cast v2, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->setForFinish()V

    add-int/lit16 v1, v1, 0x12c

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->sList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getAppbarLayout()Lcom/google/android/material/appbar/AppBarLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingsAppBar:Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->getAppBarLayout()Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p0

    return-object p0
.end method

.method public getSearchEditTextView()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingSearchBase:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->getSearchEditTextView()Landroid/widget/EditText;

    move-result-object p0

    return-object p0
.end method

.method public getSearchKeywordsList(Z)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/search/recent_search/SettingSearchKeywordItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingSearchBase:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->getSearchKeywordsList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSettingSearchData()Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingSearchBase:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->getSearchData()Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;

    move-result-object p0

    return-object p0
.end method

.method public getSettingSearchFragment()Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchFragment:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;

    return-object p0
.end method

.method public handleKeyCode(Landroidx/fragment/app/Fragment;Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x22

    const/4 v2, 0x1

    if-eq v0, v1, :cond_b

    const/16 v1, 0x42

    if-eq v0, v1, :cond_9

    const/16 v1, 0x54

    if-eq v0, v1, :cond_8

    const/16 v1, 0x3ee

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_3

    const/16 p1, 0x71

    if-eq v0, p1, :cond_0

    const/16 p1, 0x72

    if-eq v0, p1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {v3, p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->setCtrlKeyPressed(ZLm/n;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v2, p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->setCtrlKeyPressed(ZLm/n;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_2

    invoke-static {v3, p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->setCtrlKeyPressed(ZLm/n;)V

    :cond_2
    :goto_0
    return v3

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_4

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;

    if-eqz p0, :cond_c

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;

    invoke-interface {p1, v2}, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;->onShiftKeyPressed(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-ne p0, v2, :cond_c

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;

    if-eqz p0, :cond_c

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;

    invoke-interface {p1, v3}, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;->onShiftKeyPressed(Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->isSearchVisible()Z

    move-result p1

    if-eqz p1, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->getSearchEditTextView()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->getSearchEditTextView()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_7
    return v3

    :cond_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-ne p0, v2, :cond_c

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;

    if-eqz p0, :cond_c

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;->onSearchKeyPressed()V

    goto :goto_1

    :cond_9
    instance-of p0, p1, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;

    if-eqz p0, :cond_a

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;->onEnterPressed()V

    goto :goto_1

    :cond_a
    instance-of p0, p1, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;

    if-eqz p0, :cond_c

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->onEnterPressed()V

    goto :goto_1

    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-ne p0, v2, :cond_c

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;

    if-eqz p0, :cond_c

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;->onCtrlAndFKeyPressed()V

    :cond_c
    :goto_1
    return v2
.end method

.method public handleKeyCodeTabDown(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingsAppBar:Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsInActionMode:Z

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->handleKeyCode(Landroid/view/KeyEvent;Z)Z

    move-result p0

    return p0
.end method

.method public hideSoftKeyboard()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingSearchBase:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->hideKeyboard()V

    return-void
.end method

.method public isAppbarExpanded()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingsAppBar:Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->isAppbarExpanded()Z

    move-result p0

    return p0
.end method

.method public isSearchVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingSearchBase:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->isSearchShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyAppBarHeightChanged()V
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getCoordinatorLayout(Landroid/app/Activity;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getAppBarLayout(Landroid/app/Activity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->isSearchVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchFragment:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;->onAppBarHeightChanged(I)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/J;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/16 v0, 0x68

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->isSearchVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingSearchBase:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->onVoiceSearchResult(Landroid/content/Intent;)V

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->getTopFragment(Lm/n;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsNotificationSearchShowing:Z

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mNotificationSearchFragment:Ljava/lang/String;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/f0;->D(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_6
    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->finishIfLanguageChanged()V

    return-void
.end method

.method public onBackPressed()V
    .locals 5

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->getTopFragment(Lm/n;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->isSearchVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsHideSearchViewInProgress:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/h;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, v0}, Lcom/sec/android/app/sbrowser/settings/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;->onBackPressed()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/J;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->getTopFragment(Lm/n;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->onConfigurationChangedInternal(Landroid/content/res/Configuration;Landroidx/fragment/app/Fragment;)V

    invoke-super {p0, p1}, Lm/n;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/F;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/F;-><init>(ILcom/sec/android/app/sbrowser/settings/SettingsActivity;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_start_0
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsInActionMode:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->isSearchVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsSearchViewVisible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->updateBackKeyVisibility(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;ZZ)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "SettingsActivity"

    const-string p1, "Exception while updating toolbar back key visibility on Configuration Change"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public onConfigurationChangedInternal(Landroid/content/res/Configuration;Landroidx/fragment/app/Fragment;)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mPrevOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mPrevOrientation:I

    if-ne v1, p1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSupportHideStatusBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletDevice(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, -0x5

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingsAppBar:Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->expandAppBar()V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingsAppBar:Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->onConfigurationChanged(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isSetFullScreenInPhoneLandscapeMode(Landroid/content/Context;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getFullScreenEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "SettingsActivity"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "date_changed_close_settings"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->setSaveCountryAvailable()V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingsAppBar:Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setPrivacyURL(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setFeedbackForm(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setNotificationURL(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setNotificationTAB(I)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->initializePreferencesValues(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "sbrowser.settings.show_fragment"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-class v3, Lcom/sec/android/app/sbrowser/settings/NoticePermissionsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f15027e

    invoke-virtual {p0, v2}, Lm/n;->setTheme(I)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->isGED()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAboutFragment(Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f150001

    invoke-virtual {p0, v2}, Lm/n;->setTheme(I)V

    :cond_2
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->initSecretModeChangedListener()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_3

    const-string v2, "language"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mPrevLanguage:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mPrevLanguage:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x1

    if-nez p1, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsNewlyCreated:Z

    const v4, 0x7f0e020b

    :try_start_0
    invoke-virtual {p0, v4}, Lm/n;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to setContentView : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingsAppBar:Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->viewInit()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->setDisplaySettings()V

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mPrevOrientation:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    invoke-static {v4, p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->hideRoundCornerAtWhiteBgFragments(Ljava/lang/String;Landroid/app/Activity;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    if-eqz v4, :cond_5

    const-class v5, Lcom/sec/android/app/sbrowser/auth/password/CreatePasswordFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->isFromGlobalSettingSearch(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    if-eqz v4, :cond_6

    const-class v5, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/CustomizeToolbarFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    move v4, v2

    goto :goto_3

    :cond_7
    move v4, v3

    :goto_3
    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsFromGlobalSetting:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isBrowsingAssistSupported()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->isFromGlobalSettingAIFeatures(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_8

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsFromGlobalSetting:Z

    const-class v4, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    :cond_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAwesomeIntelligenceSupported()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->isFromGlobalSettingIntelligentFeatures(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_9

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsFromGlobalSetting:Z

    const-class v3, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    :cond_9
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->isLaunchWithPreferenceKey(Landroid/content/Intent;)Z

    move-result v3

    const-class v4, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;

    if-eqz v3, :cond_d

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string v3, ":settings:fragment_args_key"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->isSamsungAccountLogin()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBrowsingAssistFTU()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->isBrowsingAssistSubMenuKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_b
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingFragmentSearchableXmlClassList:Ljava/util/List;

    invoke-static {v1, p0, v3}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->getInitialFragment(Ljava/lang/String;Landroid/app/Activity;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    iput-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    :cond_c
    const-string v3, "key from intent : "

    const-string v5, " / starting fragment : "

    invoke-static {v3, v1, v5}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    invoke-static {v1, v3, v0}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->setLaunchIntentIfNeeded()Landroid/os/Bundle;

    move-result-object v0

    if-nez p1, :cond_f

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    if-nez v1, :cond_e

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v1

    invoke-static {v1, v1}, LV0/c;->d(Landroidx/fragment/app/f0;Landroidx/fragment/app/f0;)Landroidx/fragment/app/a;

    move-result-object v1

    const v3, 0x7f0b02ee

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    invoke-virtual {v1, v3, v0, v5}, Landroidx/fragment/app/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v2}, Landroidx/fragment/app/a;->f(ZZ)I

    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingsAppBar:Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->expandAppBar()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->setLayoutChangeListener()V

    invoke-static {p0, p0}, Lcom/sec/terrace/TerraceApplicationStatus;->registerStateListenerForActivity(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;Landroid/app/Activity;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarForNightMode(Landroid/content/Context;)V

    const v0, 0x7f140f14

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->setTitle(I)V

    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    if-nez v0, :cond_10

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    const-string v0, "search_visible"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsSearchRecreated:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingsAppBar:Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->showSettingsAppBarInfo(Ljava/lang/String;Z)V

    :cond_10
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsSearchRecreated:Z

    if-eqz v0, :cond_11

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingSearchBase:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->initSearchDataAndLayout()V

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    const-string v1, "SettingSearchFragment"

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/f0;->H(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchFragment:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;

    :cond_11
    new-instance p1, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/k;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$DeviceStateCallback;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->addPreviewPathInstanceQueue(Landroid/app/Activity;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isWallpaperPreviewVisible()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getPreviewPathInstanceQueue()Ljava/util/Queue;

    move-result-object p1

    :cond_12
    :goto_5
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-le v0, v2, :cond_13

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_5

    :cond_13
    invoke-static {}, Lb1/a;->b()Z

    move-result p1

    if-eqz p1, :cond_14

    new-instance p1, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/G;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/G;-><init>(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;)V

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;-><init>(Landroid/window/OnBackInvokedCallback;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    invoke-static {p0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->n(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;->getOnSystemNavigationCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->x(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_14
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->isSearchVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->removeListener(Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSecretModeChangedListener:Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    :cond_2
    sget-object v0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->sList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->sList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->unregisterActivityStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    invoke-static {}, Lb1/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->n(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;->getOnSystemNavigationCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v2

    invoke-static {v0, v2}, Lj9/b;->j(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_4
    invoke-super {p0}, Lm/n;->onDestroy()V

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->sResumedInstance:Landroid/app/Activity;

    if-ne v0, p0, :cond_5

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsNewlyCreated:Z

    if-nez p0, :cond_5

    sput-object v1, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->sResumedInstance:Landroid/app/Activity;

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->clearPreviewPathInstanceQueue()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/activity/p;->onMultiWindowModeChanged(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mFlexModeManager:Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager;->updateState()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->getTopFragment(Lm/n;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "top fragment = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SettingsActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x7f0b0b1b

    const/4 v4, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->onSearchSelected()V

    return v4

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v3, 0x102002c

    if-ne v1, v3, :cond_5

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsFromGlobalSetting:Z

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.APPLICATION_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "classname"

    const-string v5, "AppSetting"

    const-string v6, "launch_reason"

    const-string v7, "hierarchy_up"

    invoke-static {v3, v5, v6, v7}, LB/e;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v5, ":settings:show_fragment_args"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->finishAllActivities(Z)V

    :cond_1
    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onNavigateUpClicked()Z

    move-result p1

    if-eqz p1, :cond_4

    return v4

    :cond_2
    instance-of v1, v0, Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/settings/FragmentCustom;->onNavigateUpClicked()Z

    move-result p1

    if-eqz p1, :cond_4

    return v4

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p0, "Fragment self home action"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string p0, "Default home action"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/J;->onPause()V

    const/4 v0, 0x0

    const-string v1, "pref_settings_sync_button_visited"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingsAppBar:Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->getSyncButtonVisitedStatus()Z

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/bixby/BixbyAppStateHelper;->clearAppState()V

    return-void
.end method

.method public onPreferenceStartFragment(Lw2/A;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->startFragment(Lm/n;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/J;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onRestart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsSetForFinish:Z

    if-nez v0, :cond_0

    sput-object p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->sResumedInstance:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->addListItemDecoration(Lm/n;)V

    invoke-super {p0}, Landroidx/fragment/app/J;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->handleMultiInstanceSettingScreenVisibility()V

    const-string v0, "pref_settings_sync_button_visited"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingsAppBar:Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsSearchRecreated:Z

    invoke-virtual {v2, v0, v3, v4, p0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->onResume(ZLjava/lang/String;ZLandroid/app/Activity;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/bixby/BixbyAppStateHelper;->updateAppState(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isAccountsLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;->getInstance()Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncDelegate;->initSyncObservers()V

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsInActionMode:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->isSearchVisible()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsSearchViewVisible:Z

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->updateBackKeyVisibility(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;ZZ)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SettingsActivity"

    const-string v0, "Exception while updating toolbar back key visibility on Resume"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/activity/p;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "language"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mPrevLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "activity_killed"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "search_visible"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->isSearchVisible()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchFragment:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v0

    const-string v1, "SettingSearchFragment"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchFragment:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;

    invoke-virtual {v0, p1, v1, v2}, Landroidx/fragment/app/f0;->W(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    :cond_0
    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const-string v0, "density"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public onSearchSelected()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingSearchBase:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingSearchBase:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingSearchBase:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->isSearchShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->initSearchDataAndLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->showSearchView()Z

    const-string p0, "590"

    const-string v0, "5274"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->getTopFragment(Lm/n;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DHWindowEventInterface;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DHWindowEventInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DHWindowEventInterface;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public setAppBarOffsetChangeCallback(Lcom/sec/android/app/sbrowser/common/model/settings/AppBarOffsetChangeCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingsAppBar:Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->setAppBarOffsetChangeCallback(Lcom/sec/android/app/sbrowser/common/model/settings/AppBarOffsetChangeCallback;)V

    return-void
.end method

.method public setForFinish()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsSetForFinish:Z

    return-void
.end method

.method public setIsInActionMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsInActionMode:Z

    return-void
.end method

.method public setIsInSearchView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsSearchViewVisible:Z

    return-void
.end method

.method public setNotificationSearchFragment(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mNotificationSearchFragment:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mIsNotificationSearchShowing:Z

    return-void
.end method

.method public setOnClickForSearchItem(Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->isSamsungAccountLogin()Z

    move-result v0

    const-class v1, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBrowsingAssistFTU()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;->getMPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->isBrowsingAssistSubMenuKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;->getMPrefKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingFragmentSearchableXmlClassList:Ljava/util/List;

    invoke-static {v0, p0, v2}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->getInitialFragment(Ljava/lang/String;Landroid/app/Activity;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "private_access_token"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;->getMPrefKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v0, v2, p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->putBundleDataForPATSwitchHighlight(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    goto :goto_1

    :cond_3
    const-string v3, "setting_search_key"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;->getMPrefKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getLayoutMargin(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mLayoutMargin:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->needMarginLayout(Landroid/content/Context;)Z

    move-result v1

    iget v3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mLayoutMargin:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSearchFragment:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;

    invoke-static {v1, v3, p0, v4}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->setLayoutMargin(ZILcom/sec/android/app/sbrowser/settings/SettingsActivity;Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;)V

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object v1

    const v3, 0x7f0b02ee

    invoke-virtual {v1, v3}, Landroidx/fragment/app/f0;->C(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;

    new-instance v3, LM4/a;

    const/16 v4, 0x12

    invoke-direct {v3, v1, v4, v2, p1}, LM4/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v3, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->hideSearchView(Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils$TaskCompletionCallback;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    return-void

    :cond_4
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->isKeyboardShowing(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    :cond_5
    invoke-static {p0, v0, v2}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->startFragment(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingsAppBar:Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->setTitle(I)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingsAppBar:Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showKeyboard()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingSearchBase:Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchBase;->showKeyboard()V

    return-void
.end method

.method public showSettingsAppBarInfo()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingsAppBar:Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mInitialFragment:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->isSearchVisible()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->showSettingsAppBarInfo(Ljava/lang/String;Z)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->getTopFragment(Lm/n;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/sbrowser/settings/notice/NoticeDetailFragment;

    if-eqz v0, :cond_0

    const-string v0, "SettingsActivity"

    const-string v1, "startActivity - customized intent for notice detail "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "com.sec.android.app.sbrowser.beta.INTENT_ACTION_INTERNAL_LOADING"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.browser.application_id"

    const-string v1, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f140cb3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "551"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startVoiceRecognitionActivity()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/utils/VoiceRecognizer;->launch(Landroid/app/Activity;Z)V

    return-void
.end method

.method public updateSubtitleButtonVisibility()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->mSettingsAppBar:Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsAppBar;->updateSubtitleButtonVisibility()V

    return-void
.end method
