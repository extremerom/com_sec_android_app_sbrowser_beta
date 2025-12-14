.class public Lorg/chromium/device/nfc/NfcBlocklist;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final STATIC_HISTORICAL_BYTES:[[B

.field private static sInstance:Lorg/chromium/device/nfc/NfcBlocklist;


# instance fields
.field private mIsTagBlockedForTesting:Ljava/lang/Boolean;

.field private final mServerProvidedHistoricalBytes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    filled-new-array {v0, v1}, [[B

    move-result-object v0

    sput-object v0, Lorg/chromium/device/nfc/NfcBlocklist;->STATIC_HISTORICAL_BYTES:[[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x80t
        0x73t
        -0x40t
        0x21t
        -0x40t
        0x57t
        0x59t
        0x75t
        0x62t
        0x69t
        0x4bt
        0x65t
        0x79t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x59t
        0x75t
        0x62t
        0x69t
        0x6bt
        0x65t
        0x79t
        0x4et
        0x45t
        0x4ft
        0x72t
        0x33t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/device/nfc/NfcBlocklist;->mServerProvidedHistoricalBytes:Ljava/util/List;

    const-string v0, "WebNFCBlockList"

    const-string v1, "historical_bytes_additions"

    invoke-static {v0, v1}, Lorg/chromium/components/variations/VariationsAssociatedData;->getVariationParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/device/nfc/NfcBlocklist;->populateWithServerProvidedValues(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/device/nfc/NfcBlocklist;->mServerProvidedHistoricalBytes:Ljava/util/List;

    invoke-direct {p0, p1}, Lorg/chromium/device/nfc/NfcBlocklist;->populateWithServerProvidedValues(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lorg/chromium/device/nfc/NfcBlocklist;
    .locals 1

    sget-object v0, Lorg/chromium/device/nfc/NfcBlocklist;->sInstance:Lorg/chromium/device/nfc/NfcBlocklist;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/device/nfc/NfcBlocklist;

    invoke-direct {v0}, Lorg/chromium/device/nfc/NfcBlocklist;-><init>()V

    sput-object v0, Lorg/chromium/device/nfc/NfcBlocklist;->sInstance:Lorg/chromium/device/nfc/NfcBlocklist;

    :cond_0
    sget-object v0, Lorg/chromium/device/nfc/NfcBlocklist;->sInstance:Lorg/chromium/device/nfc/NfcBlocklist;

    return-object v0
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "NfcBlocklist"

    if-ne v1, v2, :cond_0

    const-string v0, "Length of %s is odd"

    invoke-static {v4, v0, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    :cond_0
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    if-ltz v8, :cond_2

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    if-gez v8, :cond_1

    goto :goto_1

    :cond_1
    div-int/lit8 v8, v2, 0x2

    invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    add-int/2addr v6, v5

    int-to-byte v5, v6

    aput-byte v5, v1, v8

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    const-string v0, "Invalid hex character found in %s"

    invoke-static {v4, v0, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    :cond_3
    return-object v1
.end method

.method private populateWithServerProvidedValues(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-static {v2}, Lorg/chromium/device/nfc/NfcBlocklist;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/chromium/device/nfc/NfcBlocklist;->mServerProvidedHistoricalBytes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public areHistoricalBytesBlocked([B)Z
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lorg/chromium/device/nfc/NfcBlocklist;->STATIC_HISTORICAL_BYTES:[[B

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Lorg/chromium/device/nfc/NfcBlocklist;->mServerProvidedHistoricalBytes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/chromium/device/nfc/NfcBlocklist;->mServerProvidedHistoricalBytes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    return v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public isTagBlocked(Landroid/nfc/Tag;)Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcBlocklist;->mIsTagBlockedForTesting:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-static {p1}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/nfc/tech/IsoDep;->getHistoricalBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/chromium/device/nfc/NfcBlocklist;->areHistoricalBytesBlocked([B)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "NfcBlocklist"

    const-string p1, "Access to NFC tag is blocked."

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method
