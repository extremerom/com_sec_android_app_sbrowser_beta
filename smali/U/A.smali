.class public final enum LU/A;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LU/A;

.field public static final enum Expand:LU/A;

.field public static final enum Wrap:LU/A;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LU/A;

    const-string v1, "Wrap"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU/A;->Wrap:LU/A;

    new-instance v1, LU/A;

    const-string v2, "Expand"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LU/A;->Expand:LU/A;

    filled-new-array {v0, v1}, [LU/A;

    move-result-object v0

    sput-object v0, LU/A;->$VALUES:[LU/A;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LU/A;
    .locals 1

    const-class v0, LU/A;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LU/A;

    return-object p0
.end method

.method public static values()[LU/A;
    .locals 1

    sget-object v0, LU/A;->$VALUES:[LU/A;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LU/A;

    return-object v0
.end method
