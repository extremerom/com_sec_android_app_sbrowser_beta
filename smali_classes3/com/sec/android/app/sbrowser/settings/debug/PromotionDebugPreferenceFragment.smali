.class public Lcom/sec/android/app/sbrowser/settings/debug/PromotionDebugPreferenceFragment;
.super Lw2/A;
.source "SourceFile"


# instance fields
.field private mInstantMode:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2/A;-><init>()V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/debug/PromotionDebugPreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/PromotionDebugPreferenceFragment;->lambda$onActivityCreated$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/debug/PromotionDebugPreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/PromotionDebugPreferenceFragment;->lambda$onActivityCreated$1(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onActivityCreated$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->setPromotionInstantMode(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/PromotionDebugPreferenceFragment;->updatePreferenceSummary()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->resetHistory()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onActivityCreated$1(Landroidx/preference/Preference;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/promotion/PromotionController;->resetHistory()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "All history has been cleared."

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method private updatePreferenceSummary()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Init : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionGlobalConfigUtils$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionGlobalConfigUtils$Companion;->getInitThreshold(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Repeat : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/promotion/model/PersonalizedPromotionGlobalConfigUtils$Companion;->getRepeatThreshold(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/PromotionDebugPreferenceFragment;->mInstantMode:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const v0, 0x7f140b3c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f180053

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "pref_promotion_debug_instant_mode"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/PromotionDebugPreferenceFragment;->mInstantMode:Landroidx/preference/Preference;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/i;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/debug/i;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/PromotionDebugPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "pref_promotion_reset_history"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/i;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/debug/i;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/PromotionDebugPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/PromotionDebugPreferenceFragment;->updatePreferenceSummary()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
