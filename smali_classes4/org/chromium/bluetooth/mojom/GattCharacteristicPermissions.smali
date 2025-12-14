.class public final Lorg/chromium/bluetooth/mojom/GattCharacteristicPermissions;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public read:Z

.field public readEncrypted:Z

.field public readEncryptedAuthenticated:Z

.field public write:Z

.field public writeEncrypted:Z

.field public writeEncryptedAuthenticated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lorg/chromium/bluetooth/mojom/GattCharacteristicPermissions;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lorg/chromium/bluetooth/mojom/GattCharacteristicPermissions;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 3

    sget-object v0, Lorg/chromium/bluetooth/mojom/GattCharacteristicPermissions;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-boolean v0, p0, Lorg/chromium/bluetooth/mojom/GattCharacteristicPermissions;->read:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/bluetooth/mojom/GattCharacteristicPermissions;->write:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/bluetooth/mojom/GattCharacteristicPermissions;->readEncrypted:Z

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/bluetooth/mojom/GattCharacteristicPermissions;->writeEncrypted:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lorg/chromium/bluetooth/mojom/GattCharacteristicPermissions;->readEncryptedAuthenticated:Z

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v2, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean p0, p0, Lorg/chromium/bluetooth/mojom/GattCharacteristicPermissions;->writeEncryptedAuthenticated:Z

    const/4 v0, 0x5

    invoke-virtual {p1, p0, v2, v0}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    return-void
.end method
