.class Lcom/sec/terrace/TerraceActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/TerraceActivity;->initializeDisplayListener()V
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

    iput-object p1, p0, Lcom/sec/terrace/TerraceActivity$5;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$5;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TerraceActivity;->j(Lcom/sec/terrace/TerraceActivity;)Lorg/chromium/ui/base/ActivityWindowAndroid;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$5;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TerraceActivity;->j(Lcom/sec/terrace/TerraceActivity;)Lorg/chromium/ui/base/ActivityWindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/TerraceActivity$5;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lcom/sec/terrace/TerraceActivity;->j(Lcom/sec/terrace/TerraceActivity;)Lorg/chromium/ui/base/ActivityWindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getDisplay()Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_0

    const-string v0, "Display of ActivityWindowAndroid is removed. Activity should be recreated. displayId : "

    const-string v1, "TerraceActivity"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/TerraceActivity$5;->this$0:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p0}, Lcom/sec/terrace/TerraceActivity;->l(Lcom/sec/terrace/TerraceActivity;)V

    :cond_0
    return-void
.end method
