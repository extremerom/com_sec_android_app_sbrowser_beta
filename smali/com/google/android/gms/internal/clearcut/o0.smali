.class public final enum Lcom/google/android/gms/internal/clearcut/o0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum zzbhk:Lcom/google/android/gms/internal/clearcut/o0;

.field private static final enum zzbhl:Lcom/google/android/gms/internal/clearcut/o0;

.field private static final enum zzbhm:Lcom/google/android/gms/internal/clearcut/o0;

.field private static final enum zzbhn:Lcom/google/android/gms/internal/clearcut/o0;

.field private static final enum zzbho:Lcom/google/android/gms/internal/clearcut/o0;

.field private static final synthetic zzbhp:[Lcom/google/android/gms/internal/clearcut/o0;

.field private static final zzbq:Lcom/google/android/gms/internal/clearcut/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/clearcut/y;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/clearcut/o0;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/clearcut/o0;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/o0;->zzbhk:Lcom/google/android/gms/internal/clearcut/o0;

    new-instance v1, Lcom/google/android/gms/internal/clearcut/o0;

    const-string v2, "UNMETERED_ONLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/clearcut/o0;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/clearcut/o0;->zzbhl:Lcom/google/android/gms/internal/clearcut/o0;

    new-instance v2, Lcom/google/android/gms/internal/clearcut/o0;

    const-string v3, "UNMETERED_OR_DAILY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/clearcut/o0;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/clearcut/o0;->zzbhm:Lcom/google/android/gms/internal/clearcut/o0;

    new-instance v3, Lcom/google/android/gms/internal/clearcut/o0;

    const-string v4, "FAST_IF_RADIO_AWAKE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/clearcut/o0;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/clearcut/o0;->zzbhn:Lcom/google/android/gms/internal/clearcut/o0;

    new-instance v4, Lcom/google/android/gms/internal/clearcut/o0;

    const-string v5, "NEVER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/gms/internal/clearcut/o0;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/clearcut/o0;->zzbho:Lcom/google/android/gms/internal/clearcut/o0;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/android/gms/internal/clearcut/o0;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/clearcut/o0;->zzbhp:[Lcom/google/android/gms/internal/clearcut/o0;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/p0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/o0;->zzbq:Lcom/google/android/gms/internal/clearcut/y;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/clearcut/o0;->value:I

    return-void
.end method

.method public static a(I)Lcom/google/android/gms/internal/clearcut/o0;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/clearcut/o0;->zzbho:Lcom/google/android/gms/internal/clearcut/o0;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/clearcut/o0;->zzbhn:Lcom/google/android/gms/internal/clearcut/o0;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/clearcut/o0;->zzbhm:Lcom/google/android/gms/internal/clearcut/o0;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/clearcut/o0;->zzbhl:Lcom/google/android/gms/internal/clearcut/o0;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/clearcut/o0;->zzbhk:Lcom/google/android/gms/internal/clearcut/o0;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gms/internal/clearcut/o0;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/o0;->zzbhp:[Lcom/google/android/gms/internal/clearcut/o0;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/clearcut/o0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/clearcut/o0;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/o0;->value:I

    return p0
.end method
