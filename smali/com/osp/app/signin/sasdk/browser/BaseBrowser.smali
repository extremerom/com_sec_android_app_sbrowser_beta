.class public abstract Lcom/osp/app/signin/sasdk/browser/BaseBrowser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mActivityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected mContextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeader:Landroid/os/Bundle;

.field protected mTargetBrowserPackageName:Ljava/lang/String;

.field protected mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/osp/app/signin/sasdk/browser/BaseBrowser;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/osp/app/signin/sasdk/browser/BaseBrowser;->mTargetBrowserPackageName:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/osp/app/signin/sasdk/browser/BaseBrowser;->mContextReference:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/browser/BaseBrowser;->mActivityReference:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/osp/app/signin/sasdk/browser/BaseBrowser;->mHeader:Landroid/os/Bundle;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/osp/app/signin/sasdk/browser/BaseBrowser;->generateTargetBrowserPackageName()Ljava/lang/String;

    move-result-object p4

    :cond_0
    iput-object p4, p0, Lcom/osp/app/signin/sasdk/browser/BaseBrowser;->mTargetBrowserPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract generateTargetBrowserPackageName()Ljava/lang/String;
.end method

.method public getTargetBrowserPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/osp/app/signin/sasdk/browser/BaseBrowser;->mTargetBrowserPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/browser/BaseBrowser;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public abstract start()V
.end method
