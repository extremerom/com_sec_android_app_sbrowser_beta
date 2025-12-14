.class Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUiDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScannedImageList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->p(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->getScannedImageList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSelectableCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->p(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->getSelectableCount()I

    move-result p0

    return p0
.end method

.method public getSelectedCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->p(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->getSelectedCount()I

    move-result p0

    return p0
.end method

.method public isAllItemLoaded()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->p(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageController;->isAllItemLoaded()Z

    move-result p0

    return p0
.end method

.method public isDesktopMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public isLandscapeView()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeView(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isLongPressDragging()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->q(Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;)Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUi;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/save_image/model/SaveAllImageUi;->isLongPressDragging()Z

    move-result p0

    return p0
.end method

.method public updateUi()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity$1;->this$0:Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/save_image/SaveAllImageActivity;->updateUi()V

    return-void
.end method
