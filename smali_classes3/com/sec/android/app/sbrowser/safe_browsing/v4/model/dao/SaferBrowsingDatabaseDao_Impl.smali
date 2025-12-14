.class public final Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 12\u00020\u0001:\u00011B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J+\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0018\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001e\u0010\u0016\u001a\u00020\u000c2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0014H\u0096@\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J&\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u00182\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0014H\u0096@\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ*\u0010 \u001a\u00020\u000c2\u0018\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u00020\u0018\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u00140\u001eH\u0096@\u00a2\u0006\u0004\u0008 \u0010!J*\u0010\"\u001a\u00020\u000c2\u0018\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u00020\u0018\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u00140\u001eH\u0096@\u00a2\u0006\u0004\u0008\"\u0010!J\u0016\u0010$\u001a\u0008\u0012\u0004\u0012\u00020#0\u0014H\u0096@\u00a2\u0006\u0004\u0008$\u0010%J\u0016\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0014H\u0096@\u00a2\u0006\u0004\u0008&\u0010%J\u0018\u0010(\u001a\u00020\u000c2\u0006\u0010\'\u001a\u00020\u0011H\u0096@\u00a2\u0006\u0004\u0008(\u0010)J\u001e\u0010+\u001a\u00020\u000c2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0014H\u0096@\u00a2\u0006\u0004\u0008+\u0010\u0017R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010,R\u001a\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u000f0-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u001a\u00100\u001a\u0008\u0012\u0004\u0012\u00020\n0-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u0010/\u00a8\u00062"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;",
        "LJ2/U;",
        "__db",
        "<init>",
        "(LJ2/U;)V",
        "LS2/a;",
        "_connection",
        "LN/k;",
        "",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;",
        "_map",
        "Ldb/r;",
        "__fetchRelationshipThreatDescriptorHashesEntityAscomSecAndroidAppSbrowserSafeBrowsingV4ModelEntityThreatDescriptorHashesEntity",
        "(LS2/a;LN/k;)V",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;",
        "entity",
        "",
        "insertThreatDescriptorEntity",
        "(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;Lib/c;)Ljava/lang/Object;",
        "",
        "entities",
        "insertThreatDescriptorHashesEntities",
        "(Ljava/util/List;Lib/c;)Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
        "descriptor",
        "",
        "hashes",
        "insertThreatDescriptorWithHashes",
        "(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;Ljava/util/List;Lib/c;)Ljava/lang/Object;",
        "",
        "map",
        "insertThreatDescriptorsWithHashes",
        "(Ljava/util/Map;Lib/c;)Ljava/lang/Object;",
        "updateThreatDescriptorHashes",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;",
        "getThreatDescriptorsWithHashes",
        "(Lib/c;)Ljava/lang/Object;",
        "getThreatDescriptors",
        "id",
        "deleteHashesByDescriptorId",
        "(JLib/c;)Ljava/lang/Object;",
        "idList",
        "deleteThreatDescriptorEntityByIdIn",
        "LJ2/U;",
        "LJ2/f;",
        "__insertAdapterOfThreatDescriptorEntity",
        "LJ2/f;",
        "__insertAdapterOfThreatDescriptorHashesEntity",
        "Companion",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final __db:LJ2/U;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final __insertAdapterOfThreatDescriptorEntity:LJ2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ2/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final __insertAdapterOfThreatDescriptorHashesEntity:LJ2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ2/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->$stable:I

    return-void
.end method

.method public constructor <init>(LJ2/U;)V
    .locals 1
    .param p1    # LJ2/U;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "__db"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->__db:LJ2/U;

    new-instance p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl$1;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl$1;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->__insertAdapterOfThreatDescriptorEntity:LJ2/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl$2;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl$2;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->__insertAdapterOfThreatDescriptorHashesEntity:LJ2/f;

    return-void
.end method

