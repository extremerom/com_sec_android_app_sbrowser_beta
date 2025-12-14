.class public Lcom/sec/android/app/sbrowser/settings/debug/HandoffDebugPreferenceFragment;
.super Lw2/A;
.source "SourceFile"


# instance fields
.field private mMediaSwitch:Lcom/sec/android/app/sbrowser/settings/debug/DebugSwitchPreference;

.field private mScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2/A;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f1409e2

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    :cond_0
    const p1, 0x7f180034

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/HandoffDebugPreferenceFragment;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string p1, "pref_handoff_media_enable"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/settings/debug/DebugSwitchPreference;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/HandoffDebugPreferenceFragment;->mMediaSwitch:Lcom/sec/android/app/sbrowser/settings/debug/DebugSwitchPreference;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/HandoffDebugPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/debug/HandoffDebugPreferenceFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/HandoffDebugPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/HandoffDebugPreferenceFragment;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/HandoffDebugPreferenceFragment;->mMediaSwitch:Lcom/sec/android/app/sbrowser/settings/debug/DebugSwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
