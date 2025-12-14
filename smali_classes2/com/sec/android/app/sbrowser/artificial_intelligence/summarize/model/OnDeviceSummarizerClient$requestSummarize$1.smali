.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$requestSummarize$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$PendingSummarizeRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->requestSummarize(Ljava/lang/String;JLjava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "com/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$requestSummarize$1",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$PendingSummarizeRequest;",
        "Ldb/r;",
        "run",
        "()V",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $callback:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;

.field final synthetic $extraPrompt:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $requestCode:J

.field final synthetic $summarizeLevel:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;",
            "J",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;",
            "Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$requestSummarize$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$requestSummarize$1;->$requestCode:J

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$requestSummarize$1;->$callback:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$requestSummarize$1;->$summarizeLevel:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$requestSummarize$1;->$extraPrompt:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$requestSummarize$1;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$requestSummarize$1;->$requestCode:J

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$requestSummarize$1;->$callback:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$requestSummarize$1;->$summarizeLevel:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$requestSummarize$1;->$extraPrompt:Ljava/util/HashMap;

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->access$requestSummarize(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/util/HashMap;)V

    return-void
.end method
