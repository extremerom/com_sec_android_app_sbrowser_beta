.class public Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/homepage/HomePagePreferenceFragmentDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;
    }
.end annotation


# instance fields
.field public current_index:I

.field public default_index:I

.field private mActivity:Landroid/app/Activity;

.field mChoices:[Ljava/lang/String;

.field private mCurrentUrl:Ljava/lang/String;

.field mCustomKey:Ljava/lang/String;

.field private mCustomPreference:Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

.field private mHomepageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

.field private mIsPreferenceClicked:Z

.field private mIsSecretMode:Z

.field protected mIsShowingCurrentPageOption:Z

.field protected mIsShowingDefaultPageOption:Z

.field private mLastSelectedIndex:I

.field private mListView:Landroid/widget/ListView;

.field private mOtherURL:Ljava/lang/String;

.field private mQuickAccessSubContent:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

.field private mQuickAccessSubContentKeys:[Ljava/lang/String;

.field private mSetHomePageDialogFragment:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;

.field mValues:[Ljava/lang/String;

.field public other_index:I

.field public pinned_index:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mIsPreferenceClicked:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mIsShowingDefaultPageOption:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mIsShowingCurrentPageOption:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mLastSelectedIndex:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->default_index:I

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->pinned_index:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->current_index:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->other_index:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mOtherURL:Ljava/lang/String;

    return-void
.end method

.method private getQuickAccessSubContent()Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->homePageIsUnifiedHomePage()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;->NEWS_FEED:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/QuickAccessUtils;->isMostVisitedEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;->MOST_VISITED:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    return-object p0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;->NONE:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;)Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mHomepageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    return-object p0
.end method

.method private isQuickAccessSubContentPreferenceKey(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mQuickAccessSubContentKeys:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mQuickAccessSubContentKeys:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mLastSelectedIndex:I

    return p0
.end method

.method public static bridge synthetic k(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mSetHomePageDialogFragment:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mOtherURL:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mSetHomePageDialogFragment:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->reDrawHomePagePreferences()V

    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->updateQuickAccessSubContentPreferences()V

    return-void
.end method

.method private reDrawHomePagePreferences()V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    const v0, 0x7f180027

    invoke-virtual {p0, v0}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mChoices:[Ljava/lang/String;

    const v1, 0x7f03003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mValues:[Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getDefaultHomePage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mChoices:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    if-nez v2, :cond_1

    if-eqz v0, :cond_3

    const-string v3, "internet-native://newtab/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mIsShowingCurrentPageOption:Z

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mChoices:[Ljava/lang/String;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mValues:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setObject(Lcom/sec/android/app/sbrowser/common/model/homepage/HomePagePreferenceFragmentDelegate;)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private removeDummyPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    const-string p0, "dummy_preference_category"

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceCategory;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private removeMostVisited()V
    .locals 2

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "most_visited_enabled"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->removeDummyPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private removePrivacyStatusBoard()V
    .locals 2

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "quick_access_privacy_board"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->removeDummyPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private removeQuickAccessSubContentPreferences()V
    .locals 6

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "quick_access_settings"

    invoke-virtual {p0, v1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mCustomKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mCustomPreference:Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setDivideVisibility(Z)V

    :cond_3
    return-void
.end method

.method private removeSyncPreference()V
    .locals 2

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "pref_quickaccess_add_shortcuts_key"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    const-string v1, "quick_access_settings_edit_shortcuts"

    invoke-virtual {p0, v1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private shouldHideCurrentPageOption()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mCurrentUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mCurrentUrl:Ljava/lang/String;

    const-string v2, "internet-native://newtab/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mCurrentUrl:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mCurrentUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isParentalControlUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getOtherHomePage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mCurrentUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private updatePreferences(ILcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->default_index:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->current_index:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->other_index:I

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140f06

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f140f05

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setPreferenceSummary(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mIsSecretMode:Z

    if-nez p0, :cond_8

    invoke-virtual {p2, v2}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setVisibilityOfImageView(Z)V

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setQuickAccessImageView(Z)V

    goto :goto_4

    :cond_2
    :goto_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->current_index:I

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->getHomepageSummary(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :cond_4
    :goto_2
    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->getHomepageSummary(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "internet-native://newtab/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140b92

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->other_index:I

    if-ne p1, v1, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getOtherHomePage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140efa

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-virtual {p2, v2}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setTintOfImageView(Z)V

    invoke-virtual {p2, v2}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setVisibilityOfImageView(Z)V

    :cond_7
    :goto_3
    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setPreferenceSummary(Ljava/lang/String;)V

    :cond_8
    :goto_4
    invoke-virtual {p2, v2}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setChecked(Z)V

    return-void
.end method

.method private updateQuickAccessHomePageSettings(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;)V
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$2;->$SwitchMap$com$sec$android$app$sbrowser$settings$HomePagePreferenceFragment$QuickAccessSubContent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomepageAsQuickAccess()V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/QuickAccessUtils;->setMostVisitedEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setNewsFeedEnabled(Z)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setNewsFeedEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->isNewGuiNewsFeedSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomepageAsQuickAccess()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->getUnifiedHomePageUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomePage(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setWasNewsFeedMenuActivated(Z)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/QuickAccessUtils;->setMostVisitedEnabled(Z)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomepageAsQuickAccess()V

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/QuickAccessUtils;->setMostVisitedEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setNewsFeedEnabled(Z)V

    :goto_1
    return-void
.end method

.method private updateQuickAccessPreferenceStatus(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mQuickAccessSubContentKeys:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mQuickAccessSubContentKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-ne p1, v1, :cond_1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setChecked(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v0}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setChecked(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateQuickAccessSubContentPreferences()V
    .locals 3

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mHomepageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePageType()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mIsSecretMode:Z

    if-nez v2, :cond_0

    const-string v2, "quick_access"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->removeQuickAccessSubContentPreferences()V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->removeEmptyBottomSpace(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->removeEmptyBottomSpace(Landroidx/preference/PreferenceScreen;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->removeQuickAccessSubContentPreferences()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->removePrivacyStatusBoard()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->removeMostVisited()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->removeSyncPreference()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getChoicesLength()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mChoices:[Ljava/lang/String;

    array-length v0, v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mIsShowingDefaultPageOption:Z

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mIsShowingCurrentPageOption:Z

    if-nez p0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    return v0
.end method

.method public getHomepageSummary(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    const-string v1, "quick_access"

    if-ne p1, v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setObject(Lcom/sec/android/app/sbrowser/common/model/homepage/HomePagePreferenceFragmentDelegate;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "current_page"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mCurrentUrl:Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getDefaultHomePage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->getOtherUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    const v0, 0x7f140c9c

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOtherUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mOtherURL:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mHomepageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "502"

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x96

    if-ne p1, v0, :cond_0

    const/4 p1, 0x7

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "sync_added_item_count"

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showItemAddedFromSync(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mListView:Landroid/widget/ListView;

    const v0, 0x7f180027

    invoke-virtual {p0, v0}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mHomepageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sbrowser.settings.current_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mCurrentUrl:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mChoices:[Ljava/lang/String;

    const v1, 0x7f03003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mValues:[Ljava/lang/String;

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getDefaultHomePage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mChoices:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_6

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v4, :cond_2

    if-eqz v1, :cond_1

    const-string v7, "internet-native://newtab/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/MultiCpUtils;->isMultiCpUrl(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isUnifiedHomePageUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mIsShowingDefaultPageOption:Z

    const/4 v7, -0x1

    iput v7, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->default_index:I

    iput v3, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->pinned_index:I

    iput v6, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->current_index:I

    iput v5, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->other_index:I

    goto :goto_1

    :cond_2
    if-ne v4, v6, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mChoices:[Ljava/lang/String;

    const v8, 0x7f140b92

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    :cond_3
    if-ne v4, v5, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->shouldHideCurrentPageOption()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->other_index:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->other_index:I

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mIsShowingCurrentPageOption:Z

    goto :goto_1

    :cond_4
    new-instance v5, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mChoices:[Ljava/lang/String;

    aget-object v7, v7, v4

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mValues:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mValues:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setObject(Lcom/sec/android/app/sbrowser/common/model/homepage/HomePagePreferenceFragmentDelegate;)V

    add-int/lit8 v6, v2, -0x1

    if-ne v4, v6, :cond_5

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mCustomPreference:Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    invoke-virtual {v5, v3}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setDivideVisibility(Z)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mValues:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mCustomKey:Ljava/lang/String;

    :cond_5
    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mIsShowingDefaultPageOption:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mHomepageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePageType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mHomepageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    const-string v1, "other_page"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomePageType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mHomepageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setOtherHomePage(Ljava/lang/String;)V

    :cond_7
    if-eqz p1, :cond_8

    const-string v0, "secret_mode"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mIsSecretMode:Z

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mIsSecretMode:Z

    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->getQuickAccessSubContent()Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mQuickAccessSubContent:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03002e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mQuickAccessSubContentKeys:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->updateQuickAccessSubContentPreferences()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v0, "show_with_homepage_settings"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->showHomePageSettings(Landroid/os/Bundle;)V

    :cond_9
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mSetHomePageDialogFragment:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 10

    const-string v0, "default"

    const-string v1, "current_page"

    const-string v2, "other_page"

    const-string v3, "quick_access"

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return v6

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v7, 0x7f140c9e

    const/4 v8, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v8, 0x3

    goto :goto_0

    :sswitch_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v8, 0x2

    goto :goto_0

    :sswitch_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    move v8, v4

    goto :goto_0

    :sswitch_3
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    move v8, v6

    :goto_0
    packed-switch v8, :pswitch_data_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->isQuickAccessSubContentPreferenceKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mQuickAccessSubContentKeys:[Ljava/lang/String;

    array-length v1, v0

    if-ge v6, v1, :cond_6

    aget-object v0, v0, v6

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;->values()[Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    move-result-object v0

    aget-object v0, v0, v6

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mQuickAccessSubContent:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->updateQuickAccessPreferenceStatus(I)V

    :cond_5
    add-int/2addr v6, v4

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mQuickAccessSubContent:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->updateQuickAccessHomePageSettings(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;)V

    goto/16 :goto_3

    :pswitch_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->default_index:I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->updateSummaryAndGui(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mHomepageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomePageType(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getDefaultHomePage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mHomepageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomePage(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mHomepageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomepageTypeChangedByUser()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->current_index:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->updateSummaryAndGui(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mHomepageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomePageType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mHomepageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mCurrentUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomePage(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_2
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mIsPreferenceClicked:Z

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->showSetHomePageDialog()V

    goto :goto_2

    :cond_7
    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mLastSelectedIndex:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->other_index:I

    if-eq p1, v0, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mHomepageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomePageType(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mHomepageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getOtherHomePage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomePage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mHomepageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getOtherHomePage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setOtherHomePage(Ljava/lang/String;)V

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->other_index:I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->updateSummaryAndGui(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->updateQuickAccessSubContentPreferences()V

    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f140c18

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :pswitch_3
    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mLastSelectedIndex:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->pinned_index:I

    if-ne v0, v1, :cond_9

    return v4

    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mHomepageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomepageTypeChangedByUser()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->pinned_index:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->updateSummaryAndGui(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mHomepageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomePageType(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/QuickAccessUtils;->isMostVisitedEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;->MOST_VISITED:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->updateQuickAccessHomePageSettings(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;)V

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;->NEWS_FEED:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->updateQuickAccessHomePageSettings(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;)V

    goto :goto_3

    :cond_b
    sget-object v0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;->NONE:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->updateQuickAccessHomePageSettings(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;)V

    :cond_c
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->updateQuickAccessSubContentPreferences()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mHomepageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePageType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getSACodeForHomepage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f140d5f

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lw2/A;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x4dc4880a -> :sswitch_3
        -0xade79a2 -> :sswitch_2
        0x578be195 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getOtherHomePage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->setIsPreferenceClicked(Z)V

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mLastSelectedIndex:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->updateSummaryAndGui(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->updateQuickAccessSubContentPreferences()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lw2/A;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "secret_mode"

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mIsSecretMode:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lw2/A;->onStart()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v0, 0x7f1409e6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public setIsPreferenceClicked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mIsPreferenceClicked:Z

    return-void
.end method

.method public showHomePageSettings(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sbrowser.settings.show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "sbrowser.settings.show_fragment_args"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const/16 p1, 0xa0

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method public showSetHomePageDialog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mSetHomePageDialogFragment:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mCurrentUrl:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;-><init>(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mSetHomePageDialogFragment:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->setOnDialogResultListener(Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$OnDialogResultListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mSetHomePageDialogFragment:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p0

    const-class v1, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/u;->show(Landroidx/fragment/app/f0;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateSummaryAndGui(I)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mHomepageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePageType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mHomepageSettings:Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    const-string p1, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->default_index:I

    goto :goto_0

    :cond_0
    const-string p1, "quick_access"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->pinned_index:I

    goto :goto_0

    :cond_1
    const-string p1, "current_page"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mCurrentUrl:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->current_index:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->other_index:I

    :cond_3
    :goto_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mLastSelectedIndex:I

    if-eq v0, p1, :cond_4

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mLastSelectedIndex:I

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->getChoicesLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_1
    if-ge v2, v0, :cond_10

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-lt v2, v4, :cond_6

    goto/16 :goto_7

    :cond_6
    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    if-nez v4, :cond_7

    goto/16 :goto_7

    :cond_7
    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    invoke-virtual {v4, p0}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setObject(Lcom/sec/android/app/sbrowser/common/model/homepage/HomePagePreferenceFragmentDelegate;)V

    if-ne p1, v2, :cond_f

    if-nez v3, :cond_f

    iget v3, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->default_index:I

    const v5, 0x7f1405e1

    const/4 v6, 0x1

    if-eq v2, v3, :cond_b

    iget v3, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->current_index:I

    if-eq v2, v3, :cond_b

    iget v3, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->other_index:I

    if-ne v2, v3, :cond_8

    goto :goto_3

    :cond_8
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mIsSecretMode:Z

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v7, "from_settings"

    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    xor-int/2addr v3, v6

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setVisibilityOfImageView(Z)V

    invoke-virtual {v4, v6}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setTintOfImageView(Z)V

    invoke-virtual {v4, v6}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setQuickAccessImageView(Z)V

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setToolTipStringId(I)V

    :cond_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f140f06

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f140f05

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setPreferenceSummary(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    :goto_3
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->getHomepageSummary(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    const-string v7, "internet-native://newtab/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f140b92

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_c
    iget v7, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->other_index:I

    if-ne v2, v7, :cond_e

    if-nez v3, :cond_d

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f140efa

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_d
    invoke-virtual {v4, v6}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setTintOfImageView(Z)V

    invoke-virtual {v4, v6}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setVisibilityOfImageView(Z)V

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setToolTipStringId(I)V

    :cond_e
    :goto_4
    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setPreferenceSummary(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v4, v6}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setChecked(Z)V

    move v3, v6

    goto :goto_6

    :cond_f
    invoke-direct {p0, v2, v4}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;->updatePreferences(ILcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;)V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_10
    :goto_7
    return-void
.end method
