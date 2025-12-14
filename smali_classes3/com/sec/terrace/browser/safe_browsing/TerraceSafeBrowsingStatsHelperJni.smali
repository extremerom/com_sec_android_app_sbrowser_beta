.class Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelperJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelper$Natives;


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

.method public static get()Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelper$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelperJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelperJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public deleteSelected(JLjava/lang/String;J)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MpYmxZKN(JLjava/lang/Object;J)V

    return-void
.end method

.method public getSafeBrowsingStats(JJJLcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingStatsHelper$SafeBrowsingStatsCallback;)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->MySPPLnk(JJJLjava/lang/Object;)V

    return-void
.end method

.method public init()J
    .locals 2

    invoke-static {}, LJ/N;->MQbafLNl()J

    move-result-wide v0

    return-wide v0
.end method
