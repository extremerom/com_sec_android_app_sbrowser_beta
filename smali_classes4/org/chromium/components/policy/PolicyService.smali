.class public Lorg/chromium/components/policy/PolicyService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/policy/PolicyService$Natives;,
        Lorg/chromium/components/policy/PolicyService$Observer;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mNativePolicyService:J

.field private final mObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lorg/chromium/components/policy/PolicyService$Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/policy/PolicyService;->mObservers:Lorg/chromium/base/ObserverList;

    iput-wide p1, p0, Lorg/chromium/components/policy/PolicyService;->mNativePolicyService:J

    return-void
.end method

.method private onPolicyServiceInitialized()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "PolicyService"

    const-string v1, "#onPolicyServiceInitialized()"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/chromium/components/policy/PolicyService;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/policy/PolicyService$Observer;

    invoke-interface {v0}, Lorg/chromium/components/policy/PolicyService$Observer;->onPolicyServiceInitialized()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onPolicyUpdated(Lorg/chromium/components/policy/PolicyMap;Lorg/chromium/components/policy/PolicyMap;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/policy/PolicyService;->mObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {p0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/policy/PolicyService$Observer;

    invoke-interface {v0, p1, p2}, Lorg/chromium/components/policy/PolicyService$Observer;->onPolicyUpdated(Lorg/chromium/components/policy/PolicyMap;Lorg/chromium/components/policy/PolicyMap;)V

    goto :goto_0

    :cond_0
    return-void
.end method
