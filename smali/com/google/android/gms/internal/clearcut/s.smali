.class public final enum Lcom/google/android/gms/internal/clearcut/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zzjg:Lcom/google/android/gms/internal/clearcut/s;

.field public static final enum zzjh:Lcom/google/android/gms/internal/clearcut/s;

.field public static final enum zzji:Lcom/google/android/gms/internal/clearcut/s;

.field public static final enum zzjj:Lcom/google/android/gms/internal/clearcut/s;

.field private static final synthetic zzjl:[Lcom/google/android/gms/internal/clearcut/s;


# instance fields
.field private final zzjk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/clearcut/s;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/clearcut/s;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/s;->zzjg:Lcom/google/android/gms/internal/clearcut/s;

    new-instance v1, Lcom/google/android/gms/internal/clearcut/s;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/clearcut/s;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/google/android/gms/internal/clearcut/s;->zzjh:Lcom/google/android/gms/internal/clearcut/s;

    new-instance v3, Lcom/google/android/gms/internal/clearcut/s;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/google/android/gms/internal/clearcut/s;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/google/android/gms/internal/clearcut/s;->zzji:Lcom/google/android/gms/internal/clearcut/s;

    new-instance v4, Lcom/google/android/gms/internal/clearcut/s;

    const-string v5, "MAP"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v2}, Lcom/google/android/gms/internal/clearcut/s;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/google/android/gms/internal/clearcut/s;->zzjj:Lcom/google/android/gms/internal/clearcut/s;

    filled-new-array {v0, v1, v3, v4}, [Lcom/google/android/gms/internal/clearcut/s;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/clearcut/s;->zzjl:[Lcom/google/android/gms/internal/clearcut/s;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/clearcut/s;->zzjk:Z

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/clearcut/s;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/s;->zzjl:[Lcom/google/android/gms/internal/clearcut/s;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/clearcut/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/clearcut/s;

    return-object v0
.end method
