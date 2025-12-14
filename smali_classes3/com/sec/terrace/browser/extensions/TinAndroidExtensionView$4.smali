.class Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->createPopupWindow(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$4;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$4;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p1}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->h(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$4;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p1}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->h(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->isKeyboardShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$4;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->h(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;->hideKeyboard()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
