.class public final synthetic Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile;->values()[Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile;->DEV:Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile;->STG:Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile;->PRD:Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    sput-object v0, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperProfile$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
