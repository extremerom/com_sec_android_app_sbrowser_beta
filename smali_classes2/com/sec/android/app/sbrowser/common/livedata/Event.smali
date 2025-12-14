.class public Lcom/sec/android/app/sbrowser/common/livedata/Event;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mContent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mHasBeenHandled:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/livedata/Event;->mHasBeenHandled:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/livedata/Event;->mContent:Ljava/lang/Object;

    return-void
.end method

.method private consume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/livedata/Event;->mHasBeenHandled:Z

    return-void
.end method


# virtual methods
.method public getContentIfNotHandled()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/livedata/Event;->mHasBeenHandled:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->consume()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/livedata/Event;->mContent:Ljava/lang/Object;

    return-object p0
.end method

.method public isHandled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/livedata/Event;->mHasBeenHandled:Z

    return p0
.end method

.method public peekContent()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/livedata/Event;->mContent:Ljava/lang/Object;

    return-object p0
.end method
