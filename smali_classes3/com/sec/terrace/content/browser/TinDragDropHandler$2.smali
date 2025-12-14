.class Lcom/sec/terrace/content/browser/TinDragDropHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/content/browser/TinDragDropHandler;
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

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$2;->this$0:Lcom/sec/terrace/content/browser/TinDragDropHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinDragDropHandler$2;->this$0:Lcom/sec/terrace/content/browser/TinDragDropHandler;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->performAutoScroll()V

    return-void
.end method
