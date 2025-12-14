.class Lorg/chromium/device/nfc/NfcImpl$ReaderCallbackHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/nfc/NfcImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReaderCallbackHandler"
.end annotation


# instance fields
.field private final mNfcImpl:Lorg/chromium/device/nfc/NfcImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/device/nfc/NfcImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/device/nfc/NfcImpl$ReaderCallbackHandler;->mNfcImpl:Lorg/chromium/device/nfc/NfcImpl;

    return-void
.end method


# virtual methods
.method public onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/device/nfc/NfcImpl$ReaderCallbackHandler;->mNfcImpl:Lorg/chromium/device/nfc/NfcImpl;

    invoke-virtual {p0, p1}, Lorg/chromium/device/nfc/NfcImpl;->onTagDiscovered(Landroid/nfc/Tag;)V

    return-void
.end method
