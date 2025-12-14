.class public final synthetic Lcom/sec/android/app/sbrowser/autofill/password/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/u;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/u;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/autofill/password/n;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/password/n;->b:Landroidx/fragment/app/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/n;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/n;->b:Landroidx/fragment/app/u;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/autofill/password/FindMyMobileDialog;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/FindMyMobileDialog;->j(Lcom/sec/android/app/sbrowser/autofill/password/FindMyMobileDialog;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/autofill/password/SamsungAccountUpdateDialog;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungAccountUpdateDialog;->k(Lcom/sec/android/app/sbrowser/autofill/password/SamsungAccountUpdateDialog;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/autofill/password/SamsungAccountUpdateDialog;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/SamsungAccountUpdateDialog;->i(Lcom/sec/android/app/sbrowser/autofill/password/SamsungAccountUpdateDialog;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
