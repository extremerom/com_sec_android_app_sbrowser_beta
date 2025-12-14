.class Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigFileFetcher$ConfigFileFetchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->fetchAllowlist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$2;->this$0:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileFetchFailed()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$2;->this$0:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;

    sget-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->ALLOWLIST_FETCH_FAIL:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->processConfigUpdateState()V

    return-void
.end method

.method public onFileFetchSucceeded(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$2;->this$0:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;

    sget-object p1, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;->ALLOWLIST_FETCH_SUCCESS:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->mCurrentState:Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager$ConfigFetchState;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConfigManager;->processConfigUpdateState()V

    return-void
.end method
