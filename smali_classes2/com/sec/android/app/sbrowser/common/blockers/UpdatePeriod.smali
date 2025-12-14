.class public Lcom/sec/android/app/sbrowser/common/blockers/UpdatePeriod;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mConfigFile:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "config_file"
    .end annotation
.end field

.field private mDefaultList:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default_list"
    .end annotation
.end field

.field private mIcon:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockConstants;->DEFAULT_RESOURCE_UPDATE_PERIOD:J

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/UpdatePeriod;->mConfigFile:J

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/UpdatePeriod;->mDefaultList:J

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/UpdatePeriod;->mIcon:J

    return-void
.end method


# virtual methods
.method public getConfigFile()J
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/UpdatePeriod;->mConfigFile:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultList()J
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/UpdatePeriod;->mDefaultList:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIcon()J
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/UpdatePeriod;->mIcon:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method
