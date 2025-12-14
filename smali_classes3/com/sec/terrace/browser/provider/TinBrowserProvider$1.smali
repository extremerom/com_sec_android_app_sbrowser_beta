.class Lcom/sec/terrace/browser/provider/TinBrowserProvider$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/provider/TinBrowserProvider;->onCreate()Z
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

    iput-object p1, p0, Lcom/sec/terrace/browser/provider/TinBrowserProvider$1;->this$0:Lcom/sec/terrace/browser/provider/TinBrowserProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lorg/chromium/content_public/browser/BrowserStartupController;->getInstance()Lorg/chromium/content_public/browser/BrowserStartupController;

    move-result-object v0

    new-instance v1, Lcom/sec/terrace/browser/provider/TinBrowserProvider$1$1;

    invoke-direct {v1, p0}, Lcom/sec/terrace/browser/provider/TinBrowserProvider$1$1;-><init>(Lcom/sec/terrace/browser/provider/TinBrowserProvider$1;)V

    invoke-interface {v0, v1}, Lorg/chromium/content_public/browser/BrowserStartupController;->addStartupCompletedObserver(Lorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;)V

    return-void
.end method
