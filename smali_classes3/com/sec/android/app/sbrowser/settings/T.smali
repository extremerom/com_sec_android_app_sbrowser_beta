.class public final synthetic Lcom/sec/android/app/sbrowser/settings/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/T;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/T;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/T;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/T;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/PersonalDataPreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/PersonalDataPreferenceFragment;->h(Lcom/sec/android/app/sbrowser/settings/PersonalDataPreferenceFragment;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;->l(Lcom/sec/android/app/sbrowser/settings/LeaveInternetFragment;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/LayoutPreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/LayoutPreferenceFragment;->l(Lcom/sec/android/app/sbrowser/settings/LayoutPreferenceFragment;)V

    return-void

    :pswitch_3
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->d(Landroid/graphics/drawable/LayerDrawable;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;->i(Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDialog;)V

    return-void

    :pswitch_5
    check-cast p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$3;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$3;->a(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$3;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
