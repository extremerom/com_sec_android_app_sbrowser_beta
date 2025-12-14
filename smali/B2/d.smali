.class public final enum LB2/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LB2/d;

.field public static final enum AGGREGATION_COUNT:LB2/d;

.field public static final enum CLASSES:LB2/d;

.field public static final enum DEX_FILES:LB2/d;

.field public static final enum EXTRA_DESCRIPTORS:LB2/d;

.field public static final enum METHODS:LB2/d;


# instance fields
.field private final mValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, LB2/d;

    const-wide/16 v1, 0x0

    const-string v3, "DEX_FILES"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, LB2/d;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, LB2/d;->DEX_FILES:LB2/d;

    new-instance v1, LB2/d;

    const-wide/16 v2, 0x1

    const-string v4, "EXTRA_DESCRIPTORS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, LB2/d;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, LB2/d;->EXTRA_DESCRIPTORS:LB2/d;

    new-instance v2, LB2/d;

    const-wide/16 v3, 0x2

    const-string v5, "CLASSES"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v3, v4}, LB2/d;-><init>(Ljava/lang/String;IJ)V

    sput-object v2, LB2/d;->CLASSES:LB2/d;

    new-instance v3, LB2/d;

    const-wide/16 v4, 0x3

    const-string v6, "METHODS"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4, v5}, LB2/d;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, LB2/d;->METHODS:LB2/d;

    new-instance v4, LB2/d;

    const-wide/16 v5, 0x4

    const-string v7, "AGGREGATION_COUNT"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v5, v6}, LB2/d;-><init>(Ljava/lang/String;IJ)V

    sput-object v4, LB2/d;->AGGREGATION_COUNT:LB2/d;

    filled-new-array {v0, v1, v2, v3, v4}, [LB2/d;

    move-result-object v0

    sput-object v0, LB2/d;->$VALUES:[LB2/d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, LB2/d;->mValue:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LB2/d;
    .locals 1

    const-class v0, LB2/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LB2/d;

    return-object p0
.end method

.method public static values()[LB2/d;
    .locals 1

    sget-object v0, LB2/d;->$VALUES:[LB2/d;

    invoke-virtual {v0}, [LB2/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LB2/d;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, LB2/d;->mValue:J

    return-wide v0
.end method
