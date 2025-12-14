.class Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->initSeekBar(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

.field final synthetic val$seekBarParent:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$2;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$2;->val$seekBarParent:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$2;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    sget-object p3, Lcom/sec/android/app/sbrowser/common/constants/SBrowserConstants;->ZOOM_PERCENT:[I

    aget p2, p3, p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->m(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$2;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->i(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$2;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->k(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%d%%"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$2;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->h(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;)Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$Listener;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$2;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->k(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;)I

    move-result p2

    int-to-double p2, p2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p2, v0

    invoke-interface {p1, p2, p3}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$Listener;->onProgressChanged(D)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$2;->val$seekBarParent:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$2;->val$seekBarParent:Lcom/sec/android/app/sbrowser/common/model/main/SeekbarContainer;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$2;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->i(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
