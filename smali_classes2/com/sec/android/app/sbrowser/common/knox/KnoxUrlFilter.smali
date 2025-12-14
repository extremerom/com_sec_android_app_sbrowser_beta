.class public Lcom/sec/android/app/sbrowser/common/knox/KnoxUrlFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/knox/KnoxUrlFilter$UrlFilterDelegateFactory;,
        Lcom/sec/android/app/sbrowser/common/knox/KnoxUrlFilter$UrlFilterDelegate;
    }
.end annotation


# static fields
.field static sIsUrlBlocked:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static initialize()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/knox/KnoxUrlFilter$UrlFilterDelegateFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/knox/KnoxUrlFilter$UrlFilterDelegateFactory;-><init>()V

    invoke-static {v0}, Lcom/sec/terrace/browser/net/TerraceUrlFilter;->setDelegateFactory(Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate$DelegateFactory;)V

    return-void
.end method


# virtual methods
.method public isUrlBlocked()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-boolean p0, Lcom/sec/android/app/sbrowser/common/knox/KnoxUrlFilter;->sIsUrlBlocked:Z

    return p0
.end method
