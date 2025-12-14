.class public final enum LG5/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zza:LG5/h;

.field public static final enum zzb:LG5/h;

.field public static final enum zzc:LG5/h;

.field private static final synthetic zzd:[LG5/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LG5/h;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LG5/h;->zza:LG5/h;

    new-instance v1, LG5/h;

    const-string v2, "SIGNED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LG5/h;->zzb:LG5/h;

    new-instance v2, LG5/h;

    const-string v3, "FIXED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LG5/h;->zzc:LG5/h;

    filled-new-array {v0, v1, v2}, [LG5/h;

    move-result-object v0

    sput-object v0, LG5/h;->zzd:[LG5/h;

    return-void
.end method

.method public static values()[LG5/h;
    .locals 1

    sget-object v0, LG5/h;->zzd:[LG5/h;

    invoke-virtual {v0}, [LG5/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LG5/h;

    return-object v0
.end method
