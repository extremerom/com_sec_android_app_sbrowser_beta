.class public final Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 #2\u00060\u0001j\u0002`\u0002:\u0001#B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001b\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0015\u0010\u0012\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0012\u0010\u0015J\r\u0010\u0016\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0017R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0019R\u0014\u0010\u001b\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u001dR\u0017\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e8F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!\u00a8\u0006$"
    }
    d2 = {
        "Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;",
        "Ljava/lang/AutoCloseable;",
        "Lkotlin/AutoCloseable;",
        "Lcom/samsung/android/vexfwk/session/VexFwkUsecase;",
        "usecase",
        "<init>",
        "(Lcom/samsung/android/vexfwk/session/VexFwkUsecase;)V",
        "Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;",
        "configRequest",
        "Ldb/r;",
        "configure",
        "(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;)V",
        "Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Sync;",
        "request",
        "Ldb/m;",
        "Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;",
        "processRequest-IoAF18A",
        "(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Sync;)Ljava/lang/Object;",
        "processRequest",
        "Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Async;",
        "Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkResultCode;",
        "(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Async;)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkResultCode;",
        "flush",
        "()V",
        "close",
        "Lcom/samsung/android/vexfwk/session/VexFwkUsecase;",
        "",
        "nativeHandle",
        "J",
        "Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;",
        "",
        "Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkStream;",
        "getStreams",
        "()Ljava/util/List;",
        "streams",
        "Companion",
        "VexFrameworkSDK_forInternalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private configRequest:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final nativeHandle:J

.field private final usecase:Lcom/samsung/android/vexfwk/session/VexFwkUsecase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/vexfwk/session/VexFwkUsecase;)V
    .locals 2
    .param p1    # Lcom/samsung/android/vexfwk/session/VexFwkUsecase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "usecase"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->usecase:Lcom/samsung/android/vexfwk/session/VexFwkUsecase;

    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkProvider;->getNdkVersion()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;

    invoke-static {p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;->access$createNative(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/vexfwk/session/VexFwkUsecase;->getId()I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;->access$createWithUsecaseNative(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;I)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->nativeHandle:J

    return-void
.end method

.method public static final synthetic access$configureNative(JJ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->configureNative(JJ)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$createNative()J
    .locals 2

    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->createNative()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$createWithUsecaseNative(I)J
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->createWithUsecaseNative(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$deleteNative(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->deleteNative(J)V

    return-void
.end method

.method public static final synthetic access$flushNative(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->flushNative(J)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$processRequestNative(JJ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->processRequestNative(JJ)I

    move-result p0

    return p0
.end method

.method private static final native configureNative(JJ)I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native createNative()J
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native createWithUsecaseNative(I)J
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native deleteNative(J)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native flushNative(J)I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native processRequestNative(JJ)I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->configRequest:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->close()V

    :cond_0
    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;

    iget-wide v1, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->nativeHandle:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;->access$deleteNative(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;J)V

    return-void
.end method

.method public final configure(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;)V
    .locals 3
    .param p1    # Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "configRequest"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->configRequest:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->close()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->usecase:Lcom/samsung/android/vexfwk/session/VexFwkUsecase;

    invoke-virtual {v0}, Lcom/samsung/android/vexfwk/session/VexFwkUsecase;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->setUsecaseId(I)V

    iput-object p1, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->configRequest:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;

    iget-wide v1, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->nativeHandle:J

    invoke-virtual {p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->getNativeHandle()J

    move-result-wide p0

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;->access$configureNative(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;JJ)I

    return-void
.end method

.method public final flush()V
    .locals 3

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;

    iget-wide v1, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->nativeHandle:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;->access$flushNative(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;J)I

    return-void
.end method

.method public final getStreams()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkStream;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->configRequest:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest;->getStreams()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lfb/v;->a:Lfb/v;

    :cond_1
    return-object p0
.end method

.method public final processRequest(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Async;)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkResultCode;
    .locals 3
    .param p1    # Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Async;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;

    iget-wide v1, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->nativeHandle:J

    invoke-virtual {p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest;->getNativeHandle()J

    move-result-wide p0

    invoke-static {v0, v1, v2, p0, p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;->access$processRequestNative(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;JJ)I

    move-result p0

    sget-object p1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkResultCode;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkResultCode$Companion;

    invoke-virtual {p1, p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkResultCode$Companion;->fromInt(I)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkResultCode;

    move-result-object p0

    return-object p0
.end method

.method public final processRequest-IoAF18A(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Sync;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Sync;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;

    iget-wide v1, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->nativeHandle:J

    invoke-virtual {p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest;->getNativeHandle()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;->access$processRequestNative(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession$Companion;JJ)I

    move-result p0

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkResultCode;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkResultCode$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkResultCode$Companion;->fromInt(I)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkResultCode;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkResultCode;->OK:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkResultCode;

    if-eq p0, v0, :cond_0

    new-instance p1, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sending Request Failed("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Sync;->awaitTotalResult()Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->getRequestResult()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->close()V

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "RequestResult Fail Received"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    :cond_1
    return-object p0
.end method
