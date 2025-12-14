.class public final enum LBc/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LBc/j;

.field public static final enum IN:LBc/j;

.field public static final enum INV:LBc/j;

.field public static final enum OUT:LBc/j;


# instance fields
.field private final presentation:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LBc/j;

    const-string v1, "in"

    const-string v2, "IN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, LBc/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LBc/j;->IN:LBc/j;

    new-instance v1, LBc/j;

    const-string v2, "out"

    const-string v3, "OUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, LBc/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, LBc/j;->OUT:LBc/j;

    new-instance v2, LBc/j;

    const-string v3, ""

    const-string v4, "INV"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, LBc/j;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, LBc/j;->INV:LBc/j;

    filled-new-array {v0, v1, v2}, [LBc/j;

    move-result-object v0

    sput-object v0, LBc/j;->$VALUES:[LBc/j;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LBc/j;->$ENTRIES:Llb/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LBc/j;->presentation:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LBc/j;
    .locals 1

    const-class v0, LBc/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LBc/j;

    return-object p0
.end method

.method public static values()[LBc/j;
    .locals 1

    sget-object v0, LBc/j;->$VALUES:[LBc/j;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LBc/j;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LBc/j;->presentation:Ljava/lang/String;

    return-object p0
.end method
