.class Lorg/chromium/device/nfc/NfcTagHandler$NdefHandler;
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
    name = "NdefHandler"
.end annotation


# instance fields
.field private final mNdef:Landroid/nfc/tech/Ndef;


# direct methods
.method public constructor <init>(Landroid/nfc/tech/Ndef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/nfc/NfcTagHandler$NdefHandler;->mNdef:Landroid/nfc/tech/Ndef;

    return-void
.end method


# virtual methods
.method public canAlwaysOverwrite()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/nfc/NfcTagHandler$NdefHandler;->mNdef:Landroid/nfc/tech/Ndef;

    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public makeReadOnly()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/nfc/NfcTagHandler$NdefHandler;->mNdef:Landroid/nfc/tech/Ndef;

    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->makeReadOnly()Z

    move-result p0

    return p0
.end method

.method public read()Landroid/nfc/NdefMessage;
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/nfc/NfcTagHandler$NdefHandler;->mNdef:Landroid/nfc/tech/Ndef;

    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object p0

    return-object p0
.end method

.method public write(Landroid/nfc/NdefMessage;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/nfc/NfcTagHandler$NdefHandler;->mNdef:Landroid/nfc/tech/Ndef;

    invoke-virtual {v0, p1}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    iget-object p0, p0, Lorg/chromium/device/nfc/NfcTagHandler$NdefHandler;->mNdef:Landroid/nfc/tech/Ndef;

    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->close()V

    return-void
.end method
