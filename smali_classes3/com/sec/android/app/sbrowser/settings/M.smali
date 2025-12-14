.class public final synthetic Lcom/sec/android/app/sbrowser/settings/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/m;
.implements Lw2/n;
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;
.implements Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/SettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/M;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/M;->b:Lcom/sec/android/app/sbrowser/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/M;->b:Lcom/sec/android/app/sbrowser/settings/SettingsFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->r(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/M;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/M;->b:Lcom/sec/android/app/sbrowser/settings/SettingsFragment;

    sparse-switch v0, :sswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->q(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :sswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->v(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :sswitch_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->F(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :sswitch_2
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->n(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :sswitch_3
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->l(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x7 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onResult(Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/M;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/M;->b:Lcom/sec/android/app/sbrowser/settings/SettingsFragment;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->j(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Z)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->B(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Z)V

    return-void

    :pswitch_2
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->x(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUpdated()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/M;->b:Lcom/sec/android/app/sbrowser/settings/SettingsFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->i(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;)V

    return-void
.end method
