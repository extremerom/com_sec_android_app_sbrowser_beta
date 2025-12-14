.class public final Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001d\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0013\u0010\u000eJ\u0015\u0010\u0014\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileHandler;",
        "",
        "<init>",
        "()V",
        "",
        "restorePath",
        "dbName",
        "",
        "dbExists",
        "(Ljava/lang/String;Ljava/lang/String;)Z",
        "sourcePath",
        "destinationPath",
        "Ldb/r;",
        "restoreQuickAccessPreferences",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "restoreIconPreferences",
        "Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;",
        "getRestoreDBDelegator",
        "(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;",
        "restorePreferences",
        "getIsQAEditedFromSrc",
        "(Ljava/lang/String;)Z",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileHandler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileHandler;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileHandler;->INSTANCE:Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final dbExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileUtil;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileUtil;->openDB(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private final restoreIconPreferences(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileUtil;

    const-string v0, "quickaccess_update_failed_icons_preferences.xml"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileUtil;->openPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p2, v0}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileUtil;->openPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)I

    return-void
.end method

.method private final restoreQuickAccessPreferences(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileUtil;

    const-string v0, "quickaccess_preferences.xml"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileUtil;->openPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p2, v0}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileUtil;->openPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)I

    return-void
.end method


# virtual methods
.method public final getIsQAEditedFromSrc(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "sourcePath"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileUtil;

    const-string v0, "quickaccess_preferences.xml"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileUtil;->openPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    const-string p1, "quickaccess_is_client_changed"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/backup/BackupRestoreXmlUtil;->getBooleanValueFromXml(Ljava/io/File;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final getRestoreDBDelegator(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegator;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "restorePath"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quickaccess.db"

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileHandler;->dbExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreSourceDBDelegatorImpl;-><init>()V

    return-object p0

    :cond_0
    const-string v0, "pintab.db"

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileHandler;->dbExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreLegacySourceDBDelegator;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreEmptyDBDelegator;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreEmptyDBDelegator;-><init>()V

    return-object p0
.end method

.method public final restorePreferences(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sourcePath"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destinationPath"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileHandler;->restoreQuickAccessPreferences(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/backup/QuickAccessRestoreFileHandler;->restoreIconPreferences(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
