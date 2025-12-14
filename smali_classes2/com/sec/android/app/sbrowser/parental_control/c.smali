.class public final synthetic Lcom/sec/android/app/sbrowser/parental_control/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/parental_control/c;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/c;->b:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/parental_control/c;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/c;->b:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->m(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Landroidx/activity/result/ActivityResult;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->k(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Landroidx/activity/result/ActivityResult;)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->o(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Landroidx/activity/result/ActivityResult;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
