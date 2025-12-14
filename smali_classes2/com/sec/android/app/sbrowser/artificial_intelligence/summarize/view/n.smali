.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/n;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/n;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/n;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/n;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/n;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/n;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;->b(Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerErrorHandler;Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/n;->c:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/n;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/auth/AuthFragment;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/auth/AuthFragment;->j(Lcom/sec/android/app/sbrowser/auth/AuthFragment;Landroid/os/Bundle;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/n;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/n;->c:Ljava/lang/Object;

    check-cast p0, Landroid/widget/ImageButton;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;Landroid/widget/ImageButton;Landroid/content/DialogInterface;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/n;->c:Ljava/lang/Object;

    check-cast v0, Ltb/s;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/n;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->f(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;Ltb/s;Landroid/content/DialogInterface;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
