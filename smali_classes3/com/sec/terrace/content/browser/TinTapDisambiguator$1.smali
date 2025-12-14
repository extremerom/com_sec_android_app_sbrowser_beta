.class Lcom/sec/terrace/content/browser/TinTapDisambiguator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/content/browser/TinPopupZoomer$OnVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/TinTapDisambiguator;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/TinTapDisambiguator;

.field final synthetic val$containerView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/TinTapDisambiguator;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator$1;->this$0:Lcom/sec/terrace/content/browser/TinTapDisambiguator;

    iput-object p2, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator$1;->val$containerView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPopupZoomerHidden(Lcom/sec/terrace/content/browser/TinPopupZoomer;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator$1;->val$containerView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/sec/terrace/content/browser/TinTapDisambiguator$1$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/terrace/content/browser/TinTapDisambiguator$1$2;-><init>(Lcom/sec/terrace/content/browser/TinTapDisambiguator$1;Lcom/sec/terrace/content/browser/TinPopupZoomer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator$1;->this$0:Lcom/sec/terrace/content/browser/TinTapDisambiguator;

    invoke-static {p0}, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->c(Lcom/sec/terrace/content/browser/TinTapDisambiguator;)V

    return-void
.end method

.method public onPopupZoomerShown(Lcom/sec/terrace/content/browser/TinPopupZoomer;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator$1;->val$containerView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/sec/terrace/content/browser/TinTapDisambiguator$1$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/terrace/content/browser/TinTapDisambiguator$1$1;-><init>(Lcom/sec/terrace/content/browser/TinTapDisambiguator$1;Lcom/sec/terrace/content/browser/TinPopupZoomer;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
