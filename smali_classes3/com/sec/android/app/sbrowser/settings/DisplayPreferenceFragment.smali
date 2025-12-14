.class public Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"

# interfaces
.implements Lw2/m;
.implements Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDesktopWebsite:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field private mDesktopWebsiteForDex:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field private mDesktopWebsiteForMultiFold:Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;

.field private mForceZoom:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field private mGoToBottom:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field private mGoToTop:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field private mPullToRefresh:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field private mSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    return-void
.end method

.method private focusOnPreference(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lw2/A;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->getPreferencePosition(Landroidx/preference/Preference;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/g;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/g;-><init>(Landroidx/recyclerview/widget/RecyclerView;II)V

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getPreferencePosition(Landroidx/preference/Preference;)I
    .locals 2

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->getPreferenceScreenRecursive(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;I)I

    move-result p0

    return p0
.end method

.method private getPreferenceScreenRecursive(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;I)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    if-ne v1, p2, :cond_0

    add-int/2addr p3, v0

    return p3

    :cond_0
    instance-of v3, v1, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_1

    check-cast v1, Landroidx/preference/PreferenceGroup;

    add-int v3, p3, v0

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v1, p2, v3}, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->getPreferenceScreenRecursive(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;I)I

    move-result v1

    if-eq v1, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static synthetic i(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->lambda$updateView$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private initGoToBottom()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_go_to_bottom"

    invoke-virtual {p0, v1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mGoToBottom:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isLowEndDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mGoToBottom:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mGoToBottom:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mGoToBottom:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :goto_0
    return-void
.end method

.method private initGoToTop()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pref_go_to_top"

    invoke-virtual {p0, v1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mGoToTop:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isLowEndDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mGoToTop:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mGoToTop:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mGoToTop:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :goto_0
    return-void
.end method

.method private initPullToRefresh()V
    .locals 1

    const-string v0, "pref_pull_to_refresh"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mPullToRefresh:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->isDesktopMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopModeStandalone()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private isDesktopMode()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->lambda$focusOnPreference$1(Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method

.method private static synthetic lambda$focusOnPreference$1(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p0, p0, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateView$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x1

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFrontScreen()Z

    move-result p0

    xor-int/2addr p0, p1

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setRequestDesktopSitesEnabled(Z)V

    goto :goto_1

    :cond_0
    if-ne p0, p1, :cond_1

    move p0, p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setRequestDesktopSitesEnabled(Z)V

    :goto_1
    return p1
.end method

.method private updateDarkModeSummary()V
    .locals 5

    const-string v0, "manage_dark_mode"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/PreferenceCustom;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->shouldUseTabletDid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f030028

    goto :goto_0

    :cond_0
    const v1, 0x7f030027

    goto :goto_0

    :cond_1
    const v1, 0x7f030029

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getManageDarkModeSetting()I

    move-result v2

    aget-object v1, v1, v2

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v3

    const v4, 0x7f060206

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isApplyDefaultDarkModeSettingsVisited()Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f14105a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setDotContentDescription(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private updateView()V
    .locals 2

    const v0, 0x7f180025

    invoke-virtual {p0, v0}, Lw2/A;->addPreferencesFromResource(I)V

    const-string v0, "force_enable_zoom"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mForceZoom:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->isDesktopMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mForceZoom:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mForceZoom:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :goto_0
    const-string v0, "pref_desktop_website"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mDesktopWebsite:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const-string v0, "pref_desktop_website_for_multi_fold"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mDesktopWebsiteForMultiFold:Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;

    const-string v0, "pref_desktop_website_for_dex"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mDesktopWebsiteForDex:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mDesktopWebsite:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mDesktopWebsiteForMultiFold:Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mDesktopWebsiteForDex:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->isDesktopMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mDesktopWebsiteForDex:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mDesktopWebsiteForDex:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeMulti()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mDesktopWebsiteForMultiFold:Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mDesktopWebsiteForMultiFold:Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mDesktopWebsiteForMultiFold:Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;

    const v1, 0x7f030038

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;->setEntries(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mDesktopWebsiteForMultiFold:Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;

    new-instance v0, Lcom/sec/android/app/sbrowser/homepage/a;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/a;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mDesktopWebsite:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mDesktopWebsite:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public getNavigateUpID()Ljava/lang/String;
    .locals 1

    const v0, 0x7f140cf2

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    const-string p0, "535"

    return-object p0
.end method

.method public onBrowserPreferenceChanged(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "pref_high_contrast_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->updateDarkModeSummary()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "DisplayPreferenceFragment"

    const-string v0, "[NIGHTMODE] PREF_HIGH_CONTRAST_MODE changed, recreate activity"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setSettingsActivityRecreatedOnHCMChange(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onEnterPressed()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setKeyCodeEnterPressed(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "force_enable_zoom"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setForceZoomEnabled(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "pref_desktop_website"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mDesktopWebsite:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setRequestDesktopSitesEnabled(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "pref_desktop_website_for_dex"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mDesktopWebsiteForDex:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setRequestDesktopSitesEnabled(Z)V

    goto :goto_0

    :cond_2
    const-string v0, "pref_go_to_top"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setGoToTopEnabled(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "pref_go_to_bottom"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mGoToBottom:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    invoke-static {p2}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setGoToBottomEnabled(Z)V

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->isDesktopMode()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeMulti()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mDesktopWebsite:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {v2, v5}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mDesktopWebsiteForMultiFold:Lcom/sec/android/app/sbrowser/common/settings/DropDownPreferenceCustom;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mDesktopWebsiteForDex:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mGoToTop:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v1, :cond_5

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mGoToBottom:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v1, :cond_6

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mPullToRefresh:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v1, :cond_8

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopModeStandalone()Z

    move-result v4

    :cond_7
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->updateDarkModeSummary()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getSettingsActivityRecreatedOnHCMChange()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getKeyCodeEnterPressed()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "pref_high_contrast_mode"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->focusOnPreference(Ljava/lang/String;)V

    :cond_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setSettingsActivityRecreatedOnHCMChange(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setKeyCodeEnterPressed(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->mActivity:Landroid/app/Activity;

    const p2, 0x7f1409b6

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->updateView()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->initGoToTop()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->initGoToBottom()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->initPullToRefresh()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->scrollToIfNeeded(Lw2/A;Ljava/lang/String;)V

    return-void
.end method
