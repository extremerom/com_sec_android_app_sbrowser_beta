.class public final Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0005\u0018\u0000 (2\u00060\u0001j\u0002`\u0002:\u0001(B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tR+\u0010\u0004\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00038B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0006R\u001a\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0017\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u001b\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u001f\u001a\u00020\u001c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010#\u001a\u00020 8F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u0017\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00110$8F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&\u00a8\u0006)"
    }
    d2 = {
        "Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;",
        "Ljava/lang/AutoCloseable;",
        "Lkotlin/AutoCloseable;",
        "",
        "nativeHandle",
        "<init>",
        "(J)V",
        "Ldb/r;",
        "close",
        "()V",
        "<set-?>",
        "nativeHandle$delegate",
        "Lwb/b;",
        "getNativeHandle",
        "()J",
        "setNativeHandle",
        "Ljava/util/LinkedList;",
        "Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionPartialResult;",
        "partialResultsCached",
        "Ljava/util/LinkedList;",
        "Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest;",
        "getRequest",
        "()Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest;",
        "request",
        "",
        "getRequestNumber",
        "()I",
        "requestNumber",
        "Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;",
        "getResultMetadata",
        "()Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;",
        "resultMetadata",
        "",
        "getRequestResult",
        "()Z",
        "requestResult",
        "",
        "getPartialResults",
        "()Ljava/util/List;",
        "partialResults",
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
.field static final synthetic $$delegatedProperties:[LAb/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "LAb/u;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final nativeHandle$delegate:Lwb/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final partialResultsCached:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionPartialResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ltb/n;

    const-class v1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;

    const-string v2, "nativeHandle"

    const-string v3, "getNativeHandle()J"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/n;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Ltb/x;->a:Ltb/y;

    invoke-virtual {v1, v0}, Ltb/y;->d(Ltb/n;)LAb/i;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [LAb/u;

    aput-object v0, v1, v4

    sput-object v1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->$$delegatedProperties:[LAb/u;

    new-instance v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LI3/d;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LI3/d;-><init>(IB)V

    iput-object v0, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->nativeHandle$delegate:Lwb/b;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->partialResultsCached:Ljava/util/LinkedList;

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;->access$cloneNative(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;J)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->setNativeHandle(J)V

    return-void
.end method

.method public static final synthetic access$cloneNative(J)J
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->cloneNative(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$deleteNative(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->deleteNative(J)V

    return-void
.end method

.method public static final synthetic access$getPartialResultsNative(J)[Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionPartialResult;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->getPartialResultsNative(J)[Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionPartialResult;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRequestNative(J)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->getRequestNative(J)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRequestResultNative(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->getRequestResultNative(J)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getResultMetadataNative(J)Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->getResultMetadataNative(J)Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    move-result-object p0

    return-object p0
.end method

.method private static final native cloneNative(J)J
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native deleteNative(J)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private final getNativeHandle()J
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->nativeHandle$delegate:Lwb/b;

    sget-object v1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->$$delegatedProperties:[LAb/u;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lwb/a;->d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static final native getPartialResultsNative(J)[Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionPartialResult;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native getRequestNative(J)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native getRequestResultNative(J)Z
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native getResultMetadataNative(J)Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private final setNativeHandle(J)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->nativeHandle$delegate:Lwb/b;

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->$$delegatedProperties:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Lwb/b;->c(Ljava/lang/Object;LAb/u;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->partialResultsCached:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionPartialResult;

    invoke-virtual {v1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionPartialResult;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->partialResultsCached:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;

    invoke-direct {p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->getNativeHandle()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;->access$deleteNative(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;J)V

    return-void
.end method

.method public final getPartialResults()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionPartialResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->partialResultsCached:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;

    invoke-direct {p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->getNativeHandle()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;->access$getPartialResultsNative(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;J)[Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionPartialResult;

    move-result-object v0

    invoke-static {v0}, Lfb/l;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->partialResultsCached:Ljava/util/LinkedList;

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->partialResultsCached:Ljava/util/LinkedList;

    :goto_0
    return-object v0
.end method

.method public final getRequest()Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;

    invoke-direct {p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->getNativeHandle()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;->access$getRequestNative(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;J)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest;

    move-result-object p0

    return-object p0
.end method

.method public final getRequestNumber()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->getRequest()Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest;->getRequestFrameNumber()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-static {p0, v1}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p0, v0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getRequestResult()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;

    invoke-direct {p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->getNativeHandle()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;->access$getRequestResultNative(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;J)Z

    move-result p0

    return p0
.end method

.method public final getResultMetadata()Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->Companion:Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;

    invoke-direct {p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->getNativeHandle()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;->access$getResultMetadataNative(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult$Companion;J)Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    move-result-object p0

    return-object p0
.end method
