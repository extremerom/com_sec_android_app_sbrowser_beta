.class public final enum Lx1/w;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lx1/w;

.field public static final enum Gone:Lx1/w;

.field public static final enum Invisible:Lx1/w;

.field public static final enum Visible:Lx1/w;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lx1/w;

    const-string v1, "Visible"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx1/w;->Visible:Lx1/w;

    new-instance v1, Lx1/w;

    const-string v2, "Invisible"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lx1/w;->Invisible:Lx1/w;

    new-instance v2, Lx1/w;

    const-string v3, "Gone"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lx1/w;->Gone:Lx1/w;

    filled-new-array {v0, v1, v2}, [Lx1/w;

    move-result-object v0

    sput-object v0, Lx1/w;->$VALUES:[Lx1/w;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lx1/w;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lx1/w;
    .locals 1

    const-class v0, Lx1/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx1/w;

    return-object p0
.end method

.method public static values()[Lx1/w;
    .locals 1

    sget-object v0, Lx1/w;->$VALUES:[Lx1/w;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx1/w;

    return-object v0
.end method
