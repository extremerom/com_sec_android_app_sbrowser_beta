.class public Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;
.super Lw2/A;
.source "SourceFile"

# interfaces
.implements Lw2/m;
.implements Lw2/n;
.implements Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;
.implements Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;


# instance fields
.field private mContentBlockerPreference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockBadgePreference;

.field private mContentBlockerReceiver:Landroid/content/BroadcastReceiver;

.field private mExtensionSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

.field private mIsAllowedSixManager:Z

.field private mListView:Landroid/widget/ListView;

.field private mSixLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mSixPreferences:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw2/A;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment$1;-><init>(Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mContentBlockerReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mIsAllowedSixManager:Z

    return-void
.end method

.method private createExtensionsDescriptionPreference()V
    .locals 4

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object v0

    const-string v1, "extensions_description"

    invoke-virtual {v0, v1}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f140509

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->convertStringForJpnIfNeeded(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f14050a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->sortPreferences()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->updateContentBlockerPreferenceStatus()V

    return-void
.end method

.method private isAllDefaultExt()Z
    .locals 4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mSixPreferences:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->getSixAppsList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDefaultExt()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne v2, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isFromMainView()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->getMainActivityId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/decoder/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->updatePreferenceCategory()V

    return-void
.end method

.method private registerContentBlockerUpdateReceiver()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isContentBlockMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Ll2/b;->a(Landroid/content/Context;)Ll2/b;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mContentBlockerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "content_blocker_update"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ll2/b;->b(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private removePrefFromSortedPreferences(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/preference/Preference;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "empty_category_for_bottom_space"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object v0

    const-string v1, "extensions_description"

    invoke-virtual {v0, v1}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mContentBlockerPreference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockBadgePreference;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mContentBlockerPreference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockBadgePreference;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object v0

    const-string v1, "extensions_add_ons_category"

    invoke-virtual {v0, v1}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p0

    const-string v0, "extensions_installed_category"

    invoke-virtual {p0, v0}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method private sortPreferences()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sortPreferences Exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ExtensionsFragment"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->removePrefFromSortedPreferences(Ljava/util/ArrayList;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment$5;-><init>(Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    :goto_2
    if-ge v2, v1, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/preference/Preference;

    invoke-virtual {v6}, Landroidx/preference/Preference;->getOrder()I

    move-result v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/preference/Preference;

    add-int/lit8 v7, v2, 0x1

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setOrder(I)V

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/preference/Preference;

    invoke-virtual {v6}, Landroidx/preference/Preference;->getOrder()I

    move-result v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0009

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-ne v6, v7, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/preference/Preference;

    add-int/lit8 v7, v2, 0x1

    add-int/2addr v7, v4

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setOrder(I)V

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/preference/Preference;

    invoke-virtual {v6}, Landroidx/preference/Preference;->getOrder()I

    move-result v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0007

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-ne v6, v7, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/preference/Preference;

    add-int/lit8 v7, v2, 0x1

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setOrder(I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private unregisterContentBlockerUpdateReceiver()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isContentBlockMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Ll2/b;->a(Landroid/content/Context;)Ll2/b;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mContentBlockerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Ll2/b;->d(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateAddOnsCategory()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mSixPreferences:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->getMoreAddOnsButton()Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object v0

    const-string v1, "extensions_add_ons_category"

    invoke-virtual {v0, v1}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private updateContentBlockerPreferenceStatus()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mContentBlockerPreference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockBadgePreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->isFromMainView()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mContentBlockerPreference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockBadgePreference;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mExtensionSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->hasNewExtensionFlag(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockBadgePreference;->setBadgeVisible(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mContentBlockerPreference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockBadgePreference;

    const-class v2, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerAppsInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->getSelectedAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mContentBlockerPreference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockBadgePreference;

    const v2, 0x7f140507

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mContentBlockerPreference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockBadgePreference;

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->updateStatus(Landroidx/preference/Preference;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mContentBlockerPreference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockBadgePreference;

    const v2, 0x7f14081d

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f140506

    invoke-direct {p0, v0, v3, v2}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->updateStatus(Landroidx/preference/Preference;ILjava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mContentBlockerPreference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockBadgePreference;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private updatePreferenceCategory()V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const-string v1, "ExtensionsFragment"

    if-nez v0, :cond_0

    const-string p0, "updatePreferenceCategory - In bg now. Aborting UX update."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object v0

    const-string v2, "extensions_add_ons_category"

    invoke-virtual {v0, v2}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object v2

    const-string v3, "extensions_installed_category"

    invoke-virtual {v2, v3}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getSuggestedListMgr()Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->getPickedListSize()I

    move-result v5

    if-lez v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    invoke-virtual {v0, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mSixPreferences:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->getSixAppsList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->isAllDefaultExt()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "updatePreferenceCategory - all default, hidden"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_4
    return-void

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_6
    return-void

    :cond_7
    :goto_1
    const-string p0, "updatePreferenceCategory - no six apps, hidden"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_8

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_8
    return-void
.end method

.method private updateStatus(Landroidx/preference/Preference;ILjava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    move-object p2, p3

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f060ba7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f06020f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_1
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x21

    invoke-virtual {v0, v1, p0, p2, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "601"

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const v0, 0x7f14050d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f18002b

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->createClient(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mExtensionSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isAddOnsVisited()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->recordAddOnsVisit()V

    :cond_2
    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p1

    const-string v0, "pref_block_content"

    invoke-virtual {p1, v0}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockBadgePreference;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mContentBlockerPreference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockBadgePreference;

    if-eqz p1, :cond_4

    const v0, 0x7f140507

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mContentBlockerPreference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockBadgePreference;

    const v0, 0x7f140508

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isContentBlockMenuEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mContentBlockerPreference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockBadgePreference;

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment$3;-><init>(Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mContentBlockerPreference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockBadgePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mContentBlockerPreference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockBadgePreference;

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->createExtensionsDescriptionPreference()V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mIsAllowedSixManager:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mSixPreferences:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mExtensionSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->setExtensionSettingsClient(Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mSixPreferences:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->initSixPreferences()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mSixPreferences:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment$4;-><init>(Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->setFragmentRefreshCallback(Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;)V

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->updateAddOnsCategory()V

    return-void
.end method

.method public onBrowserPreferenceChanged(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "extensions_has_contentblock_extension"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mContentBlockerPreference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockBadgePreference;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->isFromMainView()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mContentBlockerPreference:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockBadgePreference;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mExtensionSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->hasNewExtensionFlag(I)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockBadgePreference;->setBadgeVisible(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lw2/A;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "ExtensionsFragment"

    const-string v1, "onDestroy running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->updateExtensionMenuItems()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->wasExtensionsVisitedOnce(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->setExtensionsVisitedOnce(Landroid/content/Context;)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mIsAllowedSixManager:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mSixLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mSixLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mSixPreferences:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mSixPreferences:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    :cond_2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->unregisterContentBlockerUpdateReceiver()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mIsAllowedSixManager:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mSixPreferences:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->onPause()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const-string v0, "onPreferenceChange running.."

    const-string v1, "ExtensionsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/logging/SALoggingConstantsMap;->EVENT_MAP_EXTENSIONS_PREF_CHANGE:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    int-to-long v2, p2

    invoke-static {p0, p1, v2, v3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    const-string p0, "applyChange : true"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const-string p0, "ExtensionsFragment"

    const-string p1, "onPreferenceClick running.."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->registerContentBlockerUpdateReceiver()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->updateContentBlockerPreferenceStatus()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mIsAllowedSixManager:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mSixPreferences:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->setExtensionActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mSixPreferences:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->initSixDetailsFragment()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mSixPreferences:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->updateSixPreferences()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->sortPreferences()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->updatePreferenceCategory()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;->updateCurrentFragment()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->getScreenID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lw2/A;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p2

    const v0, 0x7f0602ad

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-direct {v1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070302

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0702e3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v4, v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v2, v4

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto :goto_0

    :cond_0
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    :goto_0
    invoke-virtual {p0, v6}, Lw2/A;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lw2/A;->setDividerHeight(I)V

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f0e020d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v3, p2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move p2, v1

    :cond_3
    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mIsAllowedSixManager:Z

    if-eqz p2, :cond_5

    new-instance p2, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment$2;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment$2;-><init>(Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mSixLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mSixLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_4
    new-instance p2, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;-><init>(Landroid/app/Activity;Lw2/A;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->mSixPreferences:Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->onViewCreated(Landroid/view/View;)V

    :cond_5
    return-void
.end method
