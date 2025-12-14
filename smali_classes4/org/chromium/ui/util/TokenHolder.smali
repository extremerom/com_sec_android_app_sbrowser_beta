.class public Lorg/chromium/ui/util/TokenHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final INVALID_TOKEN:I = -0x1


# instance fields
.field private final mAcquiredTokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Ljava/lang/Runnable;

.field private mNextToken:I


# virtual methods
.method public acquireToken()I
    .locals 3

    iget v0, p0, Lorg/chromium/ui/util/TokenHolder;->mNextToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/chromium/ui/util/TokenHolder;->mNextToken:I

    iget-object v1, p0, Lorg/chromium/ui/util/TokenHolder;->mAcquiredTokens:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/chromium/ui/util/TokenHolder;->mAcquiredTokens:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lorg/chromium/ui/util/TokenHolder;->mCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return v0
.end method

.method public releaseToken(I)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/util/TokenHolder;->mAcquiredTokens:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/chromium/ui/util/TokenHolder;->mAcquiredTokens:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/chromium/ui/util/TokenHolder;->mCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
