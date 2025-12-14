.class public final synthetic Landroidx/activity/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/activity/x;->a:I

    iput-object p2, p0, Landroidx/activity/x;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    iget v0, p0, Landroidx/activity/x;->a:I

    iget-object p0, p0, Landroidx/activity/x;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lt/g1;

    invoke-virtual {p0}, Lt/g1;->run()V

    return-void

    :pswitch_0
    check-cast p0, Lm/w;

    invoke-virtual {p0}, Lm/w;->G()Z

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->onBackPressed()V

    return-void

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivity;->onBackPressed()V

    return-void

    :pswitch_3
    check-cast p0, Lcom/sec/android/app/sbrowser/sites/SitesActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/SitesActivity;->onBackPressed()V

    return-void

    :pswitch_4
    check-cast p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroActivity;->onBackPressed()V

    return-void

    :pswitch_5
    check-cast p0, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->onBackPressed()V

    return-void

    :pswitch_6
    check-cast p0, Landroidx/activity/w;

    invoke-virtual {p0}, Landroidx/activity/w;->invoke()Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
