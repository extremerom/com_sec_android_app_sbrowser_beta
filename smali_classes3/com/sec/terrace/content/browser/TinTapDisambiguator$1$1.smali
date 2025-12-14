.class Lcom/sec/terrace/content/browser/TinTapDisambiguator$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/TinTapDisambiguator$1;->onPopupZoomerShown(Lcom/sec/terrace/content/browser/TinPopupZoomer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/terrace/content/browser/TinTapDisambiguator$1;

.field final synthetic val$zoomer:Lcom/sec/terrace/content/browser/TinPopupZoomer;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/TinTapDisambiguator$1;Lcom/sec/terrace/content/browser/TinPopupZoomer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator$1$1;->this$1:Lcom/sec/terrace/content/browser/TinTapDisambiguator$1;

    iput-object p2, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator$1$1;->val$zoomer:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator$1$1;->this$1:Lcom/sec/terrace/content/browser/TinTapDisambiguator$1;

    iget-object v0, v0, Lcom/sec/terrace/content/browser/TinTapDisambiguator$1;->val$containerView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator$1$1;->val$zoomer:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator$1$1;->this$1:Lcom/sec/terrace/content/browser/TinTapDisambiguator$1;

    iget-object v0, v0, Lcom/sec/terrace/content/browser/TinTapDisambiguator$1;->val$containerView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator$1$1;->val$zoomer:Lcom/sec/terrace/content/browser/TinPopupZoomer;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
