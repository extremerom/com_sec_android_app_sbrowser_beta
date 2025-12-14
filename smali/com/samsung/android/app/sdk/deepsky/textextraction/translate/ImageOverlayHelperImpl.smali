.class public final Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 C2\u00020\u0001:\u0001CB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001d\u0010\u0010\u001a\u00020\n2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0019\u0010\u0017\u001a\u00020\n2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008 \u0010\u001dJ\u000f\u0010!\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008!\u0010\u001fJ\u0017\u0010$\u001a\u00020\n2\u0006\u0010#\u001a\u00020\"H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u0017\u0010\'\u001a\u00020\n2\u0006\u0010#\u001a\u00020&H\u0016\u00a2\u0006\u0004\u0008\'\u0010(J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010*\u001a\u00020)H\u0017\u00a2\u0006\u0004\u0008\u000b\u0010+J\'\u0010\u000b\u001a\u00020\n2\u0006\u0010-\u001a\u00020,2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010*\u001a\u00020)H\u0017\u00a2\u0006\u0004\u0008\u000b\u0010.J\u0017\u0010\u0013\u001a\u00020\u00122\u0006\u0010*\u001a\u00020)H\u0017\u00a2\u0006\u0004\u0008\u0013\u0010/J\u0013\u00101\u001a\u000200*\u00020\u000eH\u0002\u00a2\u0006\u0004\u00081\u00102J\u0017\u00104\u001a\u0002032\u0006\u0010#\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u00084\u00105J\u001f\u00108\u001a\u0002072\u0006\u0010#\u001a\u00020&2\u0006\u00106\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u00088\u00109R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010:\u001a\u0004\u0008;\u0010<R\u0014\u0010>\u001a\u00020=8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0014\u0010A\u001a\u00020@8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008A\u0010B\u00a8\u0006D"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;",
        "textData",
        "Ldb/r;",
        "init",
        "(Landroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;)V",
        "",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/BaseTranslationRequest;",
        "translationRequestList",
        "initConcurrent",
        "(Ljava/util/List;)V",
        "",
        "isAvailable",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;)Z",
        "",
        "language",
        "setTargetLanguage",
        "(Ljava/lang/String;)V",
        "value",
        "setNeedToDownloadLangPack",
        "(Z)V",
        "isProcessing",
        "()Z",
        "cancelCurrentTask",
        "()V",
        "isProcessingConcurrent",
        "cancelConcurrentTask",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;",
        "callback",
        "doImageOverlay",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;)V",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ConcurrentImageOverlayResultCallback;",
        "doConcurrentImageOverlay",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ConcurrentImageOverlayResultCallback;)V",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;",
        "ocrResult",
        "(Landroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)V",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/TranslationTokenInfo;",
        "tokenInfo",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/TranslationTokenInfo;Landroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)V",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)Z",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/TranslationRequestOcrOnly;",
        "toTranslationRequestOcrOnly",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/BaseTranslationRequest;)Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/TranslationRequestOcrOnly;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslateListener;",
        "createImageTranslateListener",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;)Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslateListener;",
        "method",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ConcurrentImageTranslateListener;",
        "createConcurrentImageTranslateListener",
        "(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ConcurrentImageOverlayResultCallback;Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ConcurrentImageTranslateListener;",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/languagepack/LangPackManager;",
        "langPackManager",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/languagepack/LangPackManager;",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;",
        "imageTranslator",
        "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;",
        "Companion",
        "deepsky-sdk-textextraction-8.5.6_release"
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
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final imageTranslator:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final langPackManager:Lcom/samsung/android/app/sdk/deepsky/textextraction/languagepack/LangPackManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->Companion:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->context:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/languagepack/LangPackManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/languagepack/LangPackManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->langPackManager:Lcom/samsung/android/app/sdk/deepsky/textextraction/languagepack/LangPackManager;

    new-instance v1, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;

    new-instance v2, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/TextTranslator;

    invoke-direct {v2, p1, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/TextTranslator;-><init>(Landroid/content/Context;Lcom/samsung/android/app/sdk/deepsky/textextraction/languagepack/LangPackManager;)V

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;-><init>(Landroid/content/Context;Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/TextTranslator;)V

    iput-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->imageTranslator:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;

    return-void
.end method

.method public static final synthetic access$getImageTranslator$p(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;)Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->imageTranslator:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;

    return-object p0
.end method

.method private final createConcurrentImageTranslateListener(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ConcurrentImageOverlayResultCallback;Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ConcurrentImageTranslateListener;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl$createConcurrentImageTranslateListener$1;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl$createConcurrentImageTranslateListener$1;-><init>(Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ConcurrentImageOverlayResultCallback;)V

    return-object p0
.end method

.method private final createImageTranslateListener(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;)Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslateListener;
    .locals 1

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl$createImageTranslateListener$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl$createImageTranslateListener$1;-><init>(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;)V

    return-object v0
.end method

.method private final toTranslationRequestOcrOnly(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/BaseTranslationRequest;)Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/TranslationRequestOcrOnly;
    .locals 3

    instance-of p0, p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/TranslationRequest;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/TranslationRequestOcrOnly;

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/TranslationRequest;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/TranslationRequest;->getRequestId()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/TranslationRequest;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;->Companion:Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$Companion;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/TranslationRequest;->getOcrResult()Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$Companion;->fromOcrResult$deepsky_sdk_textextraction_8_5_6_release(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/TranslationRequestOcrOnly;-><init>(ILandroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported type of request"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cancelConcurrentTask()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->imageTranslator:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;->cancelConcurrent()V

    return-void
.end method

.method public cancelCurrentTask()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->imageTranslator:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;->cancel()V

    return-void
.end method

.method public doConcurrentImageOverlay(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ConcurrentImageOverlayResultCallback;)V
    .locals 2
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ConcurrentImageOverlayResultCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ImageOverlayHelper"

    const-string v1, "doConcurrentImageOverlay called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->imageTranslator:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;

    const-string v1, "doConcurrentImageOverlay"

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->createConcurrentImageTranslateListener(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ConcurrentImageOverlayResultCallback;Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ConcurrentImageTranslateListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;->doConcurrentImageTranslate(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ConcurrentImageTranslateListener;)V

    return-void
.end method

.method public doImageOverlay(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;)V
    .locals 2
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ImageOverlayHelper"

    const-string v1, "doImageOverlay called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->imageTranslator:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->createImageTranslateListener(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelper$ImageOverlayResultCallback;)Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslateListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;->doImageTranslate(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslateListener;)V

    return-void
.end method

.method public init(Landroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)V
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ocrResult"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LogUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LogUtil;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LogUtil;->logString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;->getBlockInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " blocks"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageOverlayHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;->Companion:Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData$Companion;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData$Companion;->fromOcrResult(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->init(Landroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;)V

    return-void
.end method

.method public init(Landroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;)V
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textData"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LogUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LogUtil;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LogUtil;->logString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;->getOcrData()Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;->getBlockList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " blocks"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageOverlayHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/OcrUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/util/OcrUtil;

    invoke-virtual {p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;->getOcrData()Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/util/OcrUtil;->sortOcrData(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->imageTranslator:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;->init(Landroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;)V

    return-void
.end method

.method public init(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/TranslationTokenInfo;Landroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/TranslationTokenInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    const-string v0, "tokenInfo"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bitmap"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ocrResult"

    invoke-static {p3, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->init(Landroid/graphics/Bitmap;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)V

    return-void
.end method

.method public initConcurrent(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/BaseTranslationRequest;",
            ">;)V"
        }
    .end annotation

    const-string v0, "translationRequestList"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initConcurrent with "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " requests"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageOverlayHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LibLogger;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->imageTranslator:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/BaseTranslationRequest;

    invoke-direct {p0, v2}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->toTranslationRequestOcrOnly(Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/BaseTranslationRequest;)Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/data/TranslationRequestOcrOnly;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;->initConcurrent(Ljava/util/List;)V

    return-void
.end method

.method public isAvailable(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)Z
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    const-string v0, "ocrResult"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;->Companion:Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData$Companion;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData$Companion;->fromOcrResult(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrResult;)Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->isAvailable(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;)Z

    move-result p0

    return p0
.end method

.method public isAvailable(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;)Z
    .locals 1
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "textData"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->imageTranslator:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/TextData;->getOcrData()Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;->isTranslationAvailable(Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isAvailable causes interrupted exception : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImageOverlayHelper"

    invoke-static {p1, p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/logger/LibLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isProcessing()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->imageTranslator:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;->isProcessing()Z

    move-result p0

    return p0
.end method

.method public isProcessingConcurrent()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->imageTranslator:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;->isProcessingConcurrent()Z

    move-result p0

    return p0
.end method

.method public setNeedToDownloadLangPack(Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->imageTranslator:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;->setNeedToDownloadLangPack(Z)V

    return-void
.end method

.method public setTargetLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/languagepack/LanguageUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/textextraction/languagepack/LanguageUtil;

    invoke-virtual {p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/languagepack/LanguageUtil;->createTargetLanguage()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageOverlayHelperImpl;->imageTranslator:Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/translate/ImageTranslator;->setTargetLanguage(Ljava/lang/String;)V

    return-void
.end method
