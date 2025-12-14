.class public Lcom/sec/sbrowser/spl/wrapper/MajoSQLiteDatabase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sSemBackupDatabaseFile:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

.field private static sSemRestoreDatabaseFile:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const-class v1, Ljava/lang/String;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "semBackupDatabaseFile"

    invoke-direct {v0, v3, v4, v2}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSQLiteDatabase;->sSemBackupDatabaseFile:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    const-string v2, "semRestoreDatabaseFile"

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v3, v2, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSQLiteDatabase;->sSemRestoreDatabaseFile:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    return-void
.end method

.method public static backupDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSQLiteDatabase;->sSemBackupDatabaseFile:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    sget-object v1, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "semBackupDatabaseFile"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoSQLiteDatabase;->sSemBackupDatabaseFile:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "semRestoreDatabaseFile"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoSQLiteDatabase;->sSemRestoreDatabaseFile:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static restoreDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoSQLiteDatabase;->sSemRestoreDatabaseFile:Lcom/sec/sbrowser/spl/util/ReflectMethod$I;

    sget-object v1, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$I;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
