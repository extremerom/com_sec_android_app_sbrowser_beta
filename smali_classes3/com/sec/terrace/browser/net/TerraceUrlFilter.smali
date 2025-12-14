.class public Lcom/sec/terrace/browser/net/TerraceUrlFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate;
    }
.end annotation


# static fields
.field private static sFactory:Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate$DelegateFactory;

.field private static sUrlFilter:Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate;


# direct methods
.method public static bridge synthetic a()Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate$DelegateFactory;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/net/TerraceUrlFilter;->sFactory:Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate$DelegateFactory;

    return-object v0
.end method

.method private static getInstance()Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/net/TerraceUrlFilter;->sUrlFilter:Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate;

    invoke-direct {v0}, Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate;-><init>()V

    sput-object v0, Lcom/sec/terrace/browser/net/TerraceUrlFilter;->sUrlFilter:Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate;

    return-object v0
.end method

.method private static isBlockedUrl(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/net/TerraceUrlFilter;->getInstance()Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate;->isBlockedUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isUrlFilterSupported()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/net/TerraceUrlFilter;->getInstance()Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate;->isUrlFilterSupported()Z

    move-result v0

    return v0
.end method

.method public static setDelegateFactory(Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate$DelegateFactory;)V
    .locals 0

    sput-object p0, Lcom/sec/terrace/browser/net/TerraceUrlFilter;->sFactory:Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate$DelegateFactory;

    return-void
.end method
