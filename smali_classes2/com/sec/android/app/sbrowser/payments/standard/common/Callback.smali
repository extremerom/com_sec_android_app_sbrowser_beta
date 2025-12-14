.class public interface abstract Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;
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


# direct methods
.method public static synthetic a(Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;->lambda$bind$0(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$bind$0(Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/payments/standard/common/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/Object;)Ljava/lang/Runnable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/widget/a;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/widget/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract onResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
