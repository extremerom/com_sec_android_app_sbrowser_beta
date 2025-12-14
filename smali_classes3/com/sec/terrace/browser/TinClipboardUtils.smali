.class public Lcom/sec/terrace/browser/TinClipboardUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sClipBoardKeycode:I = -0x1

.field private static sDelegate:Lcom/sec/terrace/TerraceClipboardUtils;


# direct methods
.method public static canPaste(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/TinClipboardUtils;->sDelegate:Lcom/sec/terrace/TerraceClipboardUtils;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/sec/terrace/TerraceClipboardUtils;->canPaste(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static canPasteAsPlainText()Z
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/TinClipboardUtils;->sDelegate:Lcom/sec/terrace/TerraceClipboardUtils;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/TerraceClipboardUtils;->canPasteAsPlainText()Z

    move-result v0

    return v0
.end method

.method public static canShowSecClipboard(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/TinClipboardUtils;->sDelegate:Lcom/sec/terrace/TerraceClipboardUtils;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/sec/terrace/TerraceClipboardUtils;->canShowSecClipboard(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static copyToSecClipboard(Landroid/content/Context;Landroid/content/ClipData;)Z
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/TinClipboardUtils;->sDelegate:Lcom/sec/terrace/TerraceClipboardUtils;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/sec/terrace/TerraceClipboardUtils;->copyToSecClipboard(Landroid/content/Context;Landroid/content/ClipData;)Z

    move-result p0

    return p0
.end method

.method public static getClipBoardKeycode()I
    .locals 1

    sget v0, Lcom/sec/terrace/browser/TinClipboardUtils;->sClipBoardKeycode:I

    return v0
.end method

.method public static getPrimaryClipHtml(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/TinClipboardUtils;->sDelegate:Lcom/sec/terrace/TerraceClipboardUtils;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/sec/terrace/TerraceClipboardUtils;->getPrimaryClipHtml(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPrimaryClipText(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/TinClipboardUtils;->sDelegate:Lcom/sec/terrace/TerraceClipboardUtils;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/sec/terrace/TerraceClipboardUtils;->getPrimaryClipText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static handleClipboardActionIfRestrictedByKnoxPolicy(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/TinClipboardUtils;->sDelegate:Lcom/sec/terrace/TerraceClipboardUtils;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/sec/terrace/TerraceClipboardUtils;->handleClipboardActionIfRestrictedByKnoxPolicy(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSecClipboardShowing(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/TinClipboardUtils;->sDelegate:Lcom/sec/terrace/TerraceClipboardUtils;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/sec/terrace/TerraceClipboardUtils;->isSecClipboardShowing(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static setDelegate(Lcom/sec/terrace/TerraceClipboardUtils;)V
    .locals 0

    sput-object p0, Lcom/sec/terrace/browser/TinClipboardUtils;->sDelegate:Lcom/sec/terrace/TerraceClipboardUtils;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/TerraceClipboardUtils;->clipboardKeycode()I

    move-result p0

    sput p0, Lcom/sec/terrace/browser/TinClipboardUtils;->sClipBoardKeycode:I

    return-void
.end method

.method public static unregisterClipboardEventListener()V
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/TinClipboardUtils;->sDelegate:Lcom/sec/terrace/TerraceClipboardUtils;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/TerraceClipboardUtils;->unregisterClipboardEventListener()V

    return-void
.end method
