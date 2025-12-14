.class Lorg/chromium/device/nfc/NfcTagHandler$NdefFormattableHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/nfc/NfcTagHandler$TagTechnologyHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/nfc/NfcTagHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NdefFormattableHandler"
.end annotation


# instance fields
.field private final mNdefFormattable:Landroid/nfc/tech/NdefFormatable;


# direct methods
.method public constructor <init>(Landroid/nfc/tech/NdefFormatable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/nfc/NfcTagHandler$NdefFormattableHandler;->mNdefFormattable:Landroid/nfc/tech/NdefFormatable;

    return-void
.end method


# virtual methods
.method public canAlwaysOverwrite()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public makeReadOnly()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lorg/chromium/device/nfc/NfcTagHandler$NdefFormattableHandler;->mNdefFormattable:Landroid/nfc/tech/NdefFormatable;

    invoke-static {}, Lorg/chromium/device/nfc/NdefMessageUtils;->emptyNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/nfc/tech/NdefFormatable;->formatReadOnly(Landroid/nfc/NdefMessage;)V
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public read()Landroid/nfc/NdefMessage;
    .locals 0

    invoke-static {}, Lorg/chromium/device/nfc/NdefMessageUtils;->emptyNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object p0

    return-object p0
.end method

.method public write(Landroid/nfc/NdefMessage;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/nfc/NfcTagHandler$NdefFormattableHandler;->mNdefFormattable:Landroid/nfc/tech/NdefFormatable;

    invoke-virtual {p0, p1}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;)V

    return-void
.end method
