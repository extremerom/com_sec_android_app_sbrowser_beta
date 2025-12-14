.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;
.super Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JU\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\"\u0010\u000e\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u000cj\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006`\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011Jc\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u00062\"\u0010\u000e\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u000cj\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006`\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0014Jk\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00172\"\u0010\u000e\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u000cj\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006`\r2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;",
        "<init>",
        "()V",
        "",
        "requestCode",
        "",
        "text",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;",
        "callback",
        "Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;",
        "summarizeLevel",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "extraPrompt",
        "Ldb/r;",
        "requestSummarize",
        "(JLjava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/util/HashMap;)V",
        "languageCode",
        "summaryStyle",
        "(Ljava/lang/String;JLjava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/lang/String;Ljava/util/HashMap;)V",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;",
        "appInfoWrapper",
        "Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;",
        "article",
        "",
        "inputListIndex",
        "summarizeInternal",
        "(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;JLjava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/HashMap;I)V",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;JLcom/samsung/android/sdk/scs/base/tasks/Task;)Ldb/r;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;->summarizeInternal$lambda$6(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;JLcom/samsung/android/sdk/scs/base/tasks/Task;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;->summarizeInternal$lambda$7(Lsb/k;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method private final requestSummarize(JLjava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;",
            "Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;->CLOUD:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    new-instance v9, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$requestSummarize$1;

    move-object v1, v9

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p4

    move-object v6, p3

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient$requestSummarize$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/util/HashMap;)V

    invoke-static {v0, v9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->createAppInfo(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;)V

    return-void
.end method

.method private static final summarizeInternal$lambda$6(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;JLcom/samsung/android/sdk/scs/base/tasks/Task;)Ldb/r;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-wide/from16 v9, p3

    const-string v11, "Generate response with fallback logic"

    const-string v12, "getContent(...)"

    const-string v0, "it"

    move-object/from16 v2, p5

    invoke-static {v2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summarize#onCompleteListener"

    const-string v13, "CloudSummarizerClient"

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result v0

    sget-object v14, Ldb/r;->a:Ldb/r;

    if-eqz v0, :cond_4

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/samsung/android/sdk/scs/ai/language/Result;

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    if-eqz v15, :cond_3

    :try_start_0
    const-string v0, "scs cloud"

    invoke-virtual {v15}, Lcom/samsung/android/sdk/scs/ai/language/Result;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v12}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10, v0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->convertResultObject(JLjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;->getSummary()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_6

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v1, v9, v10, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->postprocessing(JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    move-result-object v3
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v0, 0x6

    const/16 v16, 0x0

    const/4 v4, 0x0

    const/16 v17, 0x0

    move-object/from16 v2, p1

    move/from16 v5, v17

    move v6, v0

    move-object/from16 v17, v14

    move-object v14, v7

    move-object/from16 v7, v16

    :try_start_2
    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback$DefaultImpls;->onSuccess$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;IIILjava/lang/Object;)V

    goto/16 :goto_4

    :catch_0
    move-exception v0

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_1
    const/4 v2, 0x2

    const/4 v3, 0x0

    goto/16 :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v17, v14

    move-object v14, v7

    goto :goto_0

    :catch_3
    move-exception v0

    move-object/from16 v17, v14

    move-object v14, v7

    goto :goto_1

    :cond_0
    move-object/from16 v17, v14

    move-object v14, v7

    invoke-virtual {v15}, Lcom/samsung/android/sdk/scs/ai/language/Result;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->fallbackParseJson(JLjava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v9, v10, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->postprocessing(JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback$DefaultImpls;->onSuccess$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;IIILjava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    const-string v0, "summarize failed (completed, but fail)"
    :try_end_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_3
    invoke-static {v8, v0, v3, v2, v14}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback$DefaultImpls;->onFailure$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;IILjava/lang/Object;)V
    :try_end_3
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_4

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    move v3, v5

    move v2, v6

    move-object/from16 v17, v14

    move-object v14, v7

    goto :goto_2

    :catch_7
    move-exception v0

    move v3, v5

    move v2, v6

    move-object/from16 v17, v14

    move-object v14, v7

    goto :goto_3

    :goto_2
    invoke-static {v0}, LG5/y2;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Lcom/samsung/android/sdk/scs/ai/language/Result;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v12}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v9, v10, v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->fallbackParseJson(JLjava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v13, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v9, v10, v4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->postprocessing(JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p0, p1

    move-object/from16 p1, v0

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v1

    move-object/from16 p5, v2

    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback$DefaultImpls;->onSuccess$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;IIILjava/lang/Object;)V

    goto :goto_4

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v3, v2, v14}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback$DefaultImpls;->onFailure$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;IILjava/lang/Object;)V

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0, v3, v2, v14}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback$DefaultImpls;->onFailure$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;IILjava/lang/Object;)V

    goto :goto_4

    :cond_3
    move v3, v5

    move v2, v6

    move-object/from16 v17, v14

    move-object v14, v7

    const-string v0, "successful but result is null"

    invoke-static {v8, v0, v3, v2, v14}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback$DefaultImpls;->onFailure$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;IILjava/lang/Object;)V

    :goto_4
    return-object v17

    :cond_4
    move-object/from16 v17, v14

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    move-object/from16 v2, p2

    invoke-virtual {v1, v0, v8, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->processException(Ljava/lang/Exception;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;)Z

    return-object v17
.end method

.method private static final summarizeInternal$lambda$7(Lsb/k;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public requestSummarize(Ljava/lang/String;JLjava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;",
            "Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "languageCode"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summarizeLevel"

    invoke-static {p6, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summaryStyle"

    invoke-static {p7, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraPrompt"

    invoke-static {p8, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "document_type"

    invoke-interface {p8, v0, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1, p1, p7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummaryPolicyManager;->getCountOfSentences(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p7, "count_of_summary_lines"

    invoke-interface {p8, p7, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p7, "extraPrompt : "

    invoke-direct {p1, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p7, "CloudSummarizerClient"

    invoke-static {p7, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;->requestSummarize(JLjava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/util/HashMap;)V

    return-void
.end method

.method public summarizeInternal(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;JLjava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/HashMap;I)V
    .locals 6
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;",
            "J",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;",
            "Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;",
            "Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string p9, "appInfoWrapper"

    invoke-static {p1, p9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "text"

    invoke-static {p4, p9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "callback"

    invoke-static {p5, p9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "summarizeLevel"

    invoke-static {p6, p9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p9, "article"

    invoke-static {p7, p9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "extraPrompt"

    invoke-static {p8, p7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->getSummarizer()Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;->getAppInfo()Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    move-result-object v1

    sget-object v4, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;->ARTICLE:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    move-object v2, p4

    move-object v3, p6

    move-object v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;->summarize(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/Map;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object p4

    new-instance p6, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;

    move-object v0, p6

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/a;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;J)V

    new-instance p0, Lcom/google/firebase/messaging/z;

    const/4 p1, 0x7

    invoke-direct {p0, p1, p6}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p4, p0}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    return-void
.end method
