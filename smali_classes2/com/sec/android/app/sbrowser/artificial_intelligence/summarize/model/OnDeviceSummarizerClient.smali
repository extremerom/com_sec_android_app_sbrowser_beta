.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;
.super Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$Companion;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$PendingSummarizeRequest;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$SummarizeRequest;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u0000 42\u00020\u0001:\u000545678B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\'\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJK\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\"\u0010\u0018\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0016j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`\u0017H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJc\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u00042\"\u0010\u0018\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0016j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`\u0017H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001eJk\u0010%\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020!2\"\u0010\u0018\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0016j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`\u00172\u0006\u0010$\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008%\u0010&R\u0016\u0010\'\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R$\u0010+\u001a\u0012\u0012\u0004\u0012\u00020\r0)j\u0008\u0012\u0004\u0012\u00020\r`*8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0016\u0010-\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0018\u00100\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R0\u00102\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b0\u0016j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b`\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103\u00a8\u00069"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;",
        "<init>",
        "()V",
        "",
        "languageCode",
        "getLanguageForOnDevicePolicy",
        "(Ljava/lang/String;)Ljava/lang/String;",
        "curSentences",
        "",
        "isFirstSentence",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;",
        "languagePolicy",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$SummarizeRequest;",
        "getSummarizeRequest",
        "(Ljava/lang/String;ZLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$SummarizeRequest;",
        "",
        "requestCode",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;",
        "callback",
        "Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;",
        "summarizeLevel",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "extraPrompt",
        "Ldb/r;",
        "requestSummarize",
        "(JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/util/HashMap;)V",
        "text",
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
        "isRunning",
        "Z",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "inputList",
        "Ljava/util/ArrayList;",
        "latestRequestCode",
        "J",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$PendingSummarizeRequest;",
        "pendingSummarizeRequest",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$PendingSummarizeRequest;",
        "onDevicePolicyMap",
        "Ljava/util/HashMap;",
        "Companion",
        "PendingSummarizeRequest",
        "SummarizeRequest",
        "OnDeviceLanguagePolicy",
        "OnDeviceContentPolicy",
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
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final inputList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$SummarizeRequest;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isRunning:Z

.field private latestRequestCode:J

