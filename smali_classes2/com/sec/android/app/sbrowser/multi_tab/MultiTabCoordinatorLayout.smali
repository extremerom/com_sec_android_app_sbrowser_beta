.class public Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;
    }
.end annotation


# instance fields
.field private mAppBar:Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;

.field private mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field mContext:Landroid/content/Context;

.field private mCustomViewPagerAppBarWhiteCaseModel:Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;

.field private mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;

.field private mEditToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

.field private mIsTabDeleteSuggestionOngoing:Z

.field private mListener:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$SmartTabDeleteSuggestionListener;

.field private mMoveGroupToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;

.field private mNoTabContainer:Landroid/view/View;

.field private mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

.field private mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

.field private mSuggestedTabCount:I

.field private mSuggestionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/appbar/model/SuggestAppBarItemModel<",
            "Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSuggestionTipCard:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;

.field private mTabContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mIsTabDeleteSuggestionOngoing:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mSuggestedTabCount:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mSuggestionItems:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addSuggestionItem(Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/appbar/model/SuggestAppBarItemModel<",
            "Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mSuggestionItems:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private createButtonStyle()Lcom/google/android/material/appbar/model/ButtonStyle;
    .locals 2

    new-instance p0, Lcom/google/android/material/appbar/model/ButtonStyle;

    const v0, 0x7f1501b1

    const v1, 0x7f1501b0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/appbar/model/ButtonStyle;-><init>(II)V

    return-object p0
.end method

.method private getAutoCloseUnusedTabsClosedCount()I
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAutoCloseUnusedTabsClosedCount()I

    move-result p0

    return p0
.end method

.method private getAutoCloseUnusedTabsLastShownTime()J
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAutoCloseUnusedTabsLastShownTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private isAutoCloseUnusedTabsSetManually()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->isSetManually()Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->lambda$init$2()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$init$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;->isOnAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eq p5, p9, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->resetContainerHeight()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$init$1(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p1, :cond_1

    mul-float v2, p2, v1

    sub-float/2addr v2, v0

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->setTitleAlpha(F)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mMoveGroupToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;

    if-eqz p1, :cond_2

    mul-float v2, p2, v1

    sub-float/2addr v2, v0

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;->setTitleAlpha(F)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mEditToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    if-eqz p1, :cond_3

    mul-float/2addr v1, p2

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->setTitleAlpha(F)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mIsTabDeleteSuggestionOngoing:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mEditToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;->setTitleAlpha(F)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->resetContainerHeight()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;->getTabMainView()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setAppBarOffsetRatio(F)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$init$2()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;->getTabMainView()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->isOnTop()Z

    move-result p0

    return p0
.end method

.method private launchAutoCloseUnusedTabs()V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sbrowser.settings.show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->lambda$init$1(Lcom/google/android/material/appbar/AppBarLayout;I)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->lambda$init$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->getAutoCloseUnusedTabsClosedCount()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->launchAutoCloseUnusedTabs()V

    return-void
.end method

.method public static bridge synthetic q(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->recordAutoCloseUnusedTabsClosedCount(I)V

    return-void
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->recordAutoCloseUnusedTabsLastShownTime()V

    return-void
.end method

.method private recordAutoCloseUnusedTabsClosedCount(I)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->recordAutoCloseUnusedTabsClosedCount(I)V

    return-void
.end method

.method private recordAutoCloseUnusedTabsLastShownTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->recordAutoClosedUnusedTabsLastShownTime(J)V

    return-void
.end method

.method private removeSuggestionItem(Lcom/google/android/material/appbar/model/AppBarModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/appbar/model/AppBarModel<",
            "+",
            "Ld6/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mCustomViewPagerAppBarWhiteCaseModel:Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mCustomViewPagerAppBarWhiteCaseModel:Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;->removeSuggestItemView(Lcom/google/android/material/appbar/model/AppBarModel;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c(Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic s(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;Lcom/google/android/material/appbar/model/AppBarModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->removeSuggestionItem(Lcom/google/android/material/appbar/model/AppBarModel;)V

    return-void
.end method


# virtual methods
.method public addAutoCloseUnusedTabsToSuggestionAppBarIfNeeded()V
    .locals 9

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/auto_close_unused_tabs/AutoCloseUnusedTabsSettings;->getAutoCloseUnusedTabsSettings()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->isAutoCloseUnusedTabsSetManually()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->shouldShowSuggestionRegardlessOfDate()Z

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->getAutoCloseUnusedTabsClosedCount()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    int-to-long v3, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->getAutoCloseUnusedTabsLastShownTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x240c8400

    mul-long/2addr v3, v7

    cmp-long v1, v5, v3

    if-lez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-nez v0, :cond_4

    if-nez v2, :cond_4

    return-void

    :cond_4
    const-string v0, "MultiTabCoordinatorLayout"

    const-string v1, "[addAutoCloseUnusedTabsToSuggestionAppBar]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->generateAutoCloseUnusedTabsItemModel()Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->addSuggestionItem(Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;)V

    return-void
.end method

.method public addSmartTabDeleteToSuggestionAppBarIfNeeded()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mSuggestionTipCard:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->predictUnimportantTabs()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->shouldShowSuggestionWithMinPredictionCountAsOne()Z

    move-result v1

    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    const-string v1, "MultiTabCoordinatorLayout"

    const-string v2, "[addSmartTabDeleteToSuggestionAppBar]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mSuggestedTabCount:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mSuggestionTipCard:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$SmartTabDeleteSuggestionListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->setSmartTabDeleteSuggestionListener(Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$SmartTabDeleteSuggestionListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multi_tab/MultiTabLoggingHelper;->sendSALoggingForShowTipCard()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f12005b

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mSuggestionTipCard:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->createButtonStyle()Lcom/google/android/material/appbar/model/ButtonStyle;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->generateSuggestionItemModel(Lcom/google/android/material/appbar/model/ButtonStyle;Ljava/lang/String;I)Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->addSuggestionItem(Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;)V

    return-void
.end method

.method public generateAutoCloseUnusedTabsItemModel()Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/appbar/model/SuggestAppBarItemModel<",
            "Lcom/google/android/material/appbar/model/view/SuggestAppBarItemWhiteCaseView;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/android/material/appbar/model/ButtonModel;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f141016

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/appbar/model/ButtonModel;-><init>(Ljava/lang/String;Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f141017

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f141018

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f141019

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    new-instance v3, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;-><init>(Landroid/content/Context;)V

    aget-object v1, v1, v2

    iput-object v1, v3, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;->b:Ljava/lang/String;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$2;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;)V

    iput-object v1, v3, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;->c:Lcom/google/android/material/appbar/model/AppBarModel$OnClickListener;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->createButtonStyle()Lcom/google/android/material/appbar/model/ButtonStyle;

    move-result-object p0

    iput-object v0, v3, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;->d:Ljava/lang/Object;

    if-eqz p0, :cond_0

    iput-object p0, v3, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;->e:Lcom/google/android/material/appbar/model/ButtonStyle;

    :cond_0
    invoke-virtual {v3}, Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel$Builder;->a()Lcom/google/android/material/appbar/model/SuggestAppBarItemWhiteCaseModel;

    move-result-object p0

    return-object p0
.end method

.method public getAppBarHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mAppBar:Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    :goto_0
    return p0
.end method

.method public init()V
    .locals 3

    const v0, 0x7f0b0cbf

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mAppBar:Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;

    const v0, 0x7f0b0cee

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    const v0, 0x7f0b0cdd

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mEditToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabEditToolbar;

    const v0, 0x7f0b0ce1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mMoveGroupToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;

    const v0, 0x7f0b0cf0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;->isHideStatusBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/k;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/k;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mAppBar:Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/l;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/l;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lc6/e;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mAppBar:Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;->setLayoutBehavior()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mAppBar:Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/m;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/m;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;->setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout$Delegate;)V

    const v0, 0x7f0b0cd9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    const v0, 0x7f0b0805

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mNoTabContainer:Landroid/view/View;

    const v0, 0x7f0b0ca0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mTabContainer:Landroid/view/View;

    const v0, 0x7f0b0cef

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v0, v1, v1}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->resetExtendedAppbar()V

    return-void
.end method

.method public initSmartTabDeleteSuggestion(Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$SmartTabDeleteSuggestionListener;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;->getTabMainView()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getOriginalTabList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;-><init>(Landroid/content/Context;Lcom/google/android/material/appbar/CollapsingToolbarLayout;Ljava/util/List;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mSuggestionTipCard:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion$SmartTabDeleteSuggestionListener;

    return-void
.end method

.method public isAppBarExtended()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mAppBar:Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->seslIsCollapsed()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public removeSmartTabDeleteSuggestionTipCard()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mSuggestionTipCard:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;

    if-eqz v0, :cond_0

    const-string v0, "MultiTabCoordinatorLayout"

    const-string v1, "[removeSmartTabDeleteSuggestionTipCard]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mSuggestionTipCard:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;->getSuggestAppBarItemModel()Lcom/google/android/material/appbar/model/SuggestAppBarItemModel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->removeSuggestionItem(Lcom/google/android/material/appbar/model/AppBarModel;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mSuggestionTipCard:Lcom/sec/android/app/sbrowser/multi_tab/SmartTabDeleteSuggestion;

    :cond_0
    return-void
.end method

.method public resetContainerHeight()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mAppBar:Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mNoTabContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mTabContainer:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mAppBar:Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getDefaultAppbarHeight(Landroid/content/Context;)I

    move-result v2

    if-ge v1, v2, :cond_2

    move v1, v2

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;->getGroupPathHeight()I

    move-result v2

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mNoTabContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mNoTabContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mTabContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mTabContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public resetExtendedAppbar()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mAppBar:Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    :cond_0
    return-void
.end method

.method public setAppBarExpanded(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mAppBar:Lcom/sec/android/app/sbrowser/multi_tab/ExtendedAppBarLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    :cond_0
    return-void
.end method

.method public setAppBarTitle(ILcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V
    .locals 2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isSelectMode()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mContext:Landroid/content/Context;

    const p2, 0x7f14021e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mContext:Landroid/content/Context;

    const v0, 0x7f14021d

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isMoveMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mMoveGroupToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabMoveGroupToolbar;->getTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mSearchToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabSearchToolbar;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mContext:Landroid/content/Context;

    const p2, 0x7f140f8f

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mNormalToolbar:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabNormalToolbar;->getTitle()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mIsTabDeleteSuggestionOngoing:Z

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mSuggestedTabCount:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f12005a

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;

    return-void
.end method

.method public setExpandedTitleColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setExpandedTitleColor(I)V

    :cond_0
    return-void
.end method

.method public setSuggestionAppBar()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;->getTabMainView()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getOriginalTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->shouldShowSuggestionRegardlessOfTabCount()Z

    move-result v1

    const/16 v2, 0x32

    if-ge v0, v2, :cond_1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isSmartTabDeleteSuggestionFirstTimeUse()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->addSmartTabDeleteToSuggestionAppBarIfNeeded()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->addAutoCloseUnusedTabsToSuggestionAppBarIfNeeded()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->addAutoCloseUnusedTabsToSuggestionAppBarIfNeeded()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->addSmartTabDeleteToSuggestionAppBarIfNeeded()V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mSuggestionItems:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mContext:Landroid/content/Context;

    const v3, 0x7f150511

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mSuggestionItems:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mCustomViewPagerAppBarWhiteCaseModel:Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mCollapsingToolbar:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c(Lcom/sec/android/app/sbrowser/multi_tab/CustomViewPagerAppBarWhiteCaseModel;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->setAppBarExpanded(ZZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setTabDeleteSuggestionOngoing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mIsTabDeleteSuggestionOngoing:Z

    return-void
.end method

.method public updateTopMargin()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isFoldableDeviceTypeFold()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight(Landroid/view/View;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabCoordinatorLayout$Delegate;->isHideStatusBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
