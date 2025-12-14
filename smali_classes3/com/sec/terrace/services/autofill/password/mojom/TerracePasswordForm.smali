.class public final Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
.super Lorg/chromium/mojo/bindings/Struct;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

.field private static final VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;


# instance fields
.field public action:Ljava/lang/String;

.field public blockedByUser:Z

.field public dateCreated:J

.field public displayName:Ljava/lang/String;

.field public federationOrigin:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public origin:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public passwordAutofillType:I

.field public passwordElement:Ljava/lang/String;

.field public passwordValue:Ljava/lang/String;

.field public signonRealm:Ljava/lang/String;

.field public skipZeroClick:Z

.field public type:I

.field public usernameElement:Ljava/lang/String;

.field public usernameValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/mojo/bindings/DataHeader;

    const/16 v1, 0x78

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/mojo/bindings/DataHeader;-><init>(II)V

    filled-new-array {v0}, [Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    sput-object v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    aget-object v0, v0, v2

    sput-object v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/16 v0, 0x78

    invoke-direct {p0, v0, p1}, Lorg/chromium/mojo/bindings/Struct;-><init>(II)V

    const-string p1, ""

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->usernameElement:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->usernameValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordElement:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->signonRealm:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->origin:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->action:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->blockedByUser:Z

    iput v0, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->type:I

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->displayName:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->iconUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->federationOrigin:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->skipZeroClick:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordAutofillType:I

    return-void
.end method

.method public static decode(Lorg/chromium/mojo/bindings/Decoder;)Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->increaseStackDepth()V

    :try_start_0
    sget-object v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->VERSION_ARRAY:[Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readAndValidateDataHeader([Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/DataHeader;

    move-result-object v0

    iget v0, v0, Lorg/chromium/mojo/bindings/DataHeader;->elementsOrVersion:I

    new-instance v1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    invoke-direct {v1, v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;-><init>(I)V

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->usernameElement:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->usernameValue:Ljava/lang/String;

    const/16 v0, 0x18

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordElement:Ljava/lang/String;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordValue:Ljava/lang/String;

    const/16 v0, 0x28

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->signonRealm:Ljava/lang/String;

    const/16 v0, 0x30

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->origin:Ljava/lang/String;

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->action:Ljava/lang/String;

    const/16 v0, 0x40

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->packageName:Ljava/lang/String;

    const/16 v0, 0x48

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v3

    iput-boolean v3, v1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->blockedByUser:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lorg/chromium/mojo/bindings/Decoder;->readBoolean(II)Z

    move-result v0

    iput-boolean v0, v1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->skipZeroClick:Z

    const/16 v0, 0x4c

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->type:I

    const/16 v0, 0x50

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->displayName:Ljava/lang/String;

    const/16 v0, 0x58

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->iconUrl:Ljava/lang/String;

    const/16 v0, 0x60

    invoke-virtual {p0, v0, v2}, Lorg/chromium/mojo/bindings/Decoder;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->federationOrigin:Ljava/lang/String;

    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readInt(I)I

    move-result v0

    iput v0, v1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordAutofillType:I

    invoke-static {v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillType;->validate(I)V

    iget v0, v1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordAutofillType:I

    invoke-static {v0}, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordAutofillType;->toKnownValue(I)I

    move-result v0

    iput v0, v1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordAutofillType:I

    const/16 v0, 0x70

    invoke-virtual {p0, v0}, Lorg/chromium/mojo/bindings/Decoder;->readLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->dateCreated:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Decoder;->decreaseStackDepth()V

    throw v0
.end method


# virtual methods
.method public final encode(Lorg/chromium/mojo/bindings/Encoder;)V
    .locals 4

    sget-object v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->DEFAULT_STRUCT_INFO:Lorg/chromium/mojo/bindings/DataHeader;

    invoke-virtual {p1, v0}, Lorg/chromium/mojo/bindings/Encoder;->getEncoderAtDataOffset(Lorg/chromium/mojo/bindings/DataHeader;)Lorg/chromium/mojo/bindings/Encoder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->usernameElement:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->usernameValue:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordElement:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordValue:Ljava/lang/String;

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->signonRealm:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->origin:Ljava/lang/String;

    const/16 v1, 0x30

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->action:Ljava/lang/String;

    const/16 v1, 0x38

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->packageName:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-boolean v0, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->blockedByUser:Z

    const/16 v1, 0x48

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget-boolean v0, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->skipZeroClick:Z

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v3}, Lorg/chromium/mojo/bindings/Encoder;->encode(ZII)V

    iget v0, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->type:I

    const/16 v1, 0x4c

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->displayName:Ljava/lang/String;

    const/16 v1, 0x50

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->iconUrl:Ljava/lang/String;

    const/16 v1, 0x58

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->federationOrigin:Ljava/lang/String;

    const/16 v1, 0x60

    invoke-virtual {p1, v0, v1, v2}, Lorg/chromium/mojo/bindings/Encoder;->encode(Ljava/lang/String;IZ)V

    iget v0, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->passwordAutofillType:I

    const/16 v1, 0x68

    invoke-virtual {p1, v0, v1}, Lorg/chromium/mojo/bindings/Encoder;->encode(II)V

    iget-wide v0, p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;->dateCreated:J

    const/16 p0, 0x70

    invoke-virtual {p1, v0, v1, p0}, Lorg/chromium/mojo/bindings/Encoder;->encode(JI)V

    return-void
.end method