.method private final __fetchRelationshipThreatDescriptorHashesEntityAscomSecAndroidAppSbrowserSafeBrowsingV4ModelEntityThreatDescriptorHashesEntity(LS2/a;LN/k;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LS2/a;",
            "LN/k;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, LN/k;->g()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, LN/k;->g()I

    move-result v0

    const/16 v1, 0x3e7

    const/4 v2, 0x0

    if-le v0, v1, :cond_4

    new-instance v0, LN/k;

    invoke-direct {v0, v1}, LN/k;-><init>(I)V

    invoke-virtual {p2}, LN/k;->g()I

    move-result v3

    move v4, v2

    move v5, v4

    :cond_1
    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {p2, v4}, LN/k;->d(I)J

    move-result-wide v6

    invoke-virtual {p2, v4}, LN/k;->h(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v6, v7, v8}, LN/k;->e(JLjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v1, :cond_1

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->__fetchRelationshipThreatDescriptorHashesEntityAscomSecAndroidAppSbrowserSafeBrowsingV4ModelEntityThreatDescriptorHashesEntity$lambda$6(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;LS2/a;LN/k;)Ldb/r;

    invoke-virtual {v0}, LN/k;->a()V

    move v5, v2

    goto :goto_0

    :cond_2
    if-lez v5, :cond_3

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->__fetchRelationshipThreatDescriptorHashesEntityAscomSecAndroidAppSbrowserSafeBrowsingV4ModelEntityThreatDescriptorHashesEntity$lambda$6(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;LS2/a;LN/k;)Ldb/r;

    :cond_3
    return-void

    :cond_4
    const-string p0, "SELECT `id`,`threatDescriptorEntityId`,`prefixHash` FROM `ThreatDescriptorHashesEntity` WHERE `threatDescriptorEntityId` IN ("

    invoke-static {p0}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, LN/k;->g()I

    move-result v0

    invoke-static {p0, v0}, LE5/t;->a(Ljava/lang/StringBuilder;I)V

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    invoke-virtual {p2}, LN/k;->g()I

    move-result p1

    const/4 v0, 0x1

    move v3, v0

    move v1, v2

    :goto_1
    if-ge v1, p1, :cond_5

    invoke-virtual {p2, v1}, LN/k;->d(I)J

    move-result-wide v4

    invoke-interface {p0, v3, v4, v5}, LS2/c;->i(IJ)V

    add-int/2addr v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :try_start_0
    const-string p1, "threatDescriptorEntityId"

    const-string v1, "stmt"

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, LD/a;->c(LS2/c;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :cond_6
    :goto_2
    :try_start_1
    invoke-interface {p0}, LS2/c;->t0()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p0, p1}, LS2/c;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, LN/k;->b(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-interface {p0, v2}, LS2/c;->getLong(I)J

    move-result-wide v4

    invoke-interface {p0, v0}, LS2/c;->getLong(I)J

    move-result-wide v6

    const/4 v3, 0x2

    invoke-interface {p0, v3}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;-><init>(JJLjava/lang/String;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_7
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    :goto_3
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    throw p1
.end method

.method private static final __fetchRelationshipThreatDescriptorHashesEntityAscomSecAndroidAppSbrowserSafeBrowsingV4ModelEntityThreatDescriptorHashesEntity$lambda$6(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;LS2/a;LN/k;)Ldb/r;
    .locals 1

    const-string v0, "_tmpMap"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->__fetchRelationshipThreatDescriptorHashesEntityAscomSecAndroidAppSbrowserSafeBrowsingV4ModelEntityThreatDescriptorHashesEntity(LS2/a;LN/k;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;LS2/a;)Ljava/util/List;
    .locals 1

    const-string v0, "SELECT * FROM ThreatDescriptorEntity"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->getThreatDescriptorsWithHashes$lambda$2(Ljava/lang/String;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(JLS2/a;)Ldb/r;
    .locals 1

    const-string v0, "DELETE FROM ThreatDescriptorHashesEntity WHERE ? = threatDescriptorEntityId"

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->deleteHashesByDescriptorId$lambda$4(Ljava/lang/String;JLS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;LS2/a;)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->insertThreatDescriptorEntity$lambda$0(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;LS2/a;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;Ljava/util/List;LS2/a;)Ldb/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->insertThreatDescriptorHashesEntities$lambda$1(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;Ljava/util/List;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private static final deleteHashesByDescriptorId$lambda$4(Ljava/lang/String;JLS2/a;)Ldb/r;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    const/4 p3, 0x1

    :try_start_0
    invoke-interface {p0, p3, p1, p2}, LS2/c;->i(IJ)V

    invoke-interface {p0}, LS2/c;->t0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    throw p1
.end method

.method private static final deleteThreatDescriptorEntityByIdIn$lambda$5(Ljava/lang/String;Ljava/util/List;LS2/a;)Ldb/r;
    .locals 2

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p2, v0, v1}, LS2/c;->i(IJ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, LS2/c;->t0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :goto_1
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    throw p1
.end method

.method public static synthetic e(LS2/a;)Ljava/util/List;
    .locals 1

    const-string v0, "SELECT * FROM ThreatDescriptorEntity"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->getThreatDescriptors$lambda$3(Ljava/lang/String;LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/util/List;LS2/a;)Ldb/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->deleteThreatDescriptorEntityByIdIn$lambda$5(Ljava/lang/String;Ljava/util/List;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private static final getThreatDescriptors$lambda$3(Ljava/lang/String;LS2/a;)Ljava/util/List;
    .locals 11

    const-string v0, "_connection"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    :try_start_0
    const-string p1, "id"

    invoke-static {p0, p1}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result p1

    const-string v0, "threatType"

    invoke-static {p0, v0}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v0

    const-string v1, "platformType"

    invoke-static {p0, v1}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v1

    const-string v2, "threatEntryType"

    invoke-static {p0, v2}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, LS2/c;->t0()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0, p1}, LS2/c;->getLong(I)J

    move-result-wide v6

    invoke-interface {p0, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v1}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v2}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-object v3

    :goto_1
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    throw p1
.end method

.method private static final getThreatDescriptorsWithHashes$lambda$2(Ljava/lang/String;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;LS2/a;)Ljava/util/List;
    .locals 11

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    :try_start_0
    const-string v0, "id"

    invoke-static {p0, v0}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v0

    const-string v1, "threatType"

    invoke-static {p0, v1}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v1

    const-string v2, "platformType"

    invoke-static {p0, v2}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v2

    const-string v3, "threatEntryType"

    invoke-static {p0, v3}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v3

    new-instance v4, LN/k;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, LN/k;-><init>(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-interface {p0}, LS2/c;->t0()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p0, v0}, LS2/c;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, LN/k;->c(J)I

    move-result v7

    if-ltz v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5, v6, v7}, LN/k;->e(JLjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    invoke-interface {p0}, LS2/c;->reset()V

    invoke-direct {p1, p2, v4}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->__fetchRelationshipThreatDescriptorHashesEntityAscomSecAndroidAppSbrowserSafeBrowsingV4ModelEntityThreatDescriptorHashesEntity(LS2/a;LN/k;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {p0}, LS2/c;->t0()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0, v0}, LS2/c;->getLong(I)J

    move-result-wide v6

    invoke-interface {p0, v1}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v2}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p0, v3}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v10

    new-instance p2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;

    move-object v5, p2

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, LS2/c;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, LN/k;->b(J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    check-cast v5, Ljava/util/List;

    new-instance v6, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;

    invoke-direct {v6, p2, v5}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;Ljava/util/List;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string p1, "Required value was null."

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-object p1

    :goto_3
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    throw p1
.end method

.method private static final insertThreatDescriptorEntity$lambda$0(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;LS2/a;)J
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->__insertAdapterOfThreatDescriptorEntity:LJ2/f;

    invoke-virtual {p0, p2, p1}, LJ2/f;->insertAndReturnId(LS2/a;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final insertThreatDescriptorHashesEntities$lambda$1(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;Ljava/util/List;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->__insertAdapterOfThreatDescriptorHashesEntity:LJ2/f;

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p2, p1}, LJ2/f;->insert(LS2/a;Ljava/lang/Iterable;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method


# virtual methods
.method public deleteHashesByDescriptorId(JLib/c;)Ljava/lang/Object;
    .locals 2
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->__db:LJ2/U;

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/a;-><init>(JI)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p0, p3, v0, p1, p2}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public deleteThreatDescriptorEntityByIdIn(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "DELETE FROM ThreatDescriptorEntity WHERE id in ("

    invoke-static {v0}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, LE5/t;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->__db:LJ2/U;

    new-instance v1, LH9/c;

    const/4 v2, 0x5

    invoke-direct {v1, v0, p1, v2}, LH9/c;-><init>(Ljava/lang/Object;Ljava/util/List;I)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p2, v1, p1, v0}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public getThreatDescriptors(Lib/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->__db:LJ2/U;

    new-instance v0, LK9/f;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, LK9/f;-><init>(I)V

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, v1}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getThreatDescriptorsWithHashes(Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->__db:LJ2/U;

    new-instance v1, LC9/b;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p0}, LC9/b;-><init>(ILjava/lang/Object;)V

    const/4 p0, 0x1

    invoke-static {v0, p1, v1, p0, p0}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public insertThreatDescriptorEntity(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;",
            "Lib/c<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->__db:LJ2/U;

    new-instance v1, LH9/c;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0, p1}, LH9/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    invoke-static {v0, p2, v1, p0, p1}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public insertThreatDescriptorHashesEntities(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->__db:LJ2/U;

    new-instance v1, LH9/c;

    const/4 v2, 0x7

    invoke-direct {v1, p0, p1, v2}, LH9/c;-><init>(Ljava/lang/Object;Ljava/util/List;I)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    invoke-static {v0, p2, v1, p0, p1}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public insertThreatDescriptorWithHashes(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl$insertThreatDescriptorWithHashes$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl$insertThreatDescriptorWithHashes$2;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;Ljava/util/List;Lib/c;)V

    invoke-static {v0, p3, v1}, LA/b;->h(LJ2/U;Lib/c;Lsb/k;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public insertThreatDescriptorsWithHashes(Ljava/util/Map;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl$insertThreatDescriptorsWithHashes$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl$insertThreatDescriptorsWithHashes$2;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;Ljava/util/Map;Lib/c;)V

    invoke-static {v0, p2, v1}, LA/b;->h(LJ2/U;Lib/c;Lsb/k;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public updateThreatDescriptorHashes(Ljava/util/Map;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl$updateThreatDescriptorHashes$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl$updateThreatDescriptorHashes$2;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao_Impl;Ljava/util/Map;Lib/c;)V

    invoke-static {v0, p2, v1}, LA/b;->h(LJ2/U;Lib/c;Lsb/k;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
