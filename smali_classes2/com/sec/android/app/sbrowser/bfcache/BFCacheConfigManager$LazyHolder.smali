.class Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$LazyHolder;->INSTANCE:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;

    return-void
.end method

.method public static bridge synthetic a()Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager$LazyHolder;->INSTANCE:Lcom/sec/android/app/sbrowser/bfcache/BFCacheConfigManager;

    return-object v0
.end method
