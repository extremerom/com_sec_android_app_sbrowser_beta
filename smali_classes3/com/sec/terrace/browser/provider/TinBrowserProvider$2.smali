.class Lcom/sec/terrace/browser/provider/TinBrowserProvider$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/provider/TinBrowserProvider;->canHandleContentProviderApiCall()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/provider/TinBrowserProvider;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/provider/TinBrowserProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider$2;->this$0:Lcom/sec/terrace/browser/provider/TinBrowserProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider$2;->this$0:Lcom/sec/terrace/browser/provider/TinBrowserProvider;

    invoke-static {v0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->a(Lcom/sec/terrace/browser/provider/TinBrowserProvider;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider$2;->this$0:Lcom/sec/terrace/browser/provider/TinBrowserProvider;

    invoke-static {v0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->d(Lcom/sec/terrace/browser/provider/TinBrowserProvider;)V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_0
    iget-object p0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider$2;->this$0:Lcom/sec/terrace/browser/provider/TinBrowserProvider;

    invoke-static {p0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->b(Lcom/sec/terrace/browser/provider/TinBrowserProvider;)V

    return-void
.end method
