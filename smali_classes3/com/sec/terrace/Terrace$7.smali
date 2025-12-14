.class Lcom/sec/terrace/Terrace$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller$Delegate;


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

    iput-object p1, p0, Lcom/sec/terrace/Terrace$7;->this$0:Lcom/sec/terrace/Terrace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isHoverScrollEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace$7;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceListenerCallback;->isHoverScrollEnabled()Z

    move-result p0

    return p0
.end method

.method public resetSPenHoverCursor()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace$7;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/terrace/Terrace;->v(Lcom/sec/terrace/Terrace;)V

    return-void
.end method

.method public setSPenHoverIcon(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/Terrace$7;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceListenerCallback;->setSPenHoverIcon(I)V

    return-void
.end method
