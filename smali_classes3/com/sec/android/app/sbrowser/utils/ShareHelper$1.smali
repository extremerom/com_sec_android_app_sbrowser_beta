.class Lcom/sec/android/app/sbrowser/utils/ShareHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/ShareImageFileUtil$OnImageSaveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/utils/ShareHelper;->shareImage(Landroid/content/Context;[BZLjava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gridAreaDirection:I

.field final synthetic val$imageMime:Ljava/lang/String;

.field final synthetic val$isMultiFrameImage:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$1;->val$imageMime:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$1;->val$isMultiFrameImage:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$1;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$1;->val$gridAreaDirection:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageSaved(Ljava/io/File;)V
    .locals 2

    const-string v0, "ShareHelper"

    const-string v1, "onImageSaved"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$1;->val$imageMime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$1;->val$imageMime:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$1;->val$isMultiFrameImage:Z

    if-eqz v0, :cond_1

    const-string v0, "image/gif"

    goto :goto_0

    :cond_1
    const-string v0, "image/jpeg"

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$1;->val$context:Landroid/content/Context;

    iget p0, p0, Lcom/sec/android/app/sbrowser/utils/ShareHelper$1;->val$gridAreaDirection:I

    invoke-static {v1, p1, v0, p0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->c(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    return-void
.end method
