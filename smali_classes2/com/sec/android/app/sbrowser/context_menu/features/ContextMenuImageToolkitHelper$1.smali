.class Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil$OnImageSaveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper;->startImageToolkit(Landroid/content/Context;[BZLjava/lang/String;Ljava/lang/String;IFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gridAreaDirection:I

.field final synthetic val$imageMime:Ljava/lang/String;

.field final synthetic val$isMultiFrameImage:Z

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper;Ljava/lang/String;ZLandroid/content/Context;IFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper$1;->this$0:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper$1;->val$imageMime:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper$1;->val$isMultiFrameImage:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper$1;->val$context:Landroid/content/Context;

    iput p5, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper$1;->val$gridAreaDirection:I

    iput p6, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper$1;->val$x:F

    iput p7, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper$1;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageSaved(Ljava/io/File;)V
    .locals 8

    const-string v0, "ContextMenuImageToolkitHelper"

    const-string v1, "onImageSaved"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper$1;->val$imageMime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper$1;->val$imageMime:Ljava/lang/String;

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper$1;->val$isMultiFrameImage:Z

    if-eqz v0, :cond_1

    const-string v0, "image/gif"

    goto :goto_0

    :cond_1
    const-string v0, "image/jpeg"

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper$1;->this$0:Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper$1;->val$context:Landroid/content/Context;

    iget v5, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper$1;->val$gridAreaDirection:I

    iget v6, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper$1;->val$x:F

    iget v7, p0, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper$1;->val$y:F

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper;->a(Lcom/sec/android/app/sbrowser/context_menu/features/ContextMenuImageToolkitHelper;Landroid/content/Context;Ljava/io/File;Ljava/lang/String;IFF)V

    return-void
.end method
