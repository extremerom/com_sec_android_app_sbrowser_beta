.class public final Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/net/TerraceUrlFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TerraceUrlFilterDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate$DelegateFactory;,
        Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate$Delegate;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate$Delegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/terrace/browser/net/TerraceUrlFilter;->a()Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate$DelegateFactory;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/net/TerraceUrlFilter;->a()Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate$DelegateFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate$DelegateFactory;->getDelegate()Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate$Delegate;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate;->mDelegate:Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate$Delegate;

    return-void
.end method


# virtual methods
.method public isBlockedUrl(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate;->mDelegate:Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate$Delegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate$Delegate;->isBlockedUrl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isUrlFilterSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate;->mDelegate:Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate$Delegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate$Delegate;->isUrlFilterSupported()Z

    move-result p0

    return p0
.end method
