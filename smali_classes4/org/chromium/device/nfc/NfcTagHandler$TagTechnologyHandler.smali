.class interface abstract Lorg/chromium/device/nfc/NfcTagHandler$TagTechnologyHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/nfc/NfcTagHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TagTechnologyHandler"
.end annotation


# virtual methods
.method public abstract canAlwaysOverwrite()Z
.end method

.method public abstract makeReadOnly()Z
.end method

.method public abstract read()Landroid/nfc/NdefMessage;
.end method

.method public abstract write(Landroid/nfc/NdefMessage;)V
.end method
