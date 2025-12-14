.class public Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;
.super Lw2/A;
.source "SourceFile"


# instance fields
.field private mActivationCode:Landroidx/preference/Preference;

.field private mFakeMccMnc:Landroidx/preference/Preference;

.field private mFakeSpCode:Landroidx/preference/Preference;

.field private mFakeSpName:Landroidx/preference/Preference;

.field private mFakeSubsetCode:Landroidx/preference/Preference;

.field private mSetOtherValueDialogFragment:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2/A;-><init>()V

    return-void
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->mSetOtherValueDialogFragment:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->updateSummary()V

    return-void
.end method

.method private initUi()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "TssConfigPreferenceFragment"

    const-string v1, "activity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    const-string v1, "TSS Configuration"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f180081

    invoke-virtual {p0, v0}, Lw2/A;->addPreferencesFromResource(I)V

    :cond_1
    return-void
.end method

.method private showSetOtherDialog(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->mSetOtherValueDialogFragment:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->setDialogDelegate(Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$DialogDelegate;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->mSetOtherValueDialogFragment:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p0

    const-class v0, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/u;->show(Landroidx/fragment/app/f0;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateSummary()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->mActivationCode:Landroidx/preference/Preference;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFakeActivatedId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Not set"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFakeActivatedId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->mFakeMccMnc:Landroidx/preference/Preference;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFakeMccMnc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFakeMccMnc()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->mFakeSpName:Landroidx/preference/Preference;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFakeSpName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFakeSpName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->mFakeSpCode:Landroidx/preference/Preference;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFakeSpCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v2

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFakeSpCode()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->mFakeSubsetCode:Landroidx/preference/Preference;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFakeSubsetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getFakeSubsetCode()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->initUi()V

    const-string p1, "pref_debug_fake_aid"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->mActivationCode:Landroidx/preference/Preference;

    const-string p1, "pref_debug_fake_mccmnc"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->mFakeMccMnc:Landroidx/preference/Preference;

    const-string p1, "pref_debug_fake_spname"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->mFakeSpName:Landroidx/preference/Preference;

    const-string p1, "pref_debug_fake_spcode"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->mFakeSpCode:Landroidx/preference/Preference;

    const-string p1, "pref_debug_fake_subsetcode"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->mFakeSubsetCode:Landroidx/preference/Preference;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->updateSummary()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_debug_reset_sim_setting"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->resetFakeSimSetting()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->updateSummary()V

    goto :goto_0

    :cond_0
    const-string v0, "pref_debug_tss2_activated"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/debug/TssConfigPreferenceFragment;->showSetOtherDialog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lw2/A;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
