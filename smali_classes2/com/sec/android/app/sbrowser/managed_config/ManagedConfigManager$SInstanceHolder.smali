.class final Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager$SInstanceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SInstanceHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager$SInstanceHolder;->sInstance:Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;

    return-void
.end method

.method public static bridge synthetic a()Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager$SInstanceHolder;->sInstance:Lcom/sec/android/app/sbrowser/managed_config/ManagedConfigManager;

    return-object v0
.end method
