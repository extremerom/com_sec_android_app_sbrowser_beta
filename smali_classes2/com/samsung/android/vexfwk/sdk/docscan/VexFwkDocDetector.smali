.class public final Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;
.super Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Callback;,
        Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;,
        Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$DetectResult;,
        Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000O\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0008*\u0001\u001d\u0018\u0000 !2\u00020\u0001:\u0003!\"#B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ#\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\"\u0004\u0008\u0000\u0010\u000b2\u0006\u0010\u000c\u001a\u00028\u0000H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u000fJ\u0015\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\r\u0010\u0012\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0012\u0010\u0003J\u001d\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0014\u0010\nJ\u001b\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001b\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0005\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0017R,\u0010\u001b\u001a\u001a\u0012\u0004\u0012\u00020\u0019\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00040\u001a0\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0014\u0010\u001e\u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010\u0011\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;",
        "Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;",
        "<init>",
        "()V",
        "Landroid/media/Image;",
        "image",
        "Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Callback;",
        "callback",
        "Ldb/r;",
        "detectDocumentImpl",
        "(Landroid/media/Image;Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Callback;)V",
        "T",
        "buffer",
        "Ljava/util/concurrent/CompletableFuture;",
        "Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$DetectResult;",
        "(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;",
        "Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;",
        "opType",
        "configure",
        "(Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;)V",
        "detectDocument",
        "(Landroid/media/Image;)Ljava/util/concurrent/CompletableFuture;",
        "Landroid/graphics/Bitmap;",
        "(Landroid/graphics/Bitmap;)Ljava/util/concurrent/CompletableFuture;",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "Ldb/j;",
        "requestMap",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "com/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$sessionCallback$1",
        "sessionCallback",
        "Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$sessionCallback$1;",
        "Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;",
        "Companion",
        "DetectResult",
        "Callback",
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
.field public static final Companion:Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final STREAM_ID_IMAGE:I

.field private static final TAG:Ljava/lang/String;

