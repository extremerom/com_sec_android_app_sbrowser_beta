.class public interface abstract Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008f\u0018\u00002\u00020\u0001J+\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0008\u0010\tJ#\u0010\r\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH&\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0016\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0017\u0010\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/ResultCallback;",
        "",
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;",
        "result",
        "",
        "index",
        "size",
        "Ldb/r;",
        "onSuccess",
        "(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;II)V",
        "",
        "message",
        "type",
        "onFailure",
        "(Ljava/lang/String;I)V",
        "",
        "isSelfSafety",
        "onInappropriateContentFailure",
        "(Z)V",
        "onRecitationCheckerFailure",
        "()V",
        "onUnsupportedLanguageFailure",
        "onAuthTokenExpiredFailure",
        "onRestrictedUserFailure",
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


# virtual methods
.method public abstract onAuthTokenExpiredFailure()V
.end method

.method public abstract onFailure(Ljava/lang/String;I)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onInappropriateContentFailure(Z)V
.end method

.method public abstract onRecitationCheckerFailure()V
.end method

.method public abstract onRestrictedUserFailure()V
.end method

.method public abstract onSuccess(Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;II)V
    .param p1    # Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/model/dto/SCSSummarizeResultDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onUnsupportedLanguageFailure()V
.end method
