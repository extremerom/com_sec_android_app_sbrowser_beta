.class public abstract Lcom/sec/terrace/TerraceClipboardUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clipboardUpdated()V
    .locals 1

    invoke-static {}, Lorg/chromium/ui/base/Clipboard;->getInstance()Lorg/chromium/ui/base/Clipboard;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/Clipboard;->onPrimaryClipChanged()V

    return-void
.end method

.method public static setTerraceClipboardUtils(Lcom/sec/terrace/TerraceClipboardUtils;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/TinClipboardUtils;->setDelegate(Lcom/sec/terrace/TerraceClipboardUtils;)V

    return-void
.end method


# virtual methods
.method public abstract canPaste(Landroid/content/Context;)Z
.end method

.method public abstract canPasteAsPlainText()Z
.end method

.method public abstract canShowSecClipboard(Landroid/content/Context;)Z
.end method

.method public abstract clipboardKeycode()I
.end method

.method public abstract copyToSecClipboard(Landroid/content/Context;Landroid/content/ClipData;)Z
.end method

.method public abstract getPrimaryClipHtml(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getPrimaryClipText(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract handleClipboardActionIfRestrictedByKnoxPolicy(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract isSecClipboardShowing(Landroid/content/Context;)Z
.end method

.method public abstract unregisterClipboardEventListener()V
.end method
