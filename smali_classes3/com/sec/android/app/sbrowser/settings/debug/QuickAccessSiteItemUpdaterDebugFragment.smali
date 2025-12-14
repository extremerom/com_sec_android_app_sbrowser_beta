.class public Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessSiteItemUpdaterDebugFragment;
.super Lw2/A;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2/A;-><init>()V

    return-void
.end method

.method public static synthetic h(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessSiteItemUpdaterDebugFragment;->lambda$initUpdateSiteItemPreference$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessSiteItemUpdaterDebugFragment;->lambda$initUpdateSiteItemInPendingListPreference$2(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private initUpdatePendingListPreference()V
    .locals 2

    const-string v0, "pref_qa_update_pending_list"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/settings/k;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    return-void
.end method

.method private initUpdateSiteItemInPendingListPreference()V
    .locals 2

    const-string v0, "pref_qa_update_siteitem_in_pending_list"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/o;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    return-void
.end method

.method private initUpdateSiteItemPreference()V
    .locals 2

    const-string v0, "pref_qa_update_siteitem"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/settings/k;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    return-void
.end method

.method public static synthetic j(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessSiteItemUpdaterDebugFragment;->lambda$initUpdatePendingListPreference$1(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$initUpdatePendingListPreference$1(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateSiteItemUpdaterPendingList()V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$initUpdateSiteItemInPendingListPreference$2(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateSiteItemIfNeeded()V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$initUpdateSiteItemPreference$0(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private updatePreferenceScreen()V
    .locals 3

    const-string v0, "pref_qa_update_pending_list"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessSiteItemUpdaterDebugFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "pending_item"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pending item : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "quickaccess_siteitem_updater_preference"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessSiteItemUpdaterDebugFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const p2, 0x7f140b81

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f18005b

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessSiteItemUpdaterDebugFragment;->initUpdateSiteItemPreference()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessSiteItemUpdaterDebugFragment;->initUpdatePendingListPreference()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessSiteItemUpdaterDebugFragment;->initUpdateSiteItemInPendingListPreference()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessSiteItemUpdaterDebugFragment;->updatePreferenceScreen()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessSiteItemUpdaterDebugFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessSiteItemUpdaterDebugFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_0
    invoke-super {p0}, Lw2/A;->onDestroyView()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onSharedPreferenceChanged "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickAccessSiteItemUpdaterDebugFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "pending_item"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessSiteItemUpdaterDebugFragment;->updatePreferenceScreen()V

    :cond_0
    return-void
.end method
