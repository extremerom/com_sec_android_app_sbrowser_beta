.class interface abstract Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/anti_tracking/TerraceAntiTrackingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract clearAccumulatedStats()V
.end method

.method public abstract getAccumulatedStatsForAllowlistedRequests()I
.end method

.method public abstract getAccumulatedStatsForBlockedRequests()I
.end method

.method public abstract logLinkDecorationStatusLogs()V
.end method

.method public abstract setAllowlist(Ljava/lang/String;)V
.end method

.method public abstract setBlocklist(Ljava/lang/String;)V
.end method

.method public abstract setMetadata(Ljava/lang/String;)V
.end method

.method public abstract setTestTrackerDomain(Ljava/lang/String;)V
.end method
