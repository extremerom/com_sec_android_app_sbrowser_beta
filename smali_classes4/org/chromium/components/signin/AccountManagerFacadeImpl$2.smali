.class Lorg/chromium/components/signin/AccountManagerFacadeImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/signin/ConnectionRetry$AuthTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/signin/AccountManagerFacadeImpl;->invalidateAccessToken(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/components/signin/ConnectionRetry$AuthTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$completedRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/AccountManagerFacadeImpl;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$2;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    iput-object p2, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$2;->val$accessToken:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$2;->val$completedRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Z)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$2;->val$completedRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/components/signin/AccountManagerFacadeImpl$2;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$2;->val$completedRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl$2;->run()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$2;->this$0:Lorg/chromium/components/signin/AccountManagerFacadeImpl;

    invoke-static {v0}, Lorg/chromium/components/signin/AccountManagerFacadeImpl;->g(Lorg/chromium/components/signin/AccountManagerFacadeImpl;)Lorg/chromium/components/signin/AccountManagerDelegate;

    move-result-object v0

    iget-object p0, p0, Lorg/chromium/components/signin/AccountManagerFacadeImpl$2;->val$accessToken:Ljava/lang/String;

    invoke-interface {v0, p0}, Lorg/chromium/components/signin/AccountManagerDelegate;->invalidateAccessToken(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
