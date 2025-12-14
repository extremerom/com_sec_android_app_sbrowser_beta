.class Lcom/sec/terrace/Terrace$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/Terrace;->getContextMenuImageElementBounds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/base/Callback<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/Terrace;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/Terrace;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/Terrace$5;->this$0:Lcom/sec/terrace/Terrace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace$5;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace$5;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->onContextMenuImageElementBoundsReceived(Landroid/graphics/Rect;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/Terrace$5;->onResult(Landroid/graphics/Rect;)V

    return-void
.end method
