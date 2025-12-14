.class public Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugUpdatedHistoryPreferenceFragment;
.super Lw2/A;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2/A;-><init>()V

    return-void
.end method

.method public static getContentsPushUpdatedHistories(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugUpdatedHistoryPreferenceFragment;->getContentsPushUpdatedHistoryCount(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const-string v4, "pref_contents_push_updated_history_preference"

    invoke-virtual {p0, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pref_contents_push_updated_history_index_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getContentsPushUpdatedHistoryCount(Landroid/content/Context;)I
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "pref_contents_push_updated_history_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pref_contents_push_accumulated_updated_history_count"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static setContentsPushUpdatedHistoryCount(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "pref_contents_push_updated_history_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pref_contents_push_accumulated_updated_history_count"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setPreferencesSummary(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static updateContentsPushUpdatedHistory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugUpdatedHistoryPreferenceFragment;->getContentsPushUpdatedHistoryCount(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x14

    const-string v2, "pref_contents_push_updated_history_index_"

    const-string v3, "pref_contents_push_updated_history_preference"

    const/4 v4, 0x0

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugUpdatedHistoryPreferenceFragment;->setContentsPushUpdatedHistoryCount(Landroid/content/Context;I)V

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugUpdatedHistoryPreferenceFragment;->getContentsPushUpdatedHistories(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p1, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
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

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object p1

    const-string v0, "pref_contents_push_updated_history_preference"

    invoke-virtual {p1, v0}, Lw2/F;->h(Ljava/lang/String;)V

    const p1, 0x7f18001a

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const v0, 0x7f14039a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    const-string p1, "pref_contents_push_max_updated_history_count"

    const/16 v0, 0x14

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugUpdatedHistoryPreferenceFragment;->setPreferencesSummary(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugUpdatedHistoryPreferenceFragment;->getContentsPushUpdatedHistoryCount(Landroid/content/Context;)I

    move-result p1

    const-string v0, "pref_contents_push_accumulated_updated_history_count"

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugUpdatedHistoryPreferenceFragment;->setPreferencesSummary(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugUpdatedHistoryPreferenceFragment;->showAccumulatedHistories()V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showAccumulatedHistories()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/contents_push/ui/debug_setting/ContentsPushDebugUpdatedHistoryPreferenceFragment;->getContentsPushUpdatedHistories(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    new-instance v3, Landroidx/preference/Preference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
