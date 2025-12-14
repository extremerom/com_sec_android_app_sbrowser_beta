.class public interface abstract Lorg/chromium/content/browser/input/ImeAdapterImpl$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/ImeAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract advanceFocusForIME(JLorg/chromium/content/browser/input/ImeAdapterImpl;I)V
.end method

.method public abstract appendBackgroundColorSpan(JIII)V
.end method

.method public abstract appendForegroundColorSpan(JIII)V
.end method

.method public abstract appendSuggestionSpan(JIIZZZZII[Ljava/lang/String;)V
.end method

.method public abstract appendUnderlineSpan(JII)V
.end method

.method public abstract commitText(JLorg/chromium/content/browser/input/ImeAdapterImpl;Ljava/lang/CharSequence;Ljava/lang/String;I)V
.end method

.method public abstract defersLoading(JLorg/chromium/content/browser/input/ImeAdapterImpl;Z)V
.end method

.method public abstract deleteSurroundingText(JLorg/chromium/content/browser/input/ImeAdapterImpl;II)V
.end method

.method public abstract deleteSurroundingTextInCodePoints(JLorg/chromium/content/browser/input/ImeAdapterImpl;II)V
.end method

.method public abstract finishComposingText(JLorg/chromium/content/browser/input/ImeAdapterImpl;)V
.end method

.method public abstract handleStylusWritingGestureAction(JLorg/chromium/content/browser/input/ImeAdapterImpl;ILjava/nio/ByteBuffer;)V
.end method

.method public abstract init(Lorg/chromium/content/browser/input/ImeAdapterImpl;Lorg/chromium/content_public/browser/WebContents;)J
.end method

.method public abstract requestCursorUpdate(JLorg/chromium/content/browser/input/ImeAdapterImpl;ZZ)V
.end method

.method public abstract requestTextInputStateUpdate(JLorg/chromium/content/browser/input/ImeAdapterImpl;)Z
.end method

.method public abstract sendKeyEvent(JLorg/chromium/content/browser/input/ImeAdapterImpl;Landroid/view/KeyEvent;IIJIIZI)Z
.end method

.method public abstract setComposingRegion(JLorg/chromium/content/browser/input/ImeAdapterImpl;II)V
.end method

.method public abstract setComposingText(JLorg/chromium/content/browser/input/ImeAdapterImpl;Ljava/lang/CharSequence;Ljava/lang/String;I)V
.end method

.method public abstract setEditableSelectionOffsets(JLorg/chromium/content/browser/input/ImeAdapterImpl;II)V
.end method
