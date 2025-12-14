.class public final synthetic Lcom/sec/android/app/sbrowser/parental_control/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/parental_control/i;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/i;->b:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/parental_control/i;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/i;->b:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;->d(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;Landroid/view/View;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;->e(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlMinorPage;Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
