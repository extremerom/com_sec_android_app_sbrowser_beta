.class Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->createSidePanelView(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$2;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$2;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p1}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->a(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$2;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->a(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->setDraggable(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$2;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p1}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->a(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$2;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->a(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->setDraggable(Z)V

    :cond_1
    :goto_0
    return v0
.end method
