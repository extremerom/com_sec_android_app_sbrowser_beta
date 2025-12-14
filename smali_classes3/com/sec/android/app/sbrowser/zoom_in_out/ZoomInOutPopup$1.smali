.class Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/main/SeekbarAccessibilityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$1;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$1;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->j(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;)Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lt/J0;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$1;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/SBrowserConstants;->ZOOM_PERCENT:[I

    aget v0, v2, v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->m(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$1;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->k(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$1;->this$0:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->j(Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;)Landroidx/appcompat/widget/SeslSeekBar;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f14088f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
