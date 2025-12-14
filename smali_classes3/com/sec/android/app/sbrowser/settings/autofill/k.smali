.class public final synthetic Lcom/sec/android/app/sbrowser/settings/autofill/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/autofill/k;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/k;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/k;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/k;->b:Landroid/app/Activity;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncOnState;->a(Landroid/app/Activity;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncOnState;->c(Landroid/app/Activity;)V

    return-void

    :pswitch_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillSyncManager$SyncOnState;->b(Landroid/app/Activity;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
