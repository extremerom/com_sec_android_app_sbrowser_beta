.class public Lcom/sec/android/app/sbrowser/settings/debug/SalesCodePreferenceFragment;
.super Lw2/A;
.source "SourceFile"


# instance fields
.field private mSetOtherValueDialogFragment:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2/A;-><init>()V

    return-void
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/settings/debug/SalesCodePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SalesCodePreferenceFragment;->mSetOtherValueDialogFragment:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/settings/debug/SalesCodePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SalesCodePreferenceFragment;->updateCheckState()V

    return-void
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/settings/debug/SalesCodePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SalesCodePreferenceFragment;->updateSummary()V

    return-void
.end method

.method private showSetOtherDialog()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SalesCodePreferenceFragment;->mSetOtherValueDialogFragment:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/debug/SalesCodePreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/debug/SalesCodePreferenceFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/SalesCodePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;->setDialogDelegate(Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment$DialogDelegate;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SalesCodePreferenceFragment;->mSetOtherValueDialogFragment:Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p0

    const-class v1, Lcom/sec/android/app/sbrowser/settings/debug/SetOtherValueDialogFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/u;->show(Landroidx/fragment/app/f0;Ljava/lang/String;)V

    return-void
.end method

.method private updateCheckState()V
    .locals 2

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/settings/RadioPreferenceGroup;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTypeOther(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Other"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/settings/RadioPreferenceGroup;->setChecked(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/settings/RadioPreferenceGroup;->setChecked(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateSummary()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTypeOther(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Other"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/settings/RadioPreference;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getSalesCodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/settings/RadioPreference;->setSummary(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lw2/A;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const v0, 0x7f14053f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f18006a

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SalesCodePreferenceFragment;->updateCheckState()V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Other"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SalesCodePreferenceFragment;->showSetOtherDialog()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setSalesCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-super {p0, p1}, Lw2/A;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SalesCodePreferenceFragment;->updateCheckState()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SalesCodePreferenceFragment;->updateSummary()V

    return-void
.end method
