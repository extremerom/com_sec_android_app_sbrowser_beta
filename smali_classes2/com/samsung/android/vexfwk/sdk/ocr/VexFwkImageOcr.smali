.class public final Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;
.super Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Companion;,
        Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Result;,
        Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00162\u00020\u0001:\u0002\u0016\u0017B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0000J!\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\"\u0004\u0008\u0000\u0010\u00082\u0006\u0010\t\u001a\u0002H\u0008H\u0002\u00a2\u0006\u0002\u0010\nJ!\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0006\"\u0004\u0008\u0000\u0010\u00082\u0006\u0010\t\u001a\u0002H\u0008H\u0002\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0011\u001a\u00020\u0012J\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0013\u001a\u00020\u0014J\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00062\u0006\u0010\u0011\u001a\u00020\u0012J\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00062\u0006\u0010\u0013\u001a\u00020\u0014\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;",
        "Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;",
        "<init>",
        "()V",
        "configure",
        "hasTextImpl",
        "Ljava/util/concurrent/CompletableFuture;",
        "",
        "T",
        "buffer",
        "(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;",
        "recognizeImpl",
        "Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Result;",
        "processResult",
        "totalResult",
        "Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;",
        "hasText",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "image",
        "Landroid/media/Image;",
        "recognize",
        "Companion",
        "Result",
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
.field public static final Companion:Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final STREAM_ID_INPUT_IMAGE:I

.field private static final TAG:Ljava/lang/String;

