.class public Lorg/chromium/content/app/ContentChildProcessService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mService:Lorg/chromium/base/process_launcher/ChildProcessService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/app/ContentChildProcessService;->mService:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/content/app/ContentChildProcessService;->mService:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-virtual {p0, p1}, Lorg/chromium/base/process_launcher/ChildProcessService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/chromium/content_public/app/ChildProcessServiceFactory;->create(Landroid/app/Service;Landroid/content/Context;)Lorg/chromium/base/process_launcher/ChildProcessService;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/content/app/ContentChildProcessService;->mService:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-virtual {v0}, Lorg/chromium/base/process_launcher/ChildProcessService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lorg/chromium/content/app/ContentChildProcessService;->mService:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/chromium/content/app/ContentChildProcessService;->mService:Lorg/chromium/base/process_launcher/ChildProcessService;

    invoke-virtual {v0}, Lorg/chromium/base/process_launcher/ChildProcessService;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/app/ContentChildProcessService;->mService:Lorg/chromium/base/process_launcher/ChildProcessService;

    return-void
.end method
