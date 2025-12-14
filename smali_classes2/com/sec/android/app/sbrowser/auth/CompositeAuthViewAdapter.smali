.class public Lcom/sec/android/app/sbrowser/auth/CompositeAuthViewAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;


# instance fields
.field mAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/auth/CompositeAuthViewAdapter;->mAdapters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public cancelAuth()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/CompositeAuthViewAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;->cancelAuth()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startAuth()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/auth/CompositeAuthViewAdapter;->mAdapters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/auth/AuthViewAdapter;->startAuth()V

    goto :goto_0

    :cond_0
    return-void
.end method
