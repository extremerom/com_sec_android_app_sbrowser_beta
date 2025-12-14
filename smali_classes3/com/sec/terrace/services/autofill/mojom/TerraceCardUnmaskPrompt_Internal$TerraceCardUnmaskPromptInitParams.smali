.class final Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TerraceCardUnmaskPromptInitParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public confirmButtonLabel:Ljava/lang/String;

.field public defaultToStoringLocally:Z

.field public delegate:Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;

.field public iconId:I

.field public instructions:Ljava/lang/String;

.field public isNewCard:Z

.field public shouldRequestExpirationDate:Z

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;

    invoke-direct {v1, v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;-><init>(I)V

    sget-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->delegate:Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->title:Ljava/lang/String;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->instructions:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->confirmButtonLabel:Ljava/lang/String;

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->iconId:I

    const/16 v0, 0x2c

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->shouldRequestExpirationDate:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v2

    iput-boolean v2, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->defaultToStoringLocally:Z

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->isNewCard:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->delegate:Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;

    sget-object v1, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPromptDelegate;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->title:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->instructions:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->confirmButtonLabel:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->iconId:I

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->shouldRequestExpirationDate:Z

    const/16 v1, 0x2c

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->defaultToStoringLocally:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean p0, p0, Lcom/sec/terrace/services/autofill/mojom/TerraceCardUnmaskPrompt_Internal$TerraceCardUnmaskPromptInitParams;->isNewCard:Z

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v1, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    return-void
.end method
