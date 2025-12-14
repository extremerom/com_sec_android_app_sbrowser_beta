.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/a;
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

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/a;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->v(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->v(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;->A(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessAddWebFragment;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IconViewListenerFactory$create$1;->b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessRecyclerView;)V

    return-void

    :pswitch_3
    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerView;->E(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerView;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
