.class public final enum LG5/M2;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements LG5/g;


# static fields
.field public static final enum zza:LG5/M2;

.field public static final enum zzb:LG5/M2;

.field public static final enum zzc:LG5/M2;

.field public static final enum zzd:LG5/M2;

.field private static final synthetic zze:[LG5/M2;


# instance fields
.field private final zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LG5/M2;

    const-string v1, "TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LG5/M2;-><init>(Ljava/lang/String;II)V

    sput-object v0, LG5/M2;->zza:LG5/M2;

    new-instance v1, LG5/M2;

    const-string v2, "TYPE_THIN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LG5/M2;-><init>(Ljava/lang/String;II)V

    sput-object v1, LG5/M2;->zzb:LG5/M2;

    new-instance v2, LG5/M2;

    const-string v3, "TYPE_THICK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, LG5/M2;-><init>(Ljava/lang/String;II)V

    sput-object v2, LG5/M2;->zzc:LG5/M2;

    new-instance v3, LG5/M2;

    const-string v4, "TYPE_GMV"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, LG5/M2;-><init>(Ljava/lang/String;II)V

    sput-object v3, LG5/M2;->zzd:LG5/M2;

    filled-new-array {v0, v1, v2, v3}, [LG5/M2;

    move-result-object v0

    sput-object v0, LG5/M2;->zze:[LG5/M2;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LG5/M2;->zzf:I

    return-void
.end method

.method public static values()[LG5/M2;
    .locals 1

    sget-object v0, LG5/M2;->zze:[LG5/M2;

    invoke-virtual {v0}, [LG5/M2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LG5/M2;

    return-object v0
.end method


# virtual methods
.method public final d()I
    .locals 0

    iget p0, p0, LG5/M2;->zzf:I

    return p0
.end method
