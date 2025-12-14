.class public final Lorg/chromium/base/UnownedUserDataKey;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/chromium/base/UnownedUserData;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mWeakHostAttachments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/chromium/base/UnownedUserDataHost;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/UnownedUserDataKey;->mWeakHostAttachments:Ljava/util/Set;

    iput-object p1, p0, Lorg/chromium/base/UnownedUserDataKey;->mClazz:Ljava/lang/Class;

    return-void
.end method

.method private assertNoDestroyedAttachments()V
    .locals 1

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/base/UnownedUserDataKey;->mWeakHostAttachments:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/UnownedUserDataHost;

    invoke-virtual {v0}, Lorg/chromium/base/UnownedUserDataHost;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method private removeHostAttachment(Lorg/chromium/base/UnownedUserDataHost;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/chromium/base/UnownedUserDataHost;->remove(Lorg/chromium/base/UnownedUserDataKey;)V

    iget-object p0, p0, Lorg/chromium/base/UnownedUserDataKey;->mWeakHostAttachments:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final attachToHost(Lorg/chromium/base/UnownedUserDataHost;Lorg/chromium/base/UnownedUserData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/UnownedUserDataHost;",
            "TT;)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Lorg/chromium/base/UnownedUserDataHost;->set(Lorg/chromium/base/UnownedUserDataKey;Lorg/chromium/base/UnownedUserData;)V

    invoke-virtual {p0, p1}, Lorg/chromium/base/UnownedUserDataKey;->isAttachedToHost(Lorg/chromium/base/UnownedUserDataHost;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lorg/chromium/base/UnownedUserDataKey;->mWeakHostAttachments:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final detachFromHost(Lorg/chromium/base/UnownedUserDataHost;)V
    .locals 3

    invoke-direct {p0}, Lorg/chromium/base/UnownedUserDataKey;->assertNoDestroyedAttachments()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/chromium/base/UnownedUserDataKey;->mWeakHostAttachments:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/base/UnownedUserDataHost;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lorg/chromium/base/UnownedUserDataKey;->removeHostAttachment(Lorg/chromium/base/UnownedUserDataHost;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getHostAttachmentCount(Lorg/chromium/base/UnownedUserData;)I
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/base/UnownedUserDataKey;->assertNoDestroyedAttachments()V

    iget-object v0, p0, Lorg/chromium/base/UnownedUserDataKey;->mWeakHostAttachments:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/base/UnownedUserDataHost;

    invoke-virtual {v2, p0}, Lorg/chromium/base/UnownedUserDataHost;->get(Lorg/chromium/base/UnownedUserDataKey;)Lorg/chromium/base/UnownedUserData;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final getValueClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/chromium/base/UnownedUserDataKey;->mClazz:Ljava/lang/Class;

    return-object p0
.end method

.method public final isAttachedToHost(Lorg/chromium/base/UnownedUserDataHost;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/chromium/base/UnownedUserDataKey;->retrieveDataFromHost(Lorg/chromium/base/UnownedUserDataHost;)Lorg/chromium/base/UnownedUserData;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final retrieveDataFromHost(Lorg/chromium/base/UnownedUserDataHost;)Lorg/chromium/base/UnownedUserData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/UnownedUserDataHost;",
            ")TT;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/chromium/base/UnownedUserDataKey;->assertNoDestroyedAttachments()V

    iget-object v0, p0, Lorg/chromium/base/UnownedUserDataKey;->mWeakHostAttachments:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/base/UnownedUserDataHost;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p0}, Lorg/chromium/base/UnownedUserDataHost;->get(Lorg/chromium/base/UnownedUserDataKey;)Lorg/chromium/base/UnownedUserData;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
