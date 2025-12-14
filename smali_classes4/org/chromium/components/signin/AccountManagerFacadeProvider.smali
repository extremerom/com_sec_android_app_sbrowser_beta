.class public Lorg/chromium/components/signin/AccountManagerFacadeProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/signin/AccountManagerFacadeProvider$Holder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sInstanceForTesting:Lorg/chromium/components/signin/AccountManagerFacade;


# direct methods
.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacadeProvider;->lambda$setInstanceForTests$0()V

    return-void
.end method

.method public static getInstance()Lorg/chromium/components/signin/AccountManagerFacade;
    .locals 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/components/signin/AccountManagerFacadeProvider;->sInstanceForTesting:Lorg/chromium/components/signin/AccountManagerFacade;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/chromium/components/signin/AccountManagerFacadeProvider$Holder;->a()Lorg/chromium/components/signin/AccountManagerFacade;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$setInstanceForTests$0()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/components/signin/AccountManagerFacadeProvider;->sInstanceForTesting:Lorg/chromium/components/signin/AccountManagerFacade;

    return-void
.end method

.method public static setInstanceForTests(Lorg/chromium/components/signin/AccountManagerFacade;)V
    .locals 1
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lorg/chromium/components/signin/AccountManagerFacadeProvider;->sInstanceForTesting:Lorg/chromium/components/signin/AccountManagerFacade;

    new-instance p0, LN4/a;

    const/16 v0, 0xc

    invoke-direct {p0, v0}, LN4/a;-><init>(I)V

    invoke-static {p0}, Lorg/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    return-void
.end method
