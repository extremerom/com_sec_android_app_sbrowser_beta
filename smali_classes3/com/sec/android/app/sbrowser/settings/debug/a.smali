.class public final synthetic Lcom/sec/android/app/sbrowser/settings/debug/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lw2/A;


# direct methods
.method public synthetic constructor <init>(Lw2/A;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/a;->b:Lw2/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/a;->b:Lw2/A;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment;->h(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessCidInfoFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/debug/IntentBlockerPreferenceFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;->j(Lcom/sec/android/app/sbrowser/settings/debug/BookmarksPreferenceFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/debug/AntiTrackingDebugPreferenceFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/AntiTrackingDebugPreferenceFragment;->h(Lcom/sec/android/app/sbrowser/settings/debug/AntiTrackingDebugPreferenceFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
