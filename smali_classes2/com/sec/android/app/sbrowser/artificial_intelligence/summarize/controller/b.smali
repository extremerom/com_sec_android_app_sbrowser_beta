.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/b;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/b;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/b;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/b;->e:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/b;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/b;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/b;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/b;->b:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/b;->e:J

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;->c(JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeBeforeTranslateObserver$2;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
