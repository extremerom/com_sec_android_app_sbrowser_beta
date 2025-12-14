.class public final synthetic Lcom/sec/android/app/sbrowser/settings/debug/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/m;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/m;->b:Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/m;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/m;->b:Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->j(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->h(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
