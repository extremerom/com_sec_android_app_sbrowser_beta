.class public final enum Lcom/google/android/gms/internal/vision/M;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/m0;


# static fields
.field private static final enum zza:Lcom/google/android/gms/internal/vision/M;

.field private static final enum zzb:Lcom/google/android/gms/internal/vision/M;

.field private static final enum zzc:Lcom/google/android/gms/internal/vision/M;

.field private static final enum zzd:Lcom/google/android/gms/internal/vision/M;

.field private static final enum zze:Lcom/google/android/gms/internal/vision/M;

.field private static final enum zzf:Lcom/google/android/gms/internal/vision/M;

.field private static final enum zzg:Lcom/google/android/gms/internal/vision/M;

.field private static final enum zzh:Lcom/google/android/gms/internal/vision/M;

.field private static final enum zzi:Lcom/google/android/gms/internal/vision/M;

.field private static final enum zzj:Lcom/google/android/gms/internal/vision/M;

.field private static final enum zzk:Lcom/google/android/gms/internal/vision/M;

.field private static final enum zzl:Lcom/google/android/gms/internal/vision/M;

.field private static final enum zzm:Lcom/google/android/gms/internal/vision/M;

.field private static final enum zzn:Lcom/google/android/gms/internal/vision/M;

.field private static final enum zzo:Lcom/google/android/gms/internal/vision/M;

.field private static final enum zzp:Lcom/google/android/gms/internal/vision/M;

.field private static final zzq:Lcom/google/android/gms/internal/vision/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/p0;"
        }
    .end annotation
.end field

