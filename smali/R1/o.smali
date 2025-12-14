.class public final enum LR1/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LR1/o;

.field public static final enum AppIcon:LR1/o;

.field public static final enum Icon:LR1/o;

.field public static final enum Image:LR1/o;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LR1/o;

    const-string v1, "Image"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LR1/o;->Image:LR1/o;

    new-instance v1, LR1/o;

    const-string v2, "Icon"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LR1/o;->Icon:LR1/o;

    new-instance v2, LR1/o;

    const-string v3, "AppIcon"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LR1/o;->AppIcon:LR1/o;

    filled-new-array {v0, v1, v2}, [LR1/o;

    move-result-object v0

    sput-object v0, LR1/o;->$VALUES:[LR1/o;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LR1/o;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LR1/o;
    .locals 1

    const-class v0, LR1/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LR1/o;

    return-object p0
.end method

.method public static values()[LR1/o;
    .locals 1

    sget-object v0, LR1/o;->$VALUES:[LR1/o;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LR1/o;

    return-object v0
.end method
