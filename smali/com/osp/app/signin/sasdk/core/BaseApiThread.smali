.class public Lcom/osp/app/signin/sasdk/core/BaseApiThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field protected mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected mBundle:Landroid/os/Bundle;

.field protected mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected mSdkCallback:Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;

.field protected mServiceType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;ILandroid/os/Bundle;Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->mContextRef:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->mActivityRef:Ljava/lang/ref/WeakReference;

    iput p3, p0, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->mServiceType:I

    iput-object p4, p0, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->mBundle:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->mSdkCallback:Lcom/osp/app/signin/sasdk/response/ISaSDKResponse;

    return-void
.end method


# virtual methods
.method public isApiNotAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "context is null."

    invoke-static {p0, v0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/osp/app/signin/sasdk/core/BaseApiThread;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "activity is null."

    invoke-static {p0, v0}, Lcom/osp/app/signin/sasdk/common/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
