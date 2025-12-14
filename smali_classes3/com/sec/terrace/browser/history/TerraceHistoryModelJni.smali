.class Lcom/sec/terrace/browser/history/TerraceHistoryModelJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/history/TerraceHistoryModel$Natives;


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

.method public static get()Lcom/sec/terrace/browser/history/TerraceHistoryModel$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/history/TerraceHistoryModelJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/history/TerraceHistoryModelJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addHistoryItem(JLcom/sec/terrace/browser/history/TerraceHistoryModel;Ljava/lang/String;J)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MhiZbdyH(JLjava/lang/Object;Ljava/lang/Object;J)V

    return-void
.end method

.method public destroy(JLcom/sec/terrace/browser/history/TerraceHistoryModel;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MhXKt4_L(JLjava/lang/Object;)V

    return-void
.end method

.method public getAllHistory(JLcom/sec/terrace/browser/history/TerraceHistoryModel;IIDDI)V
    .locals 0

    invoke-static/range {p1 .. p10}, LJ/N;->Mtt8C4Qf(JLjava/lang/Object;IIDDI)V

    return-void
.end method

.method public getHistoryCount(JLcom/sec/terrace/browser/history/TerraceHistoryModel;DD)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->Mu4Ym2tZ(JLjava/lang/Object;DD)V

    return-void
.end method

.method public init(Lcom/sec/terrace/browser/history/TerraceHistoryModel;)J
    .locals 0

    invoke-static {p1}, LJ/N;->MtKoTM4z(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public removeVisits(JLcom/sec/terrace/browser/history/TerraceHistoryModel;[Ljava/lang/String;[J)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MSgfmXoq(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
