.class public final enum Lz1/I0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lz1/I0;

.field public static final enum Expand:Lz1/I0;

.field public static final enum Fixed:Lz1/I0;

.field public static final enum MatchParent:Lz1/I0;

.field public static final enum Wrap:Lz1/I0;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lz1/I0;

    const-string v1, "Wrap"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz1/I0;->Wrap:Lz1/I0;

    new-instance v1, Lz1/I0;

    const-string v2, "Fixed"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lz1/I0;->Fixed:Lz1/I0;

    new-instance v2, Lz1/I0;

    const-string v3, "Expand"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lz1/I0;->Expand:Lz1/I0;

    new-instance v3, Lz1/I0;

    const-string v4, "MatchParent"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lz1/I0;->MatchParent:Lz1/I0;

    filled-new-array {v0, v1, v2, v3}, [Lz1/I0;

    move-result-object v0

    sput-object v0, Lz1/I0;->$VALUES:[Lz1/I0;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lz1/I0;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz1/I0;
    .locals 1

    const-class v0, Lz1/I0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz1/I0;

    return-object p0
.end method

.method public static values()[Lz1/I0;
    .locals 1

    sget-object v0, Lz1/I0;->$VALUES:[Lz1/I0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz1/I0;

    return-object v0
.end method
