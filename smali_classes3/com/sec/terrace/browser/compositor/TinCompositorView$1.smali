.class Lcom/sec/terrace/browser/compositor/TinCompositorView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/compositor/TinCompositorView;->didSwapFrame(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/compositor/TinCompositorView;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/compositor/TinCompositorView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView$1;->this$0:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/compositor/TinCompositorView$1;->this$0:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method
