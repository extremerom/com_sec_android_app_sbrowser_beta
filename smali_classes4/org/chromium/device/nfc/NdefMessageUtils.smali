.class public final Lorg/chromium/device/nfc/NdefMessageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final RECORD_TYPE_ABSOLUTE_URL:Ljava/lang/String; = "absolute-url"

.field public static final RECORD_TYPE_EMPTY:Ljava/lang/String; = "empty"

.field public static final RECORD_TYPE_MIME:Ljava/lang/String; = "mime"

.field public static final RECORD_TYPE_SMART_POSTER:Ljava/lang/String; = "smart-poster"

.field public static final RECORD_TYPE_TEXT:Ljava/lang/String; = "text"

.field public static final RECORD_TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final RECORD_TYPE_URL:Ljava/lang/String; = "url"

.field private static final URI_PREFIX_MAP:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 36

    const-string v34, "urn:epc:"

    const-string v35, "urn:nfc:"

    const-string v0, ""

    const-string v1, "http://www."

    const-string v2, "https://www."

    const-string v3, "http://"

    const-string v4, "https://"

    const-string v5, "tel:"

    const-string v6, "mailto:"

    const-string v7, "ftp://anonymous:anonymous@"

    const-string v8, "ftp://ftp."

    const-string v9, "ftps://"

    const-string v10, "sftp://"

    const-string v11, "smb://"

    const-string v12, "nfs://"

    const-string v13, "ftp://"

    const-string v14, "dav://"

    const-string v15, "news:"

    const-string v16, "telnet://"

    const-string v17, "imap:"

    const-string v18, "rtsp://"

    const-string v19, "urn:"

    const-string v20, "pop:"

    const-string v21, "sip:"

    const-string v22, "sips:"

    const-string v23, "tftp:"

    const-string v24, "btspp://"

    const-string v25, "btl2cap://"

    const-string v26, "btgoep://"

    const-string v27, "tcpobex://"

    const-string v28, "irdaobex://"

    const-string v29, "file://"

    const-string v30, "urn:epc:id:"

    const-string v31, "urn:epc:tag:"

    const-string v32, "urn:epc:pat:"

    const-string v33, "urn:epc:raw:"

    filled-new-array/range {v0 .. v35}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/device/nfc/NdefMessageUtils;->URI_PREFIX_MAP:[Ljava/lang/String;

    return-void
.end method

.method private static createEmptyRecord()Lorg/chromium/device/mojom/NdefRecord;
    .locals 3

    new-instance v0, Lorg/chromium/device/mojom/NdefRecord;

    invoke-direct {v0}, Lorg/chromium/device/mojom/NdefRecord;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lorg/chromium/device/mojom/NdefRecord;->category:I

    const-string v2, "empty"

    iput-object v2, v0, Lorg/chromium/device/mojom/NdefRecord;->recordType:Ljava/lang/String;

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/chromium/device/mojom/NdefRecord;->data:[B

    return-object v0
.end method

.method private static createExternalTypeRecord(Ljava/lang/String;[B)Lorg/chromium/device/mojom/NdefRecord;
    .locals 2

    new-instance v0, Lorg/chromium/device/mojom/NdefRecord;

    invoke-direct {v0}, Lorg/chromium/device/mojom/NdefRecord;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lorg/chromium/device/mojom/NdefRecord;->category:I

    iput-object p0, v0, Lorg/chromium/device/mojom/NdefRecord;->recordType:Ljava/lang/String;

    iput-object p1, v0, Lorg/chromium/device/mojom/NdefRecord;->data:[B

    invoke-static {p1}, Lorg/chromium/device/nfc/NdefMessageUtils;->getNdefMessageFromPayloadBytes([B)Lorg/chromium/device/mojom/NdefMessage;

    move-result-object p0

    iput-object p0, v0, Lorg/chromium/device/mojom/NdefRecord;->payloadMessage:Lorg/chromium/device/mojom/NdefMessage;

    return-object v0
.end method

.method private static createLocalRecord(Ljava/lang/String;[B)Lorg/chromium/device/mojom/NdefRecord;
    .locals 2

    new-instance v0, Lorg/chromium/device/mojom/NdefRecord;

    invoke-direct {v0}, Lorg/chromium/device/mojom/NdefRecord;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Lorg/chromium/device/mojom/NdefRecord;->category:I

    iput-object p0, v0, Lorg/chromium/device/mojom/NdefRecord;->recordType:Ljava/lang/String;

    iput-object p1, v0, Lorg/chromium/device/mojom/NdefRecord;->data:[B

    invoke-static {p1}, Lorg/chromium/device/nfc/NdefMessageUtils;->getNdefMessageFromPayloadBytes([B)Lorg/chromium/device/mojom/NdefMessage;

    move-result-object p0

    iput-object p0, v0, Lorg/chromium/device/mojom/NdefRecord;->payloadMessage:Lorg/chromium/device/mojom/NdefMessage;

    return-object v0
.end method

.method private static createMIMERecord(Ljava/lang/String;[B)Lorg/chromium/device/mojom/NdefRecord;
    .locals 2

    new-instance v0, Lorg/chromium/device/mojom/NdefRecord;

    invoke-direct {v0}, Lorg/chromium/device/mojom/NdefRecord;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lorg/chromium/device/mojom/NdefRecord;->category:I

    const-string v1, "mime"

    iput-object v1, v0, Lorg/chromium/device/mojom/NdefRecord;->recordType:Ljava/lang/String;

    iput-object p0, v0, Lorg/chromium/device/mojom/NdefRecord;->mediaType:Ljava/lang/String;

    iput-object p1, v0, Lorg/chromium/device/mojom/NdefRecord;->data:[B

    return-object v0
.end method

.method public static createPlatformExternalRecord(Ljava/lang/String;Ljava/lang/String;[BLorg/chromium/device/mojom/NdefMessage;)Landroid/nfc/NdefRecord;
    .locals 1

    if-eqz p3, :cond_0

    invoke-static {p3}, Lorg/chromium/device/nfc/NdefMessageUtils;->getBytesFromPayloadNdefMessage(Lorg/chromium/device/mojom/NdefMessage;)[B

    move-result-object p2

    :cond_0
    new-instance p3, Landroid/nfc/NdefRecord;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/chromium/base/ApiCompatibilityUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p1

    :goto_0
    const/4 v0, 0x4

    invoke-direct {p3, v0, p0, p1, p2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object p3
.end method

.method public static createPlatformLocalRecord(Ljava/lang/String;Ljava/lang/String;[BLorg/chromium/device/mojom/NdefMessage;)Landroid/nfc/NdefRecord;
    .locals 1

    if-eqz p3, :cond_0

    invoke-static {p3}, Lorg/chromium/device/nfc/NdefMessageUtils;->getBytesFromPayloadNdefMessage(Lorg/chromium/device/mojom/NdefMessage;)[B

    move-result-object p2

    :cond_0
    new-instance p3, Landroid/nfc/NdefRecord;

    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/chromium/base/ApiCompatibilityUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p1

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p3, v0, p0, p1, p2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object p3
.end method

.method public static createPlatformMimeRecord(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .locals 2

    invoke-static {p0}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_1

    new-instance v0, Landroid/nfc/NdefRecord;

    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/chromium/base/ApiCompatibilityUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p1

    :goto_0
    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1, p2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mimeType must have minor type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mimeType must have major type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mimeType is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createPlatformSmartPosterRecord(Ljava/lang/String;Lorg/chromium/device/mojom/NdefMessage;)Landroid/nfc/NdefRecord;
    .locals 10

    if-eqz p1, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    iget-object v6, p1, Lorg/chromium/device/mojom/NdefMessage;->data:[Lorg/chromium/device/mojom/NdefRecord;

    array-length v7, v6

    const/4 v8, 0x1

    if-ge v1, v7, :cond_8

    aget-object v6, v6, v1

    iget-object v7, v6, Lorg/chromium/device/mojom/NdefRecord;->recordType:Ljava/lang/String;

    const-string v9, "url"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v2, :cond_0

    move v2, v8

    goto :goto_1

    :cond_0
    new-instance p0, Lorg/chromium/device/nfc/InvalidNdefMessageException;

    invoke-direct {p0}, Lorg/chromium/device/nfc/InvalidNdefMessageException;-><init>()V

    throw p0

    :cond_1
    iget-object v7, v6, Lorg/chromium/device/mojom/NdefRecord;->recordType:Ljava/lang/String;

    const-string v9, ":s"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-nez v3, :cond_2

    iget-object v3, v6, Lorg/chromium/device/mojom/NdefRecord;->data:[B

    array-length v3, v3

    const/4 v6, 0x4

    if-ne v3, v6, :cond_2

    move v3, v8

    goto :goto_1

    :cond_2
    new-instance p0, Lorg/chromium/device/nfc/InvalidNdefMessageException;

    invoke-direct {p0}, Lorg/chromium/device/nfc/InvalidNdefMessageException;-><init>()V

    throw p0

    :cond_3
    iget-object v7, v6, Lorg/chromium/device/mojom/NdefRecord;->recordType:Ljava/lang/String;

    const-string v9, ":t"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-nez v4, :cond_4

    move v4, v8

    goto :goto_1

    :cond_4
    new-instance p0, Lorg/chromium/device/nfc/InvalidNdefMessageException;

    invoke-direct {p0}, Lorg/chromium/device/nfc/InvalidNdefMessageException;-><init>()V

    throw p0

    :cond_5
    iget-object v7, v6, Lorg/chromium/device/mojom/NdefRecord;->recordType:Ljava/lang/String;

    const-string v9, ":act"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-nez v5, :cond_6

    iget-object v5, v6, Lorg/chromium/device/mojom/NdefRecord;->data:[B

    array-length v5, v5

    if-ne v5, v8, :cond_6

    move v5, v8

    goto :goto_1

    :cond_6
    new-instance p0, Lorg/chromium/device/nfc/InvalidNdefMessageException;

    invoke-direct {p0}, Lorg/chromium/device/nfc/InvalidNdefMessageException;-><init>()V

    throw p0

    :cond_7
    :goto_1
    :try_start_0
    iget-object v6, p1, Lorg/chromium/device/mojom/NdefMessage;->data:[Lorg/chromium/device/mojom/NdefRecord;

    aget-object v6, v6, v1

    invoke-static {v6}, Lorg/chromium/device/nfc/NdefMessageUtils;->toNdefRecord(Lorg/chromium/device/mojom/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/chromium/device/nfc/InvalidNdefMessageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    new-instance p0, Lorg/chromium/device/nfc/InvalidNdefMessageException;

    invoke-direct {p0}, Lorg/chromium/device/nfc/InvalidNdefMessageException;-><init>()V

    throw p0

    :cond_8
    if-eqz v2, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/nfc/NdefRecord;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-direct {v0, p1}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    new-instance p1, Landroid/nfc/NdefRecord;

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_SMART_POSTER:[B

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_2

    :cond_9
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p0

    :goto_2
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1, v8, v1, p0, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object p1

    :cond_a
    new-instance p0, Lorg/chromium/device/nfc/InvalidNdefMessageException;

    invoke-direct {p0}, Lorg/chromium/device/nfc/InvalidNdefMessageException;-><init>()V

    throw p0

    :cond_b
    new-instance p0, Lorg/chromium/device/nfc/InvalidNdefMessageException;

    invoke-direct {p0}, Lorg/chromium/device/nfc/InvalidNdefMessageException;-><init>()V

    throw p0
.end method

.method public static createPlatformTextRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;
    .locals 3

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length v0, p1

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2

    array-length v0, p1

    int-to-byte v0, v0

    const-string v1, "utf-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    or-int/lit8 p2, v0, -0x80

    int-to-byte v0, p2

    :cond_0
    array-length p2, p1

    const/4 v1, 0x1

    add-int/2addr p2, v1

    array-length v2, p3

    add-int/2addr p2, v2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-instance p1, Landroid/nfc/NdefRecord;

    sget-object p3, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p0

    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p1, v1, p3, p0, p2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "language code is too long, must be <64 bytes."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "encoding is invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lang is invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createPlatformUrlRecord([BLjava/lang/String;Z)Landroid/nfc/NdefRecord;
    .locals 4

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/chromium/base/ApiCompatibilityUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_1

    new-instance p2, Landroid/nfc/NdefRecord;

    const/4 v1, 0x3

    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {p2, v1, p0, p1, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object p2

    :cond_1
    const/4 p2, 0x1

    move v0, p2

    :goto_1
    sget-object v1, Lorg/chromium/device/nfc/NdefMessageUtils;->URI_PREFIX_MAP:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_3

    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    int-to-byte v2, v0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_2
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p0

    array-length v0, p0

    add-int/2addr v0, p2

    new-array v0, v0, [B

    aput-byte v2, v0, v3

    array-length v1, p0

    invoke-static {p0, v3, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Landroid/nfc/NdefRecord;

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_URI:[B

    invoke-direct {p0, p2, v1, p1, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "uri is empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createSmartPosterRecord([B)Lorg/chromium/device/mojom/NdefRecord;
    .locals 2

    new-instance v0, Lorg/chromium/device/mojom/NdefRecord;

    invoke-direct {v0}, Lorg/chromium/device/mojom/NdefRecord;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lorg/chromium/device/mojom/NdefRecord;->category:I

    const-string v1, "smart-poster"

    iput-object v1, v0, Lorg/chromium/device/mojom/NdefRecord;->recordType:Ljava/lang/String;

    iput-object p0, v0, Lorg/chromium/device/mojom/NdefRecord;->data:[B

    invoke-static {p0}, Lorg/chromium/device/nfc/NdefMessageUtils;->getNdefMessageFromPayloadBytes([B)Lorg/chromium/device/mojom/NdefMessage;

    move-result-object p0

    iput-object p0, v0, Lorg/chromium/device/mojom/NdefRecord;->payloadMessage:Lorg/chromium/device/mojom/NdefMessage;

    return-object v0
.end method

.method private static createTextRecord([B)Lorg/chromium/device/mojom/NdefRecord;
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lorg/chromium/device/mojom/NdefRecord;

    invoke-direct {v0}, Lorg/chromium/device/mojom/NdefRecord;-><init>()V

    const/4 v2, 0x0

    iput v2, v0, Lorg/chromium/device/mojom/NdefRecord;->category:I

    const-string v3, "text"

    iput-object v3, v0, Lorg/chromium/device/mojom/NdefRecord;->recordType:Ljava/lang/String;

    aget-byte v2, p0, v2

    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_1

    const-string v3, "utf-8"

    goto :goto_0

    :cond_1
    const-string v3, "utf-16"

    :goto_0
    iput-object v3, v0, Lorg/chromium/device/mojom/NdefRecord;->encoding:Ljava/lang/String;

    and-int/lit8 v2, v2, 0x3f

    new-instance v3, Ljava/lang/String;

    const-string v4, "US-ASCII"

    const/4 v5, 0x1

    invoke-direct {v3, p0, v5, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v3, v0, Lorg/chromium/device/mojom/NdefRecord;->lang:Ljava/lang/String;

    add-int/2addr v2, v5

    array-length v3, p0

    if-le v2, v3, :cond_2

    return-object v1

    :cond_2
    array-length v1, p0

    invoke-static {p0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    iput-object p0, v0, Lorg/chromium/device/mojom/NdefRecord;->data:[B

    return-object v0
.end method

.method private static createURLRecord(Landroid/net/Uri;Z)Lorg/chromium/device/mojom/NdefRecord;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/chromium/device/mojom/NdefRecord;

    invoke-direct {v0}, Lorg/chromium/device/mojom/NdefRecord;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lorg/chromium/device/mojom/NdefRecord;->category:I

    if-eqz p1, :cond_1

    const-string p1, "absolute-url"

    iput-object p1, v0, Lorg/chromium/device/mojom/NdefRecord;->recordType:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "url"

    iput-object p1, v0, Lorg/chromium/device/mojom/NdefRecord;->recordType:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object p0

    iput-object p0, v0, Lorg/chromium/device/mojom/NdefRecord;->data:[B

    return-object v0
.end method

.method private static createUnknownRecord([B)Lorg/chromium/device/mojom/NdefRecord;
    .locals 2

    new-instance v0, Lorg/chromium/device/mojom/NdefRecord;

    invoke-direct {v0}, Lorg/chromium/device/mojom/NdefRecord;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lorg/chromium/device/mojom/NdefRecord;->category:I

    const-string v1, "unknown"

    iput-object v1, v0, Lorg/chromium/device/mojom/NdefRecord;->recordType:Ljava/lang/String;

    iput-object p0, v0, Lorg/chromium/device/mojom/NdefRecord;->data:[B

    return-object v0
.end method

.method private static createWellKnownRecord(Landroid/nfc/NdefRecord;)Lorg/chromium/device/mojom/NdefRecord;
    .locals 3

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v0

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_URI:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->toUri()Landroid/net/Uri;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/chromium/device/nfc/NdefMessageUtils;->createURLRecord(Landroid/net/Uri;Z)Lorg/chromium/device/mojom/NdefRecord;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v0

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/device/nfc/NdefMessageUtils;->createTextRecord([B)Lorg/chromium/device/mojom/NdefRecord;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v0

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_SMART_POSTER:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/device/nfc/NdefMessageUtils;->createSmartPosterRecord([B)Lorg/chromium/device/mojom/NdefRecord;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/device/nfc/NdefMessageUtils;->isValidLocalType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object p0

    invoke-static {v0, p0}, Lorg/chromium/device/nfc/NdefMessageUtils;->createLocalRecord(Ljava/lang/String;[B)Lorg/chromium/device/mojom/NdefRecord;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static emptyNdefMessage()Landroid/nfc/NdefMessage;
    .locals 4

    new-instance v0, Landroid/nfc/NdefMessage;

    new-instance v1, Landroid/nfc/NdefRecord;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v2, v2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    new-array v2, v3, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    return-object v0
.end method

.method private static getBytesFromPayloadNdefMessage(Lorg/chromium/device/mojom/NdefMessage;)[B
    .locals 0

    :try_start_0
    invoke-static {p0}, Lorg/chromium/device/nfc/NdefMessageUtils;->toNdefMessage(Lorg/chromium/device/mojom/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object p0

    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Lorg/chromium/device/nfc/InvalidNdefMessageException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getNdefMessageFromPayloadBytes([B)Lorg/chromium/device/mojom/NdefMessage;
    .locals 1

    :try_start_0
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-direct {v0, p0}, Landroid/nfc/NdefMessage;-><init>([B)V

    invoke-static {v0}, Lorg/chromium/device/nfc/NdefMessageUtils;->toNdefMessage(Landroid/nfc/NdefMessage;)Lorg/chromium/device/mojom/NdefMessage;

    move-result-object p0
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isValidExternalType(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xff

    if-le v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    const/4 v2, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const-string v0, "[a-zA-Z0-9:!()+,\\-=@;$_*\'.]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v2

    :cond_6
    :goto_0
    return v1
.end method

.method private static isValidLocalType(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x100

    if-le v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public static toNdefMessage(Lorg/chromium/device/mojom/NdefMessage;)Landroid/nfc/NdefMessage;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/chromium/device/mojom/NdefMessage;->data:[Lorg/chromium/device/mojom/NdefRecord;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/chromium/device/nfc/NdefMessageUtils;->toNdefRecord(Lorg/chromium/device/mojom/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/nfc/NdefRecord;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-direct {v0, p0}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/chromium/device/nfc/InvalidNdefMessageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Lorg/chromium/device/nfc/InvalidNdefMessageException;

    invoke-direct {p0}, Lorg/chromium/device/nfc/InvalidNdefMessageException;-><init>()V

    throw p0
.end method

.method public static toNdefMessage(Landroid/nfc/NdefMessage;)Lorg/chromium/device/mojom/NdefMessage;
    .locals 4

    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object p0

    new-instance v0, Lorg/chromium/device/mojom/NdefMessage;

    invoke-direct {v0}, Lorg/chromium/device/mojom/NdefMessage;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/chromium/device/nfc/NdefMessageUtils;->toNdefRecord(Landroid/nfc/NdefRecord;)Lorg/chromium/device/mojom/NdefRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/chromium/device/mojom/NdefRecord;

    iput-object p0, v0, Lorg/chromium/device/mojom/NdefMessage;->data:[Lorg/chromium/device/mojom/NdefRecord;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method private static toNdefRecord(Lorg/chromium/device/mojom/NdefRecord;)Landroid/nfc/NdefRecord;
    .locals 8

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget v3, p0, Lorg/chromium/device/mojom/NdefRecord;->category:I

    const/4 v4, 0x1

    if-nez v3, :cond_8

    iget-object v3, p0, Lorg/chromium/device/mojom/NdefRecord;->recordType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_0
    move v1, v6

    goto :goto_1

    :sswitch_0
    const-string v1, "empty"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v1, "text"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :sswitch_2
    const-string v1, "mime"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "url"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v7, "unknown"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :sswitch_5
    const-string v1, "absolute-url"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_1

    :sswitch_6
    const-string v1, "smart-poster"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v2

    :cond_6
    :goto_1
    packed-switch v1, :pswitch_data_0

    new-instance p0, Lorg/chromium/device/nfc/InvalidNdefMessageException;

    invoke-direct {p0}, Lorg/chromium/device/nfc/InvalidNdefMessageException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p0, Landroid/nfc/NdefRecord;

    invoke-direct {p0, v2, v5, v5, v5}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lorg/chromium/device/mojom/NdefRecord;->id:Ljava/lang/String;

    iget-object v1, p0, Lorg/chromium/device/mojom/NdefRecord;->lang:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/device/mojom/NdefRecord;->encoding:Ljava/lang/String;

    iget-object p0, p0, Lorg/chromium/device/mojom/NdefRecord;->data:[B

    invoke-static {v0, v1, v2, p0}, Lorg/chromium/device/nfc/NdefMessageUtils;->createPlatformTextRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lorg/chromium/device/mojom/NdefRecord;->mediaType:Ljava/lang/String;

    iget-object v1, p0, Lorg/chromium/device/mojom/NdefRecord;->id:Ljava/lang/String;

    iget-object p0, p0, Lorg/chromium/device/mojom/NdefRecord;->data:[B

    invoke-static {v0, v1, p0}, Lorg/chromium/device/nfc/NdefMessageUtils;->createPlatformMimeRecord(Ljava/lang/String;Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object v0, p0, Lorg/chromium/device/mojom/NdefRecord;->data:[B

    iget-object p0, p0, Lorg/chromium/device/mojom/NdefRecord;->id:Ljava/lang/String;

    invoke-static {v0, p0, v2}, Lorg/chromium/device/nfc/NdefMessageUtils;->createPlatformUrlRecord([BLjava/lang/String;Z)Landroid/nfc/NdefRecord;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance v1, Landroid/nfc/NdefRecord;

    iget-object v2, p0, Lorg/chromium/device/mojom/NdefRecord;->id:Ljava/lang/String;

    if-nez v2, :cond_7

    move-object v2, v5

    goto :goto_2

    :cond_7
    invoke-static {v2}, Lorg/chromium/base/ApiCompatibilityUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v2

    :goto_2
    iget-object p0, p0, Lorg/chromium/device/mojom/NdefRecord;->data:[B

    invoke-direct {v1, v0, v5, v2, p0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1

    :pswitch_5
    iget-object v0, p0, Lorg/chromium/device/mojom/NdefRecord;->data:[B

    iget-object p0, p0, Lorg/chromium/device/mojom/NdefRecord;->id:Ljava/lang/String;

    invoke-static {v0, p0, v4}, Lorg/chromium/device/nfc/NdefMessageUtils;->createPlatformUrlRecord([BLjava/lang/String;Z)Landroid/nfc/NdefRecord;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget-object v0, p0, Lorg/chromium/device/mojom/NdefRecord;->id:Ljava/lang/String;

    iget-object p0, p0, Lorg/chromium/device/mojom/NdefRecord;->payloadMessage:Lorg/chromium/device/mojom/NdefMessage;

    invoke-static {v0, p0}, Lorg/chromium/device/nfc/NdefMessageUtils;->createPlatformSmartPosterRecord(Ljava/lang/String;Lorg/chromium/device/mojom/NdefMessage;)Landroid/nfc/NdefRecord;

    move-result-object p0

    return-object p0

    :cond_8
    if-ne v3, v4, :cond_b

    iget-object v0, p0, Lorg/chromium/device/mojom/NdefRecord;->recordType:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/device/nfc/NdefMessageUtils;->isValidExternalType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/chromium/device/mojom/NdefRecord;->data:[B

    array-length v1, v0

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/chromium/device/mojom/NdefRecord;->payloadMessage:Lorg/chromium/device/mojom/NdefMessage;

    if-nez v1, :cond_a

    :cond_9
    iget-object v1, p0, Lorg/chromium/device/mojom/NdefRecord;->recordType:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/device/mojom/NdefRecord;->id:Ljava/lang/String;

    iget-object p0, p0, Lorg/chromium/device/mojom/NdefRecord;->payloadMessage:Lorg/chromium/device/mojom/NdefMessage;

    invoke-static {v1, v2, v0, p0}, Lorg/chromium/device/nfc/NdefMessageUtils;->createPlatformExternalRecord(Ljava/lang/String;Ljava/lang/String;[BLorg/chromium/device/mojom/NdefMessage;)Landroid/nfc/NdefRecord;

    move-result-object p0

    return-object p0

    :cond_a
    new-instance p0, Lorg/chromium/device/nfc/InvalidNdefMessageException;

    invoke-direct {p0}, Lorg/chromium/device/nfc/InvalidNdefMessageException;-><init>()V

    throw p0

    :cond_b
    if-ne v3, v1, :cond_e

    iget-object v0, p0, Lorg/chromium/device/mojom/NdefRecord;->recordType:Ljava/lang/String;

    invoke-static {v0}, Lorg/chromium/device/nfc/NdefMessageUtils;->isValidLocalType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/chromium/device/mojom/NdefRecord;->data:[B

    array-length v0, v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/chromium/device/mojom/NdefRecord;->payloadMessage:Lorg/chromium/device/mojom/NdefMessage;

    if-nez v0, :cond_d

    :cond_c
    iget-object v0, p0, Lorg/chromium/device/mojom/NdefRecord;->recordType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/device/mojom/NdefRecord;->id:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/device/mojom/NdefRecord;->data:[B

    iget-object p0, p0, Lorg/chromium/device/mojom/NdefRecord;->payloadMessage:Lorg/chromium/device/mojom/NdefMessage;

    invoke-static {v0, v1, v2, p0}, Lorg/chromium/device/nfc/NdefMessageUtils;->createPlatformLocalRecord(Ljava/lang/String;Ljava/lang/String;[BLorg/chromium/device/mojom/NdefMessage;)Landroid/nfc/NdefRecord;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance p0, Lorg/chromium/device/nfc/InvalidNdefMessageException;

    invoke-direct {p0}, Lorg/chromium/device/nfc/InvalidNdefMessageException;-><init>()V

    throw p0

    :cond_e
    new-instance p0, Lorg/chromium/device/nfc/InvalidNdefMessageException;

    invoke-direct {p0}, Lorg/chromium/device/nfc/InvalidNdefMessageException;-><init>()V

    throw p0

    :sswitch_data_0
    .sparse-switch
        -0x6b93922f -> :sswitch_6
        -0x43aa4be7 -> :sswitch_5
        -0x10fa53b6 -> :sswitch_4
        0x1c56f -> :sswitch_3
        0x332434 -> :sswitch_2
        0x36452d -> :sswitch_1
        0x5c2854d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toNdefRecord(Landroid/nfc/NdefRecord;)Lorg/chromium/device/mojom/NdefRecord;
    .locals 4

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v0

    const-string v1, "UTF-8"

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/device/nfc/NdefMessageUtils;->createUnknownRecord([B)Lorg/chromium/device/mojom/NdefRecord;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    invoke-static {v0, v2}, Lorg/chromium/device/nfc/NdefMessageUtils;->createExternalTypeRecord(Ljava/lang/String;[B)Lorg/chromium/device/mojom/NdefRecord;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->toUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/chromium/device/nfc/NdefMessageUtils;->createURLRecord(Landroid/net/Uri;Z)Lorg/chromium/device/mojom/NdefRecord;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    invoke-static {v0, v2}, Lorg/chromium/device/nfc/NdefMessageUtils;->createMIMERecord(Ljava/lang/String;[B)Lorg/chromium/device/mojom/NdefRecord;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lorg/chromium/device/nfc/NdefMessageUtils;->createWellKnownRecord(Landroid/nfc/NdefRecord;)Lorg/chromium/device/mojom/NdefRecord;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-static {}, Lorg/chromium/device/nfc/NdefMessageUtils;->createEmptyRecord()Lorg/chromium/device/mojom/NdefRecord;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getId()[B

    move-result-object p0

    invoke-direct {v2, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, v0, Lorg/chromium/device/mojom/NdefRecord;->id:Ljava/lang/String;

    :cond_6
    return-object v0
.end method
