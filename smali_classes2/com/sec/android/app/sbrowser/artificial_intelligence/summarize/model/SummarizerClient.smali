.class public abstract Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$Companion;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$FallbackTitleSummaryKey;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\'\u0018\u0000 N2\u00020\u0001:\u0002NOB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u000c\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0010Jc\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00062\"\u0010\u001c\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u001aj\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006`\u001bH&\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ#\u0010%\u001a\u00020\"2\u0006\u0010!\u001a\u00020 2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0000\u00a2\u0006\u0004\u0008#\u0010$J\u001d\u0010\'\u001a\u00020\"2\u0006\u0010!\u001a\u00020 2\u0006\u0010&\u001a\u00020 \u00a2\u0006\u0004\u0008\'\u0010(J\'\u0010+\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u00062\u0006\u0010*\u001a\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008+\u0010,J\u001d\u0010.\u001a\u00020\u00172\u0006\u0010-\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006\u00a2\u0006\u0004\u0008.\u0010/J!\u00100\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010-\u001a\u00020\u0006H\u0007\u00a2\u0006\u0004\u00080\u0010\nJ\u001f\u00102\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00101\u001a\u00020\u0008H\u0007\u00a2\u0006\u0004\u00082\u00103J[\u00106\u001a\u00020\u001d2\u0006\u00105\u001a\u0002042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00172\"\u0010\u001c\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u001aj\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006`\u001bH\u0004\u00a2\u0006\u0004\u00086\u00107Jk\u0010;\u001a\u00020\u001d2\u0006\u00105\u001a\u0002042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u00109\u001a\u0002082\"\u0010\u001c\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u001aj\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006`\u001b2\u0006\u0010:\u001a\u00020 H&\u00a2\u0006\u0004\u0008;\u0010<J\r\u0010=\u001a\u00020\u001d\u00a2\u0006\u0004\u0008=\u0010\u0003J-\u0010A\u001a\u00020\"2\u000e\u0010@\u001a\n\u0018\u00010>j\u0004\u0018\u0001`?2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u00105\u001a\u000204\u00a2\u0006\u0004\u0008A\u0010BR\"\u0010D\u001a\u00020C8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008D\u0010E\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR\u001e\u0010L\u001a\u000c\u0012\u0008\u0012\u00060KR\u00020\u00000J8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008L\u0010M\u00a8\u0006P"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;",
        "",
        "<init>",
        "()V",
        "",
        "requestCode",
        "",
        "jsonString",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;",
        "parseJson",
        "(JLjava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;",
        "input",
        "parseLine",
        "(Ljava/lang/String;J)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;",
        "str",
        "cleanUpString",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "line",
        "unescapeUnicode",
        "languageCode",
        "text",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;",
        "callback",
        "Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;",
        "summarizeLevel",
        "summaryStyle",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "extraPrompt",
        "Ldb/r;",
        "requestSummarize",
        "(Ljava/lang/String;JLjava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/lang/String;Ljava/util/HashMap;)V",
        "",
        "resultCode",
        "",
        "checkSafetyFilterCode$SBrowser_highendBetaGlobal64Release",
        "(ILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;)Z",
        "checkSafetyFilterCode",
        "modifiedResultCode",
        "isScsSelfSafetyFilter",
        "(II)Z",
        "backend",
        "contents",
        "convertResultObject",
        "(JLjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;",
        "inputText",
        "getSummarizeLevel",
        "(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;",
        "fallbackParseJson",
        "result",
        "postprocessing",
        "(JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;",
        "appInfoWrapper",
        "onAppInfoCreated",
        "(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/util/HashMap;)V",
        "Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;",
        "article",
        "inputListIndex",
        "summarizeInternal",
        "(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;JLjava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/HashMap;I)V",
        "release",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "exception",
        "processException",
        "(Ljava/lang/Exception;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;)Z",
        "Lcom/samsung/android/sdk/scs/ai/language/Summarizer;",
        "summarizer",
        "Lcom/samsung/android/sdk/scs/ai/language/Summarizer;",
        "getSummarizer",
        "()Lcom/samsung/android/sdk/scs/ai/language/Summarizer;",
        "setSummarizer",
        "(Lcom/samsung/android/sdk/scs/ai/language/Summarizer;)V",
        "",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$FallbackTitleSummaryKey;",
        "fallbackTitleSummaryKeyList",
        "Ljava/util/List;",
        "Companion",
        "FallbackTitleSummaryKey",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final fallbackTitleSummaryKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$FallbackTitleSummaryKey;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private summarizer:Lcom/samsung/android/sdk/scs/ai/language/Summarizer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/AiServices;->getSummarizer(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    move-result-object v0

    const-string v1, "getSummarizer(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->summarizer:Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$FallbackTitleSummaryKey;

    const-string v1, "\"title\""

    const-string v2, "\"summary\""

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$FallbackTitleSummaryKey;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$FallbackTitleSummaryKey;

    const-string v2, "\"titolo\""

    const-string v3, "\"sommario\""

    invoke-direct {v1, p0, v2, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$FallbackTitleSummaryKey;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v0, v1}, [Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$FallbackTitleSummaryKey;

    move-result-object v0

    invoke-static {v0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->fallbackTitleSummaryKeyList:Ljava/util/List;

    return-void
.end method

.method private final cleanUpString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ","

    invoke-static {p1, v0}, LKc/r;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "substring(...)"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const-string v4, "\""

    invoke-static {v0, v4, v1}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, v4}, LKc/r;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    const-string p1, "\\\""

    invoke-static {v0, p1, v4}, LKc/r;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->unescapeUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final parseJson(JLjava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;
    .locals 5

    const-string p0, "SummarizerClient"

    const-string v0, "parseJson, result.queries.size: "

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizeResult;

    invoke-virtual {v2, p3, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizeResult;

    if-nez p3, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizeResult;->getSummary()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizeResult;->getScripts()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizeResult;->getQueries()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummarySearchSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "parseJson, isSummarySearchSupported"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizeResult;->getQueries()Ljava/util/List;

    move-result-object v0

    :cond_2
    new-instance v3, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizeResult;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v3, p1, p2, v2, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "parseJson, Exception: "

    invoke-static {p2, p1, p0}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private final parseLine(Ljava/lang/String;J)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;
    .locals 10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->fallbackTitleSummaryKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$FallbackTitleSummaryKey;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$FallbackTitleSummaryKey;->getTitleKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, LKc/k;->q(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$FallbackTitleSummaryKey;->getSummaryKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, LKc/k;->q(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    const-string v5, "scripts"

    invoke-static {p1, v5}, LKc/k;->q(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v2, :cond_2

    if-eqz v5, :cond_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "\n"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v3, v3}, LKc/k;->H(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v5, ""

    :goto_1
    move v6, v3

    move v7, v6

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "]"

    invoke-static {v8, v9}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto/16 :goto_4

    :cond_4
    const-string v9, "],"

    invoke-static {v8, v9}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_1

    :cond_5
    if-eqz v6, :cond_6

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->cleanUpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    if-eqz v7, :cond_7

    invoke-direct {p0, v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->cleanUpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$FallbackTitleSummaryKey;->getTitleKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$FallbackTitleSummaryKey;->getTitleKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "substring(...)"

    invoke-static {v5, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v9, ":"

    invoke-static {v5, v9, v3}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_8
    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->cleanUpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_9
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$FallbackTitleSummaryKey;->getSummaryKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "\"scripts\":"

    invoke-static {v8, v9}, LKc/k;->q(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_3

    :cond_a
    const-string v9, "\"queries\":"

    invoke-static {v8, v9, v3}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_3

    move v6, v4

    goto/16 :goto_2

    :cond_b
    :goto_3
    move v7, v4

    goto/16 :goto_2

    :cond_c
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "parseLine, queries.size: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SummarizerClient"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummarySearchSupported()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "parseLine, isSummarySearchSupported"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_d
    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p1, p2, v5, v0, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object p1

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method private final unescapeUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance p0, Lcom/sec/android/app/sbrowser/common/utils/decoder/UnicodeUnescaper;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/decoder/UnicodeUnescaper;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/decoder/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    const-string v0, "\\\\u[0-9a-fA-F]{4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "compile(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "input"

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "matcher(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, LKc/g;

    invoke-direct {v2, v0, p1}, LKc/g;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_2
    iget-object v4, v0, LKc/g;->a:Ljava/util/regex/Matcher;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    invoke-static {v5, v6}, LG5/d3;->l(II)Lzb/d;

    move-result-object v5

    iget v5, v5, Lzb/b;->a:I

    invoke-virtual {v3, p1, v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->unescapeUnicode$lambda$1(Lcom/sec/android/app/sbrowser/common/utils/decoder/UnicodeUnescaper;LKc/e;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-static {v1, v4}, LG5/d3;->l(II)Lzb/d;

    move-result-object v1

    iget v1, v1, Lzb/b;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, LKc/g;->a()LKc/g;

    move-result-object v0

    if-ge v1, v2, :cond_3

    if-nez v0, :cond_2

    :cond_3
    if-ge v1, v2, :cond_4

    invoke-virtual {v3, p1, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method private static final unescapeUnicode$lambda$1(Lcom/sec/android/app/sbrowser/common/utils/decoder/UnicodeUnescaper;LKc/e;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LKc/g;

    iget-object p1, p1, LKc/g;->a:Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    const-string v0, "group(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/decoder/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "translate(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final checkSafetyFilterCode$SBrowser_highendBetaGlobal64Release(ILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;)Z
    .locals 4
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "toCharArray(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return v3

    :cond_0
    const/16 v1, 0x30

    const/4 v2, 0x1

    aput-char v1, v0, v2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x13b0

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    return v3

    :cond_1
    :pswitch_0
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->isScsSelfSafetyFilter(II)Z

    move-result p0

    invoke-interface {p2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;->onInappropriateContentFailure(Z)V

    :cond_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x13ba
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final convertResultObject(JLjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;
    .locals 5
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "backend"

    invoke-static {p3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "contents"

    invoke-static {p4, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "scs ondevice"

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_2

    const-string p0, "scs ondevice external"

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    const-string p0, "convertResultObject contents: "

    invoke-virtual {p0, p4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p3, "SummarizerClient"

    invoke-static {p3, p0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    const-string v1, "{"

    const/4 v2, 0x6

    invoke-static {p4, v1, v0, v0, v2}, LKc/k;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v1

    const-string v3, "}"

    invoke-static {v0, p4, v2, v3}, LKc/k;->z(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    const-string v0, "substring(...)"

    invoke-static {p4, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p4, Lcom/google/gson/Gson;

    invoke-direct {p4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    invoke-virtual {p4, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isSummarySearchSupported()Z

    move-result p4

    if-eqz p4, :cond_1

    const-string p4, "convertResultObject, isSummarySearchSupported"

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;->getQueries()Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object p3, Lfb/v;->a:Lfb/v;

    :goto_0
    new-instance p4, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;->getRequestCode()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;->getSummary()Ljava/util/List;

    move-result-object p0

    invoke-direct {p4, v0, v1, p0, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p4

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object p0

    :cond_2
    :goto_2
    const-string p0, "(?<=\\. )|(?<=\\.\\n)|(?<=\\?)|(?<=\u3002)|(?<=\u3002)"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    const-string p3, "compile(...)"

    invoke-static {p0, p3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LKc/k;->G(I)V

    invoke-virtual {p0, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_3

    :cond_3
    new-instance p3, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v0

    :cond_4
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {p4, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p4, v1, p0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p0, p3

    :goto_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_4
    if-ge v0, v1, :cond_6

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ""

    const-string v4, "\n"

    invoke-static {v2, v4, v3}, LKc/r;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_5

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "No title"

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public final fallbackParseJson(JLjava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;
    .locals 6
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "inputText"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p3}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "{"

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p3, v0, v2, v2, v3}, LKc/k;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v4

    const-string v5, "}"

    invoke-static {v2, p3, v3, v5}, LKc/k;->z(ILjava/lang/String;ILjava/lang/String;)I

    move-result v3

    if-lt v4, v3, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p3, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    const-string v3, "substring(...)"

    invoke-static {p3, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0, v2}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p3, v5}, LKc/r;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->parseJson(JLjava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;->getSummary()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, "SummarizerClient"

    const-string p1, "fallbackParseJson, succeed to JSON parsing"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    :goto_0
    invoke-direct {p0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->parseLine(Ljava/lang/String;J)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public final getSummarizeLevel(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "inputText"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "languageCode"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getAiSummarizeLevel()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->values()[Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "debug summarize level : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SummarizerClient"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const-string p1, "en"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x28a0

    if-le p0, p1, :cond_2

    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->IN_MORE_DETAIL:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    return-object p0

    :cond_2
    const/16 p1, 0xa28

    if-le p0, p1, :cond_3

    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->IN_DETAIL:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    return-object p0

    :cond_3
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->BRIEFLY:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    return-object p0

    :cond_4
    const/16 p1, 0xfa0

    if-le p0, p1, :cond_5

    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->IN_MORE_DETAIL:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    return-object p0

    :cond_5
    const/16 p1, 0x3e8

    if-le p0, p1, :cond_6

    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->IN_DETAIL:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    return-object p0

    :cond_6
    sget-object p0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;->BRIEFLY:Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    return-object p0
.end method

.method public final getSummarizer()Lcom/samsung/android/sdk/scs/ai/language/Summarizer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->summarizer:Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    return-object p0
.end method

.method public final isScsSelfSafetyFilter(II)Z
    .locals 0

    const/16 p0, 0x1420

    if-eq p1, p0, :cond_0

    const/16 p0, 0x13bc

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onAppInfoCreated(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/util/HashMap;)V
    .locals 12
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;",
            "J",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v5, p4

    const-string v0, "appInfoWrapper"

    move-object v1, p1

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {v5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    move-object/from16 v4, p5

    invoke-static {v4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summarizeLevel"

    move-object/from16 v6, p6

    invoke-static {v6, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraPrompt"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createAppInfo#onCreated"

    const-string v2, "SummarizerClient"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "FEATURE_AI_GEN_SUMMARY"

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/scs/base/feature/Feature;->checkFeature(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "checkFeature#FEATURE_AI_GEN_SUMMARY is not success (statusCode : "

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v5, v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback$DefaultImpls;->onFailure$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;IILjava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "request scs summarize, internal req : "

    move-wide v9, p2

    invoke-static {p2, p3, v0, v2}, Landroidx/recyclerview/widget/P;->k(JLjava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;->ARTICLE:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move v9, v11

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->summarizeInternal(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;JLjava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/HashMap;I)V

    return-void
.end method

.method public final postprocessing(JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;
    .locals 4
    .param p3    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "result"

    invoke-static {p3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;->getSummary()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;->getSummary()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;->getQueries()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;->getQueries()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    :goto_2
    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p1, p2, p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v1

    :cond_8
    :goto_3
    return-object p3
.end method

.method public final processException(Ljava/lang/Exception;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;)Z
    .locals 8
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInfoWrapper"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/samsung/android/sdk/scs/base/ResultException;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const-string p0, "Can\'t casting exception to ResultException"

    invoke-static {p2, p0, v4, v2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback$DefaultImpls;->onFailure$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;IILjava/lang/Object;)V

    return v3

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sdk/scs/base/ResultException;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/base/ResultException;->getResultCode()I

    move-result v5

    const-string v6, "Summary error result code : "

    const-string v7, "SummarizerClient"

    invoke-static {v5, v6, v7}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x76c

    if-eq v5, v6, :cond_5

    const/16 v6, 0x898

    if-eq v5, v6, :cond_4

    const/16 p3, 0x89b

    if-eq v5, p3, :cond_3

    const/16 p1, 0x1400

    if-eq v5, p1, :cond_5

    const/16 p1, 0x145a

    if-eq v5, p1, :cond_2

    const/16 p1, 0x1464

    if-eq v5, p1, :cond_5

    invoke-virtual {p0, v5, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->checkSafetyFilterCode$SBrowser_highendBetaGlobal64Release(ILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, v4, v2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback$DefaultImpls;->onFailure$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;IILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;->onRecitationCheckerFailure()V

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;->getErrorCode()I

    move-result p0

    const/16 p1, 0x12c

    if-ne p0, p1, :cond_6

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;->onRestrictedUserFailure()V

    goto :goto_0

    :cond_4
    invoke-static {p3, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->updateCache(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;Z)V

    const-string p0, "failed to validate samsung account"

    const/16 p1, 0x2711

    invoke-interface {p2, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;->onFailure(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;->onUnsupportedLanguageFailure()V

    :cond_6
    :goto_0
    return v4
.end method

.method public final release()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->summarizer:Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;->release()V

    :cond_0
    return-void
.end method

.method public abstract requestSummarize(Ljava/lang/String;JLjava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/lang/String;Ljava/util/HashMap;)V
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
.end method

.method public abstract summarizeInternal(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;JLjava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/HashMap;I)V
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
.end method
