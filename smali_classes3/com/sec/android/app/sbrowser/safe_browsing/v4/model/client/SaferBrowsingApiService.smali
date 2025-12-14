.class public interface abstract Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingApiService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingApiService$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J4\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0008\u0008\u0003\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0006H\u00a7@\u00a2\u0006\u0004\u0008\n\u0010\u000bJ \u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00082\u0008\u0008\u0001\u0010\r\u001a\u00020\u000cH\u00a7@\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J \u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00082\u0008\u0008\u0001\u0010\r\u001a\u00020\u0011H\u00a7@\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingApiService;",
        "",
        "",
        "platformType",
        "",
        "isKidsMode",
        "",
        "protectLevel",
        "Lretrofit2/Response;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListsResponse;",
        "getThreatLists",
        "(Ljava/lang/String;ZILib/c;)Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListUpdatesRequestBody;",
        "body",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListUpdatesResponse;",
        "fetchThreatListUpdates",
        "(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListUpdatesRequestBody;Lib/c;)Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindResponse;",
        "findFullHashes",
        "(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;Lib/c;)Ljava/lang/Object;",
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
.method public abstract fetchThreatListUpdates(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListUpdatesRequestBody;Lib/c;)Ljava/lang/Object;
    .param p1    # Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListUpdatesRequestBody;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListUpdatesRequestBody;",
            "Lib/c<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListUpdatesResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v4/threatListUpdates:fetch/"
    .end annotation
.end method

.method public abstract findFullHashes(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;Lib/c;)Ljava/lang/Object;
    .param p1    # Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindRequestBody;",
            "Lib/c<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/v4/fullHashes:find/"
    .end annotation
.end method

.method public abstract getThreatLists(Ljava/lang/String;ZILib/c;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "platformType"
        .end annotation
    .end param
    .param p2    # Z
        .annotation runtime Lretrofit2/http/Query;
            value = "kidsMode"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "protectLevel"
        .end annotation
    .end param
    .param p4    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Lib/c<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListsResponse;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/v4/threatLists/"
    .end annotation
.end method
