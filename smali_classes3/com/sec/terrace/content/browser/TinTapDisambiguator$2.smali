.class Lcom/sec/terrace/content/browser/TinTapDisambiguator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/content/browser/TinPopupZoomer$OnTapListener;


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

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator$2;->this$0:Lcom/sec/terrace/content/browser/TinTapDisambiguator;

    iput-object p2, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator$2;->val$containerView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResolveTapDisambiguation(JFFZ)V
    .locals 10

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator$2;->this$0:Lcom/sec/terrace/content/browser/TinTapDisambiguator;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->a(Lcom/sec/terrace/content/browser/TinTapDisambiguator;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TinTapDisambiguator"

    const-string v1, "User Tapped inside Popup Zoomer View"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator$2;->val$containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-static {}, Lcom/sec/terrace/content/browser/TinTapDisambiguatorJni;->get()Lcom/sec/terrace/content/browser/TinTapDisambiguator$Natives;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator$2;->this$0:Lcom/sec/terrace/content/browser/TinTapDisambiguator;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/TinTapDisambiguator;->a(Lcom/sec/terrace/content/browser/TinTapDisambiguator;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator$2;->this$0:Lcom/sec/terrace/content/browser/TinTapDisambiguator;

    move-wide v5, p1

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v1 .. v9}, Lcom/sec/terrace/content/browser/TinTapDisambiguator$Natives;->resolveTapDisambiguation(JLcom/sec/terrace/content/browser/TinTapDisambiguator;JFFZ)V

    const-string p0, "201"

    const-string p1, "2187"

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/TinSALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
