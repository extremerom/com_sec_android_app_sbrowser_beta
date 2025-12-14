.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/N;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/N;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/N;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/N;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->q(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->z(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)Ldb/r;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->j(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)Landroidx/lifecycle/v0;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->i(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;)Ldb/r;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
