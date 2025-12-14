.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/Q;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/Q;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/Q;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/Q;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->x(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Ljava/util/List;Ljava/util/List;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/Q;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->h(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;I)Ldb/r;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
