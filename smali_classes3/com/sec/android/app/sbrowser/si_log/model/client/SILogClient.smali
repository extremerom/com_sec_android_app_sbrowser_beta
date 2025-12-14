.class public final Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$Companion;,
        Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 \u00112\u00020\u0001:\u0002\u0011\u0012B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JT\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0008\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u00062\u0014\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0086@\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient;",
        "",
        "<init>",
        "()V",
        "",
        "serviceId",
        "",
        "iuid",
        "eventId",
        "value",
        "",
        "extraParams",
        "Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;",
        "internalResultListener",
        "Ldb/r;",
        "send",
        "(ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;Lib/c;)Ljava/lang/Object;",
        "Companion",
        "InternalResultListener",
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
.field public static final Companion:Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient;->Companion:Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final send(ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;Lib/c;)Ljava/lang/Object;
    .locals 10
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, LNc/N;->a:LWc/f;

    sget-object v0, LUc/q;->a:LNc/w0;

    new-instance v9, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;

    const/4 v8, 0x0

    move-object v1, v9

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$send$2;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$InternalResultListener;Lib/c;)V

    move-object/from16 v1, p7

    invoke-static {v0, v9, v1}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0
.end method
