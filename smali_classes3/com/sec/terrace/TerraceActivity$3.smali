.class Lcom/sec/terrace/TerraceActivity$3;
.super Lorg/chromium/ui/base/ActivityWindowAndroid;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/TerraceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/TerraceActivity;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/TerraceActivity;Landroid/content/Context;ZLorg/chromium/ui/base/IntentRequestTracker;Lorg/chromium/ui/InsetObserver;Z)V
    .locals 6

    iput-object p1, p0, Lcom/sec/terrace/TerraceActivity$3;->this$0:Lcom/sec/terrace/TerraceActivity;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/chromium/ui/base/ActivityWindowAndroid;-><init>(Landroid/content/Context;ZLorg/chromium/ui/base/IntentRequestTracker;Lorg/chromium/ui/InsetObserver;Z)V

    return-void
.end method


# virtual methods
.method public getReadbackView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$3;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TerraceActivity;->i(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/compositor/TinCompositorView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$3;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p0}, Lcom/sec/terrace/TerraceActivity;->i(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/compositor/TinCompositorView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->getActiveSurfaceView()Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method
