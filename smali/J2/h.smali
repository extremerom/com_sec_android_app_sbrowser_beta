.class public final enum LJ2/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LJ2/h;

.field public static final enum ASC:LJ2/h;

.field public static final enum DESC:LJ2/h;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LJ2/h;

    const-string v1, "ASC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LJ2/h;->ASC:LJ2/h;

    new-instance v1, LJ2/h;

    const-string v2, "DESC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LJ2/h;->DESC:LJ2/h;

    filled-new-array {v0, v1}, [LJ2/h;

    move-result-object v0

    sput-object v0, LJ2/h;->$VALUES:[LJ2/h;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LJ2/h;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LJ2/h;
    .locals 1

    const-class v0, LJ2/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LJ2/h;

    return-object p0
.end method

.method public static values()[LJ2/h;
    .locals 1

    sget-object v0, LJ2/h;->$VALUES:[LJ2/h;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LJ2/h;

    return-object v0
.end method
