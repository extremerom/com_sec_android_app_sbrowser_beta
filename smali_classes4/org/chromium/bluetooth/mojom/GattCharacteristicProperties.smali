.class public final Lorg/chromium/bluetooth/mojom/GattCharacteristicProperties;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public authenticatedSignedWrites:Z

.field public broadcast:Z

.field public extendedProperties:Z

.field public indicate:Z

.field public notify:Z

.field public read:Z

.field public readEncrypted:Z

.field public readEncryptedAuthenticated:Z

.field public reliableWrite:Z

.field public writableAuxiliaries:Z

.field public write:Z

.field public writeEncrypted:Z

.field public writeEncryptedAuthenticated:Z

.field public writeWithoutResponse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/bluetooth/mojom/GattCharacteristicProperties;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/bluetooth/mojom/GattCharacteristicProperties;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 9

    sget-object v0, Lorg/chromium/bluetooth/mojom/GattCharacteristicProperties;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-boolean v0, p0, Lorg/chromium/bluetooth/mojom/GattCharacteristicProperties;->broadcast:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/bluetooth/mojom/GattCharacteristicProperties;->read:Z

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/bluetooth/mojom/GattCharacteristicProperties;->writeWithoutResponse:Z

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/bluetooth/mojom/GattCharacteristicProperties;->write:Z

    const/4 v5, 0x3

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/bluetooth/mojom/GattCharacteristicProperties;->notify:Z

    const/4 v6, 0x4

    invoke-virtual {p1, v0, v1, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/bluetooth/mojom/GattCharacteristicProperties;->indicate:Z

    const/4 v7, 0x5

    invoke-virtual {p1, v0, v1, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/bluetooth/mojom/GattCharacteristicProperties;->authenticatedSignedWrites:Z

    const/4 v8, 0x6

    invoke-virtual {p1, v0, v1, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/bluetooth/mojom/GattCharacteristicProperties;->extendedProperties:Z

    const/4 v8, 0x7

    invoke-virtual {p1, v0, v1, v8}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/bluetooth/mojom/GattCharacteristicProperties;->reliableWrite:Z

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/bluetooth/mojom/GattCharacteristicProperties;->writableAuxiliaries:Z

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/bluetooth/mojom/GattCharacteristicProperties;->readEncrypted:Z

    invoke-virtual {p1, v0, v1, v4}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/bluetooth/mojom/GattCharacteristicProperties;->writeEncrypted:Z

    invoke-virtual {p1, v0, v1, v5}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/bluetooth/mojom/GattCharacteristicProperties;->readEncryptedAuthenticated:Z

    invoke-virtual {p1, v0, v1, v6}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean p0, p0, Lorg/chromium/bluetooth/mojom/GattCharacteristicProperties;->writeEncryptedAuthenticated:Z

    invoke-virtual {p1, p0, v1, v7}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    return-void
.end method
