.class Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->initSeekBarParent(Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$3;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result p1

    or-int/2addr p1, p2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$3;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->e(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    const/16 v2, 0x42

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$3;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->l(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$3;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->k(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->o(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$3;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->h(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;)Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$Listener;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$3;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->k(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;)I

    move-result p2

    int-to-double p2, p2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr p2, v2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$3;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->g(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;)Z

    move-result v2

    invoke-interface {p1, p2, p3, v2}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$Listener;->onProgressChangeConfirmed(DZ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$3;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->dismissPopup(Z)V

    return v1

    :cond_1
    const v2, -0x7ffffff9

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$3;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->l(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$3;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    const/16 p1, 0x64

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->o(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;I)V

    return v1

    :cond_2
    const/16 v2, 0x15

    if-ne p1, v2, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$3;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    xor-int/lit8 p1, p2, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->n(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;Z)V

    return v1

    :cond_3
    const/16 v2, 0x16

    if-ne p1, v2, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    if-ne p3, v1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$3;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->n(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;Z)V

    return v1

    :cond_4
    const/16 p2, 0x6f

    if-ne p1, p2, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$3;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->f(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->o(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;I)V

    :cond_5
    return v0
.end method