.field private static final isAvailable$delegate:Ldb/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldb/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final supportedOperationTypes$delegate:Ldb/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldb/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private opType:Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final requestMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ldb/j;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sessionCallback:Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$sessionCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->Companion:Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;

    const-string v0, "VexFwkDocDetector"

    sput-object v0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->TAG:Ljava/lang/String;

    new-instance v0, LB9/b;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, LB9/b;-><init>(I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->isAvailable$delegate:Ldb/f;

    new-instance v0, LB9/b;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, LB9/b;-><init>(I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->supportedOperationTypes$delegate:Ldb/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$sessionCallback$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$sessionCallback$1;-><init>(Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;)V

    iput-object v0, p0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->sessionCallback:Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$sessionCallback$1;

    sget-object v0, Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;->CAMERA_PREVIEW:Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;

    iput-object v0, p0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->opType:Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;

    return-void
.end method

.method public static final synthetic access$getRequestMap$p(Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic access$getSupportedOperationTypes$delegate$cp()Ldb/f;
    .locals 1

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->supportedOperationTypes$delegate:Ldb/f;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$isAvailable$delegate$cp()Ldb/f;
    .locals 1

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->isAvailable$delegate:Ldb/f;

    return-object v0
.end method

.method public static synthetic b()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->supportedOperationTypes_delegate$lambda$14()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->configure$lambda$3$lambda$2(Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private static final configure$lambda$3(Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;)Ldb/r;
    .locals 3

    const-string v0, "$this$configureWith"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/vexfwk/session/VexFwkUsecase;->DOCUMENT_DETECTION:Lcom/samsung/android/vexfwk/session/VexFwkUsecase;

    new-instance v1, Lcom/samsung/android/vexfwk/sdk/docscan/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/vexfwk/sdk/docscan/a;-><init>(Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;I)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;->createSession(Lcom/samsung/android/vexfwk/session/VexFwkUsecase;Lsb/k;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final configure$lambda$3$lambda$2(Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;)Ldb/r;
    .locals 12

    const-string v0, "$this$createSession"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/vexfwk/sdk/docscan/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/vexfwk/sdk/docscan/a;-><init>(Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;I)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;->setConfigMetadata(Lsb/k;)V

    sget-object v4, Lcom/samsung/android/vexfwk/session/VexFwkStreamType;->BUFFER:Lcom/samsung/android/vexfwk/session/VexFwkStreamType;

    sget-object v5, Lcom/samsung/android/vexfwk/session/VexFwkStreamUsage;->IMAGE:Lcom/samsung/android/vexfwk/session/VexFwkStreamUsage;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x78

    const/4 v11, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v11}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;->addInputStream$default(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;ILcom/samsung/android/vexfwk/session/VexFwkStreamType;Lcom/samsung/android/vexfwk/session/VexFwkStreamUsage;IIILandroid/view/Surface;ILjava/lang/Object;)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final configure$lambda$3$lambda$2$lambda$1(Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;
    .locals 1

    const-string v0, "$this$setConfigMetadata"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$SESSION_DOCUMENT_DETECTION_TYPE;->INSTANCE:Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$SESSION_DOCUMENT_DETECTION_TYPE;

    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;->set(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey;Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final createDetectResult(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$DetectResult;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->Companion:Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;

    invoke-static {v0, p0}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;->access$createDetectResult(Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$DetectResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;)Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$DetectResult;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->detectDocumentImpl$lambda$11(Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;)Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$DetectResult;

    move-result-object p0

    return-object p0
.end method

.method private final detectDocumentImpl(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$DetectResult;",
            ">;"
        }
    .end annotation

    new-instance v0, LE9/a;

    const/4 v1, 0x5

    invoke-direct {v0, p1, p0, v1}, LE9/a;-><init>(Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;I)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    const-string p1, "supplyAsync(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final detectDocumentImpl(Landroid/media/Image;Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Callback;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->TAG:Ljava/lang/String;

    const-string v1, "detectDocumentImpl E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Async$Builder;

    invoke-direct {v1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Async$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequestKt;->addInputBuffer(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Builder;ILandroid/media/Image;)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Builder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Async$Builder;

    iget-object v2, p0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->sessionCallback:Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$sessionCallback$1;

    invoke-virtual {v1, v2}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Async$Builder;->setCallback(Lcom/samsung/android/vexfwk/sdk/common/runtime/IVexFwkSessionCallback;)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Async$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Async$Builder;->build()Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Async;

    move-result-object v1

    :try_start_0
    sget-object v2, Lcom/samsung/android/vexfwk/session/VexFwkUsecase;->DOCUMENT_DETECTION:Lcom/samsung/android/vexfwk/session/VexFwkUsecase;

    invoke-virtual {p0, v2}, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;->getSession(Lcom/samsung/android/vexfwk/session/VexFwkUsecase;)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->processRequest(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Async;)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkResultCode;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object p0, p0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->requestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest;->getRequestFrameNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ldb/j;

    invoke-direct {v3, p2, p1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v2, "Failed to process request"

    invoke-direct {p0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Callback;->onDetected(Landroid/media/Image;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const/4 p0, 0x0

    invoke-static {v1, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    const-string p0, "detectDocumentImpl X"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_1
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v1, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static final detectDocumentImpl$lambda$11(Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;)Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$DetectResult;
    .locals 3

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->TAG:Ljava/lang/String;

    const-string v1, "detectDocumentImpl E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Sync$Builder;

    invoke-direct {v1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Sync$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequestKt;->addInputBuffer(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Builder;ILjava/lang/Object;)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Builder;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Sync$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Sync$Builder;->build()Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Sync;

    move-result-object p0

    :try_start_0
    sget-object v1, Lcom/samsung/android/vexfwk/session/VexFwkUsecase;->DOCUMENT_DETECTION:Lcom/samsung/android/vexfwk/session/VexFwkUsecase;

    invoke-virtual {p1, v1}, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;->getSession(Lcom/samsung/android/vexfwk/session/VexFwkUsecase;)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->processRequest-IoAF18A(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Sync;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    invoke-static {p0, v1}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-static {p1}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    check-cast p1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;

    :try_start_1
    sget-object p0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->Companion:Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->getResultMetadata()Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;->access$createDetectResult(Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$DetectResult;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1, v1}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    const-string p1, "detectDocumentImpl X"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const-string p1, "Failed to process request : "

    invoke-static {p1, v0, p0}, Landroidx/recyclerview/widget/P;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :catchall_2
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {p0, p1}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic e(Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->configure$lambda$3(Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->configure$lambda$3$lambda$2$lambda$1(Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static final getSupportedOperationTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->Companion:Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;->getSupportedOperationTypes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->isAvailable_delegate$lambda$12()Z

    move-result v0

    return v0
.end method

.method public static final isAvailable()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->Companion:Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private static final isAvailable_delegate$lambda$12()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;->Companion:Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase$Companion;

    sget-object v1, Lcom/samsung/android/vexfwk/session/VexFwkUsecase;->DOCUMENT_DETECTION:Lcom/samsung/android/vexfwk/session/VexFwkUsecase;

    invoke-virtual {v0, v1}, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase$Companion;->isAvailable(Lcom/samsung/android/vexfwk/session/VexFwkUsecase;)Z

    move-result v0

    return v0
.end method

.method public static synthetic j()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->supportedOperationTypes_delegate$lambda$14$lambda$13()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static final supportedOperationTypes_delegate$lambda$14()Ljava/util/List;
    .locals 5

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;->Companion:Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase$Companion;

    sget-object v1, Lcom/samsung/android/vexfwk/session/VexFwkUsecase;->DOCUMENT_DETECTION:Lcom/samsung/android/vexfwk/session/VexFwkUsecase;

    sget-object v2, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$PROPERTY_DOCUMENT_DETECTION_SUPPORTED_TYPES;->INSTANCE:Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$PROPERTY_DOCUMENT_DETECTION_SUPPORTED_TYPES;

    new-instance v3, Lcom/google/firebase/messaging/m;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/google/firebase/messaging/m;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase$Companion;->getProperties(Lcom/samsung/android/vexfwk/session/VexFwkUsecase;Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey;Le1/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static final supportedOperationTypes_delegate$lambda$14$lambda$13()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->Companion:Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;->CAMERA_PREVIEW:Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;

    invoke-static {v0}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lfb/v;->a:Lfb/v;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final configure()V
    .locals 1

    sget-object v0, Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;->CAMERA_PREVIEW:Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->configure(Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;)V

    return-void
.end method

.method public final configure(Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;)V
    .locals 2
    .param p1    # Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "opType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->Companion:Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;->getSupportedOperationTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->opType:Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;

    new-instance v0, Lcom/samsung/android/vexfwk/sdk/docscan/a;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/vexfwk/sdk/docscan/a;-><init>(Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;I)V

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;->configureWith(Ljava/lang/Object;Lsb/k;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;->getSupportedOperationTypes()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported operation type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", supported types are "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final detectDocument(Landroid/graphics/Bitmap;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$DetectResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "image"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->opType:Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;

    sget-object v1, Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;->STILL_CAPTURE:Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->detectDocumentImpl(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid operation type is set in configure"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final detectDocument(Landroid/media/Image;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p1    # Landroid/media/Image;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/Image;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$DetectResult;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "image"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->opType:Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;

    sget-object v1, Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;->CAMERA_PREVIEW:Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->detectDocumentImpl(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid operation type is set in configure"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final detectDocument(Landroid/media/Image;Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Callback;)V
    .locals 2
    .param p1    # Landroid/media/Image;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "image"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->opType:Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;

    sget-object v1, Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;->CAMERA_PREVIEW:Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;

    if-eq v0, v1, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid operation type is set in configure"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, LG5/A2;->c(Ljava/lang/Throwable;)Ldb/l;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Callback;->onDetected(Landroid/media/Image;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->detectDocumentImpl(Landroid/media/Image;Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Callback;)V

    return-void
.end method
