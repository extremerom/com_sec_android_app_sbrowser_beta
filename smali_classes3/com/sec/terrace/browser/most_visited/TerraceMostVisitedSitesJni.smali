.class public Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSitesJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$Natives;


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

.method public static get()Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSitesJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSitesJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blockedURLFromMostVisited(JLcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M3ibX1BE(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getMostVisited(JLcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MS35x_08(JLjava/lang/Object;)V

    return-void
.end method

.method public init(Lcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;)J
    .locals 0

    invoke-static {p1}, LJ/N;->MMZKJTcW(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public isBlockedURL(JLcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MpGrBSEM(JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeBlockedURL(JLcom/sec/terrace/browser/most_visited/TerraceMostVisitedSites;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MT93_tab(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
