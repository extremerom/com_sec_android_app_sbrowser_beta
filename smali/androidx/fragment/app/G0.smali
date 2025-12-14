.class public final enum Landroidx/fragment/app/G0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Landroidx/fragment/app/G0;

.field public static final enum ADDING:Landroidx/fragment/app/G0;

.field public static final enum NONE:Landroidx/fragment/app/G0;

.field public static final enum REMOVING:Landroidx/fragment/app/G0;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroidx/fragment/app/G0;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/fragment/app/G0;->NONE:Landroidx/fragment/app/G0;

    new-instance v1, Landroidx/fragment/app/G0;

    const-string v2, "ADDING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/fragment/app/G0;->ADDING:Landroidx/fragment/app/G0;

    new-instance v2, Landroidx/fragment/app/G0;

    const-string v3, "REMOVING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/fragment/app/G0;->REMOVING:Landroidx/fragment/app/G0;

    filled-new-array {v0, v1, v2}, [Landroidx/fragment/app/G0;

    move-result-object v0

    sput-object v0, Landroidx/fragment/app/G0;->$VALUES:[Landroidx/fragment/app/G0;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/fragment/app/G0;
    .locals 1

    const-class v0, Landroidx/fragment/app/G0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/G0;

    return-object p0
.end method

.method public static values()[Landroidx/fragment/app/G0;
    .locals 1

    sget-object v0, Landroidx/fragment/app/G0;->$VALUES:[Landroidx/fragment/app/G0;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/fragment/app/G0;

    return-object v0
.end method
