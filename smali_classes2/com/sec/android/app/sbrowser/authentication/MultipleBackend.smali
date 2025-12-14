.class abstract Lcom/sec/android/app/sbrowser/authentication/MultipleBackend;
.super Lcom/sec/android/app/sbrowser/authentication/Backend;
.source "SourceFile"


# instance fields
.field private mBackends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/authentication/Backend;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/authentication/Backend;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/authentication/MultipleBackend;->mBackends:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addBackend(Lcom/sec/android/app/sbrowser/authentication/Backend;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/MultipleBackend;->mBackends:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public authenticate()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/MultipleBackend;->mBackends:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/authentication/Backend;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->authenticate()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cancelAuthentication()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/authentication/MultipleBackend;->mBackends:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/authentication/Backend;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/authentication/Backend;->cancelAuthentication()V

    goto :goto_0

    :cond_0
    return-void
.end method
