.class Lcom/sec/terrace/content/browser/input/TinSelectPopup$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/content/browser/input/TinSelectPopupDialog$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/input/TinSelectPopup;->show(Landroid/view/View;J[Ljava/lang/String;[IZ[IZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/input/TinSelectPopup;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/input/TinSelectPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopup$1;->this$0:Lcom/sec/terrace/content/browser/input/TinSelectPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveFocusToPrevNextInput(Z)V
    .locals 8

    iget-object v0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopup$1;->this$0:Lcom/sec/terrace/content/browser/input/TinSelectPopup;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/input/TinSelectPopup;->access$000(Lcom/sec/terrace/content/browser/input/TinSelectPopup;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopup$1;->this$0:Lcom/sec/terrace/content/browser/input/TinSelectPopup;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/input/TinSelectPopup;->access$100(Lcom/sec/terrace/content/browser/input/TinSelectPopup;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/input/SelectPopupJni;->get()Lorg/chromium/content/browser/input/SelectPopup$Natives;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopup$1;->this$0:Lcom/sec/terrace/content/browser/input/TinSelectPopup;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/input/TinSelectPopup;->access$200(Lcom/sec/terrace/content/browser/input/TinSelectPopup;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopup$1;->this$0:Lcom/sec/terrace/content/browser/input/TinSelectPopup;

    invoke-static {v4}, Lcom/sec/terrace/content/browser/input/TinSelectPopup;->access$300(Lcom/sec/terrace/content/browser/input/TinSelectPopup;)J

    move-result-wide v5

    move v7, p1

    invoke-interface/range {v1 .. v7}, Lorg/chromium/content/browser/input/SelectPopup$Natives;->moveFocusToPrevNextInput(JLorg/chromium/content/browser/input/SelectPopup;JZ)V

    :cond_0
    return-void
.end method

.method public selectPopupMenuItems([I)V
    .locals 8

    iget-object v0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopup$1;->this$0:Lcom/sec/terrace/content/browser/input/TinSelectPopup;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/input/TinSelectPopup;->access$400(Lcom/sec/terrace/content/browser/input/TinSelectPopup;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopup$1;->this$0:Lcom/sec/terrace/content/browser/input/TinSelectPopup;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/input/TinSelectPopup;->access$500(Lcom/sec/terrace/content/browser/input/TinSelectPopup;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/input/SelectPopupJni;->get()Lorg/chromium/content/browser/input/SelectPopup$Natives;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopup$1;->this$0:Lcom/sec/terrace/content/browser/input/TinSelectPopup;

    invoke-static {v0}, Lcom/sec/terrace/content/browser/input/TinSelectPopup;->access$600(Lcom/sec/terrace/content/browser/input/TinSelectPopup;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/terrace/content/browser/input/TinSelectPopup$1;->this$0:Lcom/sec/terrace/content/browser/input/TinSelectPopup;

    invoke-static {v4}, Lcom/sec/terrace/content/browser/input/TinSelectPopup;->access$700(Lcom/sec/terrace/content/browser/input/TinSelectPopup;)J

    move-result-wide v5

    move-object v7, p1

    invoke-interface/range {v1 .. v7}, Lorg/chromium/content/browser/input/SelectPopup$Natives;->selectMenuItems(JLorg/chromium/content/browser/input/SelectPopup;J[I)V

    :cond_0
    return-void
.end method
