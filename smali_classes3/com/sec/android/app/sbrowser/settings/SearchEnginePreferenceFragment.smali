.class public Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"


# instance fields
.field private mAddSearchEngine:Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEnginePreference;

.field private mDelete:Landroid/view/MenuItem;

.field private mFavicon:[Landroid/graphics/Bitmap;

.field private mGroup:Landroid/view/MenuItem;

.field private mHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

.field private mKeys:[Ljava/lang/String;

.field private mLables:[Ljava/lang/String;

.field private mLastSetIndex:I

.field private mListAvailableEngines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mLastSetIndex:I

    return-void
.end method

.method private addCategoryAtEngineList(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p0, "search_list_category"

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceCategory;

    if-nez p0, :cond_1

    new-instance p0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    const v0, 0x7f140a37

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const-string v0, "empty_category_for_bottom_space"

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private checkOptionStatue()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "saved_engine_status"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, "ALL_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mAddSearchEngine:Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEnginePreference;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mAddSearchEngine:Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEnginePreference;

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->shouldHideEditOption()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mAddSearchEngine:Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEnginePreference;

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    :goto_0
    const-string v1, "ALL_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mGroup:Landroid/view/MenuItem;

    if-eqz v0, :cond_4

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mDelete:Landroid/view/MenuItem;

    if-eqz p0, :cond_7

    invoke-interface {p0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mGroup:Landroid/view/MenuItem;

    if-eqz v0, :cond_6

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mDelete:Landroid/view/MenuItem;

    if-eqz p0, :cond_7

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    :goto_1
    return-void
.end method

.method private drawExtraPreferences()V
    .locals 3

    const v0, 0x7f18007b

    invoke-virtual {p0, v0}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object v0

    const-string v1, "add_search_engine_button"

    invoke-virtual {v0, v1}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEnginePreference;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mAddSearchEngine:Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEnginePreference;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/j;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/j;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->shouldHideEditOption()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mAddSearchEngine:Lcom/sec/android/app/sbrowser/settings/add_search_engine/AddSearchEnginePreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    const-string v0, "search_suggestions"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/k;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/k;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_1
    const-string v0, "save_recent_searches"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiSupported()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    return-void
.end method

.method public static synthetic i(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->lambda$drawExtraPreferences$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private initializeCustomSearchEngineList()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const-string v1, "SearchEnginePreferenceFragment"

    if-nez v0, :cond_0

    const-string p0, " getActivity is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "customized_search_engine_list"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string p0, "List exists : "

    invoke-static {p0, v0, v1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mKeys:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    if-eqz v1, :cond_2

    const-string v4, ","

    invoke-static {v3, v4}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static {v3}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    return-void
.end method

.method public static synthetic j(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->lambda$drawExtraPreferences$2(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->lambda$drawExtraPreferences$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$drawExtraPreferences$0(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->initializeCustomSearchEngineList()V

    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$drawExtraPreferences$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setSearchSuggestEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$drawExtraPreferences$2(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private reDrawScreen()V
    .locals 9

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    new-instance v0, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->getListAvailableEngines()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->populateChoices()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mLables:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->populateValues()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mKeys:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->populateFavicon()[Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mFavicon:[Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mKeys:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getSearchEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mLables:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->addCategoryAtEngineList(Landroidx/preference/PreferenceScreen;)V

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mKeys:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput v3, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mLastSetIndex:I

    :cond_0
    new-instance v4, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mLables:[Ljava/lang/String;

    aget-object v6, v6, v3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mKeys:[Ljava/lang/String;

    aget-object v7, v7, v3

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mFavicon:[Landroid/graphics/Bitmap;

    aget-object v8, v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->setsTotalPreferences(I)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x7f140d68

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->drawExtraPreferences()V

    const v0, 0x7f180026

    invoke-virtual {p0, v0}, Lw2/A;->addPreferencesFromResource(I)V

    return-void
.end method

.method private shouldHideEditOption()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->isChina()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSer()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SBrowserFeatures;->getDisableAllSearchEngineExceptGoogle()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/CountryUtil;->getCscCountryIsoCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private startDeleteSearchEngineFragment()V
    .locals 2

    const-class v0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/DeleteSearchEngineFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->initializeCustomSearchEngineList()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->startFragment(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    const v0, 0x7f140cc3

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "516"

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f180027

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->shouldHideEditOption()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mListView:Landroid/widget/ListView;

    new-instance p1, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->getListAvailableEngines()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->populateChoices()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mLables:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->populateValues()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mKeys:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->populateFavicon()[Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mFavicon:[Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mKeys:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getSearchEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mLables:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->addCategoryAtEngineList(Landroidx/preference/PreferenceScreen;)V

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mKeys:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput v3, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mLastSetIndex:I

    :cond_1
    new-instance v4, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mLables:[Ljava/lang/String;

    aget-object v6, v6, v3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mKeys:[Ljava/lang/String;

    aget-object v7, v7, v3

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mFavicon:[Landroid/graphics/Bitmap;

    aget-object v8, v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->setsTotalPreferences(I)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->drawExtraPreferences()V

    const p1, 0x7f180026

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->scrollToIfNeeded(Lw2/A;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f100020

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0a9f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f140cc2

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->startDeleteSearchEngineFragment()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lw2/A;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mKeys:[Ljava/lang/String;

    array-length v0, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mKeys:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->updateSummaryAndGui(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f140cc4

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mLables:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v3, v4, v5}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f140d67

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mLables:[Ljava/lang/String;

    aget-object v2, v4, v2

    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    move-result-object v2

    const-string v3, "google"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "NEUTRAL"

    goto :goto_2

    :cond_3
    const-string p1, "ALL_REMOVED"

    :goto_2
    const-string v3, "saved_engine_status"

    invoke-virtual {v2, v3, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->checkOptionStatue()V

    :cond_4
    iget p1, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mLastSetIndex:I

    if-ge p1, v0, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->getInstance()Lcom/sec/android/app/sbrowser/settings/BrowserSettings;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mKeys:[Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mLastSetIndex:I

    aget-object v0, v0, v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/sbrowser/settings/BrowserSettings;->setSearchEngine(Ljava/lang/String;Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;)V

    :cond_5
    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    const v0, 0x7f0b0aa1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mGroup:Landroid/view/MenuItem;

    const v0, 0x7f0b0a9f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mDelete:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f14004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1402b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->checkOptionStatue()V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->reDrawScreen()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mLastSetIndex:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->updateSummaryAndGui(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->checkOptionStatue()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lw2/A;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f14007d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method

.method public populateChoices()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public populateFavicon()[Landroid/graphics/Bitmap;
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    new-array v2, v0, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->getSearchEngineFavicon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "bing"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/utils/ColorUtils;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mHelper:Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper;->getDefaultBitmapForBingEngine(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_1
    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public populateValues()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mListAvailableEngines:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/searchengine/SettingSearchEngineHelper$SettingSearchEngineInfo;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public updateSummaryAndGui(I)V
    .locals 7

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mLastSetIndex:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->mLables:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v1

    move v3, v2

    :goto_0
    add-int/lit8 v5, v0, 0x1

    if-ge v3, v5, :cond_1

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;

    add-int/lit8 v6, v3, -0x1

    if-ne p1, v6, :cond_0

    if-nez v4, :cond_0

    invoke-virtual {v5, v2}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->setChecked(Z)V

    move v4, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v5, v1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCheck;->setChecked(Z)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
