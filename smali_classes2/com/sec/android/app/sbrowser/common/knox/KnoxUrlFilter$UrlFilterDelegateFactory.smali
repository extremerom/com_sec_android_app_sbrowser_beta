.class Lcom/sec/android/app/sbrowser/common/knox/KnoxUrlFilter$UrlFilterDelegateFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate$DelegateFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/knox/KnoxUrlFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UrlFilterDelegateFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDelegate()Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate$Delegate;
    .locals 0

    new-instance p0, Lcom/sec/android/app/sbrowser/common/knox/KnoxUrlFilter$UrlFilterDelegate;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/knox/KnoxUrlFilter$UrlFilterDelegate;-><init>()V

    return-object p0
.end method
