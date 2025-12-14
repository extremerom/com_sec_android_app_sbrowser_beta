.class public Lorg/chromium/components/webauthn/Barrier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/webauthn/Barrier$Status;,
        Lorg/chromium/components/webauthn/Barrier$Mode;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCredManCancelled:Z

.field private mCredManRunnable:Ljava/lang/Runnable;

.field private mCredManStatus:Lorg/chromium/components/webauthn/Barrier$Status;

.field private mErrorCallback:Lorg/chromium/base/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFido2ApiCancelled:Z

.field private mFido2ApiError:I

.field private mFido2ApiRunnable:Ljava/lang/Runnable;

.field private mFido2ApiStatus:Lorg/chromium/components/webauthn/Barrier$Status;


# direct methods
.method public constructor <init>(Lorg/chromium/base/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/webauthn/Barrier;->mErrorCallback:Lorg/chromium/base/Callback;

    sget-object p1, Lorg/chromium/components/webauthn/Barrier$Status;->NONE:Lorg/chromium/components/webauthn/Barrier$Status;

    iput-object p1, p0, Lorg/chromium/components/webauthn/Barrier;->mFido2ApiStatus:Lorg/chromium/components/webauthn/Barrier$Status;

    iput-object p1, p0, Lorg/chromium/components/webauthn/Barrier;->mCredManStatus:Lorg/chromium/components/webauthn/Barrier$Status;

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/webauthn/Barrier;->mFido2ApiRunnable:Ljava/lang/Runnable;

    iput-object v0, p0, Lorg/chromium/components/webauthn/Barrier;->mCredManRunnable:Ljava/lang/Runnable;

    sget-object v0, Lorg/chromium/components/webauthn/Barrier$Status;->NONE:Lorg/chromium/components/webauthn/Barrier$Status;

    iput-object v0, p0, Lorg/chromium/components/webauthn/Barrier;->mFido2ApiStatus:Lorg/chromium/components/webauthn/Barrier$Status;

    iput-object v0, p0, Lorg/chromium/components/webauthn/Barrier;->mCredManStatus:Lorg/chromium/components/webauthn/Barrier$Status;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/components/webauthn/Barrier;->mCredManCancelled:Z

    iput-boolean v0, p0, Lorg/chromium/components/webauthn/Barrier;->mFido2ApiCancelled:Z

    return-void
.end method


# virtual methods
.method public onCredManCancelled()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/webauthn/Barrier;->mFido2ApiStatus:Lorg/chromium/components/webauthn/Barrier$Status;

    sget-object v1, Lorg/chromium/components/webauthn/Barrier$Status;->NONE:Lorg/chromium/components/webauthn/Barrier$Status;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/chromium/components/webauthn/Barrier;->mFido2ApiCancelled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/components/webauthn/Barrier;->mCredManCancelled:Z

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/chromium/components/webauthn/Barrier;->mErrorCallback:Lorg/chromium/base/Callback;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/components/webauthn/Barrier;->mFido2ApiCancelled:Z

    return-void
.end method

.method public onCredManFailed(I)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/components/webauthn/Barrier;->mFido2ApiStatus:Lorg/chromium/components/webauthn/Barrier$Status;

    sget-object v1, Lorg/chromium/components/webauthn/Barrier$Status;->FAILURE:Lorg/chromium/components/webauthn/Barrier$Status;

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lorg/chromium/components/webauthn/Barrier;->mErrorCallback:Lorg/chromium/base/Callback;

    iget p0, p0, Lorg/chromium/components/webauthn/Barrier;->mFido2ApiError:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/chromium/components/webauthn/Barrier$Status;->SUCCESS:Lorg/chromium/components/webauthn/Barrier$Status;

    if-ne v0, v2, :cond_1

    iget-object p1, p0, Lorg/chromium/components/webauthn/Barrier;->mFido2ApiRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/components/webauthn/Barrier;->mFido2ApiRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/chromium/components/webauthn/Barrier$Status;->WAITING:Lorg/chromium/components/webauthn/Barrier$Status;

    if-ne v0, v2, :cond_2

    iput-object v1, p0, Lorg/chromium/components/webauthn/Barrier;->mCredManStatus:Lorg/chromium/components/webauthn/Barrier$Status;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/chromium/components/webauthn/Barrier;->mErrorCallback:Lorg/chromium/base/Callback;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onCredManSuccessful(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/components/webauthn/Barrier;->mFido2ApiStatus:Lorg/chromium/components/webauthn/Barrier$Status;

    sget-object v1, Lorg/chromium/components/webauthn/Barrier$Status;->FAILURE:Lorg/chromium/components/webauthn/Barrier$Status;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/chromium/components/webauthn/Barrier$Status;->SUCCESS:Lorg/chromium/components/webauthn/Barrier$Status;

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lorg/chromium/components/webauthn/Barrier;->mFido2ApiRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/components/webauthn/Barrier;->mFido2ApiRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/chromium/components/webauthn/Barrier$Status;->WAITING:Lorg/chromium/components/webauthn/Barrier$Status;

    if-ne v0, v2, :cond_2

    iput-object p1, p0, Lorg/chromium/components/webauthn/Barrier;->mCredManRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lorg/chromium/components/webauthn/Barrier;->mCredManStatus:Lorg/chromium/components/webauthn/Barrier$Status;

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public onFido2ApiCancelled()V
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/webauthn/Barrier;->mCredManStatus:Lorg/chromium/components/webauthn/Barrier$Status;

    sget-object v1, Lorg/chromium/components/webauthn/Barrier$Status;->NONE:Lorg/chromium/components/webauthn/Barrier$Status;

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/chromium/components/webauthn/Barrier;->mCredManCancelled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/components/webauthn/Barrier;->mFido2ApiCancelled:Z

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/chromium/components/webauthn/Barrier;->mErrorCallback:Lorg/chromium/base/Callback;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/components/webauthn/Barrier;->mCredManCancelled:Z

    return-void
.end method

.method public onFido2ApiFailed(I)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/components/webauthn/Barrier;->mCredManStatus:Lorg/chromium/components/webauthn/Barrier$Status;

    sget-object v1, Lorg/chromium/components/webauthn/Barrier$Status;->FAILURE:Lorg/chromium/components/webauthn/Barrier$Status;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/chromium/components/webauthn/Barrier;->mErrorCallback:Lorg/chromium/base/Callback;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/chromium/components/webauthn/Barrier$Status;->SUCCESS:Lorg/chromium/components/webauthn/Barrier$Status;

    if-ne v0, v2, :cond_1

    iget-object p1, p0, Lorg/chromium/components/webauthn/Barrier;->mCredManRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/components/webauthn/Barrier;->mCredManRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/chromium/components/webauthn/Barrier$Status;->WAITING:Lorg/chromium/components/webauthn/Barrier$Status;

    if-ne v0, v2, :cond_2

    iput p1, p0, Lorg/chromium/components/webauthn/Barrier;->mFido2ApiError:I

    iput-object v1, p0, Lorg/chromium/components/webauthn/Barrier;->mFido2ApiStatus:Lorg/chromium/components/webauthn/Barrier$Status;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lorg/chromium/components/webauthn/Barrier;->mErrorCallback:Lorg/chromium/base/Callback;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onFido2ApiSuccessful(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lorg/chromium/components/webauthn/Barrier;->mCredManStatus:Lorg/chromium/components/webauthn/Barrier$Status;

    sget-object v1, Lorg/chromium/components/webauthn/Barrier$Status;->FAILURE:Lorg/chromium/components/webauthn/Barrier$Status;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/chromium/components/webauthn/Barrier$Status;->SUCCESS:Lorg/chromium/components/webauthn/Barrier$Status;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/chromium/components/webauthn/Barrier;->mCredManRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/chromium/components/webauthn/Barrier;->mCredManRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/chromium/components/webauthn/Barrier$Status;->WAITING:Lorg/chromium/components/webauthn/Barrier$Status;

    if-ne v0, v2, :cond_2

    iput-object p1, p0, Lorg/chromium/components/webauthn/Barrier;->mFido2ApiRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lorg/chromium/components/webauthn/Barrier;->mFido2ApiStatus:Lorg/chromium/components/webauthn/Barrier$Status;

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public resetAndSetWaitStatus(Lorg/chromium/components/webauthn/Barrier$Mode;)V
    .locals 1

    invoke-direct {p0}, Lorg/chromium/components/webauthn/Barrier;->reset()V

    sget-object v0, Lorg/chromium/components/webauthn/Barrier$1;->$SwitchMap$org$chromium$components$webauthn$Barrier$Mode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/chromium/components/webauthn/Barrier$Status;->WAITING:Lorg/chromium/components/webauthn/Barrier$Status;

    iput-object p1, p0, Lorg/chromium/components/webauthn/Barrier;->mFido2ApiStatus:Lorg/chromium/components/webauthn/Barrier$Status;

    iput-object p1, p0, Lorg/chromium/components/webauthn/Barrier;->mCredManStatus:Lorg/chromium/components/webauthn/Barrier$Status;

    goto :goto_0

    :cond_1
    sget-object p1, Lorg/chromium/components/webauthn/Barrier$Status;->WAITING:Lorg/chromium/components/webauthn/Barrier$Status;

    iput-object p1, p0, Lorg/chromium/components/webauthn/Barrier;->mCredManStatus:Lorg/chromium/components/webauthn/Barrier$Status;

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/chromium/components/webauthn/Barrier$Status;->WAITING:Lorg/chromium/components/webauthn/Barrier$Status;

    iput-object p1, p0, Lorg/chromium/components/webauthn/Barrier;->mFido2ApiStatus:Lorg/chromium/components/webauthn/Barrier$Status;

    :goto_0
    return-void
.end method
