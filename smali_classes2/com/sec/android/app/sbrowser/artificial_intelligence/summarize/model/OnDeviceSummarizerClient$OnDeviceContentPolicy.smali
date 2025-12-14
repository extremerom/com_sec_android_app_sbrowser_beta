.class public final Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnDeviceContentPolicy"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0001\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;",
        "",
        "maxLengthForSingleSummary",
        "",
        "maxLengthOfSentencesForSingleSummary",
        "maxSentencesForSingleSummary",
        "sentenceNumForFirstSentenceOfSecondSummary",
        "lengthForOneSentenceOfSecondSummary",
        "<init>",
        "(IIIII)V",
        "getMaxLengthForSingleSummary",
        "()I",
        "getMaxLengthOfSentencesForSingleSummary",
        "getMaxSentencesForSingleSummary",
        "getSentenceNumForFirstSentenceOfSecondSummary",
        "getLengthForOneSentenceOfSecondSummary",
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
.field private final lengthForOneSentenceOfSecondSummary:I

.field private final maxLengthForSingleSummary:I

.field private final maxLengthOfSentencesForSingleSummary:I

.field private final maxSentencesForSingleSummary:I

.field private final sentenceNumForFirstSentenceOfSecondSummary:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;->maxLengthForSingleSummary:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;->maxLengthOfSentencesForSingleSummary:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;->maxSentencesForSingleSummary:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;->sentenceNumForFirstSentenceOfSecondSummary:I

    iput p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;->lengthForOneSentenceOfSecondSummary:I

    return-void
.end method


# virtual methods
.method public final getLengthForOneSentenceOfSecondSummary()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;->lengthForOneSentenceOfSecondSummary:I

    return p0
.end method

.method public final getMaxLengthForSingleSummary()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;->maxLengthForSingleSummary:I

    return p0
.end method

.method public final getMaxLengthOfSentencesForSingleSummary()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;->maxLengthOfSentencesForSingleSummary:I

    return p0
.end method

.method public final getMaxSentencesForSingleSummary()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;->maxSentencesForSingleSummary:I

    return p0
.end method

.method public final getSentenceNumForFirstSentenceOfSecondSummary()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/OnDeviceSummarizerClient$OnDeviceContentPolicy;->sentenceNumForFirstSentenceOfSecondSummary:I

    return p0
.end method
