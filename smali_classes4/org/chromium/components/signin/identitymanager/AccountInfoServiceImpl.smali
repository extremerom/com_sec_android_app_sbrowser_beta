.class final Lorg/chromium/components/signin/identitymanager/AccountInfoServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/signin/identitymanager/IdentityManager$Observer;
.implements Lorg/chromium/components/signin/identitymanager/AccountInfoService;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/components/signin/identitymanager/AccountInfoService$Observer;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public onExtendedAccountInfoUpdated(Lorg/chromium/components/signin/base/AccountInfo;)V
    .locals 1

    iget-object p0, p0, Lorg/chromium/components/signin/identitymanager/AccountInfoServiceImpl;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/signin/identitymanager/AccountInfoService$Observer;

    invoke-interface {v0, p1}, Lorg/chromium/components/signin/identitymanager/AccountInfoService$Observer;->onAccountInfoUpdated(Lorg/chromium/components/signin/base/AccountInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method
