.class Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapRequestHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/base/Callback<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mRequestCol:I

.field mRequestId:I

.field mRequestRow:I

.field final synthetic this$0:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;


# direct methods
.method private constructor <init>(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;II)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->this$0:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->mRequestRow:I

    iput p3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->mRequestCol:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;-><init>(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;II)V

    return-void
.end method

.method public static bridge synthetic b(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;)Z
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->cancel()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->setRequestId(I)V

    return-void
.end method

.method private cancel()Z
    .locals 2

    const-string v0, "BitmapRequestHandler.cancel"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->this$0:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    invoke-static {v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->b(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;

    move-result-object v1

    iget p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->mRequestId:I

    invoke-interface {v1, p0}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegate;->cancelBitmapRequest(I)Z

    move-result p0

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return p0
.end method

.method private setRequestId(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->mRequestId:I

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->this$0:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    iget v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->mRequestRow:I

    iget v2, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->mRequestCol:I

    invoke-static {v0, v1, v2}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->f(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;II)V

    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->this$0:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    invoke-static {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->c(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)[[Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->this$0:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    invoke-static {v0}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->c(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)[[Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;

    move-result-object v0

    iget v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->mRequestRow:I

    aget-object v0, v0, v1

    iget p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->mRequestCol:I

    const/4 v1, 0x0

    aput-object v1, v0, p0

    return-void
.end method

.method public onResult(Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "BitmapRequestHandler.onResult"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->this$0:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    invoke-static {v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->a(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)[[Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->this$0:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    invoke-static {v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->c(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)[[Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->this$0:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    invoke-static {v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->d(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)[[Z

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->this$0:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    invoke-static {v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->c(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)[[Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;

    move-result-object v1

    iget v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->mRequestRow:I

    aget-object v1, v1, v3

    iget v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->mRequestCol:I

    aget-object v1, v1, v3

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->this$0:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    invoke-static {v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->d(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)[[Z

    move-result-object v1

    iget v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->mRequestRow:I

    aget-object v1, v1, v3

    iget v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->mRequestCol:I

    aget-boolean v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->this$0:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    invoke-static {v1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->a(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)[[Landroid/graphics/Bitmap;

    move-result-object v1

    iget v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->mRequestRow:I

    aget-object v1, v1, v3

    iget v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->mRequestCol:I

    aput-object p1, v1, v3

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->this$0:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    invoke-static {p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->e(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)V

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->this$0:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    iget v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->mRequestRow:I

    iget v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->mRequestCol:I

    invoke-static {p1, v1, v3}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->f(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;II)V

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->this$0:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    invoke-static {p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->c(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)[[Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;

    move-result-object p1

    iget v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->mRequestRow:I

    aget-object p1, p1, v1

    iget p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->mRequestCol:I

    aput-object v2, p1, p0

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->this$0:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    invoke-static {p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->e(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)V

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->this$0:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    iget v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->mRequestRow:I

    iget v3, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->mRequestCol:I

    invoke-static {p1, v1, v3}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->f(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;II)V

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->this$0:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    invoke-static {p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->c(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)[[Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->this$0:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;

    invoke-static {p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;->c(Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState;)[[Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;

    move-result-object p1

    iget v1, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->mRequestRow:I

    aget-object p1, p1, v1

    iget p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->mRequestCol:I

    aput-object v2, p1, p0

    :cond_2
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameBitmapState$BitmapRequestHandler;->onResult(Landroid/graphics/Bitmap;)V

    return-void
.end method
