.class public Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;
.super Lw2/A;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager$Observer;


# instance fields
.field mDefaultSearchProviderEnabled:Landroidx/preference/SwitchPreferenceCompat;

.field mManagedExtensions:Landroidx/preference/SwitchPreferenceCompat;

.field mProxyBypassList:Landroidx/preference/Preference;

.field mProxyPacUrl:Landroidx/preference/Preference;

.field mProxyServer:Landroidx/preference/Preference;

.field mProxyTypeScreen:Landroidx/preference/PreferenceScreen;

.field private mSetOtherValueDialogFragment:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2/A;-><init>()V

    return-void
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->mSetOtherValueDialogFragment:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->updatePreferences()V

    return-void
.end method

.method private initUi()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const-string v1, "ManagedConfigPreferenceFragment"

    if-nez v0, :cond_0

    const-string v0, "activity is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isEngBinary()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "With security reason, This menu is accessible only at ENG binary"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const v1, 0x7f1406c4

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f180046

    invoke-virtual {p0, v0}, Lw2/A;->addPreferencesFromResource(I)V

    :cond_2
    const-string v0, "EnterpriseProxyType"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->mProxyTypeScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "EnterpriseProxyCatProxyServer"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->mProxyServer:Landroidx/preference/Preference;

    const-string v0, "EnterpriseProxyCatPacUrl"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->mProxyPacUrl:Landroidx/preference/Preference;

    const-string v0, "EnterpriseProxyCatBypassList"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->mProxyBypassList:Landroidx/preference/Preference;

    const-string v0, "EnterpriseHardwarePlatformAPIEnabled"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->mManagedExtensions:Landroidx/preference/SwitchPreferenceCompat;

    const-string v0, "DefaultSearchProviderEnabled"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreferenceCompat;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->mDefaultSearchProviderEnabled:Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->updatePreferences()V

    return-void
.end method

.method private showSetOtherDialog(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->mSetOtherValueDialogFragment:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->mSetOtherValueDialogFragment:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    new-instance v3, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->setDialogDelegate(Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$DialogDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->mSetOtherValueDialogFragment:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p0

    const-class v0, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/u;->show(Landroidx/fragment/app/f0;Ljava/lang/String;)V

    return-void
.end method

.method private updatePreferences()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->mManagedExtensions:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->isEnterpriseHardwarePlatformApiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->mDefaultSearchProviderEnabled:Landroidx/preference/SwitchPreferenceCompat;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigFlags;->isDefaultSearchProviderEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->mProxyTypeScreen:Landroidx/preference/PreferenceScreen;

    const-string v2, "pref_enterprise_proxy_type"

    const-string v3, "NONE"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->mProxyServer:Landroidx/preference/Preference;

    const-string v2, "pref_enterprise_proxy_server"

    const-string v3, "EMPTY"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->mProxyPacUrl:Landroidx/preference/Preference;

    const-string v2, "pref_enterprise_pac_url"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->mProxyBypassList:Landroidx/preference/Preference;

    const-string v1, "pref_enterprise_bypass_list"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->initUi()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->registerObserver(Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager$Observer;)V

    return-void
.end method

.method public onConfigUpdated()V
    .locals 3

    const-string v0, "ManagedConfigPreferenceFragment"

    const-string v1, "onConfigUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const-string v1, "Configuration updated"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->updatePreferences()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lw2/A;->onDestroyView()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->getInstance()Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;->unRegisterObserver(Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager$Observer;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "EnterpriseProxyCatPacUrl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "EnterpriseProxyCatBypassList"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "EnterpriseProxyCatProxyServer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->showSetOtherDialog(Ljava/lang/String;)V

    :goto_1
    invoke-super {p0, p1}, Lw2/A;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x79bc0198 -> :sswitch_2
        -0x588f8451 -> :sswitch_1
        0x56330606 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/managed_config/ManagedConfigPreferenceFragment;->updatePreferences()V

    return-void
.end method
