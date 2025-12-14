.class public Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;
    }
.end annotation


# instance fields
.field private mEditShortcutsPreference:Landroidx/preference/Preference;

.field private mSubContent:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

.field private mSubContentKeys:[Ljava/lang/String;

.field private mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    return-void
.end method

.method private getScreenId()Ljava/lang/String;
    .locals 0

    const-string p0, "103"

    return-object p0
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->updateEditShortcutEnabled(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->lambda$onCreatePreferences$1(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->lambda$onCreatePreferences$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->lambda$onCreatePreferences$5(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onCreatePreferences$0(Landroidx/preference/Preference;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->getScreenId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1040"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;->releaseOwner(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v0
.end method

.method private synthetic lambda$onCreatePreferences$1(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessIntentUtils;->launchQuickAccessSync(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$onCreatePreferences$2(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$onCreatePreferences$3(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$onCreatePreferences$4(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onCreatePreferences$5(Landroidx/preference/Preference;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/AppContainerOwner;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/AppContainerOwner;->getAppContainer()Lcom/sec/android/app/sbrowser/common/AppContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/AppContainer;->getNavigationContainer()Lcom/sec/android/app/sbrowser/common/di/NavigationContainer;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/di/NavigationContainer;->getWallpaperOptionNavigator()Lcom/sec/android/app/sbrowser/common/di/WallpaperOptionNavigator;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/common/di/WallpaperOptionNavigator;->navigateToWallpaperOption(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->getScreenId()Ljava/lang/String;

    move-result-object p0

    const-string p1, "5099"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onCreatePreferences$6(Landroidx/lifecycle/J;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;->acquireOwner(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;->getEditShortcutsEnabled()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/y;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/y;-><init>(Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;I)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;->getMainUIEvent()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/y;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/y;-><init>(Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;I)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public static synthetic m(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->lambda$onCreatePreferences$2(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->onEventReceived(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;Landroidx/lifecycle/J;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->lambda$onCreatePreferences$6(Landroidx/lifecycle/J;)V

    return-void
.end method

.method private onEventReceived(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/livedata/Event<",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->isHandled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;->getId()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;->getParameter()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;->getParameter()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showDeletedToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showShortcutSavedToast(Landroid/content/Context;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static synthetic p(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->lambda$onCreatePreferences$4(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->lambda$onCreatePreferences$3(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic r(Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->getScreenId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateCheckStatus(I)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->mSubContentKeys:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->mSubContentKeys:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, v2, :cond_0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setChecked(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v1}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setChecked(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateEditShortcutEnabled(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->mEditShortcutsPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
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

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/p;->getOnBackPressedDispatcher()Landroidx/activity/A;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/A;->d()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, LZ3/x;

    invoke-direct {p1, p0}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;

    invoke-virtual {p1, v0}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "toast_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;->setMainUIEvent(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;)V

    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7

    const p1, 0x7f18003b

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const p2, 0x7f140a2c

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->mEditShortcutsPreference:Landroidx/preference/Preference;

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/x;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/settings/x;-><init>(Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;I)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    const-string p1, "quickaccess_add_shortcuts"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/quickaccess/db/QuickAccessSyncUtils;->shouldShowSyncAddShortcutsButton(Landroid/app/Activity;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/x;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/settings/x;-><init>(Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;I)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_0
    const p1, 0x7f180058

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;-><init>(Landroid/content/Context;)V

    const p2, 0x7f140562

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    const-string p2, "quick_access_from_other_devices"

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->isFromOtherDevicesEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/k;

    const/16 v0, 0x9

    invoke-direct {p2, v0}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;-><init>(Landroid/content/Context;)V

    const p2, 0x7f140a1e

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    const-string p2, "quick_access_privacy_board"

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->isPrivacyBoardEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setSALoggingDelegate(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V

    const p2, 0x7f140c9d

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setSALoggingEventId(Ljava/lang/String;)V

    const p2, 0x7f140d60

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setSALoggingStatusId(Ljava/lang/String;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/k;

    const/16 v0, 0xa

    invoke-direct {p2, v0}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->isSupport(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->addEmptyBottomSpace(Landroidx/preference/PreferenceScreen;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->homePageIsUnifiedHomePage()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->homePageIsNewGuiNewsFeed()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/QuickAccessUtils;->isMostVisitedEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;->MOST_VISITED:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->mSubContent:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;->NONE:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->mSubContent:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    goto :goto_1

    :cond_5
    :goto_0
    sget-object p1, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;->NEWS_FEED:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->mSubContent:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f03002f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f03002e

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->mSubContentKeys:[Ljava/lang/String;

    array-length p2, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_9

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v3

    aget-object v4, p1, v1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->mSubContentKeys:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    add-int/lit8 v3, p2, -0x1

    if-ne v1, v3, :cond_6

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setDividerVisibility(Z)V

    :cond_6
    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->mSubContent:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;->getId()I

    move-result v3

    if-ne v1, v3, :cond_7

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;->setChecked(Z)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_9

    new-instance p1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;-><init>(Landroid/content/Context;)V

    const p2, 0x7f14075e

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/QuickAccessUtils;->isMostVisitedEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    const-string p2, "most_visited_enabled"

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/k;

    const/16 v0, 0xb

    invoke-direct {p2, v0}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result p1

    if-eqz p1, :cond_a

    const p1, 0x7f180059

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const p2, 0x7f140a29

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/x;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/settings/x;-><init>(Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;I)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/S;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/y;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/settings/y;-><init>(Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;I)V

    invoke-virtual {p1, p0, p2}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSettingsViewModel;->releaseOwner(Landroid/content/Context;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/settings/CheckBoxPreferenceRadio;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->mSubContentKeys:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->mSubContentKeys:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;->values()[Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    move-result-object v3

    aget-object v3, v3, v2

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->mSubContent:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->updateCheckStatus(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$2;->$SwitchMap$com$sec$android$app$sbrowser$settings$QuickAccessPreferenceFragment$SubContent:[I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->mSubContent:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const-string v0, "quick_access"

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq p1, v3, :cond_5

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    const/4 v4, 0x3

    if-eq p1, v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomepageAsQuickAccess()V

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/QuickAccessUtils;->setMostVisitedEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setNewsFeedEnabled(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setResult(I)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setNewsFeedEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomePageType(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->isNewGuiNewsFeedSupported()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomepageAsQuickAccess()V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/homepage/UnifiedHomePageConfig;->getUnifiedHomePageUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomePage(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/QuickAccessUtils;->setMostVisitedEnabled(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setResult(I)V

    goto :goto_2

    :cond_5
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/utils/QuickAccessUtils;->setMostVisitedEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setHomepageAsQuickAccess()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->setNewsFeedEnabled(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setResult(I)V

    :goto_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getInstance()Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/homepage/HomePageSettings;->getSACodeForHomepage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f140d5f

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_6
    invoke-super {p0, p1}, Lw2/A;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->getScreenId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lw2/A;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const v0, 0x7f1405e1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    check-cast p0, Lm/n;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->addListItemDecoration(Lm/n;)V

    return-void
.end method
