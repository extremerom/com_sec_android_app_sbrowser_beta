.class public final synthetic Lcom/sec/android/app/sbrowser/settings/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/y;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/y;->b:Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/y;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/y;->b:Lcom/sec/android/app/sbrowser/common/settings/PreferenceFragmentCustom;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;->p(Lcom/sec/android/app/sbrowser/settings/SettingsFragment;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->n(Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;Ljava/lang/Boolean;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;

    check-cast p1, Landroidx/lifecycle/J;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->o(Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;Landroidx/lifecycle/J;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
