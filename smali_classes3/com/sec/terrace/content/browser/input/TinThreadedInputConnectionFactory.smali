.class public Lcom/sec/terrace/content/browser/input/TinThreadedInputConnectionFactory;
.super Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/InputMethodManagerWrapper;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;-><init>(Lorg/chromium/content_public/browser/InputMethodManagerWrapper;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic initializeAndGet(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapterImpl;IIIIIILjava/lang/String;Landroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;
    .locals 0

    invoke-virtual/range {p0 .. p10}, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnectionFactory;->initializeAndGet(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapterImpl;IIIIIILjava/lang/String;Landroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ThreadedInputConnection;

    move-result-object p0

    return-object p0
.end method

.method public initializeAndGet(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapterImpl;IIIIIILjava/lang/String;Landroid/view/inputmethod/EditorInfo;)Lorg/chromium/content/browser/input/ThreadedInputConnection;
    .locals 0

    invoke-static {}, Lorg/chromium/content/browser/input/ImeUtils;->checkOnUiThread()V

    invoke-static/range {p3 .. p10}, Lorg/chromium/content/browser/input/ImeUtils;->computeEditorInfo(IIIIIILjava/lang/String;Landroid/view/inputmethod/EditorInfo;)V

    const/4 p4, 0x5

    if-ne p3, p4, :cond_0

    iget p3, p10, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 p3, p3, 0x1000

    iput p3, p10, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_0
    move-object p3, p2

    check-cast p3, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;

    invoke-virtual {p3}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object p3

    invoke-virtual {p3}, Lorg/chromium/content/browser/webcontents/WebContentsImpl;->isIncognito()Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "disablePrediction=true"

    iput-object p3, p10, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    :cond_1
    iget-object p3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mThreadedInputConnection:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    if-nez p3, :cond_2

    new-instance p3, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection;

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->getHandler()Landroid/os/Handler;

    move-result-object p4

    invoke-direct {p3, p1, p2, p4}, Lcom/sec/terrace/content/browser/input/TinThreadedInputConnection;-><init>(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapterImpl;Landroid/os/Handler;)V

    iput-object p3, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mThreadedInputConnection:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lorg/chromium/content/browser/input/ThreadedInputConnection;->resetOnUiThread()V

    :goto_0
    iget-object p0, p0, Lorg/chromium/content/browser/input/ThreadedInputConnectionFactory;->mThreadedInputConnection:Lorg/chromium/content/browser/input/ThreadedInputConnection;

    return-object p0
.end method
