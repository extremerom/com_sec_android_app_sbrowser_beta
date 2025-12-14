.class Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/history/common/MHThumbnailUtil$ThumbnailUtilDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->updateThumbnailAsynchronously(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$model:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;Ljava/lang/String;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$1;->val$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$1;->val$model:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCookies()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$1;->val$model:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getCookies()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDuration()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$1;->val$model:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getDuration()I

    move-result p0

    return p0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$1;->val$model:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getPageUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$1;->val$model:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->getVideoUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onThumbnailUpdated(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$1;->val$imageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$1;->val$model:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->setDefaultThumbnail(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$1;->val$model:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;->setThumbnail(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController$1;->val$model:Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;

    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseController;->updateMediaHistoryThumbnail(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/history/model/MHDatabaseModel;)V

    return-void
.end method
