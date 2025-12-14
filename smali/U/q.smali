.class public final enum LU/q;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LU/q;

.field public static final enum Horizontal:LU/q;

.field public static final enum Vertical:LU/q;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LU/q;

    const-string v1, "Horizontal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU/q;->Horizontal:LU/q;

    new-instance v1, LU/q;

    const-string v2, "Vertical"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LU/q;->Vertical:LU/q;

    filled-new-array {v0, v1}, [LU/q;

    move-result-object v0

    sput-object v0, LU/q;->$VALUES:[LU/q;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LU/q;
    .locals 1

    const-class v0, LU/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LU/q;

    return-object p0
.end method

.method public static values()[LU/q;
    .locals 1

    sget-object v0, LU/q;->$VALUES:[LU/q;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LU/q;

    return-object v0
.end method
