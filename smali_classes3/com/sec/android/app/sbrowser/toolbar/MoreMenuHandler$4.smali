.class Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$4;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->updateContentView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$4;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$4;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->g(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$4;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->g(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$4;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->j(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$4;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->j(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f14105d

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler$4;->this$0:Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;->g(Lcom/sec/android/app/sbrowser/toolbar/MoreMenuHandler;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f14105e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method
