.class Lcom/sec/terrace/Terrace$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/ImageDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/Terrace;->downloadImage(Ljava/lang/String;ZIZLcom/sec/terrace/content/browser/TerraceImageDownloadCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/Terrace;

.field final synthetic val$callback:Lcom/sec/terrace/content/browser/TerraceImageDownloadCallback;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/content/browser/TerraceImageDownloadCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/Terrace$2;->this$0:Lcom/sec/terrace/Terrace;

    iput-object p2, p0, Lcom/sec/terrace/Terrace$2;->val$callback:Lcom/sec/terrace/content/browser/TerraceImageDownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishDownloadImage(IILorg/chromium/url/GURL;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/chromium/url/GURL;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/Terrace$2;->val$callback:Lcom/sec/terrace/content/browser/TerraceImageDownloadCallback;

    invoke-virtual {p3}, Lorg/chromium/url/GURL;->getSpec()Ljava/lang/String;

    move-result-object v3

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/content/browser/TerraceImageDownloadCallback;->onFinishDownloadImage(IILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
