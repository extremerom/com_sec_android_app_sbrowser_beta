.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/y;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/y;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/y;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/y;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->c(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/y;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;->h(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/SummaryTranslator;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
