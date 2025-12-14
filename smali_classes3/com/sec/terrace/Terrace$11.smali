.class Lcom/sec/terrace/Terrace$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/favicon/TinFaviconManager$FaviconListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/Terrace;->initializeWithContext(Lcom/sec/terrace/Terrace$TerraceClient;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/Terrace;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/Terrace;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/Terrace$11;->this$0:Lcom/sec/terrace/Terrace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaviconAvailable(Landroid/graphics/Bitmap;Z)V
    .locals 6

    iget-object v0, p0, Lcom/sec/terrace/Terrace$11;->this$0:Lcom/sec/terrace/Terrace;

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/Terrace$11;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v1}, Lcom/sec/terrace/Terrace;->e(Lcom/sec/terrace/Terrace;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/sec/terrace/Terrace$11;->this$0:Lcom/sec/terrace/Terrace;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5, p2}, Lcom/sec/terrace/Terrace;->isBetterFavicon(IIZ)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/sec/terrace/Terrace$11;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p2}, Lcom/sec/terrace/Terrace;->h(Lcom/sec/terrace/Terrace;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/terrace/Terrace$11;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v4}, Lcom/sec/terrace/Terrace;->h(Lcom/sec/terrace/Terrace;)I

    move-result v4

    invoke-static {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/sec/terrace/Terrace;->n(Lcom/sec/terrace/Terrace;Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/sec/terrace/Terrace$11;->this$0:Lcom/sec/terrace/Terrace;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {p2, v3}, Lcom/sec/terrace/Terrace;->q(Lcom/sec/terrace/Terrace;I)V

    iget-object p2, p0, Lcom/sec/terrace/Terrace$11;->this$0:Lcom/sec/terrace/Terrace;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {p2, p1}, Lcom/sec/terrace/Terrace;->o(Lcom/sec/terrace/Terrace;I)V

    move p1, v2

    :goto_1
    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/sec/terrace/Terrace$11;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p1, v0}, Lcom/sec/terrace/Terrace;->p(Lcom/sec/terrace/Terrace;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move v2, p1

    :goto_2
    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/sec/terrace/Terrace$11;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p1}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace$11;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->onFaviconUpdated()V

    return-void
.end method
