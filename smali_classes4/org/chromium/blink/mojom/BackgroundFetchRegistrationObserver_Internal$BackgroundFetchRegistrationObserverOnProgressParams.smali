.class final Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BackgroundFetchRegistrationObserverOnProgressParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public downloadTotal:J

.field public downloaded:J

.field public failureReason:I

.field public result:I

.field public uploadTotal:J

.field public uploaded:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x30

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;

    invoke-direct {v1, v0}, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->uploadTotal:J

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->uploaded:J

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->downloadTotal:J

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->downloaded:J

    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->result:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/BackgroundFetchResult;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->result:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/BackgroundFetchResult;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->result:I

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->failureReason:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/BackgroundFetchFailureReason;->validate(I)V

    iget v0, v1, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->failureReason:I

    invoke-static {v0}, Lorg/chromium/blink/mojom/BackgroundFetchFailureReason;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->failureReason:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3

    sget-object v0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->uploadTotal:J

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->uploaded:J

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->downloadTotal:J

    const/16 v2, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget-wide v0, p0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->downloaded:J

    const/16 v2, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    iget v0, p0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->result:I

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget p0, p0, Lorg/chromium/blink/mojom/BackgroundFetchRegistrationObserver_Internal$BackgroundFetchRegistrationObserverOnProgressParams;->failureReason:I

    const/16 v0, 0x2c

    invoke-virtual {p1, p0, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    return-void
.end method
