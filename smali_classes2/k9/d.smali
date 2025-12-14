.class public final enum Lk9/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lk9/d;

.field public static final enum ALL:Lk9/d;

.field public static final enum DOWN:Lk9/d;

.field public static final enum LEFT:Lk9/d;

.field public static final enum RIGHT:Lk9/d;

.field public static final enum UP:Lk9/d;


# instance fields
.field private final vector:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lk9/d;

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v3, "ALL"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1}, Lk9/d;-><init>(Ljava/lang/String;ILandroid/graphics/PointF;)V

    sput-object v0, Lk9/d;->ALL:Lk9/d;

    new-instance v1, Lk9/d;

    new-instance v3, Landroid/graphics/PointF;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-direct {v3, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v5, "UP"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v3}, Lk9/d;-><init>(Ljava/lang/String;ILandroid/graphics/PointF;)V

    sput-object v1, Lk9/d;->UP:Lk9/d;

    new-instance v3, Lk9/d;

    new-instance v5, Landroid/graphics/PointF;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v7, "RIGHT"

    const/4 v8, 0x2

    invoke-direct {v3, v7, v8, v5}, Lk9/d;-><init>(Ljava/lang/String;ILandroid/graphics/PointF;)V

    sput-object v3, Lk9/d;->RIGHT:Lk9/d;

    new-instance v5, Lk9/d;

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v2, v6}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v6, "DOWN"

    const/4 v8, 0x3

    invoke-direct {v5, v6, v8, v7}, Lk9/d;-><init>(Ljava/lang/String;ILandroid/graphics/PointF;)V

    sput-object v5, Lk9/d;->DOWN:Lk9/d;

    new-instance v6, Lk9/d;

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    const-string v2, "LEFT"

    const/4 v4, 0x4

    invoke-direct {v6, v2, v4, v7}, Lk9/d;-><init>(Ljava/lang/String;ILandroid/graphics/PointF;)V

    sput-object v6, Lk9/d;->LEFT:Lk9/d;

    filled-new-array {v0, v1, v3, v5, v6}, [Lk9/d;

    move-result-object v0

    sput-object v0, Lk9/d;->$VALUES:[Lk9/d;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lk9/d;->$ENTRIES:Llb/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lk9/d;->vector:Landroid/graphics/PointF;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lk9/d;
    .locals 1

    const-class v0, Lk9/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk9/d;

    return-object p0
.end method

.method public static values()[Lk9/d;
    .locals 1

    sget-object v0, Lk9/d;->$VALUES:[Lk9/d;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk9/d;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lk9/d;->vector:Landroid/graphics/PointF;

    return-object p0
.end method
