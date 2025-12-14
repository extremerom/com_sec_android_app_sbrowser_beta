.class Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$3;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$3;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p1}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->j(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Lcom/sec/terrace/TerraceActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/TinTerraceInternals;->getCompositorView(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/compositor/TinCompositorView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p3, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$3;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p3, p2}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->l(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;I)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "onLayoutChange w:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " h:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ExtensionSidePanelView"

    invoke-static {p3, p1, p2}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$3;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p1}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->d(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$3;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p1}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->a(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$3;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p1}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->a(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$3;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p2}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->c(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->setWidth(I)V

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelViewJni;->get()Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$Natives;

    move-result-object p3

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$3;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p1}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->h(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)J

    move-result-wide p4

    iget-object p6, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$3;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p6}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->c(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)I

    move-result p7

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$3;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p1}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->b(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)I

    move-result p8

    invoke-interface/range {p3 .. p8}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$Natives;->setMaxSize(JLcom/sec/terrace/browser/extensions/ExtensionSidePanelView;II)V

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$3;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p1}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->g(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$3;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p1}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->j(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Lcom/sec/terrace/TerraceActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$3;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p2}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->i(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)I

    move-result p2

    if-eq p1, p2, :cond_2

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$3;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p2, p1}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->n(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;I)V

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$3;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p1}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->d(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$3;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p2}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->c(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)I

    move-result p2

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$3;->this$0:Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->b(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->resizeDueToAutoResize(II)V

    :cond_2
    return-void
.end method
