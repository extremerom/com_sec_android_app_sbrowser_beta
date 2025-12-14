.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$FallbackTitleSummaryKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FallbackTitleSummaryKey"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$FallbackTitleSummaryKey;",
        "",
        "titleKey",
        "",
        "summaryKey",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;Ljava/lang/String;Ljava/lang/String;)V",
        "getTitleKey",
        "()Ljava/lang/String;",
        "getSummaryKey",
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
.field private final summaryKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;

.field private final titleKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "titleKey"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summaryKey"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$FallbackTitleSummaryKey;->this$0:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$FallbackTitleSummaryKey;->titleKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$FallbackTitleSummaryKey;->summaryKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getSummaryKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$FallbackTitleSummaryKey;->summaryKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitleKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/SummarizerClient$FallbackTitleSummaryKey;->titleKey:Ljava/lang/String;

    return-object p0
.end method
