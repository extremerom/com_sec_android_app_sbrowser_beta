.class Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInfoBar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->showZoomInfoBar(ILandroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

.field final synthetic val$anchorView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$1;->val$anchorView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMinusButtonClick(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$1;->val$anchorView:Landroid/view/View;

    invoke-virtual {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->changeZoomValue(ZLandroid/view/View;Z)V

    return-void
.end method

.method public onPlusButtonClick(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$1;->val$anchorView:Landroid/view/View;

    invoke-virtual {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->changeZoomValue(ZLandroid/view/View;Z)V

    return-void
.end method

.method public onResetButtonClick()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->setConfirmedZoomValue(D)V

    return-void
.end method

.method public onZoomInfoBarVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$1;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;->a(Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor;)Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/ZoomFactor$Delegate;->setZoomButtonVisibility(Z)V

    return-void
.end method
