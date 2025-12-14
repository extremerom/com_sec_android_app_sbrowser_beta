.class public interface abstract Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl$TinSelectionDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TinSelectionDelegate"
.end annotation


# virtual methods
.method public abstract addToNote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract canExtractText()Z
.end method

.method public abstract clearMultiSelection()V
.end method

.method public abstract copySelectedTexts()V
.end method

.method public abstract extractTextMenu()V
.end method

.method public abstract findOnPage(Ljava/lang/String;)V
.end method

.method public abstract getAllSelectedTexts()Ljava/lang/String;
.end method

.method public abstract getCurrentVisibleViewRect()Landroid/graphics/Rect;
.end method

.method public abstract getSemActionModeType()I
.end method

.method public abstract getStylusTextSelectionFragmentCount()I
.end method

.method public abstract isExtensionSupported()Z
.end method

.method public abstract isSpenSelection()Z
.end method

.method public abstract performLongPressHapticFeedbackIfNeeded()V
.end method

.method public abstract resetSpenSelection()V
.end method

.method public abstract shouldAllowAddToNote()Z
.end method

.method public abstract showClipboard()V
.end method

.method public abstract webSearch(Ljava/lang/String;)V
.end method
