.class public final Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager$getToolbarActionListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;->getToolbarActionListener(Landroid/graphics/Rect;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0002H\u0017\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0004\u00a8\u0006\u000b"
    }
    d2 = {
        "com/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager$getToolbarActionListener$1",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionListener;",
        "Ldb/r;",
        "saveAsSticker",
        "()V",
        "copy",
        "share",
        "edit",
        "saveAsImage",
        "selectAll",
        "saveAsGif",
        "deepsky-sdk-objectcapture-8.5.4_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $rect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager$getToolbarActionListener$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager$getToolbarActionListener$1;->$rect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()V
    .locals 1

    const-string p0, "ToolbarActionManager"

    const-string v0, "copy"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public edit()V
    .locals 2

    const-string v0, "ToolbarActionManager"

    const-string v1, "edit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager$getToolbarActionListener$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;

    invoke-static {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;->access$getObjectResult$p(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager$getToolbarActionListener$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;

    invoke-static {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;->access$getToolbarMenuManager$p(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarMenuManager;

    move-result-object p0

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;->getOutput()Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;->getObjBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarMenuManager;->editClipperFilePath(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public saveAsGif()V
    .locals 1

    const-string p0, "ToolbarActionManager"

    const-string v0, "saveAsGif"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public saveAsImage()V
    .locals 1

    const-string p0, "ToolbarActionManager"

    const-string v0, "saveAsImage"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public saveAsSticker()V
    .locals 2

    const-string v0, "ToolbarActionManager"

    const-string v1, "saveAsSticker"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager$getToolbarActionListener$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;

    invoke-static {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;->access$getObjectResult$p(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager$getToolbarActionListener$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager$getToolbarActionListener$1;->$rect:Landroid/graphics/Rect;

    invoke-static {v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;->access$getToolbarMenuManager$p(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarMenuManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;->getOutput()Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectInfo;->getObjBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarMenuManager;->insertClippedImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public selectAll()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    const-string v0, "ToolbarActionManager"

    const-string v1, "selectAll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager$getToolbarActionListener$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;

    invoke-static {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;->access$getToolbarMenuManager$p(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarMenuManager;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager$getToolbarActionListener$1;->this$0:Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;

    invoke-static {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;->access$getSelectAll$p(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarActionManager;)Lsb/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ToolbarMenuManager;->selectAll(Lsb/a;)V

    return-void
.end method

.method public share()V
    .locals 1

    const-string p0, "ToolbarActionManager"

    const-string v0, "share"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
