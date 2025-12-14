.class public final Lcom/sec/android/app/sbrowser/bfcache/BFCacheConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COMMAND_KEY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "bfcache-mode"

    const-string v1, "bfcache-cache-size"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/bfcache/BFCacheConstants;->COMMAND_KEY:[Ljava/lang/String;

    return-void
.end method
