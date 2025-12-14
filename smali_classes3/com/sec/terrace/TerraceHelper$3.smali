.class Lcom/sec/terrace/TerraceHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;


# instance fields
.field final synthetic val$runner:Ljava/lang/Runnable;


# virtual methods
.method public onFailure()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceHelper$3;->val$runner:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
