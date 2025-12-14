.class public Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/TinBitmapRequestHandler$Natives;
    }
.end annotation


# instance fields
.field private mBitmapRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/terrace/Terrace$BitmapRequestCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeBitmapRequestHandler:J

.field private mNextBitmapRequestId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNextBitmapRequestId:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNativeBitmapRequestHandler:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mBitmapRequests:Landroid/util/SparseArray;

    invoke-static {}, Lcom/sec/terrace/content/browser/TinBitmapRequestHandlerJni;->get()Lcom/sec/terrace/content/browser/TinBitmapRequestHandler$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler$Natives;->init(Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNativeBitmapRequestHandler:J

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mBitmapRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mBitmapRequests:Landroid/util/SparseArray;

    invoke-static {}, Lcom/sec/terrace/content/browser/TinBitmapRequestHandlerJni;->get()Lcom/sec/terrace/content/browser/TinBitmapRequestHandler$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNativeBitmapRequestHandler:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler$Natives;->destroy(JLcom/sec/terrace/content/browser/TinBitmapRequestHandler;)V

    return-void
.end method

.method public getBitmapRequestsForTest()Landroid/util/SparseArray;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/sec/terrace/Terrace$BitmapRequestCallback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mBitmapRequests:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getNextBitmapRequestIdForTest()I
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget p0, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNextBitmapRequestId:I

    return p0
.end method

.method public handleCachedBitmapRequest(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V
    .locals 10

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNativeBitmapRequestHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {p2}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mBitmapRequests:Landroid/util/SparseArray;

    iget v2, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNextBitmapRequestId:I

    invoke-virtual {v0, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Lcom/sec/terrace/content/browser/TinBitmapRequestHandlerJni;->get()Lcom/sec/terrace/content/browser/TinBitmapRequestHandler$Natives;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNativeBitmapRequestHandler:J

    iget v9, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNextBitmapRequestId:I

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-interface/range {v3 .. v9}, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler$Natives;->getBitmapFromCache(JLcom/sec/terrace/content/browser/TinBitmapRequestHandler;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;I)V

    iget p1, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNextBitmapRequestId:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNextBitmapRequestId:I

    return-void
.end method

.method public handleContextMenuImageRequest(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V
    .locals 10

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNativeBitmapRequestHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {p3}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mBitmapRequests:Landroid/util/SparseArray;

    iget v2, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNextBitmapRequestId:I

    invoke-virtual {v0, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Lcom/sec/terrace/content/browser/TinBitmapRequestHandlerJni;->get()Lcom/sec/terrace/content/browser/TinBitmapRequestHandler$Natives;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNativeBitmapRequestHandler:J

    iget v9, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNextBitmapRequestId:I

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-interface/range {v3 .. v9}, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler$Natives;->getContextMenuImage(JLcom/sec/terrace/content/browser/TinBitmapRequestHandler;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;I)V

    iget p1, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNextBitmapRequestId:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNextBitmapRequestId:I

    return-void
.end method

.method public handleImageBytesRequest(Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V
    .locals 10

    iget-wide v0, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNativeBitmapRequestHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {p2}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mBitmapRequests:Landroid/util/SparseArray;

    iget v2, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNextBitmapRequestId:I

    invoke-virtual {v0, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Lcom/sec/terrace/content/browser/TinBitmapRequestHandlerJni;->get()Lcom/sec/terrace/content/browser/TinBitmapRequestHandler$Natives;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNativeBitmapRequestHandler:J

    iget v9, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNextBitmapRequestId:I

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-interface/range {v3 .. v9}, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler$Natives;->getImageBytes(JLcom/sec/terrace/content/browser/TinBitmapRequestHandler;Lorg/chromium/content_public/browser/WebContents;Ljava/lang/String;I)V

    iget p1, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNextBitmapRequestId:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mNextBitmapRequestId:I

    return-void
.end method

.method public notifyBitmapResponse(Landroid/graphics/Bitmap;I)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mBitmapRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/Terrace$BitmapRequestCallback;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mBitmapRequests:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->delete(I)V

    invoke-interface {v0, p1}, Lcom/sec/terrace/Terrace$BitmapRequestCallback;->onReceivedBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_1
    const-string p0, "Bitmap callback finished for wrong Id: "

    const-string p1, "TinBitmapRequestHandler"

    invoke-static {p2, p0, p1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public notifyImageBitmapsResponseForClassName([Landroid/graphics/Bitmap;I)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mBitmapRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/Terrace$BitmapRequestCallback;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mBitmapRequests:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->delete(I)V

    invoke-interface {v1, p1}, Lcom/sec/terrace/Terrace$BitmapRequestCallback;->onReceivedBitmaps([Landroid/graphics/Bitmap;)V

    array-length p0, p1

    :goto_1
    if-ge v0, p0, :cond_3

    aget-object p2, p1, v0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string p0, "Bitmap callback finished for wrong Id: "

    const-string p1, "TinBitmapRequestHandler"

    invoke-static {p2, p0, p1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public notifyImageBytesResponse([BZLjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/4 v0, 0x1

    if-lt p5, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mBitmapRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/Terrace$BitmapRequestCallback;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinBitmapRequestHandler;->mBitmapRequests:Landroid/util/SparseArray;

    invoke-virtual {p0, p5}, Landroid/util/SparseArray;->delete(I)V

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/terrace/Terrace$BitmapRequestCallback;->onReceivedImageBytes([BZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string p0, "Image request callback finished for wrong Id: "

    const-string p1, "TinBitmapRequestHandler"

    invoke-static {p5, p0, p1}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
