.class public final synthetic Lcom/sec/android/app/sbrowser/parental_control/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/parental_control/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/b;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/parental_control/b;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/parental_control/b;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/parental_control/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMessageSender$Callback;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/parental_control/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMessageSender;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/b;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMessageSender;->a(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMessageSender;Landroid/content/Intent;Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMessageSender$Callback;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/b;->d:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$RequestListener;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/parental_control/b;->b:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/b;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;->a(Lcom/sec/android/app/sbrowser/parental_control/ParentalControl;Ljava/lang/String;Lcom/sec/android/app/sbrowser/parental_control/ParentalControl$RequestListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
