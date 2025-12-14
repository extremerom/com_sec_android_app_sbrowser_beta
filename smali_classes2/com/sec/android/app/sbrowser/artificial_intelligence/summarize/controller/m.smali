.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/m;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/m;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/m;->c:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/m;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/m;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/m;->c:J

    invoke-static {v2, v3, p1, v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;->c(JLcom/samsung/android/sdk/scs/ai/translation/NeuralTranslationResult;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/controller/SummarizeController$1;Ljava/lang/String;)V

    return-void
.end method
