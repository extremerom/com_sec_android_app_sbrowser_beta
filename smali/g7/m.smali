.class public final enum Lg7/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lg7/m;

.field public static final enum END_CLOBBERED_BY_NEXT:Lg7/m;

.field public static final enum END_CLOBBERED_BY_PREV:Lg7/m;

.field public static final enum END_MOVED:Lg7/m;

.field public static final enum END_REPLACED:Lg7/m;

.field public static final enum END_SIMPLY:Lg7/m;

.field public static final enum START:Lg7/m;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lg7/m;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg7/m;->START:Lg7/m;

    new-instance v1, Lg7/m;

    const-string v2, "END_SIMPLY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg7/m;->END_SIMPLY:Lg7/m;

    new-instance v2, Lg7/m;

    const-string v3, "END_REPLACED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg7/m;->END_REPLACED:Lg7/m;

    new-instance v3, Lg7/m;

    const-string v4, "END_MOVED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lg7/m;->END_MOVED:Lg7/m;

    new-instance v4, Lg7/m;

    const-string v5, "END_CLOBBERED_BY_PREV"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lg7/m;->END_CLOBBERED_BY_PREV:Lg7/m;

    new-instance v5, Lg7/m;

    const-string v6, "END_CLOBBERED_BY_NEXT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lg7/m;->END_CLOBBERED_BY_NEXT:Lg7/m;

    filled-new-array/range {v0 .. v5}, [Lg7/m;

    move-result-object v0

    sput-object v0, Lg7/m;->$VALUES:[Lg7/m;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg7/m;
    .locals 1

    const-class v0, Lg7/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg7/m;

    return-object p0
.end method

.method public static values()[Lg7/m;
    .locals 1

    sget-object v0, Lg7/m;->$VALUES:[Lg7/m;

    invoke-virtual {v0}, [Lg7/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg7/m;

    return-object v0
.end method
