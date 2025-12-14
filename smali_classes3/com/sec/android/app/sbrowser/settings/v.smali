.class public final synthetic Lcom/sec/android/app/sbrowser/settings/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/v;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/v;->b:Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/v;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/v;->b:Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->q(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;Ljava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->u(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;Ljava/lang/String;)V

    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->l(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;Ljava/lang/Integer;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->s(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
