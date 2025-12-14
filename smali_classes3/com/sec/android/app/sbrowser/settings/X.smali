.class public final synthetic Lcom/sec/android/app/sbrowser/settings/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/n;
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/X;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/X;->b:Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/X;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/X;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/X;->b:Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/X;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/J;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->o(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroidx/fragment/app/J;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/X;->b:Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/X;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment$OnAddWidgetCallback;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->j(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment$OnAddWidgetCallback;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onResult(Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/X;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/X;->b:Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/X;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/J;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;->l(Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;Landroidx/fragment/app/J;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/X;->b:Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/X;->c:Ljava/lang/Object;

    check-cast p0, Landroid/app/Activity;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->z(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Landroid/app/Activity;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
