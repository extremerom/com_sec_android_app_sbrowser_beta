.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/K;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/K;->b:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/K;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/K;->b:Landroidx/fragment/app/Fragment;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;->n(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncRemoveDevicesFragment;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;->r(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
