.class public Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient$Companion;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient$SummarizeRequest;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0017\u0018\u0000 \u00152\u00020\u0001:\u0002\u0015\u0016B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J?\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00062\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0003R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;",
        "",
        "<init>",
        "()V",
        "",
        "requestCode",
        "",
        "inputText",
        "languageCode",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;",
        "callback",
        "summaryStyle",
        "",
        "isOnDevice",
        "Ldb/r;",
        "summarize",
        "(JLjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;Z)V",
        "release",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;",
        "summarizerClient",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;",
        "Companion",
        "SummarizeRequest",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private summarizerClient:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic summarize$default(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;JLjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 9

    if-nez p9, :cond_1

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v8, v0

    goto :goto_0

    :cond_0
    move/from16 v8, p7

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;->summarize(JLjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;Z)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: summarize"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final release()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;->summarizerClient:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->release()V

    :cond_0
    return-void
.end method

.method public final summarize(JLjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Ljava/lang/String;Z)V
    .locals 9
    .param p3    # Ljava/lang/String;
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
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    const-string v3, "inputText"

    invoke-static {p3, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "languageCode"

    invoke-static {p4, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "callback"

    move-object v5, p5

    invoke-static {p5, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "summaryStyle"

    move-object v7, p6

    invoke-static {p6, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;->Companion:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient$Companion;

    invoke-virtual {v3, p3, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient$Companion;->optimizeInputString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz p7, :cond_1

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;->summarizerClient:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;

    instance-of v3, v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;->summarizerClient:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;

    instance-of v3, v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/CloudSummarizerClient;-><init>()V

    :goto_0
    iput-object v1, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;->summarizerClient:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v4, p4}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->getSummarizeLevel(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "summarize level : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ScsSummarizerClient"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ScsSummarizerClient;->summarizerClient:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    move-object v1, p4

    move-wide v2, p1

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;->requestSummarize(Ljava/lang/String;JLjava/lang/String;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;Lcom/samsung/android/sdk/scs/ai/language/SummarizeLevel;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
