.class public final enum Ljc/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Ljc/a;

.field public static final enum ALWAYS_PARENTHESIZED:Ljc/a;

.field public static final enum NO_ARGUMENTS:Ljc/a;

.field public static final enum UNLESS_EMPTY:Ljc/a;


# instance fields
.field private final includeAnnotationArguments:Z

.field private final includeEmptyAnnotationArguments:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljc/a;

    const-string v1, "NO_ARGUMENTS"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1, v2}, Ljc/a;-><init>(IILjava/lang/String;Z)V

    sput-object v0, Ljc/a;->NO_ARGUMENTS:Ljc/a;

    new-instance v1, Ljc/a;

    const-string v2, "UNLESS_EMPTY"

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2, v3}, Ljc/a;-><init>(IILjava/lang/String;Z)V

    sput-object v1, Ljc/a;->UNLESS_EMPTY:Ljc/a;

    new-instance v2, Ljc/a;

    const-string v5, "ALWAYS_PARENTHESIZED"

    invoke-direct {v2, v4, v5, v3, v3}, Ljc/a;-><init>(ILjava/lang/String;ZZ)V

    sput-object v2, Ljc/a;->ALWAYS_PARENTHESIZED:Ljc/a;

    filled-new-array {v0, v1, v2}, [Ljc/a;

    move-result-object v0

    sput-object v0, Ljc/a;->$VALUES:[Ljc/a;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Ljc/a;->$ENTRIES:Llb/a;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Z)V
    .locals 1

    and-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move p4, v0

    :cond_0
    invoke-direct {p0, p1, p3, p4, v0}, Ljc/a;-><init>(ILjava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Ljc/a;->includeAnnotationArguments:Z

    iput-boolean p4, p0, Ljc/a;->includeEmptyAnnotationArguments:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljc/a;
    .locals 1

    const-class v0, Ljc/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljc/a;

    return-object p0
.end method

.method public static values()[Ljc/a;
    .locals 1

    sget-object v0, Ljc/a;->$VALUES:[Ljc/a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljc/a;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Ljc/a;->includeAnnotationArguments:Z

    return p0
.end method

.method public final c()Z
    .locals 0

    iget-boolean p0, p0, Ljc/a;->includeEmptyAnnotationArguments:Z

    return p0
.end method
