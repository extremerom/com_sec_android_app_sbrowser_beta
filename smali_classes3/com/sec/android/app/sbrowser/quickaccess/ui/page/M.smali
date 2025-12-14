.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/M;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/M;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/M;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/M;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncMainUIEvent;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->k(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncMainUIEvent;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->t(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Ljava/util/List;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->w(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Ljava/util/List;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->x(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->y(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;)Ldb/r;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
