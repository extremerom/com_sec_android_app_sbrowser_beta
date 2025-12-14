.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;

.field public final synthetic b:J

.field public final synthetic c:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;

.field public final synthetic d:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;

.field public final synthetic e:I

.field public final synthetic f:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

.field public final synthetic g:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

.field public final synthetic h:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;ILcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/b;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/b;->b:J

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/b;->c:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/b;->d:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;

    iput p6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/b;->e:I

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/b;->f:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/b;->g:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    iput-object p9, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/b;->h:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v9, p1

    check-cast v9, Lcom/samsung/android/sdk/scs/base/tasks/Task;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/b;->f:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/b;->g:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/b;->a:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/b;->b:J

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/b;->c:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/b;->d:Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;

    iget v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/b;->e:I

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/b;->h:Ljava/util/HashMap;

    invoke-static/range {v0 .. v9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;ILcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/HashMap;Lcom/samsung/android/sdk/scs/base/tasks/Task;)Ldb/r;

    move-result-object p0

    return-object p0
.end method
