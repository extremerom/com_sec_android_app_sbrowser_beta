.class Lcom/sec/android/app/sbrowser/infobars/InfoBarService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->createInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->c(Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->c(Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/tab/TabLayout;->EMPTY:Lcom/sec/android/app/sbrowser/tab/TabLayout;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->a(Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->c(Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getVisibleTopMargin()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->c(Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)Lcom/sec/android/app/sbrowser/tab/TabLayout;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/tab/TabLayout;->getBottomMargin()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->adjustInfoBarContainer(II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->a(Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarService$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->b(Lcom/sec/android/app/sbrowser/infobars/InfoBarService;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->adjustInfoBarHeight(Z)V

    :goto_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
