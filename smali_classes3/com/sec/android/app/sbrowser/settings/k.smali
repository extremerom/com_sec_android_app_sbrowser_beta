.class public final synthetic Lcom/sec/android/app/sbrowser/settings/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/m;
.implements Lcom/sec/android/app/sbrowser/settings/PermissionListAdapterListner;
.implements Lw2/n;
.implements Lcom/sec/android/app/sbrowser/common/flexmode/FlexModeManager$DeviceStateCallback;
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;
.implements Lw2/c;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/EditText;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/debug/MainViewPreferenceFragment;->h(Landroid/widget/EditText;)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/k;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/sec/android/app/sbrowser/settings/debug/PreviousValuesManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/PreviousValuesManager;-><init>()V

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;->a()Lcom/sec/android/app/sbrowser/settings/customize_toolbar/controller/EditMenuAccessibility;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;->a()Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onChildClick(Landroid/view/View;I)Z
    .locals 0

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/settings/PermissionBaseFragment;->j(ILandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onDeviceStateChanged()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->j()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/k;->a:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/AiSummarizeDebugPreferenceFragment;->h(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/AiSummarizeDebugPreferenceFragment;->i(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_2
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/AiSummarizeDebugPreferenceFragment;->j(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_3
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->s(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_4
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->i(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_5
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->o(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_6
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->j(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_7
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->r(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_8
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->p(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_9
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/LayoutPreferenceFragment;->i(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_a
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/LayoutPreferenceFragment;->k(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_b
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/LayoutPreferenceFragment;->m(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_c
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;->k(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/k;->a:I

    sparse-switch p0, :sswitch_data_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessSiteItemUpdaterDebugFragment;->j(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :sswitch_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessSiteItemUpdaterDebugFragment;->h(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :sswitch_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/debug/AutofillDebugPreferenceFragment;->k(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :sswitch_2
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/debug/AutofillDebugPreferenceFragment;->i(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :sswitch_3
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->s(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :sswitch_4
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->w(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :sswitch_5
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->D(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :sswitch_6
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;->j(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :sswitch_7
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->p(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :sswitch_8
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->q(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :sswitch_9
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->m(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_9
        0xa -> :sswitch_8
        0xb -> :sswitch_7
        0xd -> :sswitch_6
        0xf -> :sswitch_5
        0x10 -> :sswitch_4
        0x11 -> :sswitch_3
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0x1c -> :sswitch_0
    .end sparse-switch
.end method