.field private static final synthetic zzs:[Lcom/google/android/gms/internal/vision/M;


# instance fields
.field private final zzr:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/google/android/gms/internal/vision/M;

    const-string v1, "UNRECOGNIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/vision/M;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/vision/M;->zza:Lcom/google/android/gms/internal/vision/M;

    new-instance v1, Lcom/google/android/gms/internal/vision/M;

    const-string v2, "CODE_128"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/vision/M;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/vision/M;->zzb:Lcom/google/android/gms/internal/vision/M;

    new-instance v2, Lcom/google/android/gms/internal/vision/M;

    const-string v3, "CODE_39"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/vision/M;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/vision/M;->zzc:Lcom/google/android/gms/internal/vision/M;

    new-instance v3, Lcom/google/android/gms/internal/vision/M;

    const-string v4, "CODE_93"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/vision/M;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/vision/M;->zzd:Lcom/google/android/gms/internal/vision/M;

    new-instance v4, Lcom/google/android/gms/internal/vision/M;

    const-string v5, "CODABAR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/gms/internal/vision/M;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/vision/M;->zze:Lcom/google/android/gms/internal/vision/M;

    new-instance v5, Lcom/google/android/gms/internal/vision/M;

    const-string v6, "DATA_MATRIX"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/google/android/gms/internal/vision/M;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/vision/M;->zzf:Lcom/google/android/gms/internal/vision/M;

    new-instance v6, Lcom/google/android/gms/internal/vision/M;

    const-string v7, "EAN_13"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/google/android/gms/internal/vision/M;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/vision/M;->zzg:Lcom/google/android/gms/internal/vision/M;

    new-instance v7, Lcom/google/android/gms/internal/vision/M;

    const-string v8, "EAN_8"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/google/android/gms/internal/vision/M;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/vision/M;->zzh:Lcom/google/android/gms/internal/vision/M;

    new-instance v8, Lcom/google/android/gms/internal/vision/M;

    const-string v9, "ITF"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10, v10}, Lcom/google/android/gms/internal/vision/M;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/vision/M;->zzi:Lcom/google/android/gms/internal/vision/M;

    new-instance v9, Lcom/google/android/gms/internal/vision/M;

    const-string v10, "QR_CODE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11, v11}, Lcom/google/android/gms/internal/vision/M;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/vision/M;->zzj:Lcom/google/android/gms/internal/vision/M;

    new-instance v10, Lcom/google/android/gms/internal/vision/M;

    const-string v11, "UPC_A"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12, v12}, Lcom/google/android/gms/internal/vision/M;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/vision/M;->zzk:Lcom/google/android/gms/internal/vision/M;

    new-instance v11, Lcom/google/android/gms/internal/vision/M;

    const-string v12, "UPC_E"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13, v13}, Lcom/google/android/gms/internal/vision/M;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/vision/M;->zzl:Lcom/google/android/gms/internal/vision/M;

    new-instance v12, Lcom/google/android/gms/internal/vision/M;

    const-string v13, "PDF417"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14, v14}, Lcom/google/android/gms/internal/vision/M;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/vision/M;->zzm:Lcom/google/android/gms/internal/vision/M;

    new-instance v13, Lcom/google/android/gms/internal/vision/M;

    const-string v14, "AZTEC"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15, v15}, Lcom/google/android/gms/internal/vision/M;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/vision/M;->zzn:Lcom/google/android/gms/internal/vision/M;

    new-instance v14, Lcom/google/android/gms/internal/vision/M;

    const-string v15, "DATABAR"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13, v13}, Lcom/google/android/gms/internal/vision/M;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/vision/M;->zzo:Lcom/google/android/gms/internal/vision/M;

    new-instance v15, Lcom/google/android/gms/internal/vision/M;

    const/16 v13, 0x10

    move-object/from16 v17, v14

    const-string v14, "TEZ_CODE"

    move-object/from16 v18, v12

    const/16 v12, 0xf

    invoke-direct {v15, v14, v12, v13}, Lcom/google/android/gms/internal/vision/M;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/vision/M;->zzp:Lcom/google/android/gms/internal/vision/M;

    move-object/from16 v12, v18

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    filled-new-array/range {v0 .. v15}, [Lcom/google/android/gms/internal/vision/M;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/vision/M;->zzs:[Lcom/google/android/gms/internal/vision/M;

    new-instance v0, Lcom/google/android/gms/internal/vision/K;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/K;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/vision/M;->zzq:Lcom/google/android/gms/internal/vision/p0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/vision/M;->zzr:I

    return-void
.end method

.method public static a(I)Lcom/google/android/gms/internal/vision/M;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/vision/M;->zzp:Lcom/google/android/gms/internal/vision/M;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/vision/M;->zzo:Lcom/google/android/gms/internal/vision/M;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/vision/M;->zzn:Lcom/google/android/gms/internal/vision/M;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/vision/M;->zzm:Lcom/google/android/gms/internal/vision/M;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/vision/M;->zzl:Lcom/google/android/gms/internal/vision/M;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/vision/M;->zzk:Lcom/google/android/gms/internal/vision/M;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/vision/M;->zzj:Lcom/google/android/gms/internal/vision/M;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/vision/M;->zzi:Lcom/google/android/gms/internal/vision/M;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/vision/M;->zzh:Lcom/google/android/gms/internal/vision/M;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/vision/M;->zzg:Lcom/google/android/gms/internal/vision/M;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/vision/M;->zzf:Lcom/google/android/gms/internal/vision/M;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/vision/M;->zze:Lcom/google/android/gms/internal/vision/M;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/google/android/gms/internal/vision/M;->zzd:Lcom/google/android/gms/internal/vision/M;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/google/android/gms/internal/vision/M;->zzc:Lcom/google/android/gms/internal/vision/M;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/google/android/gms/internal/vision/M;->zzb:Lcom/google/android/gms/internal/vision/M;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/google/android/gms/internal/vision/M;->zza:Lcom/google/android/gms/internal/vision/M;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static values()[Lcom/google/android/gms/internal/vision/M;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/M;->zzs:[Lcom/google/android/gms/internal/vision/M;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/vision/M;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/vision/M;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/google/android/gms/internal/vision/M;

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

    iget v1, p0, Lcom/google/android/gms/internal/vision/M;->zzr:I

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
