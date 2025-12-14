.class Lorg/chromium/content/browser/BrowserStartupControllerImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/BrowserStartupControllerImpl;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/BrowserStartupControllerImpl;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/BrowserStartupControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl$1;->this$0:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/content/browser/BrowserStartupControllerImpl$1;->this$0:Lorg/chromium/content/browser/BrowserStartupControllerImpl;

    new-instance v1, Lorg/chromium/content/browser/BrowserStartupControllerImpl$1$1;

    invoke-direct {v1, p0}, Lorg/chromium/content/browser/BrowserStartupControllerImpl$1$1;-><init>(Lorg/chromium/content/browser/BrowserStartupControllerImpl$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/BrowserStartupControllerImpl;->addStartupCompletedObserver(Lorg/chromium/content_public/browser/BrowserStartupController$StartupCallback;)V

    return-void
.end method
