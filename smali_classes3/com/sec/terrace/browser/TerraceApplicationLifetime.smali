.class public Lcom/sec/terrace/browser/TerraceApplicationLifetime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/TerraceApplicationLifetime$Observer;
    }
.end annotation


# static fields
.field private static sObservers:Lorg/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/base/ObserverList<",
            "Lcom/sec/terrace/browser/TerraceApplicationLifetime$Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    sput-object v0, Lcom/sec/terrace/browser/TerraceApplicationLifetime;->sObservers:Lorg/chromium/base/ObserverList;

    return-void
.end method

.method public static addObserver(Lcom/sec/terrace/browser/TerraceApplicationLifetime$Observer;)V
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/TerraceApplicationLifetime;->sObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    return-void
.end method

.method public static terminate(Z)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/TerraceApplicationLifetime;->sObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/TerraceApplicationLifetime$Observer;

    invoke-interface {v1, p0}, Lcom/sec/terrace/browser/TerraceApplicationLifetime$Observer;->onTerminate(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
