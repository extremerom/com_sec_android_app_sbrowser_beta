.class public final enum Lcom/google/android/gms/internal/vision/A;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/m0;


# static fields
.field private static final enum zza:Lcom/google/android/gms/internal/vision/A;

.field private static final enum zzb:Lcom/google/android/gms/internal/vision/A;

.field private static final enum zzc:Lcom/google/android/gms/internal/vision/A;

.field private static final enum zzd:Lcom/google/android/gms/internal/vision/A;

.field private static final zze:Lcom/google/android/gms/internal/vision/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/p0;"
        }
    .end annotation
.end field

.field private static final synthetic zzg:[Lcom/google/android/gms/internal/vision/A;


# instance fields
.field private final zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/vision/A;

    const-string v1, "FORMAT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/A;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/A;->zza:Lcom/google/android/gms/internal/vision/A;

    new-instance v1, Lcom/google/android/gms/internal/vision/A;

    const-string v2, "FORMAT_LUMINANCE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/vision/A;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/vision/A;->zzb:Lcom/google/android/gms/internal/vision/A;

    new-instance v2, Lcom/google/android/gms/internal/vision/A;

    const-string v3, "FORMAT_RGB8"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/vision/A;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/vision/A;->zzc:Lcom/google/android/gms/internal/vision/A;

    new-instance v3, Lcom/google/android/gms/internal/vision/A;

    const-string v4, "FORMAT_MONOCHROME"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/vision/A;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/vision/A;->zzd:Lcom/google/android/gms/internal/vision/A;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/android/gms/internal/vision/A;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/vision/A;->zzg:[Lcom/google/android/gms/internal/vision/A;

    new-instance v0, Lcom/google/android/gms/internal/vision/K;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/K;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/vision/A;->zze:Lcom/google/android/gms/internal/vision/p0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/vision/A;->zzf:I

    return-void
.end method

.method public static a(I)Lcom/google/android/gms/internal/vision/A;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/vision/A;->zzd:Lcom/google/android/gms/internal/vision/A;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/vision/A;->zzc:Lcom/google/android/gms/internal/vision/A;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/vision/A;->zzb:Lcom/google/android/gms/internal/vision/A;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/vision/A;->zza:Lcom/google/android/gms/internal/vision/A;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/internal/vision/A;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/A;->zzg:[Lcom/google/android/gms/internal/vision/A;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/vision/A;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/vision/A;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/internal/vision/A;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/gms/internal/vision/A;->zzf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3e

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
