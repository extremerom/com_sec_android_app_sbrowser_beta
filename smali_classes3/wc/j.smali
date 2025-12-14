.class public final enum Lwc/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lwc/j;

.field public static final enum STABLE:Lwc/j;

.field public static final enum UNSTABLE:Lwc/j;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lwc/j;

    const-string v1, "STABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lwc/j;->STABLE:Lwc/j;

    new-instance v1, Lwc/j;

    const-string v2, "UNSTABLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lwc/j;->UNSTABLE:Lwc/j;

    filled-new-array {v0, v1}, [Lwc/j;

    move-result-object v0

    sput-object v0, Lwc/j;->$VALUES:[Lwc/j;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lwc/j;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lwc/j;
    .locals 1

    const-class v0, Lwc/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwc/j;

    return-object p0
.end method

.method public static values()[Lwc/j;
    .locals 1

    sget-object v0, Lwc/j;->$VALUES:[Lwc/j;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwc/j;

    return-object v0
.end method
