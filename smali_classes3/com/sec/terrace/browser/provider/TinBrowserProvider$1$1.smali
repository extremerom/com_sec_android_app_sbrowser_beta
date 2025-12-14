.class Lcom/sec/terrace/browser/provider/TinBrowserProvider$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/provider/TinBrowserProvider$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/terrace/browser/provider/TinBrowserProvider$1;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/provider/TinBrowserProvider$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider$1$1;->this$1:Lcom/sec/terrace/browser/provider/TinBrowserProvider$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider$1$1;->this$1:Lcom/sec/terrace/browser/provider/TinBrowserProvider$1;

    iget-object p0, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider$1;->this$0:Lcom/sec/terrace/browser/provider/TinBrowserProvider;

    invoke-static {p0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider;->b(Lcom/sec/terrace/browser/provider/TinBrowserProvider;)V

    return-void
.end method
