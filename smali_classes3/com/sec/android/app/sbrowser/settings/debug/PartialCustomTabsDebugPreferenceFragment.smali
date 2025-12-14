.class public Lcom/sec/android/app/sbrowser/settings/debug/PartialCustomTabsDebugPreferenceFragment;
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

.method private getDecorationType(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-string p0, "Default"

    goto :goto_0

    :cond_0
    const-string p0, "Divider"

    goto :goto_0

    :cond_1
    const-string p0, "Shadow"

    goto :goto_0

    :cond_2
    const-string p0, "None"

    :goto_0
    return-object p0
.end method

.method private getHeightResizeBehavior(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "Default"

    goto :goto_0

    :cond_0
    const-string p0, "Fixed"

    goto :goto_0

    :cond_1
    const-string p0, "Adjustable"

    :goto_0
    return-object p0
.end method

.method private getPosition(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "Default"

    goto :goto_0

    :cond_0
    const-string p0, "End"

    goto :goto_0

    :cond_1
    const-string p0, "Start"

    :goto_0
    return-object p0
.end method

.method private getRoundedCornerPosition(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "Default"

    goto :goto_0

    :cond_0
    const-string p0, "Top"

    goto :goto_0

    :cond_1
    const-string p0, "None"

    :goto_0
    return-object p0
.end method

.method private updateSettingsVisibility(Z)V
    .locals 1

    const-string v0, "pref_custom_tabs_launcher_initial_height_px"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->setPreferenceVisibility(Ljava/lang/String;Z)V

    const-string v0, "pref_custom_tabs_launcher_height_resize_behavior"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->setPreferenceVisibility(Ljava/lang/String;Z)V

    const-string v0, "pref_custom_tabs_launcher_toolbar_radius_dp"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->setPreferenceVisibility(Ljava/lang/String;Z)V

    const-string v0, "pref_custom_tabs_launcher_enable_background_interaction"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->setPreferenceVisibility(Ljava/lang/String;Z)V

    const-string v0, "pref_enable_partial_custom_tab_side_sheet"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->setPreferenceVisibility(Ljava/lang/String;Z)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isPartialCustomTabSideSheetEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/PartialCustomTabsDebugPreferenceFragment;->updateSideSheetSettingsVisibility(Z)V

    return-void
.end method

.method private updateSideSheetSettingsVisibility(Z)V
    .locals 1

    const-string v0, "pref_custom_tabs_launcher_initial_width_px"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->setPreferenceVisibility(Ljava/lang/String;Z)V

    const-string v0, "pref_custom_tabs_launcher_break_point_dp"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->setPreferenceVisibility(Ljava/lang/String;Z)V

    const-string v0, "pref_custom_tabs_launcher_show_maximize_button"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->setPreferenceVisibility(Ljava/lang/String;Z)V

    const-string v0, "pref_custom_tabs_launcher_side_sheet_position"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->setPreferenceVisibility(Ljava/lang/String;Z)V

    const-string v0, "pref_custom_tabs_launcher_side_sheet_decoration_type"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->setPreferenceVisibility(Ljava/lang/String;Z)V

    const-string v0, "pref_custom_tabs_launcher_side_sheet_rounded_corner_position"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->setPreferenceVisibility(Ljava/lang/String;Z)V

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

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "pref_custom_tabs_launcher_initial_height_px"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "pref_custom_tabs_launcher_side_sheet_position"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "pref_custom_tabs_launcher_show_maximize_button"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "pref_custom_tabs_launcher_height_resize_behavior"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v4, "pref_enable_partial_custom_tab"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_5
    const-string v4, "pref_custom_tabs_launcher_enable_background_interaction"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_6
    const-string v4, "pref_custom_tabs_launcher_break_point_dp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_7
    const-string v4, "pref_custom_tabs_launcher_toolbar_radius_dp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_8
    const-string v4, "pref_enable_partial_custom_tab_side_sheet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_9
    const-string v4, "pref_custom_tabs_launcher_initial_width_px"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_a
    const-string v4, "pref_custom_tabs_launcher_side_sheet_decoration_type"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_0

    :cond_a
    move v3, v2

    goto :goto_0

    :sswitch_b
    const-string v4, "pref_custom_tabs_launcher_side_sheet_rounded_corner_position"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_0

    :cond_b
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v1

    :pswitch_0
    instance-of v3, p1, Landroidx/preference/ListPreference;

    if-eqz v3, :cond_c

    check-cast p1, Landroidx/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/PartialCustomTabsDebugPreferenceFragment;->getPosition(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putInt(Ljava/lang/String;I)V

    return v2

    :cond_c
    return v1

    :pswitch_1
    instance-of v3, p1, Landroidx/preference/ListPreference;

    if-eqz v3, :cond_d

    check-cast p1, Landroidx/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/PartialCustomTabsDebugPreferenceFragment;->getHeightResizeBehavior(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putInt(Ljava/lang/String;I)V

    return v2

    :cond_d
    return v1

    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isPartialCustomTabEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/PartialCustomTabsDebugPreferenceFragment;->updateSettingsVisibility(Z)V

    return v2

    :pswitch_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putBoolean(Ljava/lang/String;Z)V

    return v2

    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isPartialCustomTabSideSheetEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/PartialCustomTabsDebugPreferenceFragment;->updateSideSheetSettingsVisibility(Z)V

    return v2

    :pswitch_5
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :pswitch_6
    instance-of v3, p1, Landroidx/preference/ListPreference;

    if-eqz v3, :cond_e

    check-cast p1, Landroidx/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/PartialCustomTabsDebugPreferenceFragment;->getDecorationType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putInt(Ljava/lang/String;I)V

    return v2

    :cond_e
    return v1

    :pswitch_7
    instance-of v3, p1, Landroidx/preference/ListPreference;

    if-eqz v3, :cond_f

    check-cast p1, Landroidx/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/PartialCustomTabsDebugPreferenceFragment;->getRoundedCornerPosition(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->putInt(Ljava/lang/String;I)V

    return v2

    :cond_f
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b98aed7 -> :sswitch_b
        -0x67a5dfaf -> :sswitch_a
        -0x540a5b94 -> :sswitch_9
        -0x38eb7f6f -> :sswitch_8
        -0x6ca551b -> :sswitch_7
        0x79b8b -> :sswitch_6
        0x72f0a0d -> :sswitch_5
        0x2a979465 -> :sswitch_4
        0x46c5fd15 -> :sswitch_3
        0x52773973 -> :sswitch_2
        0x6effeb41 -> :sswitch_1
        0x75912835 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
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

    const p2, 0x7f140404

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f18004f

    invoke-virtual {p0, p1}, Lw2/A;->addPreferencesFromResource(I)V

    const-string p1, "pref_enable_partial_custom_tab"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugSwitchPreference(Ljava/lang/String;ZLw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_initial_height_px"

    const-string v0, ""

    invoke-virtual {p0, p1, v0, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugEditTextPreference(Ljava/lang/String;Ljava/lang/String;Lw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_height_resize_behavior"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/PartialCustomTabsDebugPreferenceFragment;->getHeightResizeBehavior(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugListPreference(Ljava/lang/String;Ljava/lang/String;Lw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_toolbar_radius_dp"

    invoke-virtual {p0, p1, v0, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugEditTextPreference(Ljava/lang/String;Ljava/lang/String;Lw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_enable_background_interaction"

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugSwitchPreference(Ljava/lang/String;ZLw2/m;)V

    const-string p1, "pref_enable_partial_custom_tab_side_sheet"

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugSwitchPreference(Ljava/lang/String;ZLw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_initial_width_px"

    invoke-virtual {p0, p1, v0, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugEditTextPreference(Ljava/lang/String;Ljava/lang/String;Lw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_break_point_dp"

    invoke-virtual {p0, p1, v0, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugEditTextPreference(Ljava/lang/String;Ljava/lang/String;Lw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_show_maximize_button"

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugSwitchPreference(Ljava/lang/String;ZLw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_side_sheet_position"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/debug/PartialCustomTabsDebugPreferenceFragment;->getPosition(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugListPreference(Ljava/lang/String;Ljava/lang/String;Lw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_side_sheet_decoration_type"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/settings/debug/PartialCustomTabsDebugPreferenceFragment;->getDecorationType(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugListPreference(Ljava/lang/String;Ljava/lang/String;Lw2/m;)V

    const-string p1, "pref_custom_tabs_launcher_side_sheet_rounded_corner_position"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/settings/debug/PartialCustomTabsDebugPreferenceFragment;->getRoundedCornerPosition(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/CustomTabsBaseDebugPreferenceFragment;->initializeDebugListPreference(Ljava/lang/String;Ljava/lang/String;Lw2/m;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isPartialCustomTabEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/PartialCustomTabsDebugPreferenceFragment;->updateSettingsVisibility(Z)V

    return-void
.end method
