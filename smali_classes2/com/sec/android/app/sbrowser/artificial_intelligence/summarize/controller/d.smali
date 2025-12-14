.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;

.field public final synthetic b:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/d;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/d;->b:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/d;->c:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/d;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/d;->e:Ljava/lang/String;

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/d;->f:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/d;->c:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/d;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/d;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/d;->b:Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/d;->e:Ljava/lang/String;

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/d;->f:J

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->a(JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
