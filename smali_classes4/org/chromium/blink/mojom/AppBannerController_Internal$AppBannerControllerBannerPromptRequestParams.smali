.class final Lorg/chromium/blink/mojom/AppBannerController_Internal$AppBannerControllerBannerPromptRequestParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/AppBannerController_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppBannerControllerBannerPromptRequestParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public eventReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/AppBannerEvent;",
            ">;"
        }
    .end annotation
.end field

.field public platform:[Ljava/lang/String;

.field public service:Lorg/chromium/blink/mojom/AppBannerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/AppBannerController_Internal$AppBannerControllerBannerPromptRequestParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/AppBannerController_Internal$AppBannerControllerBannerPromptRequestParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/blink/mojom/AppBannerController_Internal$AppBannerControllerBannerPromptRequestParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AppBannerController_Internal$AppBannerControllerBannerPromptRequestParams;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/AppBannerController_Internal$AppBannerControllerBannerPromptRequestParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/AppBannerController_Internal$AppBannerControllerBannerPromptRequestParams;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/AppBannerController_Internal$AppBannerControllerBannerPromptRequestParams;-><init>(I)V

    sget-object v0, Lorg/chromium/blink/mojom/AppBannerService;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/blink/mojom/AppBannerService;

    iput-object v0, v1, Lorg/chromium/blink/mojom/AppBannerController_Internal$AppBannerControllerBannerPromptRequestParams;->service:Lorg/chromium/blink/mojom/AppBannerService;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/AppBannerController_Internal$AppBannerControllerBannerPromptRequestParams;->eventReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v0

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v1, Lorg/chromium/blink/mojom/AppBannerController_Internal$AppBannerControllerBannerPromptRequestParams;->platform:[Ljava/lang/String;

    move v5, v3

    :goto_0
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_1

    iget-object v6, v1, Lorg/chromium/blink/mojom/AppBannerController_Internal$AppBannerControllerBannerPromptRequestParams;->platform:[Ljava/lang/String;

    const/16 v7, 0x8

    invoke-static {v5, v7, v2, v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->h(IIILorg/chromium/mojo/bindings/Decoder;Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :goto_1
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AppBannerController_Internal$AppBannerControllerBannerPromptRequestParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/AppBannerController_Internal$AppBannerControllerBannerPromptRequestParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AppBannerController_Internal$AppBannerControllerBannerPromptRequestParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 11

    sget-object v0, Lorg/chromium/blink/mojom/AppBannerController_Internal$AppBannerControllerBannerPromptRequestParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/AppBannerController_Internal$AppBannerControllerBannerPromptRequestParams;->service:Lorg/chromium/blink/mojom/AppBannerService;

    sget-object v1, Lorg/chromium/blink/mojom/AppBannerService;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-virtual {p1, v0, v9, v10, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/AppBannerController_Internal$AppBannerControllerBannerPromptRequestParams;->eventReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/AppBannerController_Internal$AppBannerControllerBannerPromptRequestParams;->platform:[Ljava/lang/String;

    const/16 v1, 0x18

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v10}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v7, v10

    :goto_0
    iget-object v0, p0, Lorg/chromium/blink/mojom/AppBannerController_Internal$AppBannerControllerBannerPromptRequestParams;->platform:[Ljava/lang/String;

    array-length v1, v0

    if-ge v7, v1, :cond_1

    aget-object v5, v0, v7

    mul-int/lit8 v2, v7, 0x8

    const/4 v8, 0x1

    move v3, v9

    move-object v4, p1

    move v6, v10

    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/autofill/password/k;->b(IILorg/chromium/mojo/bindings/Encoder;Ljava/lang/String;ZII)I

    move-result v7

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
