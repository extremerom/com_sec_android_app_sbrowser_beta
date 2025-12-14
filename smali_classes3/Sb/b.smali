.class public final enum LSb/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LSb/b;

.field public static final enum FIELD:LSb/b;

.field public static final enum METHOD_RETURN_TYPE:LSb/b;

.field public static final enum TYPE_PARAMETER:LSb/b;

.field public static final enum TYPE_PARAMETER_BOUNDS:LSb/b;

.field public static final enum TYPE_USE:LSb/b;

.field public static final enum VALUE_PARAMETER:LSb/b;


# instance fields
.field private final javaTarget:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LSb/b;

    const-string v1, "METHOD"

    const-string v2, "METHOD_RETURN_TYPE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, LSb/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, LSb/b;->METHOD_RETURN_TYPE:LSb/b;

    new-instance v1, LSb/b;

    const-string v2, "PARAMETER"

    const-string v3, "VALUE_PARAMETER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, LSb/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, LSb/b;->VALUE_PARAMETER:LSb/b;

    new-instance v2, LSb/b;

    const-string v3, "FIELD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v3}, LSb/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, LSb/b;->FIELD:LSb/b;

    new-instance v3, LSb/b;

    const-string v4, "TYPE_USE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v4}, LSb/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, LSb/b;->TYPE_USE:LSb/b;

    new-instance v5, LSb/b;

    const-string v6, "TYPE_PARAMETER_BOUNDS"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v4}, LSb/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, LSb/b;->TYPE_PARAMETER_BOUNDS:LSb/b;

    new-instance v6, LSb/b;

    const-string v4, "TYPE_PARAMETER"

    const/4 v7, 0x5

    invoke-direct {v6, v4, v7, v4}, LSb/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, LSb/b;->TYPE_PARAMETER:LSb/b;

    move-object v4, v5

    move-object v5, v6

    filled-new-array/range {v0 .. v5}, [LSb/b;

    move-result-object v0

    sput-object v0, LSb/b;->$VALUES:[LSb/b;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LSb/b;->$ENTRIES:Llb/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, LSb/b;->javaTarget:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LSb/b;
    .locals 1

    const-class v0, LSb/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LSb/b;

    return-object p0
.end method

.method public static values()[LSb/b;
    .locals 1

    sget-object v0, LSb/b;->$VALUES:[LSb/b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LSb/b;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LSb/b;->javaTarget:Ljava/lang/String;

    return-object p0
.end method
