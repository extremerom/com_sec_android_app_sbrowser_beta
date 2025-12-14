.class public interface abstract Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \r2\u00020\u0001:\u0001\rJ,\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0006H\'J8\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u00062\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\'\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService;",
        "",
        "getNonce",
        "Lretrofit2/Call;",
        "Lcom/samsung/android/app/dvs/library/dvsagent/dto/Nonce;",
        "appVersion",
        "",
        "modelName",
        "osVersion",
        "requestAuthentication",
        "Ljava/lang/Void;",
        "request",
        "Lcom/samsung/android/app/dvs/library/dvsagent/dto/Authentication;",
        "Companion",
        "DvsAgent-INTERNAL-1.0.7_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CONNECT_TIMEOUT:I = 0xa

.field public static final Companion:Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEEP_ALIVE_DURATION:I = 0x2710

.field public static final MAX_THREAD_NUMBER:I = 0x5

.field public static final READ_TIMEOUT:I = 0x8

.field public static final WRITE_TIMEOUT:I = 0x4

.field public static final baseUrl:Ljava/lang/String; = "https://dvs-stg.samsungmobile.com"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService$Companion;->$$INSTANCE:Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService$Companion;

    sput-object v0, Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService;->Companion:Lcom/samsung/android/app/dvs/library/dvsagent/network/DvsService$Companion;

    return-void
.end method


# virtual methods
.method public abstract getNonce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "x-app-version"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "x-app-model"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "x-os-version"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/samsung/android/app/dvs/library/dvsagent/dto/Nonce;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "communicator/api/nonce"
    .end annotation
.end method

.method public abstract requestAuthentication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/dvs/library/dvsagent/dto/Authentication;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "x-app-version"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "x-app-model"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "x-os-version"
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/app/dvs/library/dvsagent/dto/Authentication;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/dvs/library/dvsagent/dto/Authentication;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "communicator/api/devices/auth/anonymous"
    .end annotation
.end method
