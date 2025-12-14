.class public final enum Lad/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lad/a;

.field public static final enum ALWAYS:Lad/a;

.field public static final enum NEVER:Lad/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lad/a;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lad/a;->ALWAYS:Lad/a;

    new-instance v1, Lad/a;

    const-string v2, "NEVER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lad/a;->NEVER:Lad/a;

    filled-new-array {v0, v1}, [Lad/a;

    move-result-object v0

    sput-object v0, Lad/a;->$VALUES:[Lad/a;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lad/a;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lad/a;
    .locals 1

    const-class v0, Lad/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lad/a;

    return-object p0
.end method

.method public static values()[Lad/a;
    .locals 1

    sget-object v0, Lad/a;->$VALUES:[Lad/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lad/a;

    return-object v0
.end method
