.class Lcom/sec/terrace/content/browser/TinDragDropHandler$1;
.super Lcom/sec/terrace/content/browser/TinDragDropHandler$TinImageDragStatusCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/TinDragDropHandler;->startImageDrag(Landroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lorg/chromium/ui/dragdrop/DropDataAndroid;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/TinDragDropHandler;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/TinDragDropHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$1;->this$0:Lcom/sec/terrace/content/browser/TinDragDropHandler;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/TinDragDropHandler$TinImageDragStatusCallback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public notifyImageDragStatus(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$1;->this$0:Lcom/sec/terrace/content/browser/TinDragDropHandler;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->c(Lcom/sec/terrace/content/browser/TinDragDropHandler;)V

    :cond_0
    return-void
.end method
