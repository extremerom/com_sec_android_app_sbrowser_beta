.class Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCaptureDrawHelper$OnStartDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->initialize(Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectCapture;Lcom/samsung/android/app/sdk/deepsky/objectcapture/base/ObjectResult;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStarDrag()Landroid/content/ClipData;
    .locals 10
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const-string v0, "IO Error occurred during image drag file close!"

    const-string v1, "ObjectCaptureView"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->b(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "images"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v3, "Image Drag Folder cannot be created."

    invoke-direct {p0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    :goto_0
    new-instance v4, Ljava/io/File;

    const-string v5, "drag-clipped-images"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "Drag image failed, Unable to create drag image file!"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_3
    :goto_1
    const-string v3, ".png"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->e(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;)Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$ObjectCaptureViewDelegate;->getObjBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->b(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;)Landroid/content/Context;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->b(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".FileProvider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->g()[Ljava/lang/String;

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_4

    aget-object v7, v3, v6

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    invoke-static {v8}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->b(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;)Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v7, v2, v9}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v2, v4

    goto/16 :goto_7

    :catch_1
    move-exception p0

    move-object v2, v4

    goto :goto_5

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->b(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;)Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->b(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;)Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->b(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v3

    const-string v5, "8530"

    invoke-static {v3, v5}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView$1;->this$0:Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;->b(Lcom/sec/android/app/sbrowser/object_capture/ObjectCaptureView;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "object-capture-drag-label"

    invoke-static {p0, v3, v2}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catch_2
    :try_start_3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-object p0

    :goto_5
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred during image drag operation!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_6

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_6
    const-string p0, "dummy label"

    const-string v0, "dummy"

    invoke-static {p0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    return-object p0

    :goto_7
    if-eqz v2, :cond_7

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_8

    :catch_5
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_8
    throw p0
.end method
