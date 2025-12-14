.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/l;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/l;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/l;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/l;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->g(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    check-cast p0, Ltb/s;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->l(Ltb/s;Landroid/content/DialogInterface;I)V

    return-void

    :pswitch_1
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->g(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