.field private static final capabilities$delegate:Ldb/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldb/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final isAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->Companion:Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Companion;

    const-string v0, "VexFwkImageOcr"

    sput-object v0, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;->Companion:Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase$Companion;

    sget-object v1, Lcom/samsung/android/vexfwk/session/VexFwkUsecase;->IMAGE_OCR:Lcom/samsung/android/vexfwk/session/VexFwkUsecase;

    invoke-virtual {v0, v1}, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase$Companion;->isAvailable(Lcom/samsung/android/vexfwk/session/VexFwkUsecase;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->isAvailable:Z

    new-instance v0, LB9/b;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LB9/b;-><init>(I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->capabilities$delegate:Ldb/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCapabilities$delegate$cp()Ldb/f;
    .locals 1

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->capabilities$delegate:Ldb/f;

    return-object v0
.end method

.method public static final synthetic access$isAvailable$cp()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->isAvailable:Z

    return v0
.end method

.method public static synthetic b(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->recognizeImpl$lambda$14$lambda$9(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilities;
    .locals 1

    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->capabilities_delegate$lambda$18$lambda$16$lambda$15()Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilities;

    move-result-object v0

    return-object v0
.end method

.method private static final capabilities_delegate$lambda$18()Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilities;
    .locals 8

    sget-object v0, Lcom/samsung/android/vexfwk/session/VexFwkUsecase;->IMAGE_OCR:Lcom/samsung/android/vexfwk/session/VexFwkUsecase;

    invoke-static {v0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkProvider;->fetchProperties(Lcom/samsung/android/vexfwk/session/VexFwkUsecase;)Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$PROPERTY_IMAGE_OCR_CAPABILITIES;->INSTANCE:Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$PROPERTY_IMAGE_OCR_CAPABILITIES;

    new-instance v2, LA9/b;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, LA9/b;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;->getOrElse(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey;Le1/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilities;

    sget-object v7, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->TAG:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x3f

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lfb/n;->I(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "capabilities : "

    invoke-static {v2, v1, v7}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final capabilities_delegate$lambda$18$lambda$16$lambda$15()Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilities;
    .locals 2

    new-instance v0, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilities;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilities;-><init>([I)V

    return-object v0
.end method

.method private static final configure$lambda$1(Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;)Ldb/r;
    .locals 3

    const-string v0, "$this$configureWith"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/vexfwk/session/VexFwkUsecase;->IMAGE_OCR:Lcom/samsung/android/vexfwk/session/VexFwkUsecase;

    new-instance v1, LK9/f;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LK9/f;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;->createSession(Lcom/samsung/android/vexfwk/session/VexFwkUsecase;Lsb/k;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final configure$lambda$1$lambda$0(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;)Ldb/r;
    .locals 11

    const-string v0, "$this$createSession"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/vexfwk/session/VexFwkStreamType;->BUFFER:Lcom/samsung/android/vexfwk/session/VexFwkStreamType;

    sget-object v4, Lcom/samsung/android/vexfwk/session/VexFwkStreamUsage;->IMAGE:Lcom/samsung/android/vexfwk/session/VexFwkStreamUsage;

    const/16 v9, 0x78

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;->addInputStream$default(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;ILcom/samsung/android/vexfwk/session/VexFwkStreamType;Lcom/samsung/android/vexfwk/session/VexFwkStreamUsage;IIILandroid/view/Surface;ILjava/lang/Object;)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->hasTextImpl$lambda$8(Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->hasTextImpl$lambda$8$lambda$2(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;)Ldb/r;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->configure$lambda$1(Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static final getCapabilities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->Companion:Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Companion;->getCapabilities()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic h(Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;)Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Result;
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->recognizeImpl$lambda$14(Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;)Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Result;

    move-result-object p0

    return-object p0
.end method

.method private final hasTextImpl(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, LL9/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, LL9/a;-><init>(Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;I)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    const-string p1, "supplyAsync(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final hasTextImpl$lambda$8(Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;)Ljava/lang/Boolean;
    .locals 4

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->TAG:Ljava/lang/String;

    const-string v1, "hasTextImpl E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Sync$Builder;

    invoke-direct {v1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Sync$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequestKt;->addInputBuffer(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Builder;ILjava/lang/Object;)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Builder;

    move-result-object p0

    new-instance v1, LK9/f;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, LK9/f;-><init>(I)V

    invoke-static {p0, v1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequestKt;->setSettingMetadata(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Builder;Lsb/k;)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Builder;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Sync$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Sync$Builder;->build()Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Sync;

    move-result-object p0

    :try_start_0
    sget-object v1, Lcom/samsung/android/vexfwk/session/VexFwkUsecase;->IMAGE_OCR:Lcom/samsung/android/vexfwk/session/VexFwkUsecase;

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

    if-nez p0, :cond_1

    check-cast p1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;

    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->getResultMetadata()Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    move-result-object p0

    sget-object v3, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$RESULT_CODE;->INSTANCE:Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$RESULT_CODE;

    invoke-virtual {p0, v3}, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;->get(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast p0, Lcom/samsung/android/vexfwk/param/VexFwkNodeResultCode;

    sget-object v3, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v3, p0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->getResultMetadata()Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    move-result-object p0

    sget-object v2, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$OCR_HAS_TEXT;->INSTANCE:Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$OCR_HAS_TEXT;

    invoke-virtual {p0, v2}, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;->get(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1, v1}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "hasTextImpl X"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :goto_1
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
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

.method private static final hasTextImpl$lambda$8$lambda$2(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;
    .locals 2

    const-string v0, "$this$setSettingMetadata"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$OCR_FUNCTION;->INSTANCE:Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$OCR_FUNCTION;

    sget-object v1, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrFuncType;->HAS_TEXT:Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrFuncType;

    invoke-virtual {v1}, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrFuncType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;->set(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey;Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static final isAvailable()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->Companion:Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Companion;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static synthetic j()Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilities;
    .locals 1

    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->capabilities_delegate$lambda$18()Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic k(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;)Ldb/r;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->configure$lambda$1$lambda$0(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionConfigRequest$Builder;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private final processResult(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;)Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Result;
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->getResultMetadata()Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$RESULT_CODE;->INSTANCE:Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$RESULT_CODE;

    invoke-virtual {p0, v0}, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;->get(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast p0, Lcom/samsung/android/vexfwk/param/VexFwkNodeResultCode;

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->getResultMetadata()Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$OCR_RESULT;->INSTANCE:Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$OCR_RESULT;

    invoke-virtual {p0, v0}, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;->get(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMeta;

    invoke-virtual {p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->getResultMetadata()Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$OCR_ADDITIONAL_RESULT;->INSTANCE:Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$OCR_ADDITIONAL_RESULT;

    invoke-virtual {v0, v1}, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;->get(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/vexfwk/param/VexFwkOcrAdditionalMeta;

    invoke-virtual {p1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;->getResultMetadata()Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$OCR_RESULT_V2;->INSTANCE:Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$OCR_RESULT_V2;

    invoke-virtual {p1, v1}, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;->get(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2;

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    sget-object p0, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->TAG:Ljava/lang/String;

    const-string p1, "No result metadata found!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Result$Error;

    sget-object p1, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrResultCode;->ERR_UNKNOWN:Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrResultCode;

    invoke-direct {p0, p1}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Result$Error;-><init>(Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrResultCode;)V

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    if-eqz p0, :cond_1

    new-instance p1, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2;-><init>(Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMeta;Lcom/samsung/android/vexfwk/param/VexFwkOcrAdditionalMeta;)V

    :cond_1
    if-nez p1, :cond_2

    new-instance p0, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Result$Error;

    sget-object p1, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrResultCode;->ERR_UNKNOWN:Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrResultCode;

    invoke-direct {p0, p1}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Result$Error;-><init>(Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrResultCode;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Result$SuccessWithData;

    invoke-virtual {p1}, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultMetaV2;->toResult()Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Result$SuccessWithData;-><init>(Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;)V

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Result$Error;

    sget-object p1, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrResultCode;->ERR_UNKNOWN:Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrResultCode;

    invoke-direct {p0, p1}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Result$Error;-><init>(Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrResultCode;)V

    :goto_0
    return-object p0
.end method

.method private final recognizeImpl(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Result;",
            ">;"
        }
    .end annotation

    new-instance v0, LL9/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, LL9/a;-><init>(Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;I)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    const-string p1, "supplyAsync(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final recognizeImpl$lambda$14(Ljava/lang/Object;Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;)Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Result;
    .locals 3

    sget-object v0, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->TAG:Ljava/lang/String;

    const-string v1, "recognizeV2Impl E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Sync$Builder;

    invoke-direct {v1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Sync$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequestKt;->addInputBuffer(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Builder;ILjava/lang/Object;)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Builder;

    move-result-object p0

    new-instance v1, LK9/f;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LK9/f;-><init>(I)V

    invoke-static {p0, v1}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequestKt;->setSettingMetadata(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Builder;Lsb/k;)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Builder;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Sync$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Sync$Builder;->build()Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Sync;

    move-result-object p0

    :try_start_0
    sget-object v1, Lcom/samsung/android/vexfwk/session/VexFwkUsecase;->IMAGE_OCR:Lcom/samsung/android/vexfwk/session/VexFwkUsecase;

    invoke-virtual {p1, v1}, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;->getSession(Lcom/samsung/android/vexfwk/session/VexFwkUsecase;)Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSession;->processRequest-IoAF18A(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionRequest$Sync;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    invoke-static {p0, v2}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-static {v1}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    check-cast v1, Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;

    :try_start_1
    invoke-direct {p1, v1}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->processResult(Lcom/samsung/android/vexfwk/sdk/common/runtime/VexFwkSessionTotalResult;)Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Result;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    const-string p1, "recognizeV2Impl X"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v1, p0}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    const-string p1, "Failed to process request: "

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

.method private static final recognizeImpl$lambda$14$lambda$9(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Ldb/r;
    .locals 2

    const-string v0, "$this$setSettingMetadata"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$OCR_FUNCTION;->INSTANCE:Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$OCR_FUNCTION;

    sget-object v1, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrFuncType;->RECOGNIZE:Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrFuncType;

    invoke-virtual {v1}, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrFuncType;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;->set(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey;Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$OCR_RESULT_VERSION;->INSTANCE:Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$OCR_RESULT_VERSION;

    sget-object v1, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrResultVersion;->RESULT_V2:Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrResultVersion;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;->set(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey;Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method


# virtual methods
.method public final configure()Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LK9/f;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LK9/f;-><init>(I)V

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/vexfwk/sdk/common/VexFwkSdkBase;->configureWith(Ljava/lang/Object;Lsb/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;

    return-object p0
.end method

.method public final hasText(Landroid/graphics/Bitmap;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->hasTextImpl(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final hasText(Landroid/media/Image;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
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
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "image"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->hasTextImpl(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final recognize(Landroid/graphics/Bitmap;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
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
            "Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Result;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->recognizeImpl(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final recognize(Landroid/media/Image;)Ljava/util/concurrent/CompletableFuture;
    .locals 1
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
            "Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr$Result;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "image"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/vexfwk/sdk/ocr/VexFwkImageOcr;->recognizeImpl(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method
