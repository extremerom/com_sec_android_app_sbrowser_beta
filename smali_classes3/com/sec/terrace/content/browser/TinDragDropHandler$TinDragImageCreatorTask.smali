.class Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/content/browser/TinDragDropHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TinDragImageCreatorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContainerView:Landroid/view/ViewGroup;

.field private mDragImage:Landroid/graphics/Bitmap;

.field private final mHtml:Ljava/lang/String;

.field private final mImageBytes:[B

.field mImageDragStatusCallback:Lcom/sec/terrace/content/browser/TinDragDropHandler$TinImageDragStatusCallback;

.field private final mImageExtension:Ljava/lang/String;

.field private final mImageShadow:Landroid/widget/ImageView;

.field private final mIsIncognito:Z

.field private final mLinkUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/terrace/content/browser/TinDragDropHandler;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/TinDragDropHandler;Landroid/view/ViewGroup;Landroid/widget/ImageView;Lcom/sec/terrace/content/browser/TinDragDropHandler$TinImageDragStatusCallback;ZLandroid/graphics/Bitmap;Lorg/chromium/ui/dragdrop/DropDataAndroid;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->this$0:Lcom/sec/terrace/content/browser/TinDragDropHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mContainerView:Landroid/view/ViewGroup;

    iget-object p1, p7, Lorg/chromium/ui/dragdrop/DropDataAndroid;->imageContent:[B

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mImageBytes:[B

    iget-object p1, p7, Lorg/chromium/ui/dragdrop/DropDataAndroid;->imageContentExtension:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "jpg"

    goto :goto_0

    :cond_0
    iget-object p1, p7, Lorg/chromium/ui/dragdrop/DropDataAndroid;->imageContentExtension:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mImageExtension:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mImageShadow:Landroid/widget/ImageView;

    invoke-virtual {p7}, Lorg/chromium/ui/dragdrop/DropDataAndroid;->hasLink()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p7, Lorg/chromium/ui/dragdrop/DropDataAndroid;->gurl:Lorg/chromium/url/GURL;

    invoke-virtual {p1}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mLinkUrl:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string p1, ""

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mLinkUrl:Ljava/lang/String;

    :goto_1
    iput-object p8, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mHtml:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mImageDragStatusCallback:Lcom/sec/terrace/content/browser/TinDragDropHandler$TinImageDragStatusCallback;

    iput-boolean p5, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mIsIncognito:Z

    iput-object p6, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mDragImage:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/io/File;
    .locals 6

    const-string p1, "IO Error occurred during image drag file close!"

    const-string v0, "TinDragDropHandler"

    const-string v1, "."

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    const-string v5, "drag-images"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Drag image failed, Unable to create drag image file!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-object v3, v2

    goto :goto_2

    :cond_1
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mImageExtension:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mImageBytes:[B

    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v1

    :catchall_1
    move-exception p0

    move-object v2, v3

    goto :goto_4

    :catch_2
    :goto_2
    :try_start_3
    const-string p0, "IO Error occurred during image drag operation!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    return-object v2

    :goto_4
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_5
    throw p0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->doInBackground([Ljava/lang/Void;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Ljava/io/File;)V
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mImageDragStatusCallback:Lcom/sec/terrace/content/browser/TinDragDropHandler$TinImageDragStatusCallback;

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinImageDragStatusCallback;->notifyImageDragStatus(Z)V

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mImageDragStatusCallback:Lcom/sec/terrace/content/browser/TinDragDropHandler$TinImageDragStatusCallback;

    invoke-virtual {p0, v0}, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinImageDragStatusCallback;->notifyImageDragStatus(Z)V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".FileProvider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mLinkUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "terrace-image-or-link-drag-label"

    if-nez v2, :cond_2

    new-instance v2, Landroid/content/ClipData$Item;

    invoke-direct {v2, p1}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    iget-object v4, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mLinkUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/ClipData;->addItem(Landroid/content/ContentResolver;Landroid/content/ClipData$Item;)V

    const-string v2, "3"

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v3, p1}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v3

    const-string v2, "4"

    :goto_0
    invoke-static {}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->d()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v0, v5, :cond_3

    aget-object v6, v4, v0

    const/4 v7, 0x1

    invoke-virtual {v1, v6, p1, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/sec/terrace/content/browser/TinDragDropHandler$ImageDragShadowBuilder;

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mImageShadow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mDragImage:Landroid/graphics/Bitmap;

    invoke-direct {p1, v0, v1}, Lcom/sec/terrace/content/browser/TinDragDropHandler$ImageDragShadowBuilder;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mContainerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->this$0:Lcom/sec/terrace/content/browser/TinDragDropHandler;

    invoke-static {v1}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->b(Lcom/sec/terrace/content/browser/TinDragDropHandler;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-static {v0, v3, p1, v1}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->f(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Landroid/graphics/RectF;)Z

    move-result p1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mDragImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mDragImage:Landroid/graphics/Bitmap;

    :cond_4
    const-string v0, "TinDragDropHandler"

    if-eqz p1, :cond_6

    const-string v1, "Image drag initiated from Framework"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/content/browser/TinImageDragHelper;->getInstance()Lcom/sec/terrace/content/browser/TinImageDragHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mHtml:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/terrace/content/browser/TinImageDragHelper;->setImageDragSourceHTML(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mIsIncognito:Z

    if-eqz v0, :cond_5

    const-string v0, "202"

    goto :goto_2

    :cond_5
    const-string v0, "201"

    :goto_2
    const-string v1, "2185"

    invoke-static {v0, v1, v2}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLogWithDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v1, "Image drag failed to start from Framework"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->mImageDragStatusCallback:Lcom/sec/terrace/content/browser/TinDragDropHandler$TinImageDragStatusCallback;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinImageDragStatusCallback;->notifyImageDragStatus(Z)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinDragImageCreatorTask;->onPostExecute(Ljava/io/File;)V

    return-void
.end method
