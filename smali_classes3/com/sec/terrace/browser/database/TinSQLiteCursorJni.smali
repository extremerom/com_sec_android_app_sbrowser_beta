.class Lcom/sec/terrace/browser/database/TinSQLiteCursorJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;


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

.method public static get()Lcom/sec/terrace/browser/database/TinSQLiteCursor$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/database/TinSQLiteCursorJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/database/TinSQLiteCursorJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy(JLcom/sec/terrace/browser/database/TinSQLiteCursor;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Mq_F1PNv(JLjava/lang/Object;)V

    return-void
.end method

.method public getBlob(JLcom/sec/terrace/browser/database/TinSQLiteCursor;I)[B
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->Mz433yBb(JLjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getColumnNames(JLcom/sec/terrace/browser/database/TinSQLiteCursor;)[Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MVZqt$PT(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getColumnType(JLcom/sec/terrace/browser/database/TinSQLiteCursor;I)I
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MiXyZIBe(JLjava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public getCount(JLcom/sec/terrace/browser/database/TinSQLiteCursor;)I
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MkBGpdak(JLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getDouble(JLcom/sec/terrace/browser/database/TinSQLiteCursor;I)D
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MEGKFgbf(JLjava/lang/Object;I)D

    move-result-wide p0

    return-wide p0
.end method

.method public getInt(JLcom/sec/terrace/browser/database/TinSQLiteCursor;I)I
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->Mc$DcMhk(JLjava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public getLong(JLcom/sec/terrace/browser/database/TinSQLiteCursor;I)J
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MpclAW5o(JLjava/lang/Object;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getString(JLcom/sec/terrace/browser/database/TinSQLiteCursor;I)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MHiMuR2k(JLjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isNull(JLcom/sec/terrace/browser/database/TinSQLiteCursor;I)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MmeFaUsM(JLjava/lang/Object;I)Z

    move-result p0

    return p0
.end method

.method public moveTo(JLcom/sec/terrace/browser/database/TinSQLiteCursor;I)I
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MFN75kgN(JLjava/lang/Object;I)I

    move-result p0

    return p0
.end method
