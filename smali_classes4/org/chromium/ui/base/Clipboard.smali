.class public Lorg/chromium/ui/base/Clipboard;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/base/Clipboard$Natives;,
        Lorg/chromium/ui/base/Clipboard$ImageFileProvider;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static sInstance:Lorg/chromium/ui/base/Clipboard;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mNativeClipboard:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/ui/base/Clipboard;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/ui/base/Clipboard;->sInstance:Lorg/chromium/ui/base/Clipboard;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/chromium/ui/base/ClipboardImpl;

    invoke-direct {v1, v0}, Lorg/chromium/ui/base/ClipboardImpl;-><init>(Landroid/content/ClipboardManager;)V

    sput-object v1, Lorg/chromium/ui/base/Clipboard;->sInstance:Lorg/chromium/ui/base/Clipboard;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/chromium/ui/base/Clipboard;

    invoke-direct {v0}, Lorg/chromium/ui/base/Clipboard;-><init>()V

    sput-object v0, Lorg/chromium/ui/base/Clipboard;->sInstance:Lorg/chromium/ui/base/Clipboard;

    :cond_1
    :goto_0
    sget-object v0, Lorg/chromium/ui/base/Clipboard;->sInstance:Lorg/chromium/ui/base/Clipboard;

    return-object v0
.end method

.method private setNativePtr(J)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-wide p1, p0, Lorg/chromium/ui/base/Clipboard;->mNativeClipboard:J

    return-void
.end method


# virtual methods
.method public canCopy()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canPaste()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public clear()V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    return-void
.end method

.method public getCoercedText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFilenames()[[Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getHTMLText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getImageUriString()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPng()[B
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasCoercedText()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public hasFilenames()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public hasHTMLOrStyledText()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public hasImage()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public hasUrl()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public notifyPrimaryClipChanged()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/ui/base/Clipboard;->mNativeClipboard:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/ui/base/ClipboardJni;->get()Lorg/chromium/ui/base/Clipboard$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/ui/base/Clipboard;->mNativeClipboard:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/ui/base/Clipboard$Natives;->onPrimaryClipChanged(JLorg/chromium/ui/base/Clipboard;)V

    return-void
.end method

.method public notifyPrimaryClipTimestampInvalidated(J)V
    .locals 7

    iget-wide v0, p0, Lorg/chromium/ui/base/Clipboard;->mNativeClipboard:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/ui/base/ClipboardJni;->get()Lorg/chromium/ui/base/Clipboard$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/ui/base/Clipboard;->mNativeClipboard:J

    move-object v4, p0

    move-wide v5, p1

    invoke-interface/range {v1 .. v6}, Lorg/chromium/ui/base/Clipboard$Natives;->onPrimaryClipTimestampInvalidated(JLorg/chromium/ui/base/Clipboard;J)V

    return-void
.end method

.method public onPrimaryClipChanged()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public setFilenames([Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string p0, "Clipboard"

    const-string p1, "setFilenames is a no-op because Clipboard service isn\'t available"

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHTMLText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string p0, "Clipboard"

    const-string p1, "setHTMLText is a no-op because Clipboard service isn\'t available"

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setImage([BLjava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string p0, "Clipboard"

    const-string p1, "setImage is a no-op because Clipboard service isn\'t available"

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string p0, "Clipboard"

    const-string p1, "setPassword is a no-op because Clipboard service isn\'t available"

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p0, "Clipboard"

    const-string p1, "setText is a no-op because Clipboard service isn\'t available"

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
