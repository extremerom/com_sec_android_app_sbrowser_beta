.class public final Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R!\u0010\u000c\u001a\u00020\t8FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u0012\u0004\u0008\u000e\u0010\u0003\u001a\u0004\u0008\u000c\u0010\rR\'\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f8FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u000b\u0012\u0004\u0008\u0014\u0010\u0003\u001a\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0018\u001a\n \u0017*\u0004\u0018\u00010\u00160\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001b\u001a\u00020\u001a8\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;",
        "",
        "<init>",
        "()V",
        "Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;",
        "metadata",
        "Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$DetectResult;",
        "createDetectResult",
        "(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$DetectResult;",
        "",
        "isAvailable$delegate",
        "Ldb/f;",
        "isAvailable",
        "()Z",
        "isAvailable$annotations",
        "",
        "Lcom/samsung/android/vexfwk/param/VexFwkDocumentDetectionType;",
        "supportedOperationTypes$delegate",
        "getSupportedOperationTypes",
        "()Ljava/util/List;",
        "getSupportedOperationTypes$annotations",
        "supportedOperationTypes",
        "",
        "kotlin.jvm.PlatformType",
        "TAG",
        "Ljava/lang/String;",
        "",
        "STREAM_ID_IMAGE",
        "I",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$createDetectResult(Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$DetectResult;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$Companion;->createDetectResult(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$DetectResult;

    move-result-object p0

    return-object p0
.end method

.method private final createDetectResult(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;)Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$DetectResult;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p1, :cond_0

    new-instance p0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$DetectResult;

    const/4 p1, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0, v1}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$DetectResult;-><init>(Lcom/samsung/android/vexfwk/param/VexFwkDocumentCorners;IILtb/f;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$DetectResult;

    sget-object v0, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$DOCUMENT_RECT;->INSTANCE:Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$DOCUMENT_RECT;

    invoke-virtual {p1, v0}, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;->get(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/vexfwk/param/VexFwkDocumentCorners;

    sget-object v1, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$DOCUMENT_SCAN_STABILITY;->INSTANCE:Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey$DOCUMENT_SCAN_STABILITY;

    invoke-virtual {p1, v1}, Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataNative;->get(Lcom/samsung/android/vexfwk/metadata/VexFwkMetadataKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector$DetectResult;-><init>(Lcom/samsung/android/vexfwk/param/VexFwkDocumentCorners;I)V

    return-object p0
.end method

.method public static synthetic getSupportedOperationTypes$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static synthetic isAvailable$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getSupportedOperationTypes()Ljava/util/List;
    .locals 0
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

    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->access$getSupportedOperationTypes$delegate$cp()Ldb/f;

    move-result-object p0

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    invoke-static {}, Lcom/samsung/android/vexfwk/sdk/docscan/VexFwkDocDetector;->access$isAvailable$delegate$cp()Ldb/f;

    move-result-object p0

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
