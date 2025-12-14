.class public final enum LE5/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:LE5/m;

.field public static final enum zzb:LE5/m;

.field public static final enum zzc:LE5/m;

.field private static final synthetic zzd:[LE5/m;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LE5/m;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LE5/m;->zza:LE5/m;

    new-instance v1, LE5/m;

    const-string v2, "SIGNED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LE5/m;->zzb:LE5/m;

    new-instance v2, LE5/m;

    const-string v3, "FIXED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LE5/m;->zzc:LE5/m;

    filled-new-array {v0, v1, v2}, [LE5/m;

    move-result-object v0

    sput-object v0, LE5/m;->zzd:[LE5/m;

    return-void
.end method

.method public static values()[LE5/m;
    .locals 1

    sget-object v0, LE5/m;->zzd:[LE5/m;

    invoke-virtual {v0}, [LE5/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LE5/m;

    return-object v0
.end method
