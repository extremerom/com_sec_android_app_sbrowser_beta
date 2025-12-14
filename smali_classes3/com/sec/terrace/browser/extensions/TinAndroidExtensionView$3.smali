.class Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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

.field final synthetic val$emptyHolder:Landroid/widget/FrameLayout;

.field final synthetic val$layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field final synthetic val$rootContentView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;Landroid/view/View$OnLayoutChangeListener;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$3;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    iput-object p2, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$3;->val$layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iput-object p3, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$3;->val$emptyHolder:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$3;->val$rootContentView:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$3;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {v0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->e(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionViewJni;->get()Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$Natives;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$3;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {v1}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->e(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$3;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$Natives;->close(JLcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$3;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {v0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->j(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$3;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {v0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->m(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$3;->val$layoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$3;->val$emptyHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$3;->val$rootContentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$3;->val$emptyHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$3;->val$emptyHolder:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$3;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->k(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V

    return-void
.end method
