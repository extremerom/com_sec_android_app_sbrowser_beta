.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/c;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/c;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/c;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/c;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationErrorCode;)V

    return-void
.end method