.field private final onDevicePolicyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private pendingSummarizeRequest:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$PendingSummarizeRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->inputList:Ljava/util/ArrayList;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->latestRequestCode:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->onDevicePolicyMap:Ljava/util/HashMap;

    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;

    new-instance v7, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;

    const/4 v5, 0x2

    const/16 v6, 0x384

    const/16 v2, 0x708

    const/16 v3, 0x3e8

    const/4 v4, 0x3

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;-><init>(IIIII)V

    const-string v1, "ko"

    const/16 v2, 0xe10

    invoke-direct {p0, v1, v2, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;-><init>(Ljava/lang/String;ILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;)V

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;

    new-instance v7, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;

    const/4 v5, 0x3

    const/16 v6, 0x5dc

    const/16 v2, 0xfa0

    const/16 v3, 0x7d0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;-><init>(IIIII)V

    const-string v1, "en"

    const/16 v2, 0x1f40

    invoke-direct {p0, v1, v2, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;-><init>(Ljava/lang/String;ILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;)V

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;

    new-instance v7, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;

    const/4 v5, 0x2

    const/16 v6, 0x1f4

    const/16 v2, 0x3e8

    const/16 v3, 0x1f4

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;-><init>(IIIII)V

    const-string v1, "zh"

    const/16 v2, 0x7d0

    invoke-direct {p0, v1, v2, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;-><init>(Ljava/lang/String;ILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;)V

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;

    const/4 v7, 0x3

    const/16 v8, 0x3e8

    const/16 v4, 0xbb8

    const/16 v5, 0x7d0

    const/4 v6, 0x3

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;-><init>(IIIII)V

    const-string v3, "de"

    const/16 v4, 0x1770

    invoke-direct {p0, v3, v4, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;-><init>(Ljava/lang/String;ILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;)V

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;

    const/4 v9, 0x3

    const/16 v10, 0x3e8

    const/16 v6, 0xbb8

    const/16 v7, 0x7d0

    const/4 v8, 0x3

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;-><init>(IIIII)V

    const-string v3, "es"

    invoke-direct {p0, v3, v4, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;-><init>(Ljava/lang/String;ILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;)V

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;

    const/4 v9, 0x2

    const/16 v10, 0x1f4

    const/16 v6, 0x3e8

    const/16 v7, 0x1388

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;-><init>(IIIII)V

    const-string v3, "jp"

    invoke-direct {p0, v3, v2, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;-><init>(Ljava/lang/String;ILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;)V

    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;

    const/4 v9, 0x3

    const/16 v10, 0x3e8

    const/16 v6, 0xbb8

    const/16 v7, 0x7d0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;-><init>(IIIII)V

    const-string v2, "pt"

    invoke-direct {p0, v2, v4, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;-><init>(Ljava/lang/String;ILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;)V

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;-><init>(IIIII)V

    const-string v2, "it"

    invoke-direct {p0, v2, v4, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;-><init>(Ljava/lang/String;ILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;)V

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;-><init>(IIIII)V

    const-string v2, "fr"

    invoke-direct {p0, v2, v4, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;-><init>(Ljava/lang/String;ILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;)V

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;ILcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/HashMap;Lcom/samsung/android/sdk/scs/base/tasks/Task;)Ldb/r;
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->summarizeInternal$lambda$6(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;ILcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/HashMap;Lcom/samsung/android/sdk/scs/base/tasks/Task;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInputList$p(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->inputList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$requestSummarize(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->requestSummarize(JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/b;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->summarizeInternal$lambda$7(Lsb/k;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method private final getLanguageForOnDevicePolicy(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p0, "zh"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    const-string p0, "pt"

    invoke-static {p1, p0, v0}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    const-string p0, "fr"

    invoke-static {p1, p0, v0}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getSummarizeRequest(Ljava/lang/String;ZLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$SummarizeRequest;
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$SummarizeRequest;

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;->getContentPolicy()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;->getSentenceNumForFirstSentenceOfSecondSummary()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;->getContentPolicy()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;->getLengthForOneSentenceOfSecondSummary()I

    move-result p3

    div-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x1

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$SummarizeRequest;-><init>(Ljava/lang/String;I)V

    return-object p0
.end method

.method private final requestSummarize(JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;",
            "Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;->ONDEVICE:Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;

    new-instance v8, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$requestSummarize$2;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$requestSummarize$2;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/util/HashMap;)V

    invoke-static {v0, v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils;->createAppInfo(Lcom/samsung/android/sdk/scs/ai/language/AppInfo$RequestType;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoUtils$AppInfoCreateCallback;)V

    return-void
.end method

.method private static final summarizeInternal$lambda$6(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;ILcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/HashMap;Lcom/samsung/android/sdk/scs/base/tasks/Task;)Ldb/r;
    .locals 21

    move-object/from16 v11, p0

    move-wide/from16 v12, p1

    move-object/from16 v14, p3

    move/from16 v15, p5

    const-string v10, "Generate response with fallback logic"

    const-string v9, "getContent(...)"

    const-string v0, "it"

    move-object/from16 v1, p9

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->getSummarizer()Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;->release()V

    const/4 v8, 0x0

    iput-boolean v8, v11, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->isRunning:Z

    iget-wide v2, v11, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->latestRequestCode:J

    cmp-long v0, v12, v2

    sget-object v16, Ldb/r;->a:Ldb/r;

    const-string v7, "OnDeviceSummarizerClient"

    if-eqz v0, :cond_1

    const-string v0, "summary result ignored, start to summarize pending request"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v11, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->pendingSummarizeRequest:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$PendingSummarizeRequest;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$PendingSummarizeRequest;->run()V

    :cond_0
    return-object v16

    :cond_1
    const-string v0, "summarize#onCompleteListener"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p9 .. p9}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p9 .. p9}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/samsung/android/sdk/scs/ai/language/Result;

    const/4 v6, 0x0

    const/4 v5, 0x2

    if-eqz v17, :cond_5

    :try_start_0
    const-string v0, "scs ondevice"

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/sdk/scs/ai/language/Result;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v12, v13, v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->convertResultObject(JLjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;->getSummary()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_8

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v11, v12, v13, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->postprocessing(JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    move-result-object v0

    iget-object v1, v11, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->inputList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v14, v0, v15, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;->onSuccess(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;II)V

    iget-object v0, v11, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->inputList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v15, v0, :cond_6

    if-nez v15, :cond_6

    iget-object v0, v11, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->inputList:Ljava/util/ArrayList;

    add-int/lit8 v3, v15, 0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$SummarizeRequest;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$SummarizeRequest;->getText()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move/from16 v18, v3

    move-wide/from16 v3, p1

    move-object v5, v0

    move-object/from16 v6, p3

    move-object v14, v7

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object v15, v9

    move-object/from16 v9, p8

    move-object/from16 v19, v10

    move/from16 v10, v18

    :try_start_2
    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->summarizeInternal(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;JLjava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/HashMap;I)V

    goto/16 :goto_5

    :catch_0
    move-exception v0

    :goto_0
    move-object/from16 v3, p3

    move/from16 v4, p5

    move-object v6, v14

    move-object v5, v15

    move-object/from16 v1, v19

    :goto_1
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v3, p3

    :goto_2
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    goto/16 :goto_4

    :catch_2
    move-exception v0

    move-object v14, v7

    move-object v15, v9

    move-object/from16 v19, v10

    goto :goto_0

    :cond_2
    move-object v14, v7

    move-object v15, v9

    move-object/from16 v19, v10

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/sdk/scs/ai/language/Result;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v12, v13, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->fallbackParseJson(JLjava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    move-result-object v0
    :try_end_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_3

    move-object/from16 v1, v19

    :try_start_3
    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v12, v13, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->postprocessing(JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    move-result-object v0

    iget-object v2, v11, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->inputList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_3
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    move-object/from16 v3, p3

    move/from16 v4, p5

    move-object v6, v14

    move-object v5, v15

    :try_start_4
    invoke-interface {v3, v0, v4, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;->onSuccess(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;II)V

    goto/16 :goto_5

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    move-object/from16 v3, p3

    move/from16 v4, p5

    move-object v6, v14

    move-object v5, v15

    goto :goto_1

    :cond_3
    move-object/from16 v3, p3

    move/from16 v4, p5

    move-object v6, v14

    move-object v5, v15

    move-object/from16 v1, v19

    const-string v0, "summarize failed (completed, but fail)"
    :try_end_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    :try_start_5
    invoke-static {v3, v0, v2, v8, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback$DefaultImpls;->onFailure$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;IILjava/lang/Object;)V
    :try_end_5
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_5

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v0

    move v2, v8

    move-object v1, v10

    move-object v3, v14

    move v4, v15

    move v8, v5

    move-object v5, v9

    move-object/from16 v20, v7

    move-object v7, v6

    move-object/from16 v6, v20

    goto :goto_3

    :catch_9
    move-exception v0

    move-object v7, v6

    move v2, v8

    move-object v3, v14

    move v8, v5

    goto :goto_4

    :goto_3
    invoke-static {v0}, LG5/y2;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/sdk/scs/ai/language/Result;->getContent()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v12, v13, v9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->fallbackParseJson(JLjava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v12, v13, v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->postprocessing(JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    move-result-object v0

    iget-object v1, v11, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->inputList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v3, v0, v4, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;->onSuccess(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;II)V

    goto :goto_5

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2, v8, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback$DefaultImpls;->onFailure$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;IILjava/lang/Object;)V

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2, v8, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback$DefaultImpls;->onFailure$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;IILjava/lang/Object;)V

    goto :goto_5

    :cond_5
    move-object v7, v6

    move v2, v8

    move-object v3, v14

    move v8, v5

    const-string v0, "successful but result is null"

    invoke-static {v3, v0, v2, v8, v7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback$DefaultImpls;->onFailure$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;IILjava/lang/Object;)V

    :cond_6
    :goto_5
    return-object v16

    :cond_7
    move-object v3, v14

    invoke-virtual/range {p9 .. p9}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-virtual {v11, v0, v3, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->processException(Ljava/lang/Exception;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;)Z

    return-object v16
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

    const-string p7, "extraPrompt"

    invoke-static {p8, p7}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->latestRequestCode:J

    iget-object p7, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->inputList:Ljava/util/ArrayList;

    invoke-virtual {p7}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->getLanguageForOnDevicePolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p7, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->onDevicePolicyMap:Ljava/util/HashMap;

    invoke-virtual {p7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;

    new-instance p7, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;

    const/16 v2, 0x7d0

    const/4 v3, 0x3

    const/16 v1, 0xfa0

    const/4 v4, 0x3

    const/16 v5, 0x5dc

    move-object v0, p7

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;-><init>(IIIII)V

    const-string v0, "en"

    const/16 v1, 0x1f40

    invoke-direct {p1, v0, v1, p7}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;-><init>(Ljava/lang/String;ILcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;)V

    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p7

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;->getMaxLength()I

    move-result v0

    const/4 v1, 0x0

    if-le p7, v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;->getMaxLength()I

    move-result p7

    invoke-virtual {p4, v1, p7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    const-string p7, "substring(...)"

    invoke-static {p4, p7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p7

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;->getContentPolicy()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;->getMaxLengthForSingleSummary()I

    move-result v0

    const/4 v2, 0x1

    if-ge p7, v0, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p7

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;->getContentPolicy()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;->getMaxLengthOfSentencesForSingleSummary()I

    move-result v0

    if-ge p7, v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;->getContentPolicy()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;->getMaxSentencesForSingleSummary()I

    move-result p1

    sub-int/2addr p1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;->getContentPolicy()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;->getMaxSentencesForSingleSummary()I

    move-result p1

    :goto_0
    iget-object p7, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->inputList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$SummarizeRequest;

    invoke-direct {v0, p4, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$SummarizeRequest;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_3
    const-string p7, "(?<=\\. )|(?<=\\.\\n)|(?<=\\?)|(?<=\u3002)|(?<=\u3002)"

    invoke-static {p7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p7

    const-string v0, "compile(...)"

    invoke-static {p7, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LKc/k;->G(I)V

    invoke-virtual {p7, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p7

    invoke-virtual {p7}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v1

    :cond_5
    invoke-virtual {p7}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {p4, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p7}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-virtual {p7}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p7

    invoke-virtual {p4, v3, p7}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p4, v0

    :goto_1
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const-string p7, ""

    move-object v0, p7

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_8

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;->getContentPolicy()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;->getMaxLengthForSingleSummary()I

    move-result v5

    if-lt v6, v5, :cond_7

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->inputList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->getSummarizeRequest(Ljava/lang/String;ZLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$SummarizeRequest;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->inputList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v4, :cond_6

    goto :goto_3

    :cond_6
    move-object v0, p7

    move v2, v1

    :cond_7
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    :goto_3
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->inputList:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p4, v4, :cond_9

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->inputList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->getSummarizeRequest(Ljava/lang/String;ZLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceLanguagePolicy;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$SummarizeRequest;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->isRunning:Z

    if-eqz p1, :cond_a

    const-string p1, "OnDeviceSummarizerClient"

    const-string p4, "a pending summarizing request added"

    invoke-static {p1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$requestSummarize$1;

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p5

    move-object v5, p6

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$requestSummarize$1;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/util/HashMap;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->pendingSummarizeRequest:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$PendingSummarizeRequest;

    return-void

    :cond_a
    move-object v0, p0

    move-wide v1, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->requestSummarize(JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/util/HashMap;)V

    return-void
.end method

.method public summarizeInternal(Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;JLjava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/HashMap;I)V
    .locals 16
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

    move-object/from16 v1, p0

    move-object/from16 v4, p5

    move-object/from16 v11, p8

    move/from16 v12, p9

    const-string v0, "appInfoWrapper"

    move-object/from16 v13, p1

    invoke-static {v13, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    move-object/from16 v2, p4

    invoke-static {v2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {v4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summarizeLevel"

    move-object/from16 v14, p6

    invoke-static {v14, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "article"

    move-object/from16 v15, p7

    invoke-static {v15, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraPrompt"

    invoke-static {v11, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->inputList:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$SummarizeRequest;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$SummarizeRequest;->getNumSentences()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "count_of_summary_lines"

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->inputList:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$SummarizeRequest;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$SummarizeRequest;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_1

    const-string v0, "OnDeviceSummarizerClient"

    const-string v2, "ignore request - too short input"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v12, :cond_0

    const-string v0, "too short input"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v4, v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback$DefaultImpls;->onFailure$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "scs ondevice"

    const-string v2, ""

    move-wide/from16 v9, p2

    invoke-virtual {v1, v9, v10, v0, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->convertResultObject(JLjava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    move-result-object v0

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->inputList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v4, v0, v12, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;->onSuccess(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;II)V

    :goto_0
    return-void

    :cond_1
    move-wide/from16 v9, p2

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->isRunning:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->getSummarizer()Lcom/samsung/android/sdk/scs/ai/language/Summarizer;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;->getAppInfo()Lcom/samsung/android/sdk/scs/ai/language/AppInfo;

    move-result-object v6

    iget-object v0, v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;->inputList:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$SummarizeRequest;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$SummarizeRequest;->getText()Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;->ARTICLE:Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;

    move-object/from16 v8, p6

    move-object v9, v0

    move-object/from16 v10, p8

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/sdk/scs/ai/language/Summarizer;->summarize(Lcom/samsung/android/sdk/scs/ai/language/AppInfo;Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/Map;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    move-result-object v10

    new-instance v9, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/b;

    move-object v0, v9

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move/from16 v6, p9

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object v12, v9

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/b;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;JLcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/AppInfoWrapper;ILcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Lcom/samsung/android/sdk/scs/ai/language/SummarizeSubTask;Ljava/util/HashMap;)V

    new-instance v0, Lcom/google/firebase/messaging/z;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v12}, Lcom/google/firebase/messaging/z;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v10, v0}, Lcom/samsung/android/sdk/scs/base/tasks/Task;->addOnCompleteListener(Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;)Lcom/samsung/android/sdk/scs/base/tasks/Task;

    return-void
.end method
