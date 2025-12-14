.class Lcom/sec/terrace/content/browser/TinContentViewCore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/TinContentViewCore;->initSelectionDelegate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/TinContentViewCore;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$1;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addToNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$1;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->d(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/terrace/TerraceContentViewCallback;->addToNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public canExtractText()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$1;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->d(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->canExtractText()Z

    move-result p0

    return p0
.end method

.method public clearMultiSelection()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$1;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->clearMultiSelection()V

    return-void
.end method

.method public copySelectedTexts()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$1;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->copySelectedTexts()V

    return-void
.end method

.method public extractTextMenu()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$1;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->d(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->extractTextMenu()V

    return-void
.end method

.method public findOnPage(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$1;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->d(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceContentViewCallback;->findOnPage(Ljava/lang/String;)V

    return-void
.end method

.method public getAllSelectedTexts()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$1;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentVisibleViewRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$1;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->getCurrentVisibleRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getSemActionModeType()I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$1;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->d(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->getSemActionModeType()I

    move-result p0

    return p0
.end method

.method public getStylusTextSelectionFragmentCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$1;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->k(Lcom/sec/terrace/content/browser/TinContentViewCore;)I

    move-result p0

    return p0
.end method

.method public isExtensionSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$1;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->d(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->isExtensionSupported()Z

    move-result p0

    return p0
.end method

.method public isSpenSelection()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$1;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->f(Lcom/sec/terrace/content/browser/TinContentViewCore;)Z

    move-result p0

    return p0
.end method

.method public performLongPressHapticFeedbackIfNeeded()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$1;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->performLongPressHapticFeedbackIfNeeded()V

    return-void
.end method

.method public resetSpenSelection()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$1;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->h(Lcom/sec/terrace/content/browser/TinContentViewCore;)V

    return-void
.end method

.method public shouldAllowAddToNote()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$1;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->d(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->shouldAllowAddToNote()Z

    move-result p0

    return p0
.end method

.method public showClipboard()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$1;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->d(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceContentViewCallback;->showClipboard()V

    return-void
.end method

.method public webSearch(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinContentViewCore$1;->this$0:Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinContentViewCore;->d(Lcom/sec/terrace/content/browser/TinContentViewCore;)Lcom/sec/terrace/TerraceContentViewCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceContentViewCallback;->webSearch(Ljava/lang/String;)V

    return-void
.end method
