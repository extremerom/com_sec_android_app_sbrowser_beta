.class public final enum Lj9/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lj9/f;

.field public static final enum READY:Lj9/f;

.field public static final enum RUNNING:Lj9/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lj9/f;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj9/f;->READY:Lj9/f;

    new-instance v1, Lj9/f;

    const-string v2, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lj9/f;->RUNNING:Lj9/f;

    filled-new-array {v0, v1}, [Lj9/f;

    move-result-object v0

    sput-object v0, Lj9/f;->$VALUES:[Lj9/f;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lj9/f;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj9/f;
    .locals 1

    const-class v0, Lj9/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj9/f;

    return-object p0
.end method

.method public static values()[Lj9/f;
    .locals 1

    sget-object v0, Lj9/f;->$VALUES:[Lj9/f;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj9/f;

    return-object v0
.end method
