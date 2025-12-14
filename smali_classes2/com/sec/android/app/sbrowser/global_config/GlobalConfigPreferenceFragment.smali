.class public Lcom/sec/android/app/sbrowser/global_config/GlobalConfigPreferenceFragment;
.super Lw2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2/A;-><init>()V

    return-void
.end method

.method public static synthetic h(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigPreferenceFragment;->lambda$onCreatePreferences$2(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigPreferenceFragment;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigPreferenceFragment;->lambda$onCreatePreferences$5(Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigPreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigPreferenceFragment;->lambda$onCreatePreferences$1(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigPreferenceFragment;->lambda$onCreatePreferences$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigPreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigPreferenceFragment;->lambda$onCreatePreferences$3(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onCreatePreferences$0(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Finished global config update"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$onCreatePreferences$1(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const-string v0, "Trying to get global config from server..."

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;->getInstance()Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/16 v2, 0x1b

    invoke-direct {v0, v2}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    invoke-virtual {p1, p0, v0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;->updateNow(Landroid/content/Context;Lcom/sec/android/app/sbrowser/global_config/GlobalConfig$UpdateCallback;)V

    return v1
.end method

.method private static synthetic lambda$onCreatePreferences$2(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Finished global config update"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$onCreatePreferences$3(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const-string v0, "Trying to update get global config from server..."

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;->getInstance()Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/16 v2, 0x1c

    invoke-direct {v0, v2}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    invoke-virtual {p1, p0, v0}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfig;->forceUpdate(Landroid/content/Context;Lcom/sec/android/app/sbrowser/global_config/GlobalConfig$UpdateCallback;)V

    return v1
.end method

.method private synthetic lambda$onCreatePreferences$4(Landroid/widget/EditText;Landroidx/preference/Preference;Landroid/content/DialogInterface;I)V
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0, p3, p4}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigPreferenceUtils;->setResponseHoldingTimeMillis(Landroid/content/Context;J)V

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "GlobalConfigPreferenceFragment"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$onCreatePreferences$5(Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p2

    const v0, 0x7f0e0448

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0b048d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigPreferenceUtils;->getResponseHoldingTimeMillis(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->setSelection(II)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const-string v3, "Request holding time (millis)"

    invoke-virtual {p2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v3, Lcom/sec/android/app/sbrowser/global_config/d;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v0, p1}, Lcom/sec/android/app/sbrowser/global_config/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    const p0, 0x7f140dbb

    invoke-virtual {p2, p0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f1402c1

    invoke-virtual {p0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return v2
.end method

.method public static synthetic m(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigPreferenceFragment;Landroid/widget/EditText;Landroidx/preference/Preference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/global_config/GlobalConfigPreferenceFragment;->lambda$onCreatePreferences$4(Landroid/widget/EditText;Landroidx/preference/Preference;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lw2/A;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p0

    const p1, 0x7f140573

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p1

    const-string p2, "global_config_setting_preference"

    invoke-virtual {p1, p2}, Lw2/F;->h(Ljava/lang/String;)V

    const p1, 0x7f18002f

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    const-string p1, "pref_global_config_update_now"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/sec/android/app/sbrowser/global_config/c;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/global_config/c;-><init>(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigPreferenceFragment;I)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    const-string p1, "pref_global_config_force_update"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/sec/android/app/sbrowser/global_config/c;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/global_config/c;-><init>(Lcom/sec/android/app/sbrowser/global_config/GlobalConfigPreferenceFragment;I)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    const-string p1, "pref_global_config_response_holding_time_millis"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/model/global_config/GlobalConfigPreferenceUtils;->getResponseHoldingTimeMillis(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance p2, LHa/a;

    const/16 v0, 0xf

    invoke-direct {p2, v0, p0, p1}, LHa/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    return-void
.end method
