.class final Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnnotationAgentContainerCreateAgentParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public agentReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/InterfaceRequest<",
            "Lorg/chromium/blink/mojom/AnnotationAgent;",
            ">;"
        }
    .end annotation
.end field

.field public hostRemote:Lorg/chromium/blink/mojom/AnnotationAgentHost;

.field public serializedSelector:Ljava/lang/String;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;-><init>(I)V

    sget-object v0, Lorg/chromium/blink/mojom/AnnotationAgentHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v2, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/blink/mojom/AnnotationAgentHost;

    iput-object v0, v1, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;->hostRemote:Lorg/chromium/blink/mojom/AnnotationAgentHost;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readInterfaceRequest(IZ)Lorg/chromium/mojo/bindings/InterfaceRequest;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;->agentReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;->type:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/AnnotationType;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;->type:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/AnnotationType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;->type:I

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;->serializedSelector:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;->hostRemote:Lorg/chromium/blink/mojom/AnnotationAgentHost;

    sget-object v1, Lorg/chromium/blink/mojom/AnnotationAgentHost;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v3, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;->agentReceiver:Lorg/chromium/mojo/bindings/InterfaceRequest;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/InterfaceRequest;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;->type:I

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object p0, p0, Lorg/chromium/blink/mojom/AnnotationAgentContainer_Internal$AnnotationAgentContainerCreateAgentParams;->serializedSelector:Ljava/lang/String;

    const/16 v0, 0x18

    invoke-virtual {p1, p0, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    return-void
.end method
