.class Lcom/sec/terrace/Terrace$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/Terrace;->getBitmapAsync(IIIILandroid/graphics/Bitmap$Config;Lcom/sec/terrace/Terrace$BitmapRequestCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/base/Callback<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/Terrace;

.field final synthetic val$bitmapRequestCallback:Lcom/sec/terrace/Terrace$BitmapRequestCallback;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/Terrace$BitmapRequestCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/Terrace$1;->this$0:Lcom/sec/terrace/Terrace;

    iput-object p2, p0, Lcom/sec/terrace/Terrace$1;->val$bitmapRequestCallback:Lcom/sec/terrace/Terrace$BitmapRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace$1;->val$bitmapRequestCallback:Lcom/sec/terrace/Terrace$BitmapRequestCallback;

    invoke-interface {p0, p1}, Lcom/sec/terrace/Terrace$BitmapRequestCallback;->onReceivedBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "getBitmapAsync"

    const-string p1, "FAILED - bitmap is null or recycled"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace$1;->onResult(Landroid/graphics/Bitmap;)V

    return-void
.end method
