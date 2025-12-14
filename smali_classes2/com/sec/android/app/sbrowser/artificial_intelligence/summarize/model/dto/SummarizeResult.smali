.class public abstract Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$AuthTokenExpiredFailure;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$Failure;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$InappropriateContentFailure;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$RecitationCheckerFailure;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$RestrictedUserFailure;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$Success;,
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$UnsupportedLanguageFailure;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001:\u0007\u000e\u000f\u0010\u0011\u0012\u0013\u0014B\u001b\u0008\u0004\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u0082\u0001\u0007\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;",
        "",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;",
        "resultDto",
        "",
        "message",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;Ljava/lang/String;)V",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;",
        "getResultDto",
        "()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;",
        "Ljava/lang/String;",
        "getMessage",
        "()Ljava/lang/String;",
        "Success",
        "Failure",
        "InappropriateContentFailure",
        "RecitationCheckerFailure",
        "UnsupportedLanguageFailure",
        "AuthTokenExpiredFailure",
        "RestrictedUserFailure",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$AuthTokenExpiredFailure;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$Failure;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$InappropriateContentFailure;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$RecitationCheckerFailure;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$RestrictedUserFailure;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$Success;",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult$UnsupportedLanguageFailure;",
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
.field private final message:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final resultDto:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;->resultDto:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;->message:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;Ljava/lang/String;Ltb/f;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;-><init>(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getResultDto()Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SummarizeResult;->resultDto:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;

    return-object p0
.end method
