.class public final enum LU/n;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LU/n;

.field public static final enum Both:LU/n;

.field public static final enum Horizontal:LU/n;

.field public static final enum Vertical:LU/n;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LU/n;

    const-string v1, "Vertical"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LU/n;->Vertical:LU/n;

    new-instance v1, LU/n;

    const-string v2, "Horizontal"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LU/n;->Horizontal:LU/n;

    new-instance v2, LU/n;

    const-string v3, "Both"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LU/n;->Both:LU/n;

    filled-new-array {v0, v1, v2}, [LU/n;

    move-result-object v0

    sput-object v0, LU/n;->$VALUES:[LU/n;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LU/n;
    .locals 1

    const-class v0, LU/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LU/n;

    return-object p0
.end method

.method public static values()[LU/n;
    .locals 1

    sget-object v0, LU/n;->$VALUES:[LU/n;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LU/n;

    return-object v0
.end method
