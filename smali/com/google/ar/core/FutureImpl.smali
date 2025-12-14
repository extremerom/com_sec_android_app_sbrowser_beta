.class Lcom/google/ar/core/FutureImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ar/core/Future;


# instance fields
.field final nativeCallbackContext:J

.field final nativeFuture:J

.field final nativeSymbolTableHandle:J

.field final session:Lcom/google/ar/core/Session;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/Session;JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/FutureImpl;->session:Lcom/google/ar/core/Session;

    iget-wide v0, p1, Lcom/google/ar/core/Session;->nativeSymbolTableHandle:J

    iput-wide v0, p0, Lcom/google/ar/core/FutureImpl;->nativeSymbolTableHandle:J

    iput-wide p2, p0, Lcom/google/ar/core/FutureImpl;->nativeFuture:J

    iput-wide p4, p0, Lcom/google/ar/core/FutureImpl;->nativeCallbackContext:J

    return-void
.end method

.method public static native nativeReleaseFuture(JJ)V
.end method


# virtual methods
.method public cancel()Z
    .locals 8

    iget-object v0, p0, Lcom/google/ar/core/FutureImpl;->session:Lcom/google/ar/core/Session;

    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/FutureImpl;->nativeFuture:J

    iget-wide v6, p0, Lcom/google/ar/core/FutureImpl;->nativeCallbackContext:J

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/ar/core/FutureImpl;->nativeCancel(JJJ)Z

    move-result p0

    return p0
.end method

.method public finalize()V
    .locals 4

    iget-wide v0, p0, Lcom/google/ar/core/FutureImpl;->nativeSymbolTableHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/FutureImpl;->nativeFuture:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/ar/core/FutureImpl;->nativeReleaseFuture(JJ)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getState()Lcom/google/ar/core/FutureState;
    .locals 4

    iget-object v0, p0, Lcom/google/ar/core/FutureImpl;->session:Lcom/google/ar/core/Session;

    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/FutureImpl;->nativeFuture:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/ar/core/FutureImpl;->nativeGetState(JJ)I

    move-result p0

    invoke-static {p0}, Lcom/google/ar/core/FutureState;->forNumber(I)Lcom/google/ar/core/FutureState;

    move-result-object p0

    return-object p0
.end method

.method public native nativeCancel(JJJ)Z
.end method

.method public native nativeGetState(JJ)I
.end method
