.class public Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment;
.super Lw2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2/A;-><init>()V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment;->lambda$onActivityCreated$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment;->updatePreferenceScreen()V

    return-void
.end method

.method private synthetic lambda$onActivityCreated$0(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->setDebugClientId(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->setDebugClientIdEdited(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Reset!"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment;->updatePreferenceScreen()V

    return v1
.end method

.method private updatePreferenceScreen()V
    .locals 4

    const-string v0, "pref_qa_cid_eea_info"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->isEEADevice(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "pref_qa_cid_info"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->isDebugClientIdEdited()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getDebugClientId()Ljava/lang/String;

    move-result-object p0

    const/high16 v1, -0x10000

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/CidUtil;->getClientIdForEarlyAccess(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const v1, -0xbbbbbc

    :goto_0
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const v0, 0x7f140a2a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f180056

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    const-string p1, "pref_qa_cid_info"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment;Landroidx/preference/Preference;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_0
    const-string p1, "pref_qa_cid_reset"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/a;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/a;-><init>(Lw2/A;I)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment;->updatePreferenceScreen()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
