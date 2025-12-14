.class public Lorg/chromium/base/LifetimeAssert;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/LifetimeAssert$WrappedReference;,
        Lorg/chromium/base/LifetimeAssert$CreationException;,
        Lorg/chromium/base/LifetimeAssert$LifetimeAssertException;,
        Lorg/chromium/base/LifetimeAssert$TestHook;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/CheckDiscard;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static sTestHook:Lorg/chromium/base/LifetimeAssert$TestHook;


# instance fields
.field private final mTarget:Ljava/lang/Object;

.field final mWrapper:Lorg/chromium/base/LifetimeAssert$WrappedReference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/chromium/base/LifetimeAssert$WrappedReference;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/LifetimeAssert;->mWrapper:Lorg/chromium/base/LifetimeAssert$WrappedReference;

    iput-object p2, p0, Lorg/chromium/base/LifetimeAssert;->mTarget:Ljava/lang/Object;

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lorg/chromium/base/LifetimeAssert;
    .locals 4

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/chromium/base/LifetimeAssert;

    new-instance v1, Lorg/chromium/base/LifetimeAssert$WrappedReference;

    new-instance v2, Lorg/chromium/base/LifetimeAssert$CreationException;

    invoke-direct {v2}, Lorg/chromium/base/LifetimeAssert$CreationException;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lorg/chromium/base/LifetimeAssert$WrappedReference;-><init>(Ljava/lang/Object;Lorg/chromium/base/LifetimeAssert$CreationException;Z)V

    invoke-direct {v0, v1, p0}, Lorg/chromium/base/LifetimeAssert;-><init>(Lorg/chromium/base/LifetimeAssert$WrappedReference;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static setSafeToGc(Lorg/chromium/base/LifetimeAssert;Z)V
    .locals 1

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/base/LifetimeAssert;->mTarget:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/chromium/base/LifetimeAssert;->mWrapper:Lorg/chromium/base/LifetimeAssert$WrappedReference;

    iput-boolean p1, p0, Lorg/chromium/base/LifetimeAssert$WrappedReference;->mSafeToGc:Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
