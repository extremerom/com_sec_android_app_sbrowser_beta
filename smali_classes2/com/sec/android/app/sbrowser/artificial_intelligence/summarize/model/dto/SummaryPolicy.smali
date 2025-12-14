.class public abstract Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\u0008\'\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016R\u0012\u0010\u0004\u001a\u00020\u0005X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0012\u0010\u0008\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0012\u0010\u000c\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000b\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicy;",
        "",
        "<init>",
        "()V",
        "maxLength",
        "",
        "getMaxLength",
        "()I",
        "shortNotePolicy",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;",
        "getShortNotePolicy",
        "()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;",
        "longNotePolicy",
        "getLongNotePolicy",
        "isValid",
        "",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLongNotePolicy()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getMaxLength()I
.end method

.method public abstract getShortNotePolicy()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public isValid()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicy;->getMaxLength()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicy;->getShortNotePolicy()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummaryPolicy;->getLongNotePolicy()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SentencePolicy;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
