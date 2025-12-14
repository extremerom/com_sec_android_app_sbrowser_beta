.class public Lcom/sec/android/app/sbrowser/settings/debug/WebDarkCustomDebugPreferenceFragment;
.super Lw2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2/A;-><init>()V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/debug/WebDarkCustomDebugPreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/WebDarkCustomDebugPreferenceFragment;->lambda$onCreatePreferences$1(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/debug/WebDarkCustomDebugPreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/WebDarkCustomDebugPreferenceFragment;->lambda$onCreatePreferences$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onCreatePreferences$0(Landroidx/preference/Preference;)Z
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "*/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x385

    invoke-virtual {p0, p1, v0}, Landroidx/activity/p;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onCreatePreferences$1(Landroidx/preference/Preference;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->getInstance()Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->resetData()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const-string p1, "Cleared"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const v0, 0x7f1409a8

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f180087

    invoke-virtual {p0, p1, p2}, Lw2/A;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "pref_debug_web_dark_custom_version"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->getInstance()Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->getVersion()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    const-string p1, "pref_debug_web_dark_custom_load_data"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/debug/v;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/settings/debug/v;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/WebDarkCustomDebugPreferenceFragment;I)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_1
    const-string p1, "pref_debug_web_dark_custom_clear_data"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/debug/v;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/settings/debug/v;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/WebDarkCustomDebugPreferenceFragment;I)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_2
    return-void
.end method
