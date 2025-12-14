.class Lcom/sec/terrace/TerraceHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/TerraceHelper;->initializeAsyncResumed(Landroid/content/Context;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/TerraceHelper;

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$startupCallback:Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/TerraceHelper;Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/TerraceHelper$2;->this$0:Lcom/sec/terrace/TerraceHelper;

    iput-object p2, p0, Lcom/sec/terrace/TerraceHelper$2;->val$startupCallback:Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;

    iput-object p3, p0, Lcom/sec/terrace/TerraceHelper$2;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceHelper$2;->val$startupCallback:Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;->onFailure()V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/TerraceHelper$2;->this$0:Lcom/sec/terrace/TerraceHelper;

    invoke-static {v0}, Lcom/sec/terrace/TerraceHelper;->d(Lcom/sec/terrace/TerraceHelper;)V

    const-string v0, "TerraceHelper"

    const-string v1, "initializeAsyncResumed: initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/terrace/TerraceHelper$2;->val$startupCallback:Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;

    invoke-interface {v0}, Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;->onSuccess()V

    iget-object v0, p0, Lcom/sec/terrace/TerraceHelper$2;->this$0:Lcom/sec/terrace/TerraceHelper;

    iget-object p0, p0, Lcom/sec/terrace/TerraceHelper$2;->val$applicationContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sec/terrace/TerraceHelper;->e(Lcom/sec/terrace/TerraceHelper;Landroid/content/Context;)V

    return-void
.end method
