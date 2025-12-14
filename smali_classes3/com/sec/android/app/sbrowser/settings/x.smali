.class public final synthetic Lcom/sec/android/app/sbrowser/settings/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/x;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/x;->b:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/x;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/x;->b:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->l(Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->j(Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;->k(Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
