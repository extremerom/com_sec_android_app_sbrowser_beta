.class public Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsSIDebugPreferenceFragment;
.super Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;
.source "SourceFile"

# interfaces
.implements Lw2/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "pref_custom_tabs_launcher_launch_with_read_articles_aloud"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "pref_custom_tabs_launcher_toolbar_title_color"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_2
    const-string v4, "pref_custom_tabs_launcher_toolbar_title"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_3
    const-string v4, "pref_custom_tabs_launcher_remove_open_in_internet"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_4
    const-string v4, "pref_custom_tabs_launcher_show_title_after_load"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string v4, "pref_custom_tabs_launcher_remove_security_icon"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_6
    const-string v4, "pref_custom_tabs_launcher_remove_menu_items"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_7
    const-string v4, "pref_custom_tabs_launcher_toolbar_title_size"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    move v3, v2

    goto :goto_0

    :sswitch_8
    const-string v4, "pref_custom_tabs_launcher_fullscreen_mode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    move v3, v0

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v0

    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putBoolean(Ljava/lang/String;Z)V

    return v2

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5a87b909 -> :sswitch_8
        -0x4762a884 -> :sswitch_7
        -0x4559a135 -> :sswitch_6
        -0x5a387b3 -> :sswitch_5
        0x2d7c602 -> :sswitch_4
        0x3c08b051 -> :sswitch_3
        0x52058fe4 -> :sswitch_2
        0x5a2ea748 -> :sswitch_1
        0x5acb99dd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const p2, 0x7f140405

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f180021

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    const-string p1, "pref_custom_tabs_launcher_toolbar_title"

    const-string p2, ""

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugEditTextPreference(Ljava/lang/String;Ljava/lang/String;Lw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_toolbar_title_color"

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugEditTextPreference(Ljava/lang/String;Ljava/lang/String;Lw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_toolbar_title_size"

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugEditTextPreference(Ljava/lang/String;Ljava/lang/String;Lw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_fullscreen_mode"

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugEditTextPreference(Ljava/lang/String;Ljava/lang/String;Lw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_show_title_after_load"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugSwitchPreference(Ljava/lang/String;ZLw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_remove_menu_items"

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugSwitchPreference(Ljava/lang/String;ZLw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_remove_security_icon"

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugSwitchPreference(Ljava/lang/String;ZLw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_remove_open_in_internet"

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugSwitchPreference(Ljava/lang/String;ZLw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_launch_with_read_articles_aloud"

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugSwitchPreference(Ljava/lang/String;ZLw2/m;)V

    return-void
.end method
