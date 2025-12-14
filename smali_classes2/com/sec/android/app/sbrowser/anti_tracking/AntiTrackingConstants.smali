.class public final Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants$ListType;
    }
.end annotation


# static fields
.field public static final ALLOWLIST_FILE_PATH:Ljava/lang/String;

.field public static final BLOCKLIST_FILE_PATH:Ljava/lang/String;

.field public static final METADATA_FILE_PATH:Ljava/lang/String;

.field public static final PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants;->PATH:Ljava/lang/String;

    const-string v1, "/whitelist.json"

    invoke-static {v0, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants;->ALLOWLIST_FILE_PATH:Ljava/lang/String;

    const-string v1, "/blacklist.json"

    invoke-static {v0, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants;->BLOCKLIST_FILE_PATH:Ljava/lang/String;

    const-string v1, "/metadata.json"

    invoke-static {v0, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/anti_tracking/AntiTrackingConstants;->METADATA_FILE_PATH:Ljava/lang/String;

    return-void
.end method
