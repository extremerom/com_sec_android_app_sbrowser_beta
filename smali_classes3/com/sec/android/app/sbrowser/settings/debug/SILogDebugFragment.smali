.class public Lcom/sec/android/app/sbrowser/settings/debug/SILogDebugFragment;
.super Lw2/A;
.source "SourceFile"

# interfaces
.implements Lw2/n;
.implements Lw2/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2/A;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string p1, "si_log_server_type_list"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;->getInstance()Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;

    move-result-object p0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;->setServerType(Ljava/lang/String;)V

    :cond_0
    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "si_log_request_get_stats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "Request GET /stats"

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    new-instance p0, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;-><init>()V

    const-string p1, "debug"

    const-string v1, "good"

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter$Builder;->build()Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;

    move-result-object p0

    const/16 p1, 0x383

    const-string v1, "test-iuid"

    const v2, 0xdb7b9

    const-string v3, "value"

    invoke-static {p1, v1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/si_log/SILog;->send(ILjava/lang/String;ILjava/lang/String;Lcom/sec/android/app/sbrowser/si_log/SILog$ExtraParameter;)V

    :cond_0
    return v0
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

    invoke-super {p0, p1, p2}, Lw2/A;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p1

    const-string p2, "si_log_debug_setting_preference"

    invoke-virtual {p1, p2}, Lw2/F;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const p2, 0x7f140f6f

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f180073

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p1

    const-string p2, "si_log_server_type_list"

    invoke-virtual {p1, p2}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    :cond_0
    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p1

    const-string p2, "si_log_request_get_stats"

    invoke-virtual {p1, p2}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_1
    return-void
.end method
