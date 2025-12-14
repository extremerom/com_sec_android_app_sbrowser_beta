.class public final enum LXc/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LXc/i;

.field public static final enum ALREADY_SELECTED:LXc/i;

.field public static final enum CANCELLED:LXc/i;

.field public static final enum REREGISTER:LXc/i;

.field public static final enum SUCCESSFUL:LXc/i;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LXc/i;

    const-string v1, "SUCCESSFUL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LXc/i;->SUCCESSFUL:LXc/i;

    new-instance v1, LXc/i;

    const-string v2, "REREGISTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LXc/i;->REREGISTER:LXc/i;

    new-instance v2, LXc/i;

    const-string v3, "CANCELLED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LXc/i;->CANCELLED:LXc/i;

    new-instance v3, LXc/i;

    const-string v4, "ALREADY_SELECTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LXc/i;->ALREADY_SELECTED:LXc/i;

    filled-new-array {v0, v1, v2, v3}, [LXc/i;

    move-result-object v0

    sput-object v0, LXc/i;->$VALUES:[LXc/i;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LXc/i;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LXc/i;
    .locals 1

    const-class v0, LXc/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LXc/i;

    return-object p0
.end method

.method public static values()[LXc/i;
    .locals 1

    sget-object v0, LXc/i;->$VALUES:[LXc/i;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LXc/i;

    return-object v0
.end method
