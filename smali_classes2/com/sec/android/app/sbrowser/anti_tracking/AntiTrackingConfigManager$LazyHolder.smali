.class Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$LazyHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;-><init>(I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$LazyHolder;->INSTANCE:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;

    return-void
.end method

.method public static bridge synthetic a()Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$LazyHolder;->INSTANCE:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;

    return-object v0
.end method
