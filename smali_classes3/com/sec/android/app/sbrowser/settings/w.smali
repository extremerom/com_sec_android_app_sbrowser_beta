.class public final synthetic Lcom/sec/android/app/sbrowser/settings/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/m;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/w;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/w;->b:Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/w;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/w;->b:Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->n(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->k(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
