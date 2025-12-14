.class public final enum LJ2/D;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LJ2/D;

.field public static final enum ADD:LJ2/D;

.field public static final enum NO_OP:LJ2/D;

.field public static final enum REMOVE:LJ2/D;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LJ2/D;

    const-string v1, "NO_OP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJ2/D;->NO_OP:LJ2/D;

    new-instance v1, LJ2/D;

    const-string v2, "ADD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LJ2/D;->ADD:LJ2/D;

    new-instance v2, LJ2/D;

    const-string v3, "REMOVE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LJ2/D;->REMOVE:LJ2/D;

    filled-new-array {v0, v1, v2}, [LJ2/D;

    move-result-object v0

    sput-object v0, LJ2/D;->$VALUES:[LJ2/D;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LJ2/D;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LJ2/D;
    .locals 1

    const-class v0, LJ2/D;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJ2/D;

    return-object p0
.end method

.method public static values()[LJ2/D;
    .locals 1

    sget-object v0, LJ2/D;->$VALUES:[LJ2/D;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJ2/D;

    return-object v0
.end method
