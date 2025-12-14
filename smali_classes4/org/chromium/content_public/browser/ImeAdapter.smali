.class public interface abstract Lorg/chromium/content_public/browser/ImeAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final COMPOSITION_KEY_CODE:I = 0xe5


# direct methods
.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/ImeAdapter;
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/input/ImeAdapterImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/input/ImeAdapterImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getNewShowKeyboardReceiver()Landroid/os/ResultReceiver;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end method

.method public abstract onCheckIsTextEditor()Z
.end method

.method public abstract onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end method

.method public abstract onShowKeyboardReceiveResult(I)V
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end method
