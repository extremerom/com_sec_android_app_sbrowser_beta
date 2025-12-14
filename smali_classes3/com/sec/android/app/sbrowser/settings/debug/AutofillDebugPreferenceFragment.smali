.class public Lcom/sec/android/app/sbrowser/settings/debug/AutofillDebugPreferenceFragment;
.super Lw2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2/A;-><init>()V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/debug/AutofillDebugPreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/AutofillDebugPreferenceFragment;->lambda$onActivityCreated$3(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/debug/AutofillDebugPreferenceFragment;->lambda$onActivityCreated$1(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/debug/AutofillDebugPreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/AutofillDebugPreferenceFragment;->lambda$onActivityCreated$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/debug/AutofillDebugPreferenceFragment;->lambda$onActivityCreated$2(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onActivityCreated$0(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/AutofillDebugPreferenceFragment;->resetPersonalDataSync()V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$onActivityCreated$1(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/debug/AutofillSampleProducer;->addSampleProfiles()V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$onActivityCreated$2(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/debug/AutofillSampleProducer;->addSampleCreditCards()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onActivityCreated$3(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getAddedSampleCountForAutofill()I

    move-result v0

    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid number is entered : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "AutofillDebugPreferenceFragment"

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/debug/AutofillDebugPreferenceFragment;->updateSampleCount(Landroidx/preference/Preference;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setAddedSampleCountForAutofill(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private resetPersonalDataSync()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "autofill_setting_samsung_pass_sync"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;->NATIVE:Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->setAutofillProfileBackend(Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;->SECURE:Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager;->setCreditCardBackend(Lcom/sec/android/app/sbrowser/autofill/personal_data/BackendManager$BackendType;)V

    return-void
.end method

.method private setClickListener(Ljava/lang/String;Lw2/n;)V
    .locals 0

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    :cond_0
    return-void
.end method

.method private updateSampleCount(Landroidx/preference/Preference;I)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const v0, 0x7f140143

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f180007

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/debug/b;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/settings/debug/b;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/AutofillDebugPreferenceFragment;)V

    const-string v0, "pref_reset_personal_data_sync"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/AutofillDebugPreferenceFragment;->setClickListener(Ljava/lang/String;Lw2/n;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/k;

    const/16 v0, 0x18

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    const-string v0, "pref_add_sample_profiles_for_autofill"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/AutofillDebugPreferenceFragment;->setClickListener(Ljava/lang/String;Lw2/n;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/k;

    const/16 v0, 0x19

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/settings/k;-><init>(I)V

    const-string v0, "pref_add_sample_credit_cards_for_autofill"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/AutofillDebugPreferenceFragment;->setClickListener(Ljava/lang/String;Lw2/n;)V

    const-string p1, "pref_set_added_sample_count_for_autofill"

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getAddedSampleCountForAutofill()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/settings/debug/AutofillDebugPreferenceFragment;->updateSampleCount(Landroidx/preference/Preference;I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/b;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/debug/b;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/AutofillDebugPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
