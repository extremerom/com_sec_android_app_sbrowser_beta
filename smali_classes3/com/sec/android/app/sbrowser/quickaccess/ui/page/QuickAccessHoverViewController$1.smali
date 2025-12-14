.class Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSPenHoverIcon(Landroid/view/View;Landroid/content/Context;I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->e(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverScrollableView;

    move-result-object p2

    invoke-interface {p2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverScrollableView;->setHoverScrolling(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->e(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverScrollableView;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverScrollableView;->hoverScrollUp()V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/16 v0, 0xa

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->e(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverScrollableView;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IHoverScrollableView;->setHoverScrolling(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessChildViewDelegate;->onHoverScrollUpStopped()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;)Landroid/view/View;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;->a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessHoverViewController;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p2, p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSPenHoverIcon(Landroid/view/View;Landroid/content/Context;I)V

    :cond_2
    :goto_0
    return p1
.end method
