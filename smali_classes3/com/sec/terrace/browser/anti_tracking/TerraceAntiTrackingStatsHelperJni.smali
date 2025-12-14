.class Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelperJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelperJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelperJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAntiTrackingStats(JJJLcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingStatsHelper$AntiTrackingStatsCallback;)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->Ml9GOXh1(JJJLjava/lang/Object;)V

    return-void
.end method

.method public init()J
    .locals 2

    invoke-static {}, LJ/N;->Mvht58L1()J

    move-result-wide v0

    return-wide v0
.end method
