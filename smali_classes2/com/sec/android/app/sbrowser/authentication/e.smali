.class public final synthetic Lcom/sec/android/app/sbrowser/authentication/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/authentication/e;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/authentication/e;->b:Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/authentication/e;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/e;->b:Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;->b(Lcom/sec/android/app/sbrowser/authentication/AuthenticationAlert;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->e(Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;->f(Lcom/sec/android/app/sbrowser/authentication/AuthenticationIrisAlert;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
