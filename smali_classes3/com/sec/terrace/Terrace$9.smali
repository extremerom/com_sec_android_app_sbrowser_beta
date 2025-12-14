.class Lcom/sec/terrace/Terrace$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialogBridge;


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

    iput-object p1, p0, Lcom/sec/terrace/Terrace$9;->this$0:Lcom/sec/terrace/Terrace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAccountChooserDialog(Lcom/sec/terrace/TerraceActivity;Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace$9;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace$9;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/TerraceListenerCallback;->onCreateAccountChooserDialog(Lcom/sec/terrace/TerraceActivity;Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;)V

    return-void
.end method
