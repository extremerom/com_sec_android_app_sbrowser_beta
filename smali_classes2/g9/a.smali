.class public final enum Lg9/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lg9/a;

.field public static final enum READY:Lg9/a;

.field public static final enum RUNNING:Lg9/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg9/a;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg9/a;->READY:Lg9/a;

    new-instance v1, Lg9/a;

    const-string v2, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lg9/a;->RUNNING:Lg9/a;

    filled-new-array {v0, v1}, [Lg9/a;

    move-result-object v0

    sput-object v0, Lg9/a;->$VALUES:[Lg9/a;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lg9/a;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lg9/a;
    .locals 1

    const-class v0, Lg9/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg9/a;

    return-object p0
.end method

.method public static values()[Lg9/a;
    .locals 1

    sget-object v0, Lg9/a;->$VALUES:[Lg9/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg9/a;

    return-object v0
.end method
