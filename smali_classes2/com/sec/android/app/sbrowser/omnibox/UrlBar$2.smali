.class Lcom/sec/android/app/sbrowser/omnibox/UrlBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$2;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    move-result p1

    const/16 v0, 0x2002

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$2;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$2;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result p1

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$2;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$2;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->f(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$2;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->g(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$2;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->attachTextChangeListener()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$2;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->f(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/UrlBar$2;->this$0:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->g(Lcom/sec/android/app/sbrowser/omnibox/UrlBar;Z)V

    :goto_0
    return v1
.end method
