.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/a;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;Ljava/lang/String;)V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
