.class public Lcom/sec/android/app/sbrowser/settings/CloseOptionPreferenceFragment;
.super Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/settings/KeyPressCallback;
.implements Lw2/m;


# instance fields
.field private mAllTabs:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

.field private mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;-><init>()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/CloseOptionPreferenceFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/CloseOptionPreferenceFragment;->lambda$onResume$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method private isAllSubMenusDisabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isCloseOptionAllTabsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isCloseOptionHistoryEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isCloseOptionCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isCloseOptionCookieEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onResume$0(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setCloseOptionEnabled(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/CloseOptionPreferenceFragment;->updateMainSwitch()V

    return-void
.end method

.method private updateMainSwitch()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/CloseOptionPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isCloseOptionEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/CloseOptionPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/CloseOptionPreferenceFragment;->isAllSubMenusDisabled()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setCloseOptionAllTabsEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/CloseOptionPreferenceFragment;->mAllTabs:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isCloseOptionAllTabsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/CloseOptionPreferenceFragment;->mAllTabs:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p0

    const-string v0, "close_option_sub_menu"

    invoke-virtual {p0, v0}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    const-string p0, "CloseOptionPreferenceFragment"

    const-string v0, "updateMainSwitch failed"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lw2/A;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/CloseOptionPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f140956

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/CloseOptionPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p3, p2}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setAccessibilityTitle(Ljava/lang/String;)V

    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/settings/CloseOptionPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const p2, 0x7f180014

    invoke-virtual {p0, p2}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/CloseOptionPreferenceFragment;->updateMainSwitch()V

    const-string p2, "close_option_all_tabs"

    invoke-virtual {p0, p2}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/CloseOptionPreferenceFragment;->mAllTabs:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    const-string p2, "close_option_browsing_history"

    invoke-virtual {p0, p2}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    const-string p2, "close_option_cache"

    invoke-virtual {p0, p2}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    const-string p2, "close_option_cookies_and_site_data"

    invoke-virtual {p0, p2}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    return-object p1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "close_option_browsing_history"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "close_option_cache"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "close_option_cookies_and_site_data"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_0

    :sswitch_3
    const-string v3, "close_option_all_tabs"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/CloseOptionPreferenceFragment;->isAllSubMenusDisabled()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/CloseOptionPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setChecked(Z)V

    :cond_5
    :goto_1
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x6c501061 -> :sswitch_3
        -0x576c5bd9 -> :sswitch_2
        0x3fbeae1f -> :sswitch_1
        0x50e9ca5f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "CloseOptionPreferenceFragment"

    const-string v0, "onResume failed, Activity is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/CloseOptionPreferenceFragment;->updateMainSwitch()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/CloseOptionPreferenceFragment;->mMainSwitch:Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/f;-><init>(Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/widget/MainSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lw2/A;->onStart()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const v0, 0x7f140956

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    return-void
.end method
