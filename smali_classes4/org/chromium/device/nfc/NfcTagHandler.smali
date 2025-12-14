.class public Lorg/chromium/device/nfc/NfcTagHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/nfc/NfcTagHandler$NdefHandler;,
        Lorg/chromium/device/nfc/NfcTagHandler$TagTechnologyHandler;,
        Lorg/chromium/device/nfc/NfcTagHandler$NdefFormattableHandler;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mSerialNumber:Ljava/lang/String;

.field private final mTech:Landroid/nfc/tech/TagTechnology;

.field private final mTechHandler:Lorg/chromium/device/nfc/NfcTagHandler$TagTechnologyHandler;

.field private mWasConnected:Z


# direct methods
.method public constructor <init>(Landroid/nfc/tech/TagTechnology;Lorg/chromium/device/nfc/NfcTagHandler$TagTechnologyHandler;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/nfc/NfcTagHandler;->mTech:Landroid/nfc/tech/TagTechnology;

    iput-object p2, p0, Lorg/chromium/device/nfc/NfcTagHandler;->mTechHandler:Lorg/chromium/device/nfc/NfcTagHandler$TagTechnologyHandler;

    invoke-static {p3}, Lorg/chromium/device/nfc/NfcTagHandler;->bytesToSerialNumber([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/device/nfc/NfcTagHandler;->mSerialNumber:Ljava/lang/String;

    return-void
.end method

.method private static bytesToSerialNumber([B)Ljava/lang/String;
    .locals 5

    array-length v0, p0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-byte v3, p0, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/nfc/Tag;)Lorg/chromium/device/nfc/NfcTagHandler;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/chromium/device/nfc/NfcBlocklist;->getInstance()Lorg/chromium/device/nfc/NfcBlocklist;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/chromium/device/nfc/NfcBlocklist;->isTagBlocked(Landroid/nfc/Tag;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Lorg/chromium/device/nfc/NfcTagHandler;

    new-instance v2, Lorg/chromium/device/nfc/NfcTagHandler$NdefHandler;

    invoke-direct {v2, v1}, Lorg/chromium/device/nfc/NfcTagHandler$NdefHandler;-><init>(Landroid/nfc/tech/Ndef;)V

    invoke-virtual {p0}, Landroid/nfc/Tag;->getId()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lorg/chromium/device/nfc/NfcTagHandler;-><init>(Landroid/nfc/tech/TagTechnology;Lorg/chromium/device/nfc/NfcTagHandler$TagTechnologyHandler;[B)V

    return-object v0

    :cond_2
    invoke-static {p0}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v0, Lorg/chromium/device/nfc/NfcTagHandler;

    new-instance v2, Lorg/chromium/device/nfc/NfcTagHandler$NdefFormattableHandler;

    invoke-direct {v2, v1}, Lorg/chromium/device/nfc/NfcTagHandler$NdefFormattableHandler;-><init>(Landroid/nfc/tech/NdefFormatable;)V

    invoke-virtual {p0}, Landroid/nfc/Tag;->getId()[B

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lorg/chromium/device/nfc/NfcTagHandler;-><init>(Landroid/nfc/tech/TagTechnology;Lorg/chromium/device/nfc/NfcTagHandler$TagTechnologyHandler;[B)V

    :cond_3
    return-object v0
.end method


# virtual methods
.method public canAlwaysOverwrite()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/nfc/NfcTagHandler;->mTechHandler:Lorg/chromium/device/nfc/NfcTagHandler$TagTechnologyHandler;

    invoke-interface {p0}, Lorg/chromium/device/nfc/NfcTagHandler$TagTechnologyHandler;->canAlwaysOverwrite()Z

    move-result p0

    return p0
.end method

.method public connect()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcTagHandler;->mTech:Landroid/nfc/tech/TagTechnology;

    invoke-interface {v0}, Landroid/nfc/tech/TagTechnology;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcTagHandler;->mTech:Landroid/nfc/tech/TagTechnology;

    invoke-interface {v0}, Landroid/nfc/tech/TagTechnology;->connect()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/device/nfc/NfcTagHandler;->mWasConnected:Z

    :cond_0
    return-void
.end method

.method public isTagOutOfRange()Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/device/nfc/NfcTagHandler;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    iget-boolean p0, p0, Lorg/chromium/device/nfc/NfcTagHandler;->mWasConnected:Z

    return p0
.end method

.method public makeReadOnly()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/nfc/NfcTagHandler;->mTechHandler:Lorg/chromium/device/nfc/NfcTagHandler$TagTechnologyHandler;

    invoke-interface {p0}, Lorg/chromium/device/nfc/NfcTagHandler$TagTechnologyHandler;->makeReadOnly()Z

    move-result p0

    return p0
.end method

.method public read()Landroid/nfc/NdefMessage;
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/nfc/NfcTagHandler;->mTechHandler:Lorg/chromium/device/nfc/NfcTagHandler$TagTechnologyHandler;

    invoke-interface {p0}, Lorg/chromium/device/nfc/NfcTagHandler$TagTechnologyHandler;->read()Landroid/nfc/NdefMessage;

    move-result-object p0

    return-object p0
.end method

.method public serialNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/nfc/NfcTagHandler;->mSerialNumber:Ljava/lang/String;

    return-object p0
.end method

.method public write(Landroid/nfc/NdefMessage;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/nfc/NfcTagHandler;->mTechHandler:Lorg/chromium/device/nfc/NfcTagHandler$TagTechnologyHandler;

    invoke-interface {p0, p1}, Lorg/chromium/device/nfc/NfcTagHandler$TagTechnologyHandler;->write(Landroid/nfc/NdefMessage;)V

    return-void
.end method
