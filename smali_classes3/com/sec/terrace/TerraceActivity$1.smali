.class Lcom/sec/terrace/TerraceActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/compositor/TinCompositorView$SurfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/TerraceActivity;->initializeCompositorView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/TerraceActivity;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/TerraceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/TerraceActivity$1;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceCreated()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$1;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TerraceActivity;->g(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$1;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p0}, Lcom/sec/terrace/TerraceActivity;->g(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->surfaceCreated()V

    :cond_0
    return-void
.end method
