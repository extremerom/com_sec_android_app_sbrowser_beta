.class final Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderNotifyOnWakeLockDeactivationParams;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/mojom/WakeLockProvider_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WakeLockProviderNotifyOnWakeLockDeactivationParams"
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public observer:Lorg/chromium/device/mojom/WakeLockObserver;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderNotifyOnWakeLockDeactivationParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderNotifyOnWakeLockDeactivationParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderNotifyOnWakeLockDeactivationParams;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x18

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderNotifyOnWakeLockDeactivationParams;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderNotifyOnWakeLockDeactivationParams;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderNotifyOnWakeLockDeactivationParams;

    invoke-direct {v1, v0}, Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderNotifyOnWakeLockDeactivationParams;-><init>(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderNotifyOnWakeLockDeactivationParams;->type:I

    invoke-static {v0}, Lorg/chromium/device/mojom/WakeLockType;->validate(I)V

    iget v0, v1, Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderNotifyOnWakeLockDeactivationParams;->type:I

    invoke-static {v0}, Lorg/chromium/device/mojom/WakeLockType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderNotifyOnWakeLockDeactivationParams;->type:I

    sget-object v0, Lorg/chromium/device/mojom/WakeLockObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lorg/chromium/mojo/bindings/Decoder;->readServiceInterface(IZLorg/chromium/mojo/bindings/Interface$Manager;)Lorg/chromium/mojo/bindings/Interface$Proxy;

    move-result-object v0

    check-cast v0, Lorg/chromium/device/mojom/WakeLockObserver;

    iput-object v0, v1, Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderNotifyOnWakeLockDeactivationParams;->observer:Lorg/chromium/device/mojom/WakeLockObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method

.method public static deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderNotifyOnWakeLockDeactivationParams;
    .locals 1

    new-instance v0, Lorg/chromium/mojo/bindings/Decoder;

    invoke-direct {v0, p0}, Lorg/chromium/mojo/bindings/Decoder;-><init>(Lorg/chromium/mojo/bindings/Message;)V

    invoke-static {v0}, Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderNotifyOnWakeLockDeactivationParams;->decode(Lorg/chromium/mojo/bindings/Decoder;)Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderNotifyOnWakeLockDeactivationParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3

    sget-object v0, Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderNotifyOnWakeLockDeactivationParams;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget v0, p0, Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderNotifyOnWakeLockDeactivationParams;->type:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object p0, p0, Lorg/chromium/device/mojom/WakeLockProvider_Internal$WakeLockProviderNotifyOnWakeLockDeactivationParams;->observer:Lorg/chromium/device/mojom/WakeLockObserver;

    const/4 v0, 0x0

    sget-object v1, Lorg/chromium/device/mojom/WakeLockObserver;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    const/16 v2, 0xc

    invoke-virtual {p1, p0, v2, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(Lorg/chromium/mojo/bindings/Interface;IZLorg/chromium/mojo/bindings/Interface$Manager;)V

    return-void
.end method
