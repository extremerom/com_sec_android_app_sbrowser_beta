.class Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$2;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$2;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p1}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->g(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)Lcom/sec/terrace/TerraceActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/TinTerraceInternals;->getCompositorView(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/compositor/TinCompositorView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-double p2, p2

    const-wide p4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr p2, p4

    double-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-double p6, p1

    mul-double/2addr p6, p4

    double-to-int p1, p6

    const-string p3, "onLayoutChange width : "

    const-string p4, " height : "

    const-string p5, "TinAndroidExtensionView"

    invoke-static {p2, p1, p3, p4, p5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$2;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p3}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->a(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionViewJni;->get()Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$Natives;

    move-result-object v0

    iget-object p3, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$2;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p3}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->e(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$2;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    move v4, p2

    move v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$Natives;->setMaxSize(JLcom/sec/terrace/browser/extensions/TinAndroidExtensionView;II)V

    iget-object p3, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$2;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p3}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->d(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$2;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p3}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->g(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)Lcom/sec/terrace/TerraceActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p3

    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Display;->getRotation()I

    move-result p3

    iget-object p4, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$2;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p4}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->f(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)I

    move-result p4

    if-eq p3, p4, :cond_1

    iget-object p4, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$2;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p4, p3}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->l(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;I)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$2;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->a(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->resizeDueToAutoResize(II)V

    :cond_1
    return-void
.end method
