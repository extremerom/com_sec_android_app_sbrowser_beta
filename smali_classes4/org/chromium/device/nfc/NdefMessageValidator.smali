.class public final Lorg/chromium/device/nfc/NdefMessageValidator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static isValid(Lorg/chromium/device/mojom/NdefMessage;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    iget-object v1, p0, Lorg/chromium/device/mojom/NdefMessage;->data:[Lorg/chromium/device/mojom/NdefRecord;

    if-eqz v1, :cond_3

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/chromium/device/mojom/NdefMessage;->data:[Lorg/chromium/device/mojom/NdefRecord;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/chromium/device/nfc/NdefMessageValidator;->isValid(Lorg/chromium/device/mojom/NdefRecord;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method private static isValid(Lorg/chromium/device/mojom/NdefRecord;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lorg/chromium/device/mojom/NdefRecord;->recordType:Ljava/lang/String;

    const-string v2, "empty"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lorg/chromium/device/mojom/NdefRecord;->data:[B

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lorg/chromium/device/mojom/NdefRecord;->recordType:Ljava/lang/String;

    const-string v3, "mime"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lorg/chromium/device/mojom/NdefRecord;->mediaType:Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_3
    return v0

    :cond_4
    iget-object p0, p0, Lorg/chromium/device/mojom/NdefRecord;->mediaType:Ljava/lang/String;

    if-eqz p0, :cond_5

    return v0

    :cond_5
    return v2
.end method
