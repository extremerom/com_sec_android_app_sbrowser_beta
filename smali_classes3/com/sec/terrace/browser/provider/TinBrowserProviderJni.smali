.class Lcom/sec/terrace/browser/provider/TinBrowserProviderJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/provider/TinBrowserProvider$Natives;


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

.method public static get()Lcom/sec/terrace/browser/provider/TinBrowserProvider$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/provider/TinBrowserProviderJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/provider/TinBrowserProviderJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addHistoryFromAPI(JLcom/sec/terrace/browser/provider/TinBrowserProvider;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;[BLjava/lang/String;Ljava/lang/Integer;J)J
    .locals 0

    invoke-static/range {p1 .. p11}, LJ/N;->Me57Z4mr(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public destroy(JLcom/sec/terrace/browser/provider/TinBrowserProvider;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MAZCEJXa(JLjava/lang/Object;)V

    return-void
.end method

.method public init(Lcom/sec/terrace/browser/provider/TinBrowserProvider;)J
    .locals 0

    invoke-static {p1}, LJ/N;->MtWnFy_E(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public queryHistoryFromAPI(JLcom/sec/terrace/browser/provider/TinBrowserProvider;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/database/TinSQLiteCursor;
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->M2wLIsCI(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;

    return-object p0
.end method

.method public querySurfedDataFromAPI(JLcom/sec/terrace/browser/provider/TinBrowserProvider;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/database/TinSQLiteCursor;
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->MSHcqtf5(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/database/TinSQLiteCursor;

    return-object p0
.end method

.method public removeHistoryFromAPI(JLcom/sec/terrace/browser/provider/TinBrowserProvider;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MCd6qe_6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toMilliSecondsTime(JLcom/sec/terrace/browser/provider/TinBrowserProvider;J)J
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MaIkKF9r(JLjava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method
