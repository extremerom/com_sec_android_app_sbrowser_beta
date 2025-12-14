.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/a;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryStyleManager;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV4;)V

    return-void

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryPanelV3;)V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/core/widget/NestedScrollView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->j(Landroidx/core/widget/NestedScrollView;)V

    return-void

    :pswitch_4
    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/AIViewController;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
