.class public interface abstract Lorg/chromium/content_public/browser/StylusWritingImeCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract finishComposingText()V
.end method

.method public abstract getContainerView()Landroid/view/View;
.end method

.method public abstract handleStylusWritingGestureAction(ILorg/chromium/blink/mojom/StylusWritingGestureData;)V
.end method

.method public abstract hideKeyboard()V
.end method

.method public abstract performEditorAction(I)V
.end method

.method public abstract resetGestureDetection()V
.end method

.method public abstract sendCompositionToNative(Ljava/lang/CharSequence;IZ)V
.end method

.method public abstract sendStylusWritingSALogging(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setEditableSelectionOffsets(II)V
.end method

.method public abstract showSoftKeyboard()V
.end method
