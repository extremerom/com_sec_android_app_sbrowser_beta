.class public final Lorg/chromium/blink/mojom/CreateRemoteChildParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public childParams:[Lorg/chromium/blink/mojom/CreateRemoteChildParams;

.field public devtoolsFrameToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

.field public frameInterfaces:Lorg/chromium/blink/mojom/RemoteFrameInterfacesFromBrowser;

.field public isLoading:Z

.field public openerFrameToken:Lorg/chromium/blink/mojom/FrameToken;

.field public ownerProperties:Lorg/chromium/blink/mojom/FrameOwnerProperties;

.field public replicationState:Lorg/chromium/blink/mojom/FrameReplicationState;

.field public token:Lorg/chromium/blink/mojom/RemoteFrameToken;

.field public treeScopeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x50

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/CreateRemoteChildParams;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/CreateRemoteChildParams;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/CreateRemoteChildParams;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/blink/mojom/RemoteFrameToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/RemoteFrameToken;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->token:Lorg/chromium/blink/mojom/RemoteFrameToken;

    const/16 v3, 0x10

    invoke-static {p0, v3}, Lorg/chromium/blink/mojom/FrameToken;->decode(Lorg/chromium/mojo/bindings/Decoder;I)Lorg/chromium/blink/mojom/FrameToken;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->openerFrameToken:Lorg/chromium/blink/mojom/FrameToken;

    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->treeScopeType:I

    invoke-static {v3}, Lorg/chromium/blink/mojom/TreeScopeType;->validate(I)V

    iget v3, v1, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->treeScopeType:I

    invoke-static {v3}, Lorg/chromium/blink/mojom/TreeScopeType;->toKnownValue(I)I

    move-result v3

    iput v3, v1, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->treeScopeType:I

    const/16 v3, 0x24

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->isLoading:Z

    const/16 v3, 0x28

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/blink/mojom/FrameReplicationState;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/FrameReplicationState;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->replicationState:Lorg/chromium/blink/mojom/FrameReplicationState;

    const/16 v3, 0x30

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/blink/mojom/FrameOwnerProperties;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/FrameOwnerProperties;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->ownerProperties:Lorg/chromium/blink/mojom/FrameOwnerProperties;

    const/16 v3, 0x38

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/mojo_base/mojom/UnguessableToken;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/mojo_base/mojom/UnguessableToken;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->devtoolsFrameToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v3, 0x40

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/blink/mojom/RemoteFrameInterfacesFromBrowser;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/RemoteFrameInterfacesFromBrowser;

    move-result-object v3

    iput-object v3, v1, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->frameInterfaces:Lorg/chromium/blink/mojom/RemoteFrameInterfacesFromBrowser;

    const/16 v3, 0x48

    invoke-virtual {p0, v3, v2}, Lorg/chromium/mojo/bindings/Decoder;->readPointer(IZ)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lorg/chromium/mojo/bindings/Decoder;->readDataHeaderForPointerArray(I)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v4

    iget v5, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-array v5, v5, [Lorg/chromium/blink/mojom/CreateRemoteChildParams;

    iput-object v5, v1, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->childParams:[Lorg/chromium/blink/mojom/CreateRemoteChildParams;

    move v5, v2

    :goto_0
    iget v6, v4, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    if-ge v5, v6, :cond_1

    const/16 v6, 0x8

    invoke-static {v5, v6, v0, v3, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->n(IIILorg/chromium/mojo/bindings/Decoder;Z)Lorg/chromium/mojo/bindings/Decoder;

    move-result-object v6

    iget-object v7, v1, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->childParams:[Lorg/chromium/blink/mojom/CreateRemoteChildParams;

    invoke-static {v6}, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/CreateRemoteChildParams;

    move-result-object v6

    aput-object v6, v7, v5
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


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 5

    sget-object v0, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->token:Lorg/chromium/blink/mojom/RemoteFrameToken;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->openerFrameToken:Lorg/chromium/blink/mojom/FrameToken;

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Union;IZ)V

    iget v0, p0, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->treeScopeType:I

    const/16 v3, 0x20

    invoke-virtual {p1, v0, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-boolean v0, p0, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->isLoading:Z

    const/16 v3, 0x24

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->replicationState:Lorg/chromium/blink/mojom/FrameReplicationState;

    const/16 v3, 0x28

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->ownerProperties:Lorg/chromium/blink/mojom/FrameOwnerProperties;

    const/16 v3, 0x30

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->devtoolsFrameToken:Lorg/chromium/mojo_base/mojom/UnguessableToken;

    const/16 v3, 0x38

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->frameInterfaces:Lorg/chromium/blink/mojom/RemoteFrameInterfacesFromBrowser;

    const/16 v3, 0x40

    invoke-virtual {p1, v0, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    iget-object v0, p0, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->childParams:[Lorg/chromium/blink/mojom/CreateRemoteChildParams;

    const/16 v3, 0x48

    if-nez v0, :cond_0

    invoke-virtual {p1, v3, v2}, Lorg/chromium/mojo/bindings/Encoder;->encodeNullPointer(IZ)V

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v3, v4}, Lorg/chromium/mojo/bindings/Encoder;->encodePointerArray(III)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    move v0, v2

    :goto_0
    iget-object v3, p0, Lorg/chromium/blink/mojom/CreateRemoteChildParams;->childParams:[Lorg/chromium/blink/mojom/CreateRemoteChildParams;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    aget-object v3, v3, v0

    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v1

    invoke-virtual {p1, v3, v4, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Struct;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
