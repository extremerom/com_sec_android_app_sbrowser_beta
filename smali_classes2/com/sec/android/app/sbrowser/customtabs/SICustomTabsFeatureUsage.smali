.class public Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage$SICustomTabsFeature;
    }
.end annotation


# instance fields
.field private final mEntireLog:Ljava/lang/StringBuilder;

.field private final mIsEnabled:Z

.field private final mUsed:Ljava/util/BitSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->mIsEnabled:Z

    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->mUsed:Ljava/util/BitSet;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SICustomTabsFeatureUsage] enabled feature: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->mEntireLog:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isCustomTabFeatureLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method private logInternal(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->mUsed:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->mUsed:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->mEntireLog:Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public log(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->mIsEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->logInternal(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->logInternal(I)V

    return-void
.end method

.method public printLog()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->mIsEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SICustomTabsFeatureUsage;->mEntireLog:Ljava/lang/StringBuilder;

    const-string v0, "|"

    const-string v1, "SICustomTabsFeatureUsage"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
