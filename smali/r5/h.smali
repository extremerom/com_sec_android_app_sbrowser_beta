.class public final enum Lr5/h;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lr5/a;


# static fields
.field public static final enum LEGACY_RS1:Lr5/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum PS256:Lr5/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum PS384:Lr5/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum PS512:Lr5/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum RS1:Lr5/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum RS256:Lr5/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum RS384:Lr5/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final enum RS512:Lr5/h;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final synthetic zza:[Lr5/h;


# instance fields
.field private final zzb:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lr5/h;

    const/16 v1, -0x101

    const-string v2, "RS256"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lr5/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lr5/h;->RS256:Lr5/h;

    new-instance v1, Lr5/h;

    const/16 v2, -0x102

    const-string v3, "RS384"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lr5/h;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lr5/h;->RS384:Lr5/h;

    new-instance v2, Lr5/h;

    const/16 v3, -0x103

    const-string v4, "RS512"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lr5/h;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lr5/h;->RS512:Lr5/h;

    new-instance v3, Lr5/h;

    const/16 v4, -0x106

    const-string v5, "LEGACY_RS1"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lr5/h;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lr5/h;->LEGACY_RS1:Lr5/h;

    new-instance v4, Lr5/h;

    const/16 v5, -0x25

    const-string v6, "PS256"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lr5/h;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lr5/h;->PS256:Lr5/h;

    new-instance v5, Lr5/h;

    const/16 v6, -0x26

    const-string v7, "PS384"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lr5/h;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lr5/h;->PS384:Lr5/h;

    new-instance v6, Lr5/h;

    const/16 v7, -0x27

    const-string v8, "PS512"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lr5/h;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lr5/h;->PS512:Lr5/h;

    new-instance v7, Lr5/h;

    const v8, -0xffff

    const-string v9, "RS1"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lr5/h;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lr5/h;->RS1:Lr5/h;

    filled-new-array/range {v0 .. v7}, [Lr5/h;

    move-result-object v0

    sput-object v0, Lr5/h;->zza:[Lr5/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lr5/h;->zzb:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr5/h;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-class v0, Lr5/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr5/h;

    return-object p0
.end method

.method public static values()[Lr5/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lr5/h;->zza:[Lr5/h;

    invoke-virtual {v0}, [Lr5/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr5/h;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lr5/h;->zzb:I

    return p0
.end method
